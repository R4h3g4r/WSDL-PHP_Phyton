<?xml version="1.0" encoding="iso-8859-1"?>
<!-- <== version: 2006/08/23 12:15 ==> -->
<xsl:stylesheet version="1.1" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format" exclude-result-prefixes="fo">
    <xsl:output method="xml" version="1.0" omit-xml-declaration="no" indent="yes"/>
    <xsl:decimal-format name="decimal" decimal-separator=',' grouping-separator='.' />
    <xsl:decimal-format name="rut" grouping-separator='.' />


    <xsl:param name="IMG_URL"/>

    <xsl:template match="pagare">
        <fo:root xmlns:fo="http://www.w3.org/1999/XSL/Format">
            <fo:layout-master-set>
                <fo:simple-page-master master-name="miCarta" page-width="215.9mm" page-height="330mm" margin-top="10mm" margin-bottom="20mm" margin-left="10mm" margin-right="10mm">
                    <fo:region-body/>
                </fo:simple-page-master>
            </fo:layout-master-set>

            <xsl:for-each select="Pagina">
            <fo:page-sequence master-reference="miCarta">
        <xsl:choose>


          <!--   AQUI COMIENZA EL TEMPLATE   docpg01a  -->
          <xsl:when test="template = 'docpg01a'">
                    <fo:flow flow-name="xsl-region-body">

              <fo:table border-collapse="collapse">
              <fo:table-column column-width="50mm" />
              <fo:table-column column-width="50mm" />
              <fo:table-body>
                  <fo:table-row>
                        <fo:table-cell text-align="left">
                                <fo:block >
                                  <fo:external-graphic height="12mm" width="25mm" vertical-align="middle">
                                    <xsl:attribute name="src">
                                    <xsl:value-of select="../OperacionCredito/logoBciSomosDiferentes"/>
                                    </xsl:attribute>
                                  </fo:external-graphic>
                                </fo:block>
                        </fo:table-cell>
                        <fo:table-cell >
                                <fo:block >
                                </fo:block>
                        </fo:table-cell>
                  </fo:table-row>
              </fo:table-body>
              </fo:table>
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="center" >  <fo:inline font-weight="bold">PAGARE (Sin Protesto)</fo:inline></fo:block>
              <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="center" ><fo:inline font-weight="bold">CUOTA TASA FIJA MENSUAL UF</fo:inline></fo:block>
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:table border-collapse="collapse" font-family="Arial, Helvetica, sans-serif" font-size="11pt" text-align="left">
                  <fo:table-column column-width="50%"/>
                  <fo:table-column column-width="50%"/>
                  <fo:table-body>
                      <fo:table-row>
                          <fo:table-cell > _
                              <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="left" >N° de Operación <fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/nroOperacion" /></fo:inline></fo:block>
                          </fo:table-cell>
                      </fo:table-row>
                  </fo:table-body>
              </fo:table>





              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="justify"  >Por valor recibido,  debo  y  pagaré  a  la  orden  del  BANCO  DE  CREDITO E INVERSIONES, en su domicilio ubicado en Avenida El Golf N° 125, Comuna de Las Condes,  Santiago,   o   en   cualquiera   de  sus  sucursales,  la  suma  de <fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold">UF</fo:inline><fo:leader leader-pattern="space" leader-length="0.5mm"/><fo:inline font-weight="bold">

                     <xsl:value-of select='format-number(../OperacionCredito/montoCredito, "###.###.##0,0000","decimal")' />


              <!--<xsl:value-of select='format-number(../OperacionCredito/montoCredito, "###.###.##0,000","decimal")' />-->

              </fo:inline><fo:leader leader-pattern="space" leader-length="1mm"/>(<fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/montoCreditoManoEscrita" /></fo:inline> Unidades de Fomento), equivalentes a esta fecha a la suma de <fo:leader leader-pattern="space" leader-length="1mm"/>$<fo:inline font-weight="bold"><xsl:value-of select='format-number(../OperacionCredito/montoCreditoEnPesos, "###.###.##0","decimal")' />


              <!--<xsl:value-of select='format-number(../OperacionCredito/montoCredito, "###.###.##0,000","decimal")' />-->

              </fo:inline> (<fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/montoCreditoEnPesosManoEscrita" /></fo:inline> pesos m/l).</fo:block>
              <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="left" ><fo:inline font-weight="bold">Tasa de Interés</fo:inline></fo:block>
              <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="justify"  >El capital adeudado devengará a partir de  esta fecha una tasa de interés del <fo:inline font-weight="bold"><xsl:value-of select='format-number(../OperacionCredito/tasaInteres, "###,####","decimal")'/></fo:inline>% anual vencido durante todo el plazo pactado.</fo:block>
              <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="left" ><fo:inline font-weight="bold">Amortización del Capital</fo:inline></fo:block>
              <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="justify"  >El capital adeudado se pagará en <fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="count(../CalendarioPago)" /></fo:inline><fo:leader leader-pattern="space" leader-length="1mm"/> cuotas mensuales, iguales y sucesivas, de UF <fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select='format-number(../OperacionCredito/montoCuota, "###.###.##0,000","decimal")' /></fo:inline><fo:leader leader-pattern="space" leader-length="1mm"/> cada una, con vencimiento la primera de ellas el día<fo:leader leader-pattern="space" leader-length="1mm"/>


              <fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/fechaPrimerVctoDD" /></fo:inline>
              <fo:leader leader-pattern="space" leader-length="1mm"/>de<fo:leader leader-pattern="space" leader-length="1mm"/>
              <xsl:variable name="mes" select="../OperacionCredito/fechaPrimerVctoMM" />
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
              <fo:leader leader-pattern="space" leader-length="1mm"/>de<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/fechaPrimerVctoYYYY" /></fo:inline>

              y las restantes los días<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/diaVencimiento" /></fo:inline><fo:leader leader-pattern="space" leader-length="1mm"/>de cada mes, venciendo la última de ellas el día <fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/fechaUltimoVctoDD" /></fo:inline><fo:leader leader-pattern="space" leader-length="1mm"/>de<fo:leader leader-pattern="space" leader-length="1mm"/>


              <!--<fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/fechaUltimoVctoMM" /></fo:inline>-->
              <xsl:variable name="mes" select="../OperacionCredito/fechaUltimoVctoMM" />
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

              <fo:leader leader-pattern="space" leader-length="1mm"/>de<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/fechaUltimoVctoYYYY" /></fo:inline> </fo:block>
              <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="justify"  ><fo:inline font-weight="bold">Intereses</fo:inline></fo:block>
              <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="justify"  >Por su  parte, los intereses  se pagarán en las  mismas fechas señaladas para las amortizaciones de capital.</fo:block>
              <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="justify"  ><fo:inline font-weight="bold">Prórroga  de plazo  por día inhábil.</fo:inline> Las cuotas de  amortización de capital e intereses se  pagarán a su vencimiento, siempre que éste corresponda a un día hábil  bancario.  En  caso  contrario,  se  pagarán  el  día  hábil  bancario siguiente </fo:block>
              <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="justify"  ><fo:inline font-weight="bold">Equivalencia.</fo:inline> Las sumas adeudadas,  tanto  en  lo  referente a capital como a intereses, se calcularán por su equivalente en moneda legal chilena al día de pago efectivo.</fo:block>
              <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="justify"  ><fo:inline font-weight="bold">Prepagos.</fo:inline> Si el monto  de  capital  inicial supera el equivalente a UF 5.000, todo pago anticipado, sea total o parcial, será convenido libremente entre el suscriptor y el Banco. A falta  de acuerdo, el  suscriptor podrá en todo caso anticipar  el pago, total o  parcialmente, y en este último caso, siempre que el importe a  pagar sea igual o superior al 20 % del capital de la obligación adeudada, pagando  además los intereses estipulados devengados y no pagados a la fecha del prepago,  calculados  sobre el saldo insoluto, más los intereses estipulados en  este instrumento, calculados sobre el capital prepagado desde la  fecha del prepago  hasta el vencimiento del plazo pactado. Si el monto de capital  inicial no  supera  el  equivalente a UF 5.000, al capital prepagado deberán  sumársele los intereses  calculados  hasta la fecha del prepago y la comisión  de  prepago  máxima  que  el  articulo  10 de la Ley 18.010 permite pactar.</fo:block>
              <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="justify"  ><fo:inline font-weight="bold">Exigibilidad anticipada.</fo:inline> El no pago oportuno de una cualquiera de las cuotas de capital y/o de interés comprendidos en esta obligación, dará derecho al acreedor a hacer exigible de inmediato y anticipadamente el monto total del saldo insoluto adeudado a esa fecha, el que desde esa misma fecha se considerará de plazo vencido y devengará en favor del acreedor o de quien sus derechos represente, el interés máximo convencional que rija durante la mora o simple retardo.</fo:block>
              <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="justify"  >Sin embargo, en operaciones de crédito de dinero cuyo capital sea igual o inferior a doscientas unidades de fomento no podrá hacerse exigible la obligación en forma anticipada, si no una vez cumplidos sesenta días corridos desde que el deudor incurra en mora o simple retardo en el pago.</fo:block>
              <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="justify"  >Se deja expresamente  establecido que el ejercicio de este derecho constituye una  sanción  al  suscriptor  por el  no  pago de la deuda e importa una mera</fo:block>
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block font-family="Arial, Helvetica, sans-serif" line-height="4.5mm" font-size="11pt" text-align="center" >Página 1 de 3</fo:block>

              </fo:flow>

          </xsl:when>
          <!--   AQUI TERMINA EL TEMPLATE   docpg01a  -->




          <!--   AQUI COMIENZA EL TEMPLATE   docpg01b  -->
          <xsl:when test="template = 'docpg01b'">
                    <fo:flow flow-name="xsl-region-body">
              <fo:table border-collapse="collapse">
              <fo:table-column column-width="50mm" />
              <fo:table-column column-width="50mm" />
              <fo:table-body>
                  <fo:table-row>
                        <fo:table-cell text-align="left">
                                <fo:block >
                                  <fo:external-graphic height="12mm" width="25mm" vertical-align="middle">
                                    <xsl:attribute name="src">
                                    <xsl:value-of select="../OperacionCredito/logoBciSomosDiferentes"/>
                                    </xsl:attribute>
                                  </fo:external-graphic>
                                </fo:block>
                        </fo:table-cell>
                        <fo:table-cell >
                                <fo:block >
                                </fo:block>
                        </fo:table-cell>
                  </fo:table-row>
              </fo:table-body>
              </fo:table>                    
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block font-family="Arial, Helvetica, sans-serif" line-height="4.5mm" font-size="11pt" text-align="left" >Nº Operación<fo:leader leader-pattern="space" leader-length="18.5mm"/>:<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/nroOperacion" /></fo:inline></fo:block>
              <fo:block font-family="Arial, Helvetica, sans-serif" line-height="4.5mm" font-size="11pt" text-align="left" >Fecha de suscripción<fo:leader leader-pattern="space" leader-length="6.8mm"/>:<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="substring(../OperacionCredito/fechaSuscripcion,0,4)" /></fo:inline>
              <xsl:variable name="mes" select="substring(../OperacionCredito/fechaSuscripcion,4,2)" />
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
              <fo:inline font-weight="bold"><xsl:value-of select="substring(../OperacionCredito/fechaSuscripcion,6,5)" /></fo:inline>
              </fo:block>


              <fo:block font-family="Arial, Helvetica, sans-serif" line-height="4.5mm" font-size="11pt" text-align="left" >Monto<fo:leader leader-pattern="space" leader-length="29.6mm"/>:<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/moneda" /></fo:inline><fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold">

              <xsl:variable name="moneda" select="../OperacionCredito/moneda" />
                <xsl:choose>

                  <xsl:when test="$moneda = 'UF'">
                     <xsl:value-of select='format-number(../OperacionCredito/montoCredito, "###.###.##0,0000","decimal")' />
                  </xsl:when>


                  <xsl:when test="$moneda = '$'">
                    <xsl:value-of select='format-number(../OperacionCredito/montoCredito, "###.###.##0","decimal")' />
                  </xsl:when>

              </xsl:choose>

              </fo:inline></fo:block>
              <fo:block font-family="Arial, Helvetica, sans-serif" line-height="4.5mm" font-size="11pt" text-align="left" >Deudor<fo:leader leader-pattern="space" leader-length="28mm"/>:<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/nombreCompletoCliente" /></fo:inline></fo:block>
              <fo:block font-family="Arial, Helvetica, sans-serif" line-height="4.5mm" font-size="11pt" text-align="left" >RUT<fo:leader leader-pattern="space" leader-length="32.2mm"/>:<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select='format-number(../OperacionCredito/rutCliente, "###.###.##0","rut")' /></fo:inline>-<fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/dvCliente" /></fo:inline></fo:block>
              
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="justify"  >facultad  establecida  en  beneficio exclusivo del acreedor, que no altera en caso  alguno la fecha  de vencimiento del  pagaré originalmente pactada, ni a la exigibilidad de las acciones cambiarias y ejecutivas derivadas de éste. </fo:block>
              <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="justify"  >El Banco podrá hacer exigible de inmediato el monto total adeudado, expirando todos  los plazos  pendientes  por el sólo hecho de constituirse en mora o de habérsele  protestado  al  deudor  o  al  aval,  por falta  de pago,cualquier documento, pagaré, letra  de  cambio  o  cheque, aceptado, suscrito, girado o avalado por él.</fo:block>
              <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="justify"  >Se  deja  expresamente  establecido  que corresponderá al deudor acreditar el pago de las cuotas en que se divide el presente instrumento, en caso de cobro judicial.</fo:block>
              <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="justify"  ><fo:inline font-weight="bold">Indivisibilidad  y  solidaridad.</fo:inline> Las  obligaciones  que emanen de este pagaré serán  solidarias  para el suscriptor, avalista(s) y  demás obligados al pago y  serán  indivisibles  para sus herederos. Además, el suscriptor  pagará los gastos, impuestos y costas personales y procesales que correspondan.</fo:block>
              <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="justify"  ><fo:inline font-weight="bold">Mandato para prórrogas.</fo:inline> El  suscriptor  faculta  al Banco de Crédito  e  Inversiones para que en su nombre y representación otorgue, previa autorización expresa de éste, una o más prórrogas que establezcan nuevas condiciones, tasas de interés y fechas de vencimiento. </fo:block>
              <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="justify"  ><fo:inline font-weight="bold">Domicilio  y  competencia.</fo:inline>  Para todos los efectos legales, judiciales o extrajudiciales derivados de este pagaré, las partes acuerdan someterse  a los Tribunales de Justicia con asiento en la comuna y ciudad del domicilio del suscriptor,  lo que  será obligatorio tanto para el suscriptor como para sus avales, endosantes u obligados por garantía. Sin perjuicio declaro, que mi domicilio y residencia son los consignados en  este título, comprometiéndome a dar pronto aviso por escrito al Banco, en el evento que realice cualquier cambio de domicilio en el futuro.</fo:block>
              <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="justify"  ><fo:inline font-weight="bold">Impuesto  de timbres y estampillas.</fo:inline> El impuesto de  timbres y estampillas que grava  este documento  se paga por ingresos mensuales de dinero en Tesorería, según Decreto Ley Nº 3475.</fo:block>

              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block font-family="Arial, Helvetica, sans-serif" line-height="4.5mm" font-size="11pt" text-align="left" >
              En<fo:leader leader-pattern="space" leader-length="1mm"/>
              <fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/ciudadContrato" /></fo:inline>,
              <fo:leader leader-pattern="space" leader-length="1mm"/>a<fo:leader leader-pattern="space" leader-length="1mm"/>
              <fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/dia" /></fo:inline>

              <!--<fo:leader leader-pattern="space" leader-length="1mm"/>de<fo:leader leader-pattern="space" leader-length="1mm"/>
              <fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/mes" /></fo:inline>-->
              <fo:leader leader-pattern="space" leader-length="1mm"/>de<fo:leader leader-pattern="space" leader-length="1mm"/>
              <xsl:variable name="mes" select="../OperacionCredito/mes" />
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


              <fo:leader leader-pattern="space" leader-length="1mm"/>de<fo:leader leader-pattern="space" leader-length="1mm"/>
              <fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/anio" /></fo:inline>
              </fo:block>
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block font-family="Arial, Helvetica, sans-serif" line-height="4.5mm" font-size="11pt" text-align="center" ><fo:leader leader-length="6cm" leader-pattern="rule" rule-style="solid" rule-thickness="0.4mm" color="black"/></fo:block>
              <fo:block font-family="Arial, Helvetica, sans-serif" line-height="4.5mm" font-size="11pt" text-align="center" >Firma del Suscriptor</fo:block>
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>


            <!-- AQUI COMIENZA LOS DATOS  DEL SUSCRIPTOR NOMBRE O RAZON SOCIAL -->
             <xsl:apply-templates select="../OperacionCredito"/>
            <!-- AQUI TERMINA LOS DATOS  DEL SUSCRIPTOR NOMBRE O RAZON SOCIAL -->

            <!-- AQUI COMIENZA LOS DATOS  DEL SUSCRIPTOR DOMICILIO, COMUNA Y CIUDAD -->
             <xsl:apply-templates select="../DireccionDeudorBci"/>
            <!-- AQUI TERMINAN LOS DATOS  DEL SUSCRIPTOR DOMICILIO, COMUNA Y CIUDAD -->

	     <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
	     <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>	
	     <fo:block font-family="Arial, Helvetica, sans-serif" line-height="4.5mm" font-size="11pt" text-align="center" >Página 2 de 3</fo:block>

                    </fo:flow>
          </xsl:when>
          <!--   AQUI TERMINA EL TEMPLATE   docpg01b  -->


          <!--   AQUI COMIENZA EL TEMPLATE   docpg03a  -->
          <xsl:when test="template = 'docpg03a'">
                    <fo:flow flow-name="xsl-region-body">
              <fo:table border-collapse="collapse">
              <fo:table-column column-width="50mm" />
              <fo:table-column column-width="50mm" />
              <fo:table-body>
                  <fo:table-row>
                        <fo:table-cell text-align="left">
                                <fo:block >
                                  <fo:external-graphic height="12mm" width="25mm" vertical-align="middle">
                                    <xsl:attribute name="src">
                                    <xsl:value-of select="../OperacionCredito/logoBciSomosDiferentes"/>
                                    </xsl:attribute>
                                  </fo:external-graphic>
                                </fo:block>
                        </fo:table-cell>
                        <fo:table-cell >
                                <fo:block >
                                </fo:block>
                        </fo:table-cell>
                  </fo:table-row>
              </fo:table-body>
              </fo:table>
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block> 
                        <fo:block font-family="Arial, Helvetica, sans-serif" line-height="4.5mm" font-size="11pt" text-align="center" ><fo:inline font-weight="bold">PAGARE (Sin Protesto)</fo:inline></fo:block>
                        <fo:block font-family="Arial, Helvetica, sans-serif" line-height="4.5mm" font-size="11pt" text-align="center" ><fo:inline font-weight="bold">TAB UF 360 AMORTIZACIONES E INTERESES ANUALES</fo:inline></fo:block>
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:table border-collapse="collapse" font-family="Arial, Helvetica, sans-serif" font-size="11pt" text-align="left">
                  <fo:table-column column-width="50%"/>
                  <fo:table-column column-width="50%"/>
                  <fo:table-body>
                      <fo:table-row>
                          <fo:table-cell > _
                              <fo:block font-family="Arial, Helvetica, sans-serif" line-height="4.5mm" font-size="11pt" text-align="left" >N° de Operación :<fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/nroOperacion" /></fo:inline></fo:block>
                          </fo:table-cell>
                      </fo:table-row>
                  </fo:table-body>
              </fo:table>
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="justify"  >Por valor recibido,  debo  y  pagaré  a  la  orden  del  BANCO  DE  CREDITO E INVERSIONES, en su domicilio ubicado en Avenida El Golf N° 125, Comuna de Las Condes,  Santiago,   o   en   cualquiera   de  sus  sucursales,  la  suma  de <fo:leader leader-pattern="space" leader-length="1mm"/>UF<fo:leader leader-pattern="space" leader-length="0.5mm"/><fo:inline font-weight="bold">

              <!--<xsl:value-of select='format-number(../OperacionCredito/montoCredito, "###.###.##0,000","decimal")' />-->
              <xsl:variable name="moneda" select="../OperacionCredito/moneda" />
                <xsl:choose>

                  <xsl:when test="$moneda = 'UF'">
                     <xsl:value-of select='format-number(../OperacionCredito/montoCredito, "###.###.##0,0000","decimal")' />
                  </xsl:when>


                  <xsl:when test="$moneda = '$'">
                    <xsl:value-of select='format-number(../OperacionCredito/montoCredito, "###.###.##0","decimal")' />
                  </xsl:when>

              </xsl:choose>


              </fo:inline>
              <fo:leader leader-pattern="space" leader-length="1mm"/>(<fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/montoCreditoManoEscrita" /></fo:inline>), equivalentes a esta fecha a la suma de <fo:leader leader-pattern="space" leader-length="1mm"/>$<fo:inline font-weight="bold">

              <!--<xsl:value-of select='format-number(../OperacionCredito/montoCredito, "###.###.##0,000","decimal")' />-->
              <xsl:variable name="moneda" select="../OperacionCredito/moneda" />
                <xsl:choose>

                  <xsl:when test="$moneda = 'UF'">
                     <xsl:value-of select='format-number(../OperacionCredito/montoCredito, "###.###.##0,0000","decimal")' />
                  </xsl:when>


                  <xsl:when test="$moneda = '$'">
                    <xsl:value-of select='format-number(../OperacionCredito/montoCredito, "###.###.##0","decimal")' />
                  </xsl:when>

              </xsl:choose>



              </fo:inline><fo:leader leader-pattern="space" leader-length="1mm"/>(<fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/montoCreditoManoEscrita" /></fo:inline><fo:leader leader-pattern="space" leader-length="1mm"/>pesos m/l).</fo:block>
              <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="left" ><fo:inline font-weight="bold">Tasa de Interés</fo:inline></fo:block>
              <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="justify"  >El capital adeudado devengará una tasa  de interés variable anualmente y será la compuesta por la Tasa T.A.B.  (Tasa Bancaria)  de 360 días determinada por la  Asociación  de  Bancos  e  Instituciones  Financieras,  más  un  spread o diferencial del<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select='format-number(../OperacionCredito/tasaSpread, "###,####","decimal")'/></fo:inline>% anual. La Tasa Bancaria  (T.A.B.) de 360 días, se define  como  la  determinada  diariamente  y  con  esa  denominación  por la Asociación  de  Bancos e Instituciones Financieras. Dicha tasa se recalculará anualmente,  aplicándose  la  que  rija  en  su oportunidad al inicio de cada período en  conformidad  al procedimiento  indicado permaneciendo inalterable por  igual  período. Los intereses serán  vencidos y se  calcularán  sobre el capital reajustado, en la forma y condiciones pactadas en este instrumento.</fo:block>
              <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="justify"  >En el evento  que la tasa TAB no fuere  informada por la Asociación de Bancos e Instituciones  Financieras  se  aplicará la  TASA BASE ANUAL en Unidades de Fomento  del  Banco  de  Crédito e  Inversiones  para  dicho  período, más el diferencial o  spread  pactado  precedentemente.  Dicha  TASA  BASE  ANUAL en Unidades  de Fomento  se recalculará anualmente aplicándose la que rija en su oportunidad   en   conformidad   al   procedimiento  indicado,  permaneciendo inalterable por igual período.</fo:block>
              <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="justify"  >La TASA BASE ANUAL  en  Unidades  de  Fomento  se  define como la determinada diariamente  por  el  Banco  de  Crédito  e  Inversiones  de  acuerdo  a  una metodología  que  declaro conocer  y aceptar y que será certificada todos los días  hábiles bancarios  por uno  de los Notarios que atienden los negocios y operaciones de la Oficina Central del Banco. </fo:block>
              <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="justify"  >La TASA BASE  para los días  inhábiles bancarios será la vigente el día hábil bancario  inmediatamente  anterior  a aquellos. Igualmente,  si por cualquier causa  en algún día no existiera certificación notarial para la referida TASA BASE, regirá  para  esa  fecha  la  última que se hubiere certificado. Si por cualquier  motivo y  en  cualquiera  forma resultare impugnada o discutida la determinación  o certificación  de la Tasa Base vigente para alguna fecha, se aplicará en  su  reemplazo la  TASA DE INTERES MAXIMA CONVENCIONAL que la Ley permita estipular a esa  fecha para operaciones reajustables. Reconozco dicho procedimiento como suficiente, válido  y  definitivo para la determinación de la señalada Tasa Base Anual. </fo:block>
              <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="left"  ><fo:inline font-weight="bold">Amortización del Capital</fo:inline></fo:block>
              <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="justify"  >El  capital adeudado se pagará en <fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="count(../CalendarioPago)" /></fo:inline> cuotas anuales, iguales y sucesivas, de <fo:leader leader-pattern="space" leader-length="1mm"/>UF<fo:leader leader-pattern="space" leader-length="0.5mm"/><fo:inline font-weight="bold"><xsl:value-of select='format-number(../OperacionCredito/montoCuota, "###.###.##0,000","decimal")' /></fo:inline>.<fo:leader leader-pattern="space" leader-length="1mm"/> cada una, con vencimiento la primera de ellas el día<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/fechaPrimerVctoDD" /></fo:inline><fo:leader leader-pattern="space" leader-length="1mm"/>de<fo:leader leader-pattern="space" leader-length="1mm"/>

              <!--<fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/fechaPrimerVctoMM" /></fo:inline>-->
              <xsl:variable name="mes" select="../OperacionCredito/fechaPrimerVctoMM" />
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

              <fo:leader leader-pattern="space" leader-length="1mm"/>de<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/fechaPrimerVctoYYYY" /></fo:inline> y las restantes los días <fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/diaVencimiento" /></fo:inline><fo:leader leader-pattern="space" leader-length="1mm"/>de <fo:leader leader-pattern="space" leader-length="1mm"/>


              <!--<fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/mesVencimiento" /></fo:inline> -->
              <xsl:variable name="mes" select="../OperacionCredito/fechaPrimerVctoMM" />
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

              de  cada año,  venciendo  la última de ellas el día <fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/fechaUltimoVctoDD" /></fo:inline><fo:leader leader-pattern="space" leader-length="1mm"/>de<fo:leader leader-pattern="space" leader-length="1mm"/>

              <!--<fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/fechaUltimoVctoMM" /></fo:inline>-->
              <xsl:variable name="mes" select="../OperacionCredito/fechaUltimoVctoMM" />
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

              <fo:leader leader-pattern="space" leader-length="1mm"/>de<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/fechaUltimoVctoYYYY" /></fo:inline></fo:block>
              <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="left"  > <fo:inline font-weight="bold">Intereses</fo:inline></fo:block>
              <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="justify"  >Por su parte, los intereses se pagarán en <fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="count(../CalendarioPago)" /></fo:inline> cuotas anuales y sucesivas, la primera de ellas con vencimiento el día <fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/fechaPrimerVctoDD" /></fo:inline><fo:leader leader-pattern="space" leader-length="1mm"/>de<fo:leader leader-pattern="space" leader-length="1mm"/>

              <!--<fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/fechaPrimerVctoMM" /></fo:inline>-->
              <xsl:variable name="mes" select="../OperacionCredito/fechaPrimerVctoMM" />
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


              <fo:leader leader-pattern="space" leader-length="1mm"/>de<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/fechaUltimoVctoYYYY" /></fo:inline><fo:leader leader-pattern="space" leader-length="1mm"/>y las restantes los días <fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/diaVencimiento" /></fo:inline><fo:leader leader-pattern="space" leader-length="1mm"/>de los meses de <fo:leader leader-pattern="space" leader-length="1mm"/>

              <xsl:variable name="mes" select="../OperacionCredito/fechaPrimerVctoMM" />
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

              de  cada año, hasta la última cuota que vencera el día <fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/fechaUltimoVctoDD" /></fo:inline><fo:leader leader-pattern="space" leader-length="1mm"/>de<fo:leader leader-pattern="space" leader-length="1mm"/>

              <xsl:variable name="mes" select="../OperacionCredito/fechaPrimerVctoMM" />
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


              de <fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/fechaUltimoVctoYYYY" /></fo:inline></fo:block>
              <fo:block><fo:inline font-weight="bold">Prórroga de plazo  por día inhábil.</fo:inline> Las  cuotas  de amortización de capital e intereses se pagarán  a su vencimiento, siempre que éste corresponda a un día  hábil  bancario.  En  caso  contrario,  se  pagarán  el  día  hábil  bancario siguiente.</fo:block>
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block font-family="Arial, Helvetica, sans-serif" line-height="4.5mm" font-size="11pt" text-align="center" >Página 1 de 3</fo:block>
                    </fo:flow>
          </xsl:when>
          <!--   AQUI TERMINA EL TEMPLATE   docpg03a  -->




          <!--   AQUI COMIENZA EL TEMPLATE   docpg03b  -->
          <xsl:when test="template = 'docpg03b'">
                    <fo:flow flow-name="xsl-region-body">
                    
              <fo:table border-collapse="collapse">
              <fo:table-column column-width="50mm" />
              <fo:table-column column-width="50mm" />
              <fo:table-body>
                  <fo:table-row>
                        <fo:table-cell text-align="left">
                                <fo:block >
                                  <fo:external-graphic height="12mm" width="25mm" vertical-align="middle">
                                    <xsl:attribute name="src">
                                    <xsl:value-of select="../OperacionCredito/logoBciSomosDiferentes"/>
                                    </xsl:attribute>
                                  </fo:external-graphic>
                                </fo:block>
                        </fo:table-cell>
                        <fo:table-cell >
                                <fo:block >
                                </fo:block>
                        </fo:table-cell>
                  </fo:table-row>
              </fo:table-body>
              </fo:table>
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block font-family="Arial, Helvetica, sans-serif" line-height="4.5mm" font-size="11pt" text-align="left" >Nº Operación<fo:leader leader-pattern="space" leader-length="18.5mm"/>:<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/nroOperacion" /></fo:inline></fo:block>
              <fo:block font-family="Arial, Helvetica, sans-serif" line-height="4.5mm" font-size="11pt" text-align="left" >Fecha de suscripción<fo:leader leader-pattern="space" leader-length="6.8mm"/>:<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="substring(../OperacionCredito/fechaSuscripcion,0,4)" /></fo:inline>
              <xsl:variable name="mes" select="substring(../OperacionCredito/fechaSuscripcion,4,2)" />
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
              <fo:inline font-weight="bold"><xsl:value-of select="substring(../OperacionCredito/fechaSuscripcion,6,5)" /></fo:inline>
              </fo:block>


              <fo:block font-family="Arial, Helvetica, sans-serif" line-height="4.5mm" font-size="11pt" text-align="left" >Monto<fo:leader leader-pattern="space" leader-length="29.6mm"/>:<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/moneda" /></fo:inline><fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold">

              <xsl:variable name="moneda" select="../OperacionCredito/moneda" />
                <xsl:choose>

                  <xsl:when test="$moneda = 'UF'">
                     <xsl:value-of select='format-number(../OperacionCredito/montoCredito, "###.###.##0,0000","decimal")' />
                  </xsl:when>


                  <xsl:when test="$moneda = '$'">
                    <xsl:value-of select='format-number(../OperacionCredito/montoCredito, "###.###.##0","decimal")' />
                  </xsl:when>

              </xsl:choose>

              </fo:inline></fo:block>
              <fo:block font-family="Arial, Helvetica, sans-serif" line-height="4.5mm" font-size="11pt" text-align="left" >Deudor<fo:leader leader-pattern="space" leader-length="28mm"/>:<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/nombreCompletoCliente" /></fo:inline></fo:block>
              <fo:block font-family="Arial, Helvetica, sans-serif" line-height="4.5mm" font-size="11pt" text-align="left" >RUT<fo:leader leader-pattern="space" leader-length="32.2mm"/>:<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select='format-number(../OperacionCredito/rutCliente, "###.###.##0","rut")' /></fo:inline>-<fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/dvCliente" /></fo:inline></fo:block>



              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="justify" ><fo:inline font-weight="bold">Equivalencia.</fo:inline> Las  sumas  adeudas,  tanto  en  lo  referente a capital como a intereses, se  calcularán  por  su equivalente en moneda legal chilena al día de pago efectivo.</fo:block>
              <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="justify" ><fo:inline font-weight="bold">Prepagos.</fo:inline>  Si el  monto  de capital inicial supera el equivalente a UF 5.000, todo pago anticipado,  sea total o parcial, será  convenido libremente  entre el  suscriptor  y  el  Banco. A falta de acuerdo, el suscriptor podrá en todo caso  anticipar el pago, total o parcialmente, y en este último caso, siempre que  el  importe  a  pagar  sea  igual  o  superior al 20 % del capital de la obligación adeudada, pagando además los intereses estipulados devengados y no pagados a la  fecha del prepago,  calculados sobre el saldo insoluto, más los intereses  estipulados  en  este  instrumento,  calculados  sobre  el capital prepagado desde la fecha del prepago hasta el vencimiento del plazo pactado.  </fo:block>
              <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="justify" >Si  el  monto  de  capital  inicial  no  supera el equivalente a UF 5.000, al capital  prepagado deberán sumársele los intereses  calculados hasta la fecha del  prepago  y  la  comisión de prepago máxima  que el articulo 10 de la Ley 18.010 permite pactar.</fo:block>
              <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="justify" ><fo:inline font-weight="bold">Exigibilidad anticipada.</fo:inline>  El no pago oportuno de una cualquiera de las cuotas de capital  y/o de interés comprendidos  en esta obligación, dará  derecho al acreedor  a hacer exigible de  inmediato y anticipadamente el monto total del saldo  insoluto  adeudado  a esa fecha,  el  que  desde  esa  misma  fecha se considerará  de   plazo vencido y  devengará en favor del acreedor o de quien sus  derechos represente, el  interés máximo convencional que rija durante la mora o simple retardo. </fo:block>
              <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="justify"  >Sin embargo, en operaciones de crédito de dinero cuyo capital sea igual o inferior a doscientas unidades de fomento no podrá hacerse exigible la obligación en forma anticipada, si no una vez cumplidos sesenta días corridos desde que el deudor incurra en mora o simple retardo en el pago.</fo:block>
              <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="justify" >Se deja expresamente  establecido que el ejercicio de este derecho constituye una  sanción  al  suscriptor  por  el no pago de  la deuda e importa una mera facultad  establecida en beneficio  exclusivo del acreedor,  que no altera en caso alguno la fecha de vencimiento del pagaré originalmente pactada, ni a la exigibilidad de las acciones cambiarias y ejecutivas derivadas de éste.</fo:block>
              <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="justify" >El Banco podrá hacer exigible de inmediato el monto total adeudado, expirando todos  los  plazos  pendientes por el sólo hecho de constituirse en mora o de habérsele  protestado  al  deudor  o al aval,  por  falta  de pago, cualquier documento, pagaré, letra  de cambio o  cheque,  aceptado,  suscrito, girado o avalado por él.</fo:block>
              <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="justify" >Se  deja  expresamente  establecido que  corresponderá al deudor acreditar el pago de las cuotas en que se divide el presente instrumento, en caso de cobro judicial.</fo:block>
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block font-family="Arial, Helvetica, sans-serif" line-height="4.5mm" font-size="11pt" text-align="center" >Página 2 de 3</fo:block>
                    </fo:flow>

          </xsl:when>
          <!--   AQUI TERMINA EL TEMPLATE   docpg03b  -->




          <!--   AQUI COMIENZA EL TEMPLATE   docpg03c  -->
          <xsl:when test="template = 'docpg03c'">
                    <fo:flow flow-name="xsl-region-body">
              <fo:table border-collapse="collapse">
              <fo:table-column column-width="50mm" />
              <fo:table-column column-width="50mm" />
              <fo:table-body>
                  <fo:table-row>
                        <fo:table-cell text-align="left">
                                <fo:block >
                                  <fo:external-graphic height="12mm" width="25mm" vertical-align="middle">
                                    <xsl:attribute name="src">
                                    <xsl:value-of select="../OperacionCredito/logoBciSomosDiferentes"/>
                                    </xsl:attribute>
                                  </fo:external-graphic>
                                </fo:block>
                        </fo:table-cell>
                        <fo:table-cell >
                                <fo:block >
                                </fo:block>
                        </fo:table-cell>
                  </fo:table-row>
              </fo:table-body>
              </fo:table>
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block font-family="Arial, Helvetica, sans-serif" line-height="4.5mm" font-size="11pt" text-align="left" >Nº Operación<fo:leader leader-pattern="space" leader-length="17.2mm"/>:<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/nroOperacion" /></fo:inline></fo:block>
              <fo:block font-family="Arial, Helvetica, sans-serif" line-height="4.5mm" font-size="11pt" text-align="left" >Fecha de suscripción<fo:leader leader-pattern="space" leader-length="3.7mm"/>:<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="substring(../OperacionCredito/fechaSuscripcion,0,4)" /></fo:inline>
              <xsl:variable name="mes" select="substring(../OperacionCredito/fechaSuscripcion,4,2)" />
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
              <fo:inline font-weight="bold"><xsl:value-of select="substring(../OperacionCredito/fechaSuscripcion,6,5)" /></fo:inline>
              </fo:block>


              <fo:block font-family="Arial, Helvetica, sans-serif" line-height="4.5mm" font-size="11pt" text-align="left" >Monto<fo:leader leader-pattern="space" leader-length="29.6mm"/>:<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/moneda" /></fo:inline><fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold">


              <!--<xsl:value-of select='format-number(../OperacionCredito/montoCredito, "###.###.##0,000","decimal")' />-->
              <xsl:variable name="moneda" select="../OperacionCredito/moneda" />
                <xsl:choose>

                  <xsl:when test="$moneda = 'UF'">
                     <xsl:value-of select='format-number(../OperacionCredito/montoCredito, "###.###.##0,0000","decimal")' />
                  </xsl:when>


                  <xsl:when test="$moneda = '$'">
                    <xsl:value-of select='format-number(../OperacionCredito/montoCredito, "###.###.##0","decimal")' />
                  </xsl:when>

              </xsl:choose>


              </fo:inline></fo:block>
              <fo:block font-family="Arial, Helvetica, sans-serif" line-height="4.5mm" font-size="11pt" text-align="left" >Deudor<fo:leader leader-pattern="space" leader-length="27.6mm"/>:<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/nombreCompletoCliente" /></fo:inline></fo:block>
              <fo:block font-family="Arial, Helvetica, sans-serif" line-height="4.5mm" font-size="11pt" text-align="left" >RUT<fo:leader leader-pattern="space" leader-length="32.5mm"/>:<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select='format-number(../OperacionCredito/rutCliente, "###.###.##0","rut")' /></fo:inline>-<fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/dvCliente" /></fo:inline></fo:block>
              
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="justify"  ><fo:inline font-weight="bold">Indivisibilidad  y solidaridad.</fo:inline> Las  obligaciones  que  emanen de este pagaré serán  solidarias para el suscriptor, avalista(s) y demás obligados al pago y serán  indivisibles  para  sus herederos. Además,  el  suscriptor  pagará los gastos, impuestos y costas personales y procesales que correspondan.</fo:block>
              <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="justify"  ><fo:inline font-weight="bold">Mandato  para prórrogas.</fo:inline> El  suscriptor  faculta al Banco de Crédito e Inversiones para  concederle  bajo la firma de uno o más apoderados de éste, una o más  prórrogas  que  se efectuarán sin ánimo de novar, y fijar en  tal caso y dentro  de los límites legales,  nuevas condiciones, tasas  de interés y fechas de vencimiento. </fo:block>
              <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="justify"  ><fo:inline font-weight="bold">Domicilio  y  competencia.</fo:inline>  Para todos los efectos legales, judiciales o extrajudiciales derivados de este pagaré, las partes acuerdan someterse  a los Tribunales de Justicia con asiento en la comuna y ciudad del domicilio del suscriptor,  lo que  será obligatorio tanto para el suscriptor como para sus avales, endosantes u obligados por garantía. Sin perjuicio declaro, que mi domicilio y residencia son los consignados en  este título, comprometiéndome a dar pronto aviso por escrito al Banco, en el evento que realice cualquier cambio de domicilio en el futuro.</fo:block>
              <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="justify"  ><fo:inline font-weight="bold">Impuesto  de timbres y estampillas.</fo:inline> El impuesto de timbres y estampillas que grava este  documento se paga por ingresos  mensuales de dinero en Tesorería, según Decreto Ley Nº 3475.</fo:block>



              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block font-family="Arial, Helvetica, sans-serif" line-height="4.5mm" font-size="11pt" text-align="left" >
              En<fo:leader leader-pattern="space" leader-length="1mm"/>
              <fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/ciudadContrato" /></fo:inline>,
              <fo:leader leader-pattern="space" leader-length="1mm"/>a<fo:leader leader-pattern="space" leader-length="1mm"/>
              <fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/dia" /></fo:inline>

              <!--<fo:leader leader-pattern="space" leader-length="1mm"/>de<fo:leader leader-pattern="space" leader-length="1mm"/>
              <fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/mes" /></fo:inline>-->
              <fo:leader leader-pattern="space" leader-length="1mm"/>de<fo:leader leader-pattern="space" leader-length="1mm"/>
              <xsl:variable name="mes" select="../OperacionCredito/mes" />
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


              <fo:leader leader-pattern="space" leader-length="1mm"/>de<fo:leader leader-pattern="space" leader-length="1mm"/>
              <fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/anio" /></fo:inline>
              </fo:block>


              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block font-family="Arial, Helvetica, sans-serif" line-height="4.5mm" font-size="11pt" text-align="center" ><fo:leader leader-length="6cm" leader-pattern="rule" rule-style="solid" rule-thickness="0.4mm" color="black"/></fo:block>
              <fo:block font-family="Arial, Helvetica, sans-serif" line-height="4.5mm" font-size="11pt" text-align="center" >Firma del Suscriptor</fo:block>
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>




            <!-- AQUI COMIENZA LOS DATOS  DEL SUSCRIPTOR NOMBRE O RAZON SOCIAL -->
             <xsl:apply-templates select="../OperacionCredito"/>
            <!-- AQUI TERMINA LOS DATOS  DEL SUSCRIPTOR NOMBRE O RAZON SOCIAL -->

            <!-- AQUI COMIENZA LOS DATOS  DEL SUSCRIPTOR DOMICILIO, COMUNA Y CIUDAD -->
             <xsl:apply-templates select="../DireccionDeudorBci"/>
            <!-- AQUI TERMINAN LOS DATOS  DEL SUSCRIPTOR DOMICILIO, COMUNA Y CIUDAD -->

           <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
           <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
	   <fo:block font-family="Arial, Helvetica, sans-serif" line-height="4.5mm" font-size="11pt" text-align="center" >Página 3 de 3</fo:block>
                    </fo:flow>
          </xsl:when>
          <!--   AQUI TERMINA EL TEMPLATE   docpg03c  -->




          <!--   AQUI COMIENZA EL TEMPLATE   docpg04a  -->
          <xsl:when test="template = 'docpg04a'">
                    <fo:flow flow-name="xsl-region-body">
              <fo:table border-collapse="collapse">
              <fo:table-column column-width="50mm" />
              <fo:table-column column-width="50mm" />
              <fo:table-body>
                  <fo:table-row>
                        <fo:table-cell text-align="left">
                                <fo:block >
                                  <fo:external-graphic height="12mm" width="25mm" vertical-align="middle">
                                    <xsl:attribute name="src">
                                    <xsl:value-of select="../OperacionCredito/logoBciSomosDiferentes"/>
                                    </xsl:attribute>
                                  </fo:external-graphic>
                                </fo:block>
                        </fo:table-cell>
                        <fo:table-cell >
                                <fo:block >
                                </fo:block>
                        </fo:table-cell>
                  </fo:table-row>
              </fo:table-body>
              </fo:table>               
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block font-family="Arial, Helvetica, sans-serif" line-height="4.5mm" font-size="11pt" text-align="center" ><fo:inline font-weight="bold"> PAGARE (Sin Protesto)</fo:inline></fo:block>
              <fo:block font-family="Arial, Helvetica, sans-serif" line-height="4.5mm" font-size="11pt" text-align="center" ><fo:inline font-weight="bold">CUOTA FIJA TASA FIJA $</fo:inline></fo:block>
              <fo:block font-family="Arial, Helvetica, sans-serif" line-height="4.5mm" font-size="11pt" text-align="center" > <fo:inline font-weight="bold">(Meses de no pago)</fo:inline></fo:block>
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:table border-collapse="collapse" font-family="Arial, Helvetica, sans-serif" font-size="11pt" text-align="left">
                  <fo:table-column column-width="50%"/>
                  <fo:table-column column-width="50%"/>
                  <fo:table-body>
                      <fo:table-row>
                          <fo:table-cell > _
                              <fo:block font-family="Arial, Helvetica, sans-serif" line-height="4.5mm" font-size="11pt" text-align="left" >N° de Operación :<fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/nroOperacion" /></fo:inline></fo:block>
                          </fo:table-cell>
                      </fo:table-row>
                  </fo:table-body>
              </fo:table>
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="justify"  >Por valor recibido, debo y pagaré a la orden del BANCO DE CREDITO E INVERSIONES, en  su  domicilio ubicado en Avenida El Golf  N° 125,  Comuna de Las  Condes,  Santiago,  o  en  cualquiera  de  sus  sucursales,  la  suma de <fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold">$</fo:inline><fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold">
                    <xsl:value-of select='format-number(../OperacionCredito/montoCredito, "###.###.##0","decimal")' />
              </fo:inline><fo:leader leader-pattern="space" leader-length="1mm"/>(<fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/montoCreditoManoEscrita" /></fo:inline> pesos m/l)</fo:block>
              <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="left" > <fo:inline font-weight="bold">Tasa de Interés</fo:inline></fo:block>
              <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="justify"  >El capital adeudado  devengará a partir de esta fecha una tasa de interés del <fo:inline font-weight="bold"><xsl:value-of select='format-number(../OperacionCredito/tasaInteres, "###,####","decimal")'/></fo:inline>% mensual vencido durante todo el plazo pactado.</fo:block>
              <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="left" ><fo:inline font-weight="bold">Amortización del Capital</fo:inline></fo:block>
              <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="justify"  >El capital adeudado se pagará en <fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="count(../CalendarioPago)" /></fo:inline><fo:leader leader-pattern="space" leader-length="1mm"/> cuotas mensuales, iguales y sucesivas, de <fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold">$</fo:inline> <fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select='format-number(../OperacionCredito/montoCuota, "###.###.##0","decimal")' /></fo:inline><fo:leader leader-pattern="space" leader-length="1mm"/>cada una, con vencimiento la primera de ellas el día <fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/fechaPrimerVctoDD" /></fo:inline><fo:leader leader-pattern="space" leader-length="1mm"/>de<fo:leader leader-pattern="space" leader-length="1mm"/>

              <!--<fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/fechaPrimerVctoMM" /></fo:inline>-->
              <xsl:variable name="mes" select="../OperacionCredito/fechaPrimerVctoMM" />
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

              <fo:leader leader-pattern="space" leader-length="1mm"/>de<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/fechaPrimerVctoYYYY" /></fo:inline>  y las restantes los días<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/diaVencimiento" /></fo:inline><fo:leader leader-pattern="space" leader-length="1mm"/>de cada mes, excepto en los meses de <fo:leader leader-pattern="space" leader-length="1mm"/>

              <fo:inline font-weight="bold">



              <xsl:variable name="mesp" select="count(../MesNoPago)" />
              <xsl:if test="$mesp  &gt; 0">
                <xsl:for-each select="../MesNoPago">
                 <xsl:value-of select="glosaMes" />
                 <fo:leader leader-pattern="space" leader-length="1mm"/>,
                </xsl:for-each>
              </xsl:if>
              </fo:inline>
              en que no se verificará amortización de capital ni pago  de intereses, venciendo  la última de ellas, el día<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/fechaUltimoVctoDD" /></fo:inline><fo:leader leader-pattern="space" leader-length="1mm"/>de<fo:leader leader-pattern="space" leader-length="1mm"/>

              <!--<fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/fechaUltimoVctoMM" /></fo:inline>-->
              <xsl:variable name="mes" select="../OperacionCredito/fechaUltimoVctoMM" />
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


              <fo:leader leader-pattern="space" leader-length="1mm"/>del año<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/fechaUltimoVctoYYYY" /></fo:inline></fo:block>
              <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="left" > <fo:inline font-weight="bold">Intereses</fo:inline></fo:block>
              <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="justify"  >Por su parte,  los intereses se  pagarán en  las mismas fechas señaladas para las amortizaciones de capital.</fo:block>
              <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="justify"  ><fo:inline font-weight="bold">Prórroga de  plazo  por  día inhábil.</fo:inline> Las cuotas de amortización de capital e intereses se pagarán a su vencimiento,  siempre que éste corresponda a un día hábil  bancario.  En  caso  contrario,  se  pagarán  el  día  hábil  bancario siguiente.</fo:block>
              <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="justify"  ><fo:inline font-weight="bold">Prepagos.</fo:inline> Si el monto de  capital inicial  supera el  equivalente a UF 5.000, todo pago anticipado,  sea total o parcial,  será convenido  libremente entre el  suscriptor y el Banco.  A falta  de  acuerdo, el suscriptor podrá en todo caso  anticipar el pago, total o parcialmente, y en este último caso, siempre que  el importe  a  pagar sea  igual o  superior al  20 % del  capital de  la obligación  adeudada,  pagando  además los intereses estipulados devengados y no pagados a la fecha  del prepago,  calculados sobre el saldo  insoluto, más los  intereses  estipulados  en este instrumento, calculados sobre el capital prepagado desde la fecha  del prepago hasta el vencimiento del  plazo pactado.Si  el  monto  de capital  inicial  no  supera  el equivalente a UF 5.000, al capital  prepagado deberán sumársele los intereses  calculados hasta la fecha del  prepago y  la comisión de  prepago máxima  que el articulo  10 de la Ley 18.010 permite pactar.</fo:block>
              <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="justify"  ><fo:inline font-weight="bold">Exigibilidad anticipada.</fo:inline> El no pago oportuno de una  cualquiera de las cuotas de capital y/o  de interés comprendidos  en esta  obligación, dará derecho al acreedor a hacer  exigible de inmediato  y anticipadamente el monto total del saldo  insoluto  adeudado  a  esa  fecha,  el que desde  esa misma  fecha  se considerará de plazo vencido y devengará en favor del acreedor o de quien sus derechos  represente, el interés máximo convencional que rija durante la mora o simple retardo.</fo:block>
              <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="justify"  >Sin embargo, en operaciones de crédito de dinero cuyo capital sea igual o inferior a doscientas unidades de fomento no podrá hacerse exigible la obligación en forma anticipada, si no una vez cumplidos sesenta días corridos desde que el deudor incurra en mora o simple retardo en el pago.</fo:block>
              <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="justify"  >Se deja expresamente establecido que  el ejercicio de este derecho constituye una  sanción  al  suscriptor  por el no  pago de  la deuda e importa una mera facultad  establecida en  beneficio exclusivo  del acreedor, que no altera en caso alguno la fecha de vencimiento del pagaré originalmente pactada, ni a la exigibilidad de las acciones cambiarias y ejecutivas derivadas de éste.</fo:block>
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block font-family="Arial, Helvetica, sans-serif" line-height="4.5mm" font-size="11pt" text-align="center" >Página 1 de 3</fo:block>
                    </fo:flow>
          </xsl:when>
          <!--   AQUI TERMINA EL TEMPLATE   docpg04a  -->


          <!--   AQUI COMIENZA EL TEMPLATE   docpg04b  -->
          <xsl:when test="template = 'docpg04b'">
                    <fo:flow flow-name="xsl-region-body">
                    
              <fo:table border-collapse="collapse">
              <fo:table-column column-width="50mm" />
              <fo:table-column column-width="50mm" />
              <fo:table-body>
                  <fo:table-row>
                        <fo:table-cell text-align="left">
                                <fo:block >
                                  <fo:external-graphic height="12mm" width="25mm" vertical-align="middle">
                                    <xsl:attribute name="src">
                                    <xsl:value-of select="../OperacionCredito/logoBciSomosDiferentes"/>
                                    </xsl:attribute>
                                  </fo:external-graphic>
                                </fo:block>
                        </fo:table-cell>
                        <fo:table-cell >
                                <fo:block >
                                </fo:block>
                        </fo:table-cell>
                  </fo:table-row>
              </fo:table-body>
              </fo:table>
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block font-family="Arial, Helvetica, sans-serif" line-height="4.5mm" font-size="11pt" text-align="left" >Nº Operación<fo:leader leader-pattern="space" leader-length="18.5mm"/>:<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/nroOperacion" /></fo:inline></fo:block>
              <fo:block font-family="Arial, Helvetica, sans-serif" line-height="4.5mm" font-size="11pt" text-align="left" >Fecha de suscripción<fo:leader leader-pattern="space" leader-length="6.8mm"/>:<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="substring(../OperacionCredito/fechaSuscripcion,0,4)" /></fo:inline>
              <xsl:variable name="mes" select="substring(../OperacionCredito/fechaSuscripcion,4,2)" />
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
              <fo:inline font-weight="bold"><xsl:value-of select="substring(../OperacionCredito/fechaSuscripcion,6,5)" /></fo:inline>
              </fo:block>


              <fo:block font-family="Arial, Helvetica, sans-serif" line-height="4.5mm" font-size="11pt" text-align="left" >Monto<fo:leader leader-pattern="space" leader-length="29.6mm"/>:<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/moneda" /></fo:inline><fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold">

              <xsl:variable name="moneda" select="../OperacionCredito/moneda" />
                <xsl:choose>

                  <xsl:when test="$moneda = 'UF'">
                     <xsl:value-of select='format-number(../OperacionCredito/montoCredito, "###.###.##0,0000","decimal")' />
                  </xsl:when>


                  <xsl:when test="$moneda = '$'">
                    <xsl:value-of select='format-number(../OperacionCredito/montoCredito, "###.###.##0","decimal")' />
                  </xsl:when>

              </xsl:choose>

              </fo:inline></fo:block>
              <fo:block font-family="Arial, Helvetica, sans-serif" line-height="4.5mm" font-size="11pt" text-align="left" >Deudor<fo:leader leader-pattern="space" leader-length="28mm"/>:<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/nombreCompletoCliente" /></fo:inline></fo:block>
              <fo:block font-family="Arial, Helvetica, sans-serif" line-height="4.5mm" font-size="11pt" text-align="left" >RUT<fo:leader leader-pattern="space" leader-length="32.2mm"/>:<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select='format-number(../OperacionCredito/rutCliente, "###.###.##0","rut")' /></fo:inline>-<fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/dvCliente" /></fo:inline></fo:block>
              
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="justify"  >El Banco podrá hacer exigible de inmediato el monto total adeudado, expirando todos los  plazos  pendientes por el sólo  hecho de constituirse en mora o de habérsele  protestado  al deudor  o al aval,  por  falta  de pago,  cualquier documento,  pagaré,  letra de cambio o  cheque,  aceptado, suscrito, girado o avalado por él.</fo:block>
              <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="justify"  >Se  deja  expresamente  establecido  que corresponderá al deudor acreditar el pago de las cuotas en que se divide el presente instrumento, en caso de cobro judicial.</fo:block>
              <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="justify"  ><fo:inline font-weight="bold">Indivisibilidad  y solidaridad.</fo:inline>  Las obligaciones  que emanen de  este pagaré serán  solidarias para el suscriptor, avalista(s) y demás obligados al pago y serán  indivisibles  para  sus herederos.  Además,  el suscriptor  pagará los gastos, impuestos y costas personales y procesales que correspondan.</fo:block>
              <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="justify"  ><fo:inline font-weight="bold">Mandato para prórrogas.</fo:inline> El  suscriptor  faculta  al Banco de Crédito  e  Inversiones para que en su nombre y representación otorgue, previa autorización expresa de éste, una o más prórrogas que establezcan nuevas condiciones, tasas de interés y fechas de vencimiento. </fo:block>
              <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="justify"  ><fo:inline font-weight="bold">Domicilio y competencia.</fo:inline> Para todos los efectos legales, judiciales o extrajudiciales derivados de este pagaré, las partes acuerdan someterse  a los Tribunales de Justicia con asiento en la comuna y ciudad del domicilio del suscriptor,  lo que  será obligatorio tanto para el suscriptor como para sus avales, endosantes u obligados por garantía.</fo:block>
              <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="justify"  >Sin perjuicio declaro, que mi domicilio y residencia son los consignados en  este título, comprometiéndome a dar pronto aviso por escrito al Banco, en el evento que realice cualquier cambio de domicilio en el futuro.</fo:block>
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="justify"  ><fo:inline font-weight="bold">Impuesto de timbres y estampillas.</fo:inline> El impuesto de timbres y estampillas que grava  este  documento se paga por ingresos mensuales de dinero en Tesorería, según Decreto Ley Nº 3475.</fo:block>

              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block font-family="Arial, Helvetica, sans-serif" line-height="4.5mm" font-size="11pt" text-align="left" >
              En<fo:leader leader-pattern="space" leader-length="1mm"/>
              <fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/ciudadContrato" /></fo:inline>,
              <fo:leader leader-pattern="space" leader-length="1mm"/>a<fo:leader leader-pattern="space" leader-length="1mm"/>
              <fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/dia" /></fo:inline>

              <!--<fo:leader leader-pattern="space" leader-length="1mm"/>de<fo:leader leader-pattern="space" leader-length="1mm"/>
              <fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/mes" /></fo:inline>-->
              <fo:leader leader-pattern="space" leader-length="1mm"/>de<fo:leader leader-pattern="space" leader-length="1mm"/>
              <xsl:variable name="mes" select="../OperacionCredito/mes" />
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


              <fo:leader leader-pattern="space" leader-length="1mm"/>de<fo:leader leader-pattern="space" leader-length="1mm"/>
              <fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/anio" /></fo:inline>
              </fo:block>


              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block font-family="Arial, Helvetica, sans-serif" line-height="4.5mm" font-size="11pt" text-align="center" ><fo:leader leader-length="6cm" leader-pattern="rule" rule-style="solid" rule-thickness="0.4mm" color="black"/></fo:block>
              <fo:block font-family="Arial, Helvetica, sans-serif" line-height="4.5mm" font-size="11pt" text-align="center" >Firma del Suscriptor</fo:block>
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>


           <!-- AQUI COMIENZA LOS DATOS  DEL SUSCRIPTOR NOMBRE O RAZON SOCIAL -->
             <xsl:apply-templates select="../OperacionCredito"/>
            <!-- AQUI TERMINA LOS DATOS  DEL SUSCRIPTOR NOMBRE O RAZON SOCIAL -->

            <!-- AQUI COMIENZA LOS DATOS  DEL SUSCRIPTOR DOMICILIO, COMUNA Y CIUDAD -->
             <xsl:apply-templates select="../DireccionDeudorBci"/>
            <!-- AQUI TERMINAN LOS DATOS  DEL SUSCRIPTOR DOMICILIO, COMUNA Y CIUDAD -->
            <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
	    <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
	    <fo:block font-family="Arial, Helvetica, sans-serif" line-height="4.5mm" font-size="11pt" text-align="center" >Página 2 de 3</fo:block>
                    </fo:flow>
          </xsl:when>
          <!--   AQUI TERMINA EL TEMPLATE   docpg04b  -->




          <!--   AQUI COMIENZA EL TEMPLATE   docpg05a  -->
          <xsl:when test="template = 'docpg05a'">
                    <fo:flow flow-name="xsl-region-body">
              <fo:table border-collapse="collapse">
              <fo:table-column column-width="50mm" />
              <fo:table-column column-width="50mm" />
              <fo:table-body>
                  <fo:table-row>
                        <fo:table-cell text-align="left">
                                <fo:block >
                                  <fo:external-graphic height="12mm" width="25mm" vertical-align="middle">
                                    <xsl:attribute name="src">
                                    <xsl:value-of select="../OperacionCredito/logoBciSomosDiferentes"/>
                                    </xsl:attribute>
                                  </fo:external-graphic>
                                </fo:block>
                        </fo:table-cell>
                        <fo:table-cell >
                                <fo:block >
                                </fo:block>
                        </fo:table-cell>
                  </fo:table-row>
              </fo:table-body>
              </fo:table>
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block font-family="Arial, Helvetica, sans-serif" line-height="4.5mm" font-size="11pt" text-align="center" ><fo:inline font-weight="bold">PAGARÉ (Sin Protesto)</fo:inline></fo:block>
              <fo:block font-family="Arial, Helvetica, sans-serif" line-height="4.5mm" font-size="11pt" text-align="center" ><fo:inline font-weight="bold">CUOTA FIJA TASA FIJA UF</fo:inline></fo:block>
              <fo:block font-family="Arial, Helvetica, sans-serif" line-height="4.5mm" font-size="11pt" text-align="center" ><fo:inline font-weight="bold">(Meses de no pago)</fo:inline></fo:block>
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:table border-collapse="collapse" font-family="Arial, Helvetica, sans-serif" font-size="11pt" text-align="left">
                  <fo:table-column column-width="50%"/>
                  <fo:table-column column-width="50%"/>
                  <fo:table-body>
                      <fo:table-row>
                          <fo:table-cell > _
                              <fo:block font-family="Arial, Helvetica, sans-serif" line-height="4.5mm" font-size="11pt" text-align="left" >N° de Operación :<fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/nroOperacion" /></fo:inline></fo:block>
                          </fo:table-cell>
                      </fo:table-row>
                  </fo:table-body>
              </fo:table>
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block font-family="Arial, Helvetica, sans-serif" line-height="4.5mm" font-size="11pt" text-align="justify"  >Por valor recibido,  debo  y  pagaré  a  la  orden  del  BANCO  DE  CREDITO E INVERSIONES, en su domicilio ubicado en Avenida El Golf N° 125, Comuna de Las Condes,  Santiago,   o   en   cualquiera   de  sus  sucursales,  la  suma  de <fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/moneda" /></fo:inline><fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold">


              <!--<xsl:value-of select='format-number(../OperacionCredito/montoCredito, "###.###.##0,000","decimal")' />-->
              <xsl:variable name="moneda" select="../OperacionCredito/moneda" />
                <xsl:choose>




                  <xsl:when test="$moneda = 'UF'">
                     <xsl:value-of select='format-number(../OperacionCredito/montoCredito, "###.###.##0,0000","decimal")' />
                  </xsl:when>


                  <xsl:when test="$moneda = '$'">
                    <xsl:value-of select='format-number(../OperacionCredito/montoCredito, "###.###.##0","decimal")' />
                  </xsl:when>

              </xsl:choose>


              </fo:inline> <fo:leader leader-pattern="space" leader-length="1mm"/>(<fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/montoCreditoManoEscrita" /></fo:inline> Unidades de Fomento ) .,equivalentes a esta fecha a la suma de <fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/moneda" /></fo:inline> <fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold">

              <!--<xsl:value-of select='format-number(../OperacionCredito/montoCredito, "###.###.##0,000","decimal")' />-->
              <xsl:variable name="moneda" select="../OperacionCredito/moneda" />
                <xsl:choose>

                  <xsl:when test="$moneda = 'UF'">
                     <xsl:value-of select='format-number(../OperacionCredito/montoCredito, "###.###.##0,0000","decimal")' />
                  </xsl:when>


                  <xsl:when test="$moneda = '$'">
                    <xsl:value-of select='format-number(../OperacionCredito/montoCredito, "###.###.##0","decimal")' />
                  </xsl:when>

              </xsl:choose>


              </fo:inline><fo:leader leader-pattern="space" leader-length="1mm"/>(<fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/montoCreditoManoEscrita" /></fo:inline> pesos m/l) .</fo:block>
              <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="left" > <fo:inline font-weight="bold">Tasa de Interés</fo:inline></fo:block>
              <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="justify"  >El  capital adeudado devengará a partir de esta fecha una tasa de interés del  <fo:inline font-weight="bold"><xsl:value-of select='format-number(../OperacionCredito/tasaInteres, "###,####","decimal")'/></fo:inline>% anual vencido durante todo el plazo pactado.</fo:block>
              <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="left" > <fo:inline font-weight="bold">Amortización del Capital</fo:inline></fo:block>
              <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="justify"  >El capital adeudado se pagará en <fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="count(../CalendarioPago)" /></fo:inline><fo:leader leader-pattern="space" leader-length="1mm"/> cuotas mensuales, iguales y sucesivas, de <fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/moneda" /></fo:inline> <fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select='format-number(../OperacionCredito/montoCuota, "###.###.##0,000","decimal")' /></fo:inline><fo:leader leader-pattern="space" leader-length="1mm"/>cada una, con vencimiento la primera de ellas el día <fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/fechaPrimerVctoDD" /></fo:inline><fo:leader leader-pattern="space" leader-length="1mm"/>de<fo:leader leader-pattern="space" leader-length="1mm"/>

              <!--<fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/fechaPrimerVctoMM" /></fo:inline>-->
              <xsl:variable name="mes" select="../OperacionCredito/fechaPrimerVctoMM" />
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

              <fo:leader leader-pattern="space" leader-length="1mm"/>de<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/fechaPrimerVctoYYYY" /></fo:inline> las restantes los días<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/diaVencimiento" /></fo:inline>de cada mes excepto  en  los  meses  de  <fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/mesesNoPago" /></fo:inline>, en que no se verificará amortización de capital ni pago de intereses,  venciendo la última de ellas el día <fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/fechaUltimoVctoDD" /></fo:inline><fo:leader leader-pattern="space" leader-length="1mm"/>de<fo:leader leader-pattern="space" leader-length="1mm"/>

              <!--<fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/fechaUltimoVctoMM" /></fo:inline>-->
              <xsl:variable name="mes" select="../OperacionCredito/fechaUltimoVctoMM" />
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



              <fo:leader leader-pattern="space" leader-length="1mm"/>de<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/fechaUltimoVctoYYYY" /></fo:inline></fo:block>
              <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="left" > <fo:inline font-weight="bold">Intereses</fo:inline></fo:block>
              <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="justify"  >Por su  parte,  los intereses  se pagarán en las mismas fechas señaladas para las amortizaciones de capital.</fo:block>
              <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="justify"  ><fo:inline font-weight="bold">Prórroga de plazo por día inhábil.</fo:inline>  Las cuotas  de  amortización de capital e intereses se  pagarán a su vencimiento, siempre que éste corresponda a un día hábil  bancario.  En  caso  contrario,  se  pagarán  el  día  hábil  bancario siguiente.</fo:block>
              <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="justify"  ><fo:inline font-weight="bold">Equivalencia.</fo:inline>  Las sumas adeudas,  tanto  en  lo referente  a  capital como a intereses, se calcularán por su equivalente en moneda legal chilena al día de pago efectivo.</fo:block>
              <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="justify"  ><fo:inline font-weight="bold">Prepagos.</fo:inline> Si el monto  de  capital  inicial supera el equivalente a UF 5.000, todo pago anticipado, sea total o parcial, será convenido libremente entre el suscriptor y el Banco.  A  falta de acuerdo, el suscriptor podrá en todo caso anticipar  el pago, total o parcialmente, y en  este último caso, siempre que el importe  a pagar sea igual o superior al 20 % del capital de la obligación adeudada,  pagando además los intereses estipulados devengados y no pagados a la fecha  del prepago, calculados  sobre el saldo insoluto, más los intereses estipulados en este instrumento,  calculados sobre el capital prepagado desde la fecha  del prepago hasta  el vencimiento del plazo pactado. Si el monto de capital inicial  no supera  el equivalente a UF 5.000, al  capital  prepagado deberán sumársele  los intereses  calculados hasta la  fecha del prepago y la comisión  de  prepago  máxima  que  el articulo  10 de  la Ley 18.010 permite pactar.</fo:block>
              <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="justify"  ><fo:inline font-weight="bold">Exigibilidad anticipada.</fo:inline>  El no pago oportuno de una cualquiera de las cuotas de capital  y/o de  interés comprendidos en esta obligación,  dará derecho al acreedor a  hacer exigible de  inmediato y anticipadamente el monto total del saldo  insoluto  adeudado  a esa fecha,  el que  desde  esa  misma  fecha  se considerará de plazo vencido y devengará en favor del acreedor o de quien sus derechos represente, el interés máximo convencional que rija  durante la mora o simple retardo.</fo:block>
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
	      <fo:block font-family="Arial, Helvetica, sans-serif" line-height="4.5mm" font-size="11pt" text-align="center" >Página 1 de 3</fo:block>              
                    </fo:flow>
          </xsl:when>
          <!--   AQUI TERMINA EL TEMPLATE   docpg05a  -->


          <!--   AQUI COMIENZA EL TEMPLATE   docpg05b  -->
          <xsl:when test="template = 'docpg05b'">
                    <fo:flow flow-name="xsl-region-body">
              <fo:table border-collapse="collapse">
              <fo:table-column column-width="50mm" />
              <fo:table-column column-width="50mm" />
              <fo:table-body>
                  <fo:table-row>
                        <fo:table-cell text-align="left">
                                <fo:block >
                                  <fo:external-graphic height="12mm" width="25mm" vertical-align="middle">
                                    <xsl:attribute name="src">
                                    <xsl:value-of select="../OperacionCredito/logoBciSomosDiferentes"/>
                                    </xsl:attribute>
                                  </fo:external-graphic>
                                </fo:block>
                        </fo:table-cell>
                        <fo:table-cell >
                                <fo:block >
                                </fo:block>
                        </fo:table-cell>
                  </fo:table-row>
              </fo:table-body>
              </fo:table>
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block font-family="Arial, Helvetica, sans-serif" line-height="4.5mm" font-size="11pt" text-align="left" >Nº Operación<fo:leader leader-pattern="space" leader-length="18.5mm"/>:<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/nroOperacion" /></fo:inline></fo:block>
              <fo:block font-family="Arial, Helvetica, sans-serif" line-height="4.5mm" font-size="11pt" text-align="left" >Fecha de suscripción<fo:leader leader-pattern="space" leader-length="6.8mm"/>:<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="substring(../OperacionCredito/fechaSuscripcion,0,4)" /></fo:inline>
              <xsl:variable name="mes" select="substring(../OperacionCredito/fechaSuscripcion,4,2)" />
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
              <fo:inline font-weight="bold"><xsl:value-of select="substring(../OperacionCredito/fechaSuscripcion,6,5)" /></fo:inline>
              </fo:block>


              <fo:block font-family="Arial, Helvetica, sans-serif" line-height="4.5mm" font-size="11pt" text-align="left" >Monto<fo:leader leader-pattern="space" leader-length="29.6mm"/>:<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/moneda" /></fo:inline><fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold">

              <xsl:variable name="moneda" select="../OperacionCredito/moneda" />
                <xsl:choose>

                  <xsl:when test="$moneda = 'UF'">
                     <xsl:value-of select='format-number(../OperacionCredito/montoCredito, "###.###.##0,0000","decimal")' />
                  </xsl:when>


                  <xsl:when test="$moneda = '$'">
                    <xsl:value-of select='format-number(../OperacionCredito/montoCredito, "###.###.##0","decimal")' />
                  </xsl:when>

              </xsl:choose>

              </fo:inline></fo:block>
              <fo:block font-family="Arial, Helvetica, sans-serif" line-height="4.5mm" font-size="11pt" text-align="left" >Deudor<fo:leader leader-pattern="space" leader-length="28mm"/>:<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/nombreCompletoCliente" /></fo:inline></fo:block>
              <fo:block font-family="Arial, Helvetica, sans-serif" line-height="4.5mm" font-size="11pt" text-align="left" >RUT<fo:leader leader-pattern="space" leader-length="32.2mm"/>:<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select='format-number(../OperacionCredito/rutCliente, "###.###.##0","rut")' /></fo:inline>-<fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/dvCliente" /></fo:inline></fo:block>
              
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
			  <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="justify"  >Sin embargo, en operaciones de crédito de dinero cuyo capital sea igual o inferior a doscientas unidades de fomento no podrá hacerse exigible la obligación en forma anticipada, si no una vez cumplidos sesenta días corridos desde que el deudor incurra en mora o simple retardo en el pago.</fo:block>              
              <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="justify"  >Se  deja expresamente establecido que el ejercicio de este derecho constituye una  sanción al  suscriptor  por el  no pago  de la  deuda e importa una mera facultad  establecida  en  beneficio exclusivo del acreedor, que no altera en caso alguno la fecha de vencimiento del pagaré originalmente pactada, ni a la exigibilidad de las acciones cambiarias y ejecutivas derivadas de éste.</fo:block>
              <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="justify"  >El Banco podrá hacer exigible de inmediato el monto total adeudado, expirando todos los plazos  pendientes  por el sólo  hecho de constituirse en mora o de habérsele  protestado  al  deudor  o al aval, por  falta  de pago,  cualquier documento,  pagaré, letra  de cambio o  cheque, aceptado,  suscrito, girado o avalado por él.</fo:block>
              <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="justify"  >Se deja  expresamente  establecido  que corresponderá  al deudor acreditar el pago de las cuotas en que se divide el presente instrumento, en caso de cobro judicial.</fo:block>
              <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="justify"  ><fo:inline font-weight="bold">Indivisibilidad  y  solidaridad.</fo:inline>  Las  obligaciones que emanen de este pagaré serán solidarias  para el suscriptor, avalista(s) y demás obligados al pago y serán  indivisibles  para  sus herederos.  Además, el  suscriptor  pagará los gastos, impuestos y costas personales y procesales que correspondan.</fo:block>
              <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="justify"  ><fo:inline font-weight="bold">Mandato para prórrogas.</fo:inline> El  suscriptor  faculta  al Banco de Crédito  e  Inversiones para que en su nombre y representación otorgue, previa autorización expresa de éste, una o más prórrogas que establezcan nuevas condiciones, tasas de interés y fechas de vencimiento. </fo:block>
              <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="justify"  ><fo:inline font-weight="bold">Domicilio  y  competencia.</fo:inline>  Para todos los efectos legales, judiciales o extrajudiciales derivados de este pagaré, las partes acuerdan someterse  a los Tribunales de Justicia con asiento en la comuna y ciudad del domicilio del suscriptor,  lo que  será obligatorio tanto para el suscriptor como para sus avales, endosantes u obligados por garantía. Sin perjuicio declaro, que mi domicilio y residencia son los consignados en  este título, comprometiéndome a dar pronto aviso por escrito al Banco, en el evento que realice cualquier cambio de domicilio en el futuro.</fo:block>
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="justify"  ><fo:inline font-weight="bold">Impuesto de timbres y estampillas.</fo:inline> El impuesto de timbres y estampillas que grava este  documento se paga por ingresos  mensuales de dinero en Tesorería, según Decreto Ley Nº 3475.</fo:block>
              <fo:block font-family="Arial, Helvetica, sans-serif" line-height="4.5mm" font-size="11pt" text-align="left" >
              En<fo:leader leader-pattern="space" leader-length="1mm"/>
              <fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/ciudadContrato" /></fo:inline>,
              <fo:leader leader-pattern="space" leader-length="1mm"/>a<fo:leader leader-pattern="space" leader-length="1mm"/>
              <fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/dia" /></fo:inline>

              <!--<fo:leader leader-pattern="space" leader-length="1mm"/>de<fo:leader leader-pattern="space" leader-length="1mm"/>
              <fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/mes" /></fo:inline>-->
              <fo:leader leader-pattern="space" leader-length="1mm"/>de<fo:leader leader-pattern="space" leader-length="1mm"/>
              <xsl:variable name="mes" select="../OperacionCredito/mes" />
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

              <fo:leader leader-pattern="space" leader-length="1mm"/>de<fo:leader leader-pattern="space" leader-length="1mm"/>
              <fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/anio" /></fo:inline>
              </fo:block>
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block font-family="Arial, Helvetica, sans-serif" line-height="4.5mm" font-size="11pt" text-align="center" ><fo:leader leader-length="6cm" leader-pattern="rule" rule-style="solid" rule-thickness="0.4mm" color="black"/></fo:block>
              <fo:block font-family="Arial, Helvetica, sans-serif" line-height="4.5mm" font-size="11pt" text-align="center" >Firma del Suscriptor</fo:block>
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>

           <!-- AQUI COMIENZA LOS DATOS  DEL SUSCRIPTOR NOMBRE O RAZON SOCIAL -->
             <xsl:apply-templates select="../OperacionCredito"/>
            <!-- AQUI TERMINA LOS DATOS  DEL SUSCRIPTOR NOMBRE O RAZON SOCIAL -->

            <!-- AQUI COMIENZA LOS DATOS  DEL SUSCRIPTOR DOMICILIO, COMUNA Y CIUDAD -->
             <xsl:apply-templates select="../DireccionDeudorBci"/>
            <!-- AQUI TERMINAN LOS DATOS  DEL SUSCRIPTOR DOMICILIO, COMUNA Y CIUDAD -->

           <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
	   <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
	   <fo:block font-family="Arial, Helvetica, sans-serif" line-height="4.5mm" font-size="11pt" text-align="center" >Página 2 de 3</fo:block>
                    </fo:flow>
          </xsl:when>
          <!--   AQUI TERMINA EL TEMPLATE   docpg05b  -->



          <!--   AQUI COMIENZA EL TEMPLATE   docpg06a  -->
          <xsl:when test="template = 'docpg06a'">
                    <fo:flow flow-name="xsl-region-body">
              <fo:table border-collapse="collapse">
              <fo:table-column column-width="50mm" />
              <fo:table-column column-width="50mm" />
              <fo:table-body>
                  <fo:table-row>
                        <fo:table-cell text-align="left">
                                <fo:block >
                                  <fo:external-graphic height="12mm" width="25mm" vertical-align="middle">
                                    <xsl:attribute name="src">
                                    <xsl:value-of select="../OperacionCredito/logoBciSomosDiferentes"/>
                                    </xsl:attribute>
                                  </fo:external-graphic>
                                </fo:block>
                        </fo:table-cell>
                        <fo:table-cell >
                                <fo:block >
                                </fo:block>
                        </fo:table-cell>
                  </fo:table-row>
              </fo:table-body>
              </fo:table>
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block font-family="Arial, Helvetica, sans-serif" line-height="4.5mm" font-size="11pt" text-align="center" ><fo:inline font-weight="bold">PAGARÉ (Sin Protesto)</fo:inline></fo:block>
              <fo:block font-family="Arial, Helvetica, sans-serif" line-height="4.5mm" font-size="11pt" text-align="center" ><fo:inline font-weight="bold">UN VENCIMIENTO $ INTERES VENCIDO</fo:inline></fo:block>
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:table border-collapse="collapse" font-family="Arial, Helvetica, sans-serif" font-size="11pt" text-align="left">
                  <fo:table-column column-width="50%"/>
                  <fo:table-column column-width="50%"/>
                  <fo:table-body>
                      <fo:table-row>
                          <fo:table-cell > _
                              <fo:block font-family="Arial, Helvetica, sans-serif" line-height="4.5mm" font-size="11pt" text-align="left" >N° de Operación :<fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/nroOperacion" /></fo:inline></fo:block>
                          </fo:table-cell>
                          
                      </fo:table-row>
                  </fo:table-body>
              </fo:table>
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block font-family="Arial, Helvetica, sans-serif" line-height="4.5mm" font-size="11pt" text-align="justify"  >Por valor recibido,  debo  y  pagaré  a  la  orden  del  BANCO  DE  CREDITO E INVERSIONES, en su domicilio ubicado en Avenida El Golf N° 125, Comuna de Las Condes,  Santiago,   o   en   cualquiera   de  sus  sucursales,  la  suma de <fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold">$</fo:inline><fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold">



              <!--<xsl:value-of select="../OperacionCredito/montoCredito" />-->
              <xsl:variable name="moneda" select="../OperacionCredito/moneda" />
                <xsl:choose>

                  <xsl:when test="$moneda = 'UF'">
                     <xsl:value-of select='format-number(../OperacionCredito/montoCredito, "###.###.##0,0000","decimal")' />
                  </xsl:when>


                  <xsl:when test="$moneda = '$'">
                    <xsl:value-of select='format-number(../OperacionCredito/montoCredito, "###.###.##0","decimal")' />
                  </xsl:when>

              </xsl:choose>


              </fo:inline><fo:leader leader-pattern="space" leader-length="1mm"/>(<fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/montoCreditoManoEscrita" /></fo:inline> pesos m/l) .</fo:block>
              <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="left" > <fo:inline font-weight="bold">Tasa de Interés</fo:inline></fo:block>
              <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="justify"  >El capital adeudado devengará a partir de esta fecha  una tasa de interés del <fo:inline font-weight="bold"><xsl:value-of select='format-number(../OperacionCredito/tasaInteres, "###,####","decimal")'/></fo:inline>% mensual vencido durante todo el plazo pactado.</fo:block>
              <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="left" ><fo:inline font-weight="bold">Amortización del Capital</fo:inline></fo:block>
              <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="justify"  >El capital adeudado se pagará íntegramente el día <fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/fechaUltimoVctoDD" /></fo:inline><fo:leader leader-pattern="space" leader-length="1mm"/>de<fo:leader leader-pattern="space" leader-length="1mm"/>

              <xsl:variable name="mes" select="../OperacionCredito/fechaUltimoVctoMM" />
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

              <fo:leader leader-pattern="space" leader-length="1mm"/>de<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/fechaUltimoVctoYYYY" /></fo:inline></fo:block>
              <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="left" ><fo:inline font-weight="bold">Intereses</fo:inline></fo:block>
              <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="justify"  >Por  su parte,  los  intereses se pagarán en las mismas fechas señaladas para las amortizaciones de capital. </fo:block>
              <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="justify"  ><fo:inline font-weight="bold">Prórroga  de  plazo  por día inhábil.</fo:inline> Las cuotas de amortización de capital e intereses  se pagarán a su vencimiento, siempre que éste corresponda a un día hábil  bancario.  En  caso contrario,  se  pagarán   el  día  hábil  bancario siguiente.</fo:block>
              <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="justify"  ><fo:inline font-weight="bold">Prepagos.</fo:inline> Si el  monto  de  capital inicial supera el equivalente a UF 5.000, todo pago anticipado, sea total o parcial, será convenido libremente entre el suscriptor  y  el Banco. A falta de acuerdo, el suscriptor podrá en todo caso anticipar el pago,  total o parcialmente, y  en este último caso, siempre que el importe a pagar sea  igual o superior al 20 % del capital de la obligación adeudada, pagando además  los intereses estipulados devengados y no pagados a la fecha  del prepago, calculados  sobre el saldo insoluto, más los intereses estipulados en este instrumento, calculados  sobre el capital prepagado desde la fecha  del  prepago hasta el vencimiento del plazo pactado. Si el monto de capital  inicial  no  supera el  equivalente a UF 5.000, al capital prepagado deberán  sumársele  los  intereses calculados hasta la fecha del prepago y la comisión  de  prepago  máxima  que el  articulo  10 de la  Ley 18.010 permite pactar.</fo:block>
              <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="justify"  ><fo:inline font-weight="bold">Exigibilidad anticipada.</fo:inline> El no pago  oportuno de una cualquiera de las cuotas de  capital y/o de interés  comprendidos  en esta obligación, dará derecho al acreedor a  hacer exigible de  inmediato y anticipadamente el monto total del saldo  insoluto  adeudado  a  esa  fecha,  el  que  desde  esa misma fecha se considerará de plazo vencido y devengará en favor del acreedor o de quien sus derechos represente, el  interés máximo convencional que rija durante la mora o simple retardo. </fo:block>
              <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="justify"  >Sin embargo, en operaciones de crédito de dinero cuyo capital sea igual o inferior a doscientas unidades de fomento no podrá hacerse exigible la obligación en forma anticipada, si no una vez cumplidos sesenta días corridos desde que el deudor incurra en mora o simple retardo en el pago.</fo:block>
              <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="justify"  >Se  deja expresamente establecido que el ejercicio de este derecho constituye una  sanción  al  suscriptor  por  el  no pago de la deuda e importa una mera facultad  establecida  en beneficio exclusivo  del acreedor, que no altera en caso alguno la fecha de vencimiento del pagaré originalmente pactada, ni a la exigibilidad de las acciones cambiarias y ejecutivas derivadas de éste.</fo:block>
              <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="justify"  >El Banco podrá hacer exigible de inmediato el monto total adeudado, expirando todos  los  plazos  pendientes por el sólo hecho de constituirse en mora o de habérsele  protestado  al  deudor o  al aval, por  falta de  pago,  cualquier documento,  pagaré,  letra  de  cambio o cheque,  aceptado, suscrito,  girado o avalado por él.</fo:block>
              <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="justify"  >Se deja  expresamente  establecido  que  corresponderá al deudor acreditar el pago de las cuotas en que se divide el presente instrumento, en caso de cobro judicial.</fo:block>
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block font-family="Arial, Helvetica, sans-serif" line-height="4.5mm" font-size="11pt" text-align="center" >Página 1 de 3</fo:block>
                    </fo:flow>
          </xsl:when>
          <!--   AQUI TERMINA EL TEMPLATE   docpg06a  -->


          <!--   AQUI COMIENZA EL TEMPLATE   docpg06b  -->
          <xsl:when test="template = 'docpg06b'">
                   <fo:flow flow-name="xsl-region-body">
              <fo:table border-collapse="collapse">
              <fo:table-column column-width="50mm" />
              <fo:table-column column-width="50mm" />
              <fo:table-body>
                  <fo:table-row>
                        <fo:table-cell text-align="left">
                                <fo:block >
                                  <fo:external-graphic height="12mm" width="25mm" vertical-align="middle">
                                    <xsl:attribute name="src">
                                    <xsl:value-of select="../OperacionCredito/logoBciSomosDiferentes"/>
                                    </xsl:attribute>
                                  </fo:external-graphic>
                                </fo:block>
                        </fo:table-cell>
                        <fo:table-cell >
                                <fo:block >
                                </fo:block>
                        </fo:table-cell>
                  </fo:table-row>
              </fo:table-body>
              </fo:table>
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block font-family="Arial, Helvetica, sans-serif" line-height="4.5mm" font-size="11pt" text-align="left" >Nº Operación<fo:leader leader-pattern="space" leader-length="18.5mm"/>:<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/nroOperacion" /></fo:inline></fo:block>
              <fo:block font-family="Arial, Helvetica, sans-serif" line-height="4.5mm" font-size="11pt" text-align="left" >Fecha de suscripción<fo:leader leader-pattern="space" leader-length="6.8mm"/>:<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="substring(../OperacionCredito/fechaSuscripcion,0,4)" /></fo:inline>
              <xsl:variable name="mes" select="substring(../OperacionCredito/fechaSuscripcion,4,2)" />
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
              <fo:inline font-weight="bold"><xsl:value-of select="substring(../OperacionCredito/fechaSuscripcion,6,5)" /></fo:inline>
              </fo:block>


              <fo:block font-family="Arial, Helvetica, sans-serif" line-height="4.5mm" font-size="11pt" text-align="left" >Monto<fo:leader leader-pattern="space" leader-length="29.6mm"/>:<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/moneda" /></fo:inline><fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold">

              <xsl:variable name="moneda" select="../OperacionCredito/moneda" />
                <xsl:choose>

                  <xsl:when test="$moneda = 'UF'">
                     <xsl:value-of select='format-number(../OperacionCredito/montoCredito, "###.###.##0,0000","decimal")' />
                  </xsl:when>


                  <xsl:when test="$moneda = '$'">
                    <xsl:value-of select='format-number(../OperacionCredito/montoCredito, "###.###.##0","decimal")' />
                  </xsl:when>

              </xsl:choose>

              </fo:inline></fo:block>
              <fo:block font-family="Arial, Helvetica, sans-serif" line-height="4.5mm" font-size="11pt" text-align="left" >Deudor<fo:leader leader-pattern="space" leader-length="28mm"/>:<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/nombreCompletoCliente" /></fo:inline></fo:block>
              <fo:block font-family="Arial, Helvetica, sans-serif" line-height="4.5mm" font-size="11pt" text-align="left" >RUT<fo:leader leader-pattern="space" leader-length="32.2mm"/>:<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select='format-number(../OperacionCredito/rutCliente, "###.###.##0","rut")' /></fo:inline>-<fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/dvCliente" /></fo:inline></fo:block>
              
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="justify"  ><fo:inline font-weight="bold">Indivisibilidad  y  solidaridad.</fo:inline> Las obligaciones  que emanen  de este pagaré serán  solidarias para el suscriptor, avalista(s) y demás obligados al pago y serán  indivisibles  para sus herederos.  Además,  el  suscriptor  pagará los gastos, impuestos y costas personales y procesales que correspondan.</fo:block>
              <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="justify"  >Mandato para  prórrogas. El  suscriptor  faculta al Banco de Crédito e Inversiones  para concederle  bajo la firma de uno o más apoderados de éste, una o más  prórrogas  que se  efectuarán sin ánimo de novar, y fijar en tal  caso y dentro de  los límites legales,  nuevas condiciones,  tasas de interés y fechas de vencimiento. </fo:block>
              <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="justify"  ><fo:inline font-weight="bold">Domicilio  y  competencia.</fo:inline>  Para todos los efectos legales, judiciales o extrajudiciales derivados de este pagaré, las partes acuerdan someterse  a los Tribunales de Justicia con asiento en la comuna y ciudad del domicilio del suscriptor,  lo que  será obligatorio tanto para el suscriptor como para sus avales, endosantes u obligados por garantía. 
			  Sin perjuicio declaro, que mi domicilio y residencia son los consignados en  este título, comprometiéndome a dar pronto aviso por escrito al Banco, en el evento que realice cualquier cambio de domicilio en el futuro.</fo:block>
              <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="justify"  ><fo:inline font-weight="bold">Impuesto  de timbres y estampillas.</fo:inline>  El impuesto de timbres y estampillas que grava este  documento se  paga por ingresos mensuales de dinero en Tesorería, según Decreto Ley Nº 3475.</fo:block>


              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block font-family="Arial, Helvetica, sans-serif" line-height="4.5mm" font-size="11pt" text-align="left" >
              En<fo:leader leader-pattern="space" leader-length="1mm"/>
              <fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/ciudadContrato" /></fo:inline>,
              <fo:leader leader-pattern="space" leader-length="1mm"/>a<fo:leader leader-pattern="space" leader-length="1mm"/>
              <fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/dia" /></fo:inline>

              <!--<fo:leader leader-pattern="space" leader-length="1mm"/>de<fo:leader leader-pattern="space" leader-length="1mm"/>
              <fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/mes" /></fo:inline>-->
              <fo:leader leader-pattern="space" leader-length="1mm"/>de<fo:leader leader-pattern="space" leader-length="1mm"/>
              <xsl:variable name="mes" select="../OperacionCredito/mes" />
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


              <fo:leader leader-pattern="space" leader-length="1mm"/>de<fo:leader leader-pattern="space" leader-length="1mm"/>
              <fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/anio" /></fo:inline>
              </fo:block>




              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block font-family="Arial, Helvetica, sans-serif" line-height="4.5mm" font-size="11pt" text-align="center" ><fo:leader leader-length="6cm" leader-pattern="rule" rule-style="solid" rule-thickness="0.4mm" color="black"/></fo:block>
              <fo:block font-family="Arial, Helvetica, sans-serif" line-height="4.5mm" font-size="11pt" text-align="center" >Firma del Suscriptor</fo:block>
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>

           <!-- AQUI COMIENZA LOS DATOS  DEL SUSCRIPTOR NOMBRE O RAZON SOCIAL -->
             <xsl:apply-templates select="../OperacionCredito"/>
            <!-- AQUI TERMINA LOS DATOS  DEL SUSCRIPTOR NOMBRE O RAZON SOCIAL -->

            <!-- AQUI COMIENZA LOS DATOS  DEL SUSCRIPTOR DOMICILIO, COMUNA Y CIUDAD -->
             <xsl:apply-templates select="../DireccionDeudorBci"/>
            <!-- AQUI TERMINAN LOS DATOS  DEL SUSCRIPTOR DOMICILIO, COMUNA Y CIUDAD -->
           <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
           <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
	   <fo:block font-family="Arial, Helvetica, sans-serif" line-height="4.5mm" font-size="11pt" text-align="center" >Página 2 de 3</fo:block>
                    </fo:flow>
          </xsl:when>
          <!--   AQUI TERMINA EL TEMPLATE   docpg06b  -->



          <!--   AQUI COMIENZA EL TEMPLATE   docpg07a  -->
          <xsl:when test="template = 'docpg07a'">
                    <fo:flow flow-name="xsl-region-body">
              <fo:table border-collapse="collapse">
              <fo:table-column column-width="50mm" />
              <fo:table-column column-width="50mm" />
              <fo:table-body>
                  <fo:table-row>
                        <fo:table-cell text-align="left">
                                <fo:block >
                                  <fo:external-graphic height="12mm" width="25mm" vertical-align="middle">
                                    <xsl:attribute name="src">
                                    <xsl:value-of select="../OperacionCredito/logoBciSomosDiferentes"/>
                                    </xsl:attribute>
                                  </fo:external-graphic>
                                </fo:block>
                        </fo:table-cell>
                        <fo:table-cell >
                                <fo:block >
                                </fo:block>
                        </fo:table-cell>
                  </fo:table-row>
              </fo:table-body>
              </fo:table>
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                        <fo:block font-family="Arial, Helvetica, sans-serif" line-height="4.5mm" font-size="11pt" text-align="center" ><fo:inline font-weight="bold">PAGARÉ (Sin Protesto)</fo:inline></fo:block>
                        <fo:block font-family="Arial, Helvetica, sans-serif" line-height="4.5mm" font-size="11pt" text-align="center" ><fo:inline font-weight="bold">UN VENCIMIENTO UF INTERÉS VENCIDO</fo:inline></fo:block>
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:table border-collapse="collapse" font-family="Arial, Helvetica, sans-serif" font-size="11pt" text-align="left">
                  <fo:table-column column-width="50%"/>
                  <fo:table-column column-width="50%"/>
                  <fo:table-body>
                      <fo:table-row>
                          <fo:table-cell > _
                              <fo:block font-family="Arial, Helvetica, sans-serif" line-height="4.5mm" font-size="11pt" text-align="left" >N° de Operación :<fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/nroOperacion" /></fo:inline></fo:block>
                          </fo:table-cell>
                      </fo:table-row>
                  </fo:table-body>
              </fo:table>
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="justify"  >Por valor recibido,  debo  y  pagaré  a  la  orden  del  BANCO  DE  CREDITO E INVERSIONES, en su domicilio ubicado en Avenida El Golf N° 125, Comuna de Las Condes,  Santiago,   o   en   cualquiera   de  sus  sucursales,  la  suma  de <fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold">UF</fo:inline><fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold">


              <!--<xsl:value-of select='format-number(../OperacionCredito/montoCredito, "###.###.##0,000","decimal")' />-->
              <xsl:variable name="moneda" select="../OperacionCredito/moneda" />
                <xsl:choose>

                  <xsl:when test="$moneda = 'UF'">
                     <xsl:value-of select='format-number(../OperacionCredito/montoCredito, "###.###.##0,0000","decimal")' />
                  </xsl:when>


                  <xsl:when test="$moneda = '$'">
                    <xsl:value-of select='format-number(../OperacionCredito/montoCredito, "###.###.##0","decimal")' />
                  </xsl:when>

              </xsl:choose>


              </fo:inline> <fo:leader leader-pattern="space" leader-length="1mm"/>(<fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/montoCreditoManoEscrita" /></fo:inline><fo:leader leader-pattern="space" leader-length="1mm"/>Unidades de Fomento), equivalentes a esta fecha a la suma de <fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold">$</fo:inline> <fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold">

              <!--<xsl:value-of select='format-number(../OperacionCredito/montoCredito, "###.###.##0,000","decimal")' />-->
              <xsl:variable name="moneda" select="../OperacionCredito/moneda" />
                <xsl:choose>

                  <xsl:when test="$moneda = 'UF'">
                     <xsl:value-of select='format-number(../OperacionCredito/montoCredito, "###.###.##0,0000","decimal")' />
                  </xsl:when>


                  <xsl:when test="$moneda = '$'">
                    <xsl:value-of select='format-number(../OperacionCredito/montoCredito, "###.###.##0","decimal")' />
                  </xsl:when>

              </xsl:choose>


              </fo:inline><fo:leader leader-pattern="space" leader-length="1mm"/>(<fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/montoCreditoManoEscrita" /></fo:inline><fo:leader leader-pattern="space" leader-length="1mm"/>pesos m/l).</fo:block>
              <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="left" ><fo:inline font-weight="bold">Tasa de Interés</fo:inline></fo:block>
              <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="justify"  >El capital adeudado  devengará a partir de esta fecha una tasa de interés del <fo:inline font-weight="bold"><xsl:value-of select='format-number(../OperacionCredito/tasaInteres, "###,####","decimal")'/></fo:inline>% vencido durante todo el plazo pactado.</fo:block>
              <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="left" ><fo:inline font-weight="bold">Amortización del Capital</fo:inline></fo:block>
              <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="justify"  >El capital adeudado se pagará íntegramente el día <fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/fechaUltimoVctoDD" /></fo:inline><fo:leader leader-pattern="space" leader-length="1mm"/>de<fo:leader leader-pattern="space" leader-length="1mm"/>

              <xsl:variable name="mes" select="../OperacionCredito/fechaUltimoVctoMM" />
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


              <fo:leader leader-pattern="space" leader-length="1mm"/>de<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/fechaUltimoVctoYYYY" /></fo:inline> </fo:block>
              <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="left" ><fo:inline font-weight="bold">Intereses</fo:inline></fo:block>
              <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="justify"  >Por  su parte, los  intereses se  pagarán en las mismas fechas señaladas para las amortizaciones de capital.</fo:block>
              <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="justify"  ><fo:inline font-weight="bold">Prórroga  de  plazo  por día inhábil.</fo:inline> Las cuotas de amortización de capital e intereses se  pagarán a su vencimiento, siempre que éste corresponda a un día hábil  bancario.  En  caso  contrario,  se  pagarán  el  día  hábil  bancario siguiente.</fo:block>
              <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="justify"  ><fo:inline font-weight="bold">Equivalencia.</fo:inline> Las sumas adeudadas,  tanto  en  lo  referente a capital como a intereses, se calcularán por su equivalente en moneda legal chilena al día de pago efectivo.</fo:block>
              <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="justify"  ><fo:inline font-weight="bold">Prepagos.</fo:inline>  Si  el  monto de capital inicial supera el equivalente a UF 5.000, todo pago anticipado, sea total o parcial, será convenido libremente entre el suscriptor  y  el Banco. A falta de acuerdo, el suscriptor podrá en todo caso anticipar  el pago, total o  parcialmente, y en este último caso, siempre que el  importe a pagar sea igual o superior al 20 % del capital de la obligación adeudada, pagando  además los intereses estipulados devengados y no pagados a la fecha  del prepago,  calculados sobre el saldo insoluto, más los intereses estipulados  en este instrumento, calculados sobre el capital prepagado desde la fecha  del prepago  hasta el vencimiento del plazo pactado. Si el monto de capital  inicial  no supera  el equivalente a  UF 5.000, al capital prepagado deberán  sumársele  los intereses  calculados hasta la fecha del prepago y la comisión  de  prepago  máxima  que el  articulo  10 de la  Ley 18.010 permite pactar.</fo:block>
              <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="justify"  ><fo:inline font-weight="bold">Exigibilidad anticipada.</fo:inline> El no  pago oportuno de una cualquiera de las cuotas de  capital y/o de interés  comprendidos en  esta obligación, dará derecho al acreedor a  hacer exigible de inmediato y  anticipadamente el monto total del saldo  insoluto  adeudado  a  esa  fecha,  el  que  desde  esa misma fecha se considerará de plazo vencido y devengará en favor del acreedor o de quien sus derechos  represente, el interés máximo convencional que rija durante la mora o simple retardo. </fo:block>
              <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="justify"  >Sin embargo, en operaciones de crédito de dinero cuyo capital sea igual o inferior a doscientas unidades de fomento no podrá hacerse exigible la obligación en forma anticipada, si no una vez cumplidos sesenta días corridos desde que el deudor incurra en mora o simple retardo en el pago.</fo:block>
              <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="justify"  >Se deja  expresamente establecido que el ejercicio de este derecho constituye una  sanción  al  suscriptor  por  el  no pago de la deuda e importa una mera facultad  establecida en  beneficio exclusivo  del acreedor, que no altera en caso alguno la fecha de vencimiento del pagaré originalmente pactada, ni a la exigibilidad de las acciones cambiarias y ejecutivas derivadas de éste.</fo:block>
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
	      <fo:block font-family="Arial, Helvetica, sans-serif" line-height="4.5mm" font-size="11pt" text-align="center" >Página 1 de 3</fo:block>
                    </fo:flow>

          </xsl:when>
          <!--   AQUI TERMINA EL TEMPLATE   docpg07a  -->


          <!--   AQUI COMIENZA EL TEMPLATE   docpg07b  -->
          <xsl:when test="template = 'docpg07b'">
                    <fo:flow flow-name="xsl-region-body">
              <fo:table border-collapse="collapse">
              <fo:table-column column-width="50mm" />
              <fo:table-column column-width="50mm" />
              <fo:table-body>
                  <fo:table-row>
                        <fo:table-cell text-align="left">
                                <fo:block >
                                  <fo:external-graphic height="12mm" width="25mm" vertical-align="middle">
                                    <xsl:attribute name="src">
                                    <xsl:value-of select="../OperacionCredito/logoBciSomosDiferentes"/>
                                    </xsl:attribute>
                                  </fo:external-graphic>
                                </fo:block>
                        </fo:table-cell>
                        <fo:table-cell >
                                <fo:block >
                                </fo:block>
                        </fo:table-cell>
                  </fo:table-row>
              </fo:table-body>
              </fo:table>
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block font-family="Arial, Helvetica, sans-serif" line-height="4.5mm" font-size="11pt" text-align="left" >Nº Operación<fo:leader leader-pattern="space" leader-length="18.5mm"/>:<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/nroOperacion" /></fo:inline></fo:block>
              <fo:block font-family="Arial, Helvetica, sans-serif" line-height="4.5mm" font-size="11pt" text-align="left" >Fecha de suscripción<fo:leader leader-pattern="space" leader-length="6.8mm"/>:<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="substring(../OperacionCredito/fechaSuscripcion,0,4)" /></fo:inline>
              <xsl:variable name="mes" select="substring(../OperacionCredito/fechaSuscripcion,4,2)" />
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
              <fo:inline font-weight="bold"><xsl:value-of select="substring(../OperacionCredito/fechaSuscripcion,6,5)" /></fo:inline>
              </fo:block>
              <fo:block font-family="Arial, Helvetica, sans-serif" line-height="4.5mm" font-size="11pt" text-align="left" >Monto<fo:leader leader-pattern="space" leader-length="29.6mm"/>:<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/moneda" /></fo:inline><fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold">

              <xsl:variable name="moneda" select="../OperacionCredito/moneda" />
                <xsl:choose>
                  <xsl:when test="$moneda = 'UF'">
                     <xsl:value-of select='format-number(../OperacionCredito/montoCredito, "###.###.##0,0000","decimal")' />
                  </xsl:when>

                  <xsl:when test="$moneda = '$'">
                    <xsl:value-of select='format-number(../OperacionCredito/montoCredito, "###.###.##0","decimal")' />
                  </xsl:when>
              </xsl:choose>

              </fo:inline></fo:block>
              <fo:block font-family="Arial, Helvetica, sans-serif" line-height="4.5mm" font-size="11pt" text-align="left" >Deudor<fo:leader leader-pattern="space" leader-length="28mm"/>:<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/nombreCompletoCliente" /></fo:inline></fo:block>
              <fo:block font-family="Arial, Helvetica, sans-serif" line-height="4.5mm" font-size="11pt" text-align="left" >RUT<fo:leader leader-pattern="space" leader-length="32.2mm"/>:<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select='format-number(../OperacionCredito/rutCliente, "###.###.##0","rut")' /></fo:inline>-<fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/dvCliente" /></fo:inline></fo:block>
              
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="justify"  >El Banco podrá hacer exigible de inmediato el monto total adeudado, expirando todos los  plazos pendientes  por el sólo  hecho de constituirse en mora o de habérsele  protestado  al  deudor  o  al aval,  por  falta de pago, cualquier documento,  pagaré,  letra  de cambio  o cheque, aceptado, suscrito, girado o avalado por él.</fo:block>
              <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="justify"  >Se deja  expresamente  establecido  que corresponderá  al deudor acreditar el pago de las cuotas en que se divide el presente instrumento, en caso de cobro judicial.</fo:block>
              <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="justify"  ><fo:inline font-weight="bold">Indivisibilidad  y solidaridad.</fo:inline>  Las  obligaciones  que emanen de este pagaré serán  solidarias para el suscriptor, avalista(s) y demás obligados al pago y serán  indivisibles  para  sus  herederos. Además,  el suscriptor  pagará los gastos, impuestos y costas personales y procesales que correspondan.</fo:block>
              <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="justify"  ><fo:inline font-weight="bold">Mandato para prórrogas.</fo:inline> El  suscriptor  faculta  al Banco de Crédito  e  Inversiones para que en su nombre y representación otorgue, previa autorización expresa de éste, una o más prórrogas que establezcan nuevas condiciones, tasas de interés y fechas de vencimiento. </fo:block>
              <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="justify"  ><fo:inline font-weight="bold">Domicilio  y  competencia.</fo:inline> Para todos los efectos legales, judiciales o extrajudiciales derivados de este pagaré, las partes acuerdan someterse  a los Tribunales de Justicia con asiento en la comuna y ciudad del domicilio del suscriptor,  lo que  será obligatorio tanto para el suscriptor como para sus avales, endosantes u obligados por garantía. Sin perjuicio declaro, que mi domicilio y residencia son los consignados en  este título, comprometiéndome a dar pronto aviso por escrito al Banco, en el evento que realice cualquier cambio de domicilio en el futuro.</fo:block>
              <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="justify"  ><fo:inline font-weight="bold">Impuesto de timbres y estampillas.</fo:inline> El impuesto de timbres y estampillas que grava este documento  se paga por  ingresos mensuales de dinero en Tesorería, según Decreto Ley Nº 3475.</fo:block>



              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block font-family="Arial, Helvetica, sans-serif" line-height="4.5mm" font-size="11pt" text-align="left" >
              En<fo:leader leader-pattern="space" leader-length="1mm"/>
              <fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/ciudadContrato" /></fo:inline>,
              <fo:leader leader-pattern="space" leader-length="1mm"/>a<fo:leader leader-pattern="space" leader-length="1mm"/>
              <fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/dia" /></fo:inline>

              <!--<fo:leader leader-pattern="space" leader-length="1mm"/>de<fo:leader leader-pattern="space" leader-length="1mm"/>
              <fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/mes" /></fo:inline>-->
              <fo:leader leader-pattern="space" leader-length="1mm"/>de<fo:leader leader-pattern="space" leader-length="1mm"/>
              <xsl:variable name="mes" select="../OperacionCredito/mes" />
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


              <fo:leader leader-pattern="space" leader-length="1mm"/>de<fo:leader leader-pattern="space" leader-length="1mm"/>
              <fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/anio" /></fo:inline>
              </fo:block>




              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block font-family="Arial, Helvetica, sans-serif" line-height="4.5mm" font-size="11pt" text-align="center" ><fo:leader leader-length="6cm" leader-pattern="rule" rule-style="solid" rule-thickness="0.4mm" color="black"/></fo:block>
              <fo:block font-family="Arial, Helvetica, sans-serif" line-height="4.5mm" font-size="11pt" text-align="center" >Firma del Suscriptor</fo:block>
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>


            <!-- AQUI COMIENZA LOS DATOS  DEL SUSCRIPTOR NOMBRE O RAZON SOCIAL -->
             <xsl:apply-templates select="../OperacionCredito"/>
            <!-- AQUI TERMINA LOS DATOS  DEL SUSCRIPTOR NOMBRE O RAZON SOCIAL -->

            <!-- AQUI COMIENZA LOS DATOS  DEL SUSCRIPTOR DOMICILIO, COMUNA Y CIUDAD -->
             <xsl:apply-templates select="../DireccionDeudorBci"/>
            <!-- AQUI TERMINAN LOS DATOS  DEL SUSCRIPTOR DOMICILIO, COMUNA Y CIUDAD -->

           <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
           <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
	   <fo:block font-family="Arial, Helvetica, sans-serif" line-height="4.5mm" font-size="11pt" text-align="center" >Página 2 de 3</fo:block>
                    </fo:flow>
          </xsl:when>
          <!--   AQUI TERMINA EL TEMPLATE   docpg07b  -->


          <!--   AQUI COMIENZA EL TEMPLATE   docpg08a  -->
          <xsl:when test="template = 'docpg08a'">
                    <fo:flow flow-name="xsl-region-body">
              <fo:table border-collapse="collapse">
              <fo:table-column column-width="50mm" />
              <fo:table-column column-width="50mm" />
              <fo:table-body>
                  <fo:table-row>
                        <fo:table-cell text-align="left">
                                <fo:block >
                                  <fo:external-graphic height="12mm" width="25mm" vertical-align="middle">
                                    <xsl:attribute name="src">
                                    <xsl:value-of select="../OperacionCredito/logoBciSomosDiferentes"/>
                                    </xsl:attribute>
                                  </fo:external-graphic>
                                </fo:block>
                        </fo:table-cell>
                        <fo:table-cell >
                                <fo:block >
                                </fo:block>
                        </fo:table-cell>
                  </fo:table-row>
              </fo:table-body>
              </fo:table>
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block font-family="Arial, Helvetica, sans-serif" line-height="4.5mm" font-size="11pt" text-align="center" ><fo:inline font-weight="bold">PAGARÉ (Sin Protesto)</fo:inline></fo:block>
              <fo:block font-family="Arial, Helvetica, sans-serif" line-height="4.5mm" font-size="11pt" text-align="center" ><fo:inline font-weight="bold">Cuota Fija, Tasa Fija $</fo:inline></fo:block>

              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:table border-collapse="collapse" font-family="Arial, Helvetica, sans-serif" font-size="11pt" text-align="left">
                  <fo:table-column column-width="50%"/>
                  <fo:table-column column-width="50%"/>
                  <fo:table-body>
                      <fo:table-row>
                          <fo:table-cell > _
                              <fo:block font-family="Arial, Helvetica, sans-serif" line-height="4.5mm" font-size="11pt" text-align="left" >N° de Operación :<fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/nroOperacion" /></fo:inline></fo:block>
                          </fo:table-cell>
                      </fo:table-row>
                  </fo:table-body>
              </fo:table>
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="justify"  >Por  valor  recibido,  debo  y  pagaré  a la  orden  del  BANCO  DE CREDITO E INVERSIONES, en su domicilio ubicado en Avenida El Golf N° 125, Comuna de Las Condes,Santiago, o en cualquiera de sus sucursales, la suma de <fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold">$</fo:inline><fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold">
                    <xsl:value-of select='format-number(../OperacionCredito/montoCredito, "###.###.##0","decimal")' />
              </fo:inline> <fo:leader leader-pattern="space" leader-length="1mm"/> (<fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/montoCreditoManoEscrita" /></fo:inline><fo:leader leader-pattern="space" leader-length="1mm"/> pesos m/l) .</fo:block>
              <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="left" ><fo:inline font-weight="bold">Tasa de Interés</fo:inline></fo:block>
              <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="justify"  >El  capital adeudado devengará a partir de esta fecha una tasa de interés del <fo:inline font-weight="bold"><xsl:value-of select='format-number(../OperacionCredito/tasaInteres, "###,####","decimal")'/></fo:inline>% mensual vencido durante todo el plazo pactado.</fo:block>
              <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="left" ><fo:inline font-weight="bold">Amortización del Capital</fo:inline> </fo:block>
              <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="justify"  >El capital adeudado se pagará en <fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="count(../CalendarioPago)" /></fo:inline><fo:leader leader-pattern="space" leader-length="1mm"/>cuotas mensuales, iguales y sucesivas, de <fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold">$</fo:inline> <fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select='format-number(../OperacionCredito/montoCuota, "###.###.##0","decimal")' /></fo:inline><fo:leader leader-pattern="space" leader-length="1mm"/>cada una, con vencimiento la primera de ellas el día<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/fechaPrimerVctoDD" /></fo:inline><fo:leader leader-pattern="space" leader-length="1mm"/>de<fo:leader leader-pattern="space" leader-length="1mm"/>

              <!--<fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/fechaPrimerVctoMM" /></fo:inline>-->
              <xsl:variable name="mes" select="../OperacionCredito/fechaPrimerVctoMM" />
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



              <fo:leader leader-pattern="space" leader-length="1mm"/>de<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/fechaPrimerVctoYYYY" /></fo:inline> las restantes los días<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/diaVencimiento" /></fo:inline><fo:leader leader-pattern="space" leader-length="1mm"/>de cada mes, venciendo la última de ellas el día <fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/fechaUltimoVctoDD" /></fo:inline><fo:leader leader-pattern="space" leader-length="1mm"/>de<fo:leader leader-pattern="space" leader-length="1mm"/>

              <!--<fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/fechaUltimoVctoMM" /></fo:inline>-->
              <xsl:variable name="mes" select="../OperacionCredito/fechaUltimoVctoMM" />
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



              <fo:leader leader-pattern="space" leader-length="1mm"/>de<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/fechaUltimoVctoYYYY" /></fo:inline> </fo:block>
              <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="left" ><fo:inline font-weight="bold">Intereses</fo:inline></fo:block>
              <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="justify"  >Por su parte, los  intereses  se pagarán en las  mismas fechas señaladas para las amortizaciones de capital.</fo:block>
              <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="justify"  ><fo:inline font-weight="bold">Prórroga  de  plazo  por día inhábil.</fo:inline> Las  cuotas de amortización  de capital e intereses se pagarán a su vencimiento,  siempre  que éste  corresponda a un día hábil  bancario. En caso  contrario,  se pagarán  el  día hábil  bancario siguiente.</fo:block>
              <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="justify"  ><fo:inline font-weight="bold">Prepagos.</fo:inline>  Si  el monto  de capital inicial supera el equivalente a UF 5.000, todo pago anticipado, sea total o parcial, será convenido libremente entre el suscriptor y el Banco.  A falta de acuerdo, el  suscriptor podrá en todo caso anticipar  el pago,  total o parcialmente, y en este último caso, siempre que el importe a  pagar sea igual o superior al 20 % del capital de la obligación adeudada, pagando además los intereses  estipulados devengados  y no  pagados a la fecha del prepago, calculados sobre el saldo insoluto, más los intereses estipulados  en este instrumento, calculados sobre el capital prepagado desde la fecha del  prepago hasta el  vencimiento del plazo pactado. Si el monto de capital  inicial  no supera  el equivalente  a UF 5.000, al capital prepagado deberán  sumársele  los intereses  calculados hasta la fecha del prepago y la comisión  de  prepago  máxima  que  el  articulo 10  de la Ley 18.010 permite pactar.</fo:block>
              <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="justify"  ><fo:inline font-weight="bold">Exigibilidad anticipada.</fo:inline> El  no pago oportuno de una cualquiera de las cuotas de  capital y/o de interés  comprendidos en  esta obligación, dará derecho al acreedor  a hacer exigible de  inmediato y anticipadamente el monto total del saldo  insoluto  adeudado  a  esa  fecha,  el  que  desde esa misma fecha  se considerará de plazo vencido y devengará en favor del acreedor o de quien sus derechos represente, el interés máximo convencional que rija durante la  mora o simple retardo. </fo:block>
              <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="justify"  >Sin embargo, en operaciones de crédito de dinero cuyo capital sea igual o inferior a doscientas unidades de fomento no podrá hacerse exigible la obligación en forma anticipada, si no una vez cumplidos sesenta días corridos desde que el deudor incurra en mora o simple retardo en el pago.</fo:block>
              <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="justify"  >Se deja  expresamente establecido que el ejercicio de este derecho constituye una  sanción  al  suscriptor  por el  no pago  de la deuda e importa una mera facultad  establecida en  beneficio  exclusivo del acreedor, que no altera en caso alguno la fecha de vencimiento del pagaré originalmente pactada, ni a la exigibilidad de las acciones cambiarias y ejecutivas derivadas de éste.</fo:block>
              <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="justify"  >El Banco podrá hacer exigible de inmediato el monto total adeudado, expirando todos los  plazos pendientes  por el sólo hecho  de constituirse en mora o de habérsele  protestado  al deudor  o al  aval,  por falta  de  pago, cualquier documento,  pagaré, letra  de  cambio o cheque,  aceptado,  suscrito,  girado o avalado por él.</fo:block>
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
	      <fo:block font-family="Arial, Helvetica, sans-serif" line-height="4.5mm" font-size="11pt" text-align="center" >Página 1 de 3</fo:block>
                    </fo:flow>

          </xsl:when>
          <!--   AQUI TERMINA EL TEMPLATE   docpg08a  -->




          <!--   AQUI COMIENZA EL TEMPLATE   docpg08b  -->
          <xsl:when test="template = 'docpg08b'">
                    <fo:flow flow-name="xsl-region-body">
              <fo:table border-collapse="collapse">
              <fo:table-column column-width="50mm" />
              <fo:table-column column-width="50mm" />
              <fo:table-body>
                  <fo:table-row>
                        <fo:table-cell text-align="left">
                                <fo:block >
                                  <fo:external-graphic height="12mm" width="25mm" vertical-align="middle">
                                    <xsl:attribute name="src">
                                    <xsl:value-of select="../OperacionCredito/logoBciSomosDiferentes"/>
                                    </xsl:attribute>
                                  </fo:external-graphic>
                                </fo:block>
                        </fo:table-cell>
                        <fo:table-cell >
                                <fo:block >
                                </fo:block>
                        </fo:table-cell>
                  </fo:table-row>
              </fo:table-body>
              </fo:table>
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block font-family="Arial, Helvetica, sans-serif" line-height="4.5mm" font-size="11pt" text-align="left" >Nº Operación<fo:leader leader-pattern="space" leader-length="18.5mm"/>:<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/nroOperacion" /></fo:inline></fo:block>
              <fo:block font-family="Arial, Helvetica, sans-serif" line-height="4.5mm" font-size="11pt" text-align="left" >Fecha de suscripción<fo:leader leader-pattern="space" leader-length="6.8mm"/>:<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="substring(../OperacionCredito/fechaSuscripcion,0,4)" /></fo:inline>
              <xsl:variable name="mes" select="substring(../OperacionCredito/fechaSuscripcion,4,2)" />
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
              <fo:inline font-weight="bold"><xsl:value-of select="substring(../OperacionCredito/fechaSuscripcion,6,5)" /></fo:inline>
              </fo:block>
              <fo:block font-family="Arial, Helvetica, sans-serif" line-height="4.5mm" font-size="11pt" text-align="left" >Monto<fo:leader leader-pattern="space" leader-length="29.6mm"/>:<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/moneda" /></fo:inline><fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold">

              <xsl:variable name="moneda" select="../OperacionCredito/moneda" />
                <xsl:choose>
                  <xsl:when test="$moneda = 'UF'">
                     <xsl:value-of select='format-number(../OperacionCredito/montoCredito, "###.###.##0,0000","decimal")' />
                  </xsl:when>

                  <xsl:when test="$moneda = '$'">
                    <xsl:value-of select='format-number(../OperacionCredito/montoCredito, "###.###.##0","decimal")' />
                  </xsl:when>
              </xsl:choose>

              </fo:inline></fo:block>
              <fo:block font-family="Arial, Helvetica, sans-serif" line-height="4.5mm" font-size="11pt" text-align="left" >Deudor<fo:leader leader-pattern="space" leader-length="28mm"/>:<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/nombreCompletoCliente" /></fo:inline></fo:block>
              <fo:block font-family="Arial, Helvetica, sans-serif" line-height="4.5mm" font-size="11pt" text-align="left" >RUT<fo:leader leader-pattern="space" leader-length="32.2mm"/>:<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select='format-number(../OperacionCredito/rutCliente, "###.###.##0","rut")' /></fo:inline>-<fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/dvCliente" /></fo:inline></fo:block>
              
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="justify"  >Se  deja expresamente  establecido que  corresponderá al  deudor acreditar el pago de  las cuotas en  que  se divide  el presente  instrumento, en  caso de cobro judicial.</fo:block>
              <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="justify"  ><fo:inline font-weight="bold">Indivisibilidad  y  solidaridad.</fo:inline> Las  obligaciones  que emanen de este pagaré serán solidarias para el suscriptor, avalista(s)  y demás obligados al pago y serán  indivisibles  para sus  herederos. Además, el  suscriptor  pagará  los gastos, impuestos y costas personales y procesales que correspondan.</fo:block>
              <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="justify"  ><fo:inline font-weight="bold">Mandato  para prórrogas.</fo:inline> El suscriptor  faculta al Banco de Crédito e Inversiones para concederle  bajo  la firma de uno o más apoderados de  éste, una o más  prórrogas  que se efectuarán sin ánimo de novar, y fijar en tal caso  y  dentro de los  límites legales, nuevas  condiciones, tasas de interés y fechas de vencimiento. </fo:block>
              <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="justify"  ><fo:inline font-weight="bold">Domicilio  y  competencia.</fo:inline> Para todos los efectos legales, judiciales o extrajudiciales derivados de este pagaré, las partes acuerdan someterse  a los Tribunales de Justicia con asiento en la comuna y ciudad del domicilio del suscriptor,  lo que  será obligatorio tanto para el suscriptor como para sus avales, endosantes u obligados por garantía. Sin perjuicio declaro, que mi domicilio y residencia son los consignados en  este título, comprometiéndome a dar pronto aviso por escrito al Banco, en el evento que realice cualquier cambio de domicilio en el futuro.</fo:block>
              <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="justify"  ><fo:inline font-weight="bold">Impuesto de timbres y estampillas.</fo:inline>  El impuesto  de  timbres y estampillas que  grava  este  documento  se  paga  por  ingresos  mensuales  de dinero en Tesorería, según Decreto Ley Nº 3475.</fo:block>


              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block font-family="Arial, Helvetica, sans-serif" line-height="4.5mm" font-size="11pt" text-align="left" >
              En<fo:leader leader-pattern="space" leader-length="1mm"/>
              <fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/ciudadContrato" /></fo:inline>,
              <fo:leader leader-pattern="space" leader-length="1mm"/>a<fo:leader leader-pattern="space" leader-length="1mm"/>
              <fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/dia" /></fo:inline>

              <!--<fo:leader leader-pattern="space" leader-length="1mm"/>de<fo:leader leader-pattern="space" leader-length="1mm"/>
              <fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/mes" /></fo:inline>-->
              <fo:leader leader-pattern="space" leader-length="1mm"/>de<fo:leader leader-pattern="space" leader-length="1mm"/>
              <xsl:variable name="mes" select="../OperacionCredito/mes" />
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


              <fo:leader leader-pattern="space" leader-length="1mm"/>de<fo:leader leader-pattern="space" leader-length="1mm"/>
              <fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/anio" /></fo:inline>
              </fo:block>




              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block font-family="Arial, Helvetica, sans-serif" line-height="4.5mm" font-size="11pt" text-align="center" ><fo:leader leader-length="6cm" leader-pattern="rule" rule-style="solid" rule-thickness="0.4mm" color="black"/></fo:block>
              <fo:block font-family="Arial, Helvetica, sans-serif" line-height="4.5mm" font-size="11pt" text-align="center" >Firma del Suscriptor</fo:block>
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>

            <!-- AQUI COMIENZA LOS DATOS  DEL SUSCRIPTOR NOMBRE O RAZON SOCIAL -->
             <xsl:apply-templates select="../OperacionCredito"/>
            <!-- AQUI TERMINA LOS DATOS  DEL SUSCRIPTOR NOMBRE O RAZON SOCIAL -->

            <!-- AQUI COMIENZA LOS DATOS  DEL SUSCRIPTOR DOMICILIO, COMUNA Y CIUDAD -->
             <xsl:apply-templates select="../DireccionDeudorBci"/>
            <!-- AQUI TERMINAN LOS DATOS  DEL SUSCRIPTOR DOMICILIO, COMUNA Y CIUDAD -->

	    <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
            <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
            <fo:block font-family="Arial, Helvetica, sans-serif" line-height="4.5mm" font-size="11pt" text-align="center" >Página 2 de 3</fo:block>
            </fo:flow>
                   
          </xsl:when>
          <!--   AQUI TERMINA EL TEMPLATE   docpg08b  -->



          <!--   AQUI COMIENZA EL TEMPLATE   docpg11a  -->
          <xsl:when test="template = 'docpg11a'">
                    <fo:flow flow-name="xsl-region-body">
              <fo:table border-collapse="collapse">
              <fo:table-column column-width="50mm" />
              <fo:table-column column-width="50mm" />
              <fo:table-body>
                  <fo:table-row>
                        <fo:table-cell text-align="left">
                                <fo:block >
                                  <fo:external-graphic height="12mm" width="25mm" vertical-align="middle">
                                    <xsl:attribute name="src">
                                    <xsl:value-of select="../OperacionCredito/logoBciSomosDiferentes"/>
                                    </xsl:attribute>
                                  </fo:external-graphic>
                                </fo:block>
                        </fo:table-cell>
                        <fo:table-cell >
                                <fo:block >
                                </fo:block>
                        </fo:table-cell>
                  </fo:table-row>
              </fo:table-body>
              </fo:table>
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block font-family="Arial, Helvetica, sans-serif" line-height="4.5mm" font-size="11pt" text-align="center" ><fo:inline font-weight="bold">PAGARÉ (Sin Protesto)</fo:inline></fo:block>
              <fo:block font-family="Arial, Helvetica, sans-serif" line-height="4.5mm" font-size="11pt" text-align="center" ><fo:inline font-weight="bold">AMORTIZACIÓN FIJA MENSUAL TASA VARIABLE $</fo:inline></fo:block>
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:table border-collapse="collapse" font-family="Arial, Helvetica, sans-serif" font-size="11pt" text-align="left">
                  <fo:table-column column-width="50%"/>
                  <fo:table-column column-width="50%"/>
                  <fo:table-body>
                      <fo:table-row>
                          <fo:table-cell > _
                              <fo:block font-family="Arial, Helvetica, sans-serif" line-height="4.5mm" font-size="11pt" text-align="left" >N° de Operación :<fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/nroOperacion" /></fo:inline></fo:block>
                          </fo:table-cell>
                      </fo:table-row>
                  </fo:table-body>
              </fo:table>
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="justify"  >Por  valor  recibido,  debo  y  pagaré  a  la  orden  del  BANCO DE CREDITO E INVERSIONES, en  su  domicilio ubicado en Avenida El Golf  N° 125,  Comuna de Las  Condes,  Santiago,  o  en  cualquiera  de  sus  sucursales,  la  suma de <fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold">$</fo:inline><fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold">

              <!--<xsl:value-of select="../OperacionCredito/montoCredito" />-->
              <xsl:variable name="moneda" select="../OperacionCredito/moneda" />
                <xsl:choose>

                  <xsl:when test="$moneda = 'UF'">
                     <xsl:value-of select='format-number(../OperacionCredito/montoCredito, "###.###.##0,0000","decimal")' />
                  </xsl:when>


                  <xsl:when test="$moneda = '$'">
                    <xsl:value-of select='format-number(../OperacionCredito/montoCredito, "###.###.##0","decimal")' />
                  </xsl:when>

              </xsl:choose>



              </fo:inline><fo:leader leader-pattern="space" leader-length="1mm"/>(<fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/montoCreditoManoEscrita" /></fo:inline> pesos m/l).</fo:block>
              <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="justify"  >La tasa de interés que se aplicará a los primeros 30 días de esta obligación, será de un <fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select='format-number(../OperacionCredito/tasaInteres, "###,####","decimal")'/></fo:inline>% mensual.</fo:block>
              <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="justify"  >En lo sucesivo, el capital adeudado devengará un interés variable mensualmente que se determinará en la fecha correspondiente al primer  día  del  respectivo período de intereses y regirá hasta el día anterior  al  próximo  vencimiento.</fo:block>
              <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="justify"  >Dicho interés se calculará considerando la TASA BASE del  Banco  de  Crédito e Inversiones vigente al primer día  del  respectivo  período de interés, más un spread o diferencial de <fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select='format-number(../OperacionCredito/tasaSpread, "###,####","decimal")'/></fo:inline>% mensual.</fo:block>
              <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="justify"  >La TASA BASE se define como la determinada diariamente por el Banco de Crédito e Inversiones de acuerdo a una metodología que declaro conocer y aceptar y que será certificada todos los días hábiles bancarios por uno de  los Notarios que atienden los negocios y operaciones de la Oficina Central del Banco. Reconozco dicho procedimiento como suficiente, válido y definitivo para la determinación de la señalada Tasa Base. </fo:block>
              <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="justify"  >La TASA BASE para los días no hábiles bancarios será la vigente  el  día hábil bancario inmediatamente anterior a  aquéllos.  Igualmente,  si  por  cualquier causa en algún día no existiere certificación notarial  para  la referida TASA BASE, regirá para esa fecha la última  que  se  hubiere  certificado.  Si  por cualquier motivo y en cualquiera forma  resultare  impugnada  o  discutida  la determinación o certificación de la  Tasa  Base  vigente para alguna fecha, se aplicará en su reemplazo la  TASA  DE  INTERES  MAXIMA CONVENCIONAL que la Ley permita estipular a esa fecha para operaciones no reajustables.</fo:block>
              <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="left"  ><fo:inline font-weight="bold">Amortización del Capital</fo:inline> </fo:block>
              <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="justify"  >El capital adeudado se pagará en <fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="count(../CalendarioPago)" /></fo:inline><fo:leader leader-pattern="space" leader-length="1mm"/> cuotas mensuales, iguales y sucesivas, de <fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold">$</fo:inline> <fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select='format-number(../OperacionCredito/montoCuota, "###.###.##0,000","decimal")' /></fo:inline><fo:leader leader-pattern="space" leader-length="1mm"/>cada una, con vencimiento la primera de ellas el día<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/fechaPrimerVctoDD" /></fo:inline><fo:leader leader-pattern="space" leader-length="1mm"/>de<fo:leader leader-pattern="space" leader-length="1mm"/>

              <!--<fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/fechaPrimerVctoMM" /></fo:inline>-->
              <xsl:variable name="mes" select="../OperacionCredito/fechaPrimerVctoMM" />
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



              <fo:leader leader-pattern="space" leader-length="1mm"/>de<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/fechaPrimerVctoYYYY" /></fo:inline> y las restantes los días<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/diaVencimiento" /></fo:inline><fo:leader leader-pattern="space" leader-length="1mm"/>de cada mes, venciendo la última de ellas el día <fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/fechaUltimoVctoDD" /></fo:inline><fo:leader leader-pattern="space" leader-length="1mm"/>de<fo:leader leader-pattern="space" leader-length="1mm"/>

              <!--<fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/fechaUltimoVctoMM" /></fo:inline>-->
              <xsl:variable name="mes" select="../OperacionCredito/fechaUltimoVctoMM" />
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

              <fo:leader leader-pattern="space" leader-length="1mm"/>de<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/fechaUltimoVctoYYYY" /></fo:inline> </fo:block>
              <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="left"  ><fo:inline font-weight="bold">Intereses</fo:inline></fo:block>

              <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="justify"  >Por su parte, los intereses se pagarán en las mismas fechas señaladas para las amortizaciones de capital.</fo:block>
              <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="justify"  ><fo:inline font-weight="bold">Prórroga de plazo por día inhábil.</fo:inline> Las  cuotas  de  amortización  de capital e intereses se pagarán a su vencimiento, siempre que éste  corresponda  a un día hábil bancario. En caso contrario, se pagarán el día hábil bancario siguiente.</fo:block>
              <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="justify"  ><fo:inline font-weight="bold">Prepagos.</fo:inline>  Si  el  monto  de capital inicial supera el equivalente a UF 5.000, todo pago anticipado, sea total o parcial, será convenido  libremente entre el suscriptor y el Banco. A falta de acuerdo, el suscriptor  podrá  en  todo caso anticipar el pago, total o parcialmente, y en este último caso, siempre que el importe a pagar sea igual o superior al 20 %  del  capital  de  la  obligación adeudada, pagando además los intereses estipulados  devengados  y no pagados a la fecha del prepago,  calculados sobre el saldo  insoluto,  más los intereses estipulados en este instrumento, calculados sobre el capital  prepagado  desde la fecha del prepago hasta el vencimiento del plazo pactado.  Si  el  monto de capital inicial no supera  el  equivalente a UF 5.000,  al  capital  prepagado deberán sumársele los intereses  calculados  hasta  la  fecha del prepago y la comisión de prepago máxima que el articulo 10 de la Ley 18.010 permite pactar.</fo:block>
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
     	      <fo:block font-family="Arial, Helvetica, sans-serif" line-height="4.5mm" font-size="11pt" text-align="center" >Página 1 de 3</fo:block>         
                    </fo:flow>
          </xsl:when>
          <!--   AQUI TERMINA EL TEMPLATE   docpg11a  -->


          <!--   AQUI COMIENZA EL TEMPLATE   docpg11b  -->
          <xsl:when test="template = 'docpg11b'">
                <fo:flow flow-name="xsl-region-body">
              <fo:table border-collapse="collapse">
              <fo:table-column column-width="50mm" />
              <fo:table-column column-width="50mm" />
              <fo:table-body>
                  <fo:table-row>
                        <fo:table-cell text-align="left">
                                <fo:block >
                                  <fo:external-graphic height="12mm" width="25mm" vertical-align="middle">
                                    <xsl:attribute name="src">
                                    <xsl:value-of select="../OperacionCredito/logoBciSomosDiferentes"/>
                                    </xsl:attribute>
                                  </fo:external-graphic>
                                </fo:block>
                        </fo:table-cell>
                        <fo:table-cell >
                                <fo:block >
                                </fo:block>
                        </fo:table-cell>
                  </fo:table-row>
              </fo:table-body>
              </fo:table>
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block font-family="Arial, Helvetica, sans-serif" line-height="4.5mm" font-size="11pt" text-align="left" >Nº Operación<fo:leader leader-pattern="space" leader-length="18.5mm"/>:<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/nroOperacion" /></fo:inline></fo:block>
              <fo:block font-family="Arial, Helvetica, sans-serif" line-height="4.5mm" font-size="11pt" text-align="left" >Fecha de suscripción<fo:leader leader-pattern="space" leader-length="6.8mm"/>:<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="substring(../OperacionCredito/fechaSuscripcion,0,4)" /></fo:inline>
              <xsl:variable name="mes" select="substring(../OperacionCredito/fechaSuscripcion,4,2)" />
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
              <fo:inline font-weight="bold"><xsl:value-of select="substring(../OperacionCredito/fechaSuscripcion,6,5)" /></fo:inline>
              </fo:block>
              <fo:block font-family="Arial, Helvetica, sans-serif" line-height="4.5mm" font-size="11pt" text-align="left" >Monto<fo:leader leader-pattern="space" leader-length="29.6mm"/>:<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/moneda" /></fo:inline><fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold">

              <xsl:variable name="moneda" select="../OperacionCredito/moneda" />
                <xsl:choose>
                  <xsl:when test="$moneda = 'UF'">
                     <xsl:value-of select='format-number(../OperacionCredito/montoCredito, "###.###.##0,0000","decimal")' />
                  </xsl:when>

                  <xsl:when test="$moneda = '$'">
                    <xsl:value-of select='format-number(../OperacionCredito/montoCredito, "###.###.##0","decimal")' />
                  </xsl:when>
              </xsl:choose>

              </fo:inline></fo:block>
              <fo:block font-family="Arial, Helvetica, sans-serif" line-height="4.5mm" font-size="11pt" text-align="left" >Deudor<fo:leader leader-pattern="space" leader-length="28mm"/>:<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/nombreCompletoCliente" /></fo:inline></fo:block>
              <fo:block font-family="Arial, Helvetica, sans-serif" line-height="4.5mm" font-size="11pt" text-align="left" >RUT<fo:leader leader-pattern="space" leader-length="32.2mm"/>:<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select='format-number(../OperacionCredito/rutCliente, "###.###.##0","rut")' /></fo:inline>-<fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/dvCliente" /></fo:inline></fo:block>
              
                      <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                      <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                      <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="justify"  ><fo:inline font-weight="bold">Exigibilidad anticipada.</fo:inline> El no pago oportuno de una  cualquiera de las cuotas de capital y/o  de interés comprendidos  en esta  obligación, dará derecho al acreedor a hacer  exigible de inmediato  y anticipadamente el monto total del saldo  insoluto  adeudado  a  esa  fecha,  el que desde  esa misma  fecha  se considerará de plazo vencido y devengará en favor del acreedor o de quien sus derechos  represente, el interés máximo convencional que rija durante la mora o simple retardo.</fo:block>
                      <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="justify"  >Se deja expresamente establecido que  el ejercicio de este derecho constituye una  sanción  al  suscriptor  por el no  pago de  la deuda e importa una mera facultad  establecida en  beneficio exclusivo  del acreedor, que no altera en caso alguno la fecha de vencimiento del pagaré originalmente pactada, ni a la exigibilidad de las acciones cambiarias y ejecutivas derivadas de éste.</fo:block>
                      <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="justify"  >El Banco podrá hacer exigible de inmediato el monto total adeudado, expirando todos los  plazos  pendientes por el sólo  hecho de constituirse en mora o de habérsele  protestado  al deudor  o al aval,  por  falta  de pago,  cualquier documento,  pagaré,  letra de cambio o  cheque,  aceptado, suscrito, girado o avalado por él.</fo:block>
                      <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="justify"  >Se  deja  expresamente  establecido  que corresponderá al deudor acreditar el pago de las cuotas en que se divide el presente instrumento, en caso de cobro judicial.</fo:block>
                      <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="justify"  ><fo:inline font-weight="bold">Indivisibilidad  y solidaridad.</fo:inline>  Las obligaciones  que emanen de  este pagaré serán  solidarias para el suscriptor, avalista(s) y demás obligados al pago y serán  indivisibles  para  sus herederos.  Además,  el suscriptor  pagará los gastos, impuestos y costas personales y procesales que correspondan.</fo:block>
                      <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="justify"  ><fo:inline font-weight="bold">Mandato para prórrogas.</fo:inline> El  suscriptor  faculta  al Banco de Crédito  e  Inversiones para que en su nombre y representación otorgue, previa autorización expresa de éste, una o más prórrogas que establezcan nuevas condiciones, tasas de interés y fechas de vencimiento. </fo:block>
                      <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="justify"  ><fo:inline font-weight="bold">Domicilio  y  competencia.</fo:inline> Para todos los efectos legales, judiciales o extrajudiciales derivados de este pagaré, las partes acuerdan someterse  a los Tribunales de Justicia con asiento en la comuna y ciudad del domicilio del suscriptor,  lo que  será obligatorio tanto para el suscriptor como para sus avales, endosantes u obligados por garantía.</fo:block>
                      <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="justify"  >Sin perjuicio declaro, que mi domicilio y residencia son los consignados en  este título, comprometiéndome a dar pronto aviso por escrito al Banco, en el evento que realice cualquier cambio de domicilio en el futuro.</fo:block>
                      <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                      <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="justify"  ><fo:inline font-weight="bold">Impuesto de timbres y estampillas.</fo:inline> El impuesto de timbres y estampillas que grava  este  documento se paga por ingresos mensuales de dinero en Tesorería, según Decreto Ley Nº 3475.</fo:block>


                      <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                      <fo:block font-family="Arial, Helvetica, sans-serif" line-height="4.5mm" font-size="11pt" text-align="left" >
                      En<fo:leader leader-pattern="space" leader-length="1mm"/>
                      <fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/ciudadContrato" /></fo:inline>,
                      <fo:leader leader-pattern="space" leader-length="1mm"/>a<fo:leader leader-pattern="space" leader-length="1mm"/>
                      <fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/dia" /></fo:inline>

                      <!--<fo:leader leader-pattern="space" leader-length="1mm"/>de<fo:leader leader-pattern="space" leader-length="1mm"/>
                      <fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/mes" /></fo:inline>-->
                      <fo:leader leader-pattern="space" leader-length="1mm"/>de<fo:leader leader-pattern="space" leader-length="1mm"/>
                      <xsl:variable name="mes" select="../OperacionCredito/mes" />
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


                      <fo:leader leader-pattern="space" leader-length="1mm"/>de<fo:leader leader-pattern="space" leader-length="1mm"/>
                      <fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/anio" /></fo:inline>
                      </fo:block>



                      <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                      <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                      <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                      <fo:block font-family="Arial, Helvetica, sans-serif" line-height="4.5mm" font-size="11pt" text-align="center" ><fo:leader leader-length="6cm" leader-pattern="rule" rule-style="solid" rule-thickness="0.4mm" color="black"/></fo:block>
                      <fo:block font-family="Arial, Helvetica, sans-serif" line-height="4.5mm" font-size="11pt" text-align="center" >Firma del Suscriptor</fo:block>
                      <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                      <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>

            <!-- AQUI COMIENZA LOS DATOS  DEL SUSCRIPTOR NOMBRE O RAZON SOCIAL -->
             <xsl:apply-templates select="../OperacionCredito"/>
            <!-- AQUI TERMINA LOS DATOS  DEL SUSCRIPTOR NOMBRE O RAZON SOCIAL -->

            <!-- AQUI COMIENZA LOS DATOS  DEL SUSCRIPTOR DOMICILIO, COMUNA Y CIUDAD -->
             <xsl:apply-templates select="../DireccionDeudorBci"/>
            <!-- AQUI TERMINAN LOS DATOS  DEL SUSCRIPTOR DOMICILIO, COMUNA Y CIUDAD -->
                <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                <fo:block font-family="Arial, Helvetica, sans-serif" line-height="4.5mm" font-size="11pt" text-align="center" >Página 2 de 3</fo:block>
                </fo:flow>
          </xsl:when>
          <!--   AQUI TERMINA EL TEMPLATE   docpg11b  -->


          <!--   AQUI COMIENZA EL TEMPLATE   docpg13a  -->
          <xsl:when test="template = 'docpg13a'">
                <fo:flow flow-name="xsl-region-body">
              <fo:table border-collapse="collapse">
              <fo:table-column column-width="50mm" />
              <fo:table-column column-width="50mm" />
              <fo:table-body>
                  <fo:table-row>
                        <fo:table-cell text-align="left">
                                <fo:block >
                                  <fo:external-graphic height="12mm" width="25mm" vertical-align="middle">
                                    <xsl:attribute name="src">
                                    <xsl:value-of select="../OperacionCredito/logoBciSomosDiferentes"/>
                                    </xsl:attribute>
                                  </fo:external-graphic>
                                </fo:block>
                        </fo:table-cell>
                        <fo:table-cell >
                                <fo:block >
                                </fo:block>
                        </fo:table-cell>
                  </fo:table-row>
              </fo:table-body>
              </fo:table>
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block font-family="Arial, Helvetica, sans-serif" line-height="4.5mm" font-size="11pt" text-align="center" ><fo:inline font-weight="bold">PAGARE (Sin Protesto)</fo:inline></fo:block>
              <fo:block font-family="Arial, Helvetica, sans-serif" line-height="4.5mm" font-size="11pt" text-align="center" ><fo:inline font-weight="bold">PRESTAMO DE NEGOCIOS CON CAPITALIZACION DE INTERESES $</fo:inline></fo:block>
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>

              <fo:table border-collapse="collapse" font-family="Arial, Helvetica, sans-serif" font-size="11pt" text-align="left">
                  <fo:table-column column-width="50%"/>
                  <fo:table-column column-width="50%"/>
                  <fo:table-body>

                      <fo:table-row>
                          <fo:table-cell > _
                              <fo:block font-family="Arial, Helvetica, sans-serif" line-height="4.5mm" font-size="11pt" text-align="left" >N° de Operación :<fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/nroOperacion" /></fo:inline></fo:block>
                          </fo:table-cell>
                      </fo:table-row>
                  </fo:table-body>
              </fo:table>

                      <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                      <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="justify"  >Por valor recibido,  debo  y  pagaré  a  la  orden  del  BANCO  DE  CREDITO E INVERSIONES, en su domicilio ubicado en Avenida El Golf N° 125, Comuna de Las Condes,  Santiago,   o   en   cualquiera   de  sus  sucursales,  la  suma de <fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold">$</fo:inline><fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold">

                      <!--<xsl:value-of select='format-number(../OperacionCredito/montoCredito, "###.###.##0,000","decimal")' />-->
                      <xsl:variable name="moneda" select="../OperacionCredito/moneda" />
                        <xsl:choose>

                          <xsl:when test="$moneda = 'UF'">
                             <xsl:value-of select='format-number(../OperacionCredito/montoCredito, "###.###.##0,0000","decimal")' />
                          </xsl:when>


                          <xsl:when test="$moneda = '$'">
                            <xsl:value-of select='format-number(../OperacionCredito/montoCredito, "###.###.##0","decimal")' />
                          </xsl:when>

                      </xsl:choose>




                      </fo:inline><fo:leader leader-pattern="space" leader-length="1mm"/>(<fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/montoCreditoManoEscrita" /></fo:inline> pesos m/l)</fo:block>
                      <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="left" ><fo:inline font-weight="bold">Tasa de Interés</fo:inline></fo:block>
                      <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="justify"  >La tasa de interés que se aplicará a los primeros 30 días de esta obligación, será de un <fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select='format-number(../OperacionCredito/tasaInteres, "###,####","decimal")'/></fo:inline> % mensual.</fo:block>
                      <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="justify"  >En lo sucesivo,el capital adeudado devengará un interés variable mensualmente que se determinará en la  fecha  correspondiente al primer día del respectivo período de intereses y  regirá hasta  el día anterior al próximo vencimiento.</fo:block>
                      <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="justify"  >Dicho interés se calculará considerando  la  TASA  BASE mensual del  Banco de Crédito e Inversiones vigente al primer día del respectivo período de interés, más un spread o diferencial de <fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select='format-number(../OperacionCredito/tasaSpread, "###,####","decimal")'/></fo:inline> % mensual.</fo:block>
                      <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="justify"  >La TASA BASE mensual para operaciones en pesos moneda nacional se define como la determinada diariamente por el Banco de Crédito e Inversiones de acuerdo a una  metodología  que  declaro  conocer  y aceptar,  y  que  será certificada todos los días hábiles bancarios por  uno  de los Notarios que  atienden  los negocios y operaciones de la  Oficina  Central  del  Banco.  Reconozco  dicho procedimiento como suficiente, válido y definitivo para la  determinación  de la señalada TASA BASE mensual.</fo:block>
                      <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="justify"  >Si por cualquier motivo y en cualquiera forma resultare impugnada o discutida la determinación o certificación de la Tasa Base vigente para alguna fecha,se aplicará en su reemplazo la  TASA DE  INTERES  MAXIMA CONVENCIONAL que la Ley permita estipular a  esa  fecha  para  operaciones no reajustables. Reconozco dicho   procedimiento   como   suficiente,   válido  y   definitivo  para  la determinación de la señalada Tasa Base Mensual.</fo:block>
                      <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="left" ><fo:inline font-weight="bold">Amortización del Capital</fo:inline></fo:block>
                      <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="justify"  >El capital adeudado se pagará en <fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="count(../CalendarioPago)" /></fo:inline> cuotas sucesivas,  en  las fechas y por los montos que a continuación se indican:</fo:block>
                      <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>


               <xsl:for-each select="../CalendarioPago">

                  <xsl:variable name="mes" select="substring(fecVencPago,4,2)" />


                        <fo:table border-collapse="collapse" font-family="Arial, Helvetica, sans-serif" font-size="11pt" text-align="left">
                            <fo:table-column column-width="45mm"  />
                            <fo:table-column column-width="30mm"  />
                            <fo:table-column column-width="40mm"  />
                            <fo:table-column column-width="40mm"  />

                            <fo:table-body>
                                <fo:table-row>

                                    <fo:table-cell >
                                      <fo:block font-family="Arial, Helvetica, sans-serif" line-height="4.5mm" font-size="11pt" text-align="left" ><fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold">$</fo:inline> <fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select='format-number(cuota, "###.###.##0","decimal")' />.-</fo:inline></fo:block>
                                    </fo:table-cell>


                                    <fo:table-cell >
                                      <fo:block font-family="Arial, Helvetica, sans-serif" line-height="4.5mm" font-size="11pt" text-align="left" > , el día <fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="substring(fecVencPago,0,3)" /><!--<xsl:value-of select="fecVencPago" />--></fo:inline> de <fo:leader leader-pattern="space" leader-length="1mm"/></fo:block>
                                    </fo:table-cell>



                                    <fo:table-cell >
                                    <fo:block font-family="Arial, Helvetica, sans-serif" line-height="4.5mm" font-size="11pt" text-align="left" >
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
                                        </fo:block>
                                    </fo:table-cell>


                                    <fo:table-cell >
                                        <fo:block font-family="Arial, Helvetica, sans-serif" line-height="4.5mm" font-size="11pt" text-align="left" ><fo:leader leader-pattern="space" leader-length="1mm"/>de <fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="substring(fecVencPago,7,4)" /></fo:inline></fo:block>
                                    </fo:table-cell>


                                </fo:table-row>
                            </fo:table-body>
                        </fo:table>

           </xsl:for-each>



                      <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                      <fo:block font-family="Arial, Helvetica, sans-serif" line-height="4.5mm" font-size="11pt" text-align="center" >Página 1 de 3</fo:block>
                </fo:flow>
          </xsl:when>
          <!--   AQUI TERMINA EL TEMPLATE   docpg13a  -->


          <!--   AQUI COMIENZA EL TEMPLATE   docpg13b  -->
          <xsl:when test="template = 'docpg13b'">
                <fo:flow flow-name="xsl-region-body">
              <fo:table border-collapse="collapse">
              <fo:table-column column-width="50mm" />
              <fo:table-column column-width="50mm" />
              <fo:table-body>
                  <fo:table-row>
                        <fo:table-cell text-align="left">
                                <fo:block >
                                  <fo:external-graphic height="12mm" width="25mm" vertical-align="middle">
                                    <xsl:attribute name="src">
                                    <xsl:value-of select="../OperacionCredito/logoBciSomosDiferentes"/>
                                    </xsl:attribute>
                                  </fo:external-graphic>
                                </fo:block>
                        </fo:table-cell>
                        <fo:table-cell >
                                <fo:block >
                                </fo:block>
                        </fo:table-cell>
                  </fo:table-row>
              </fo:table-body>
              </fo:table>
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block font-family="Arial, Helvetica, sans-serif" line-height="4.5mm" font-size="11pt" text-align="left" >Nº Operación<fo:leader leader-pattern="space" leader-length="18.5mm"/>:<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/nroOperacion" /></fo:inline></fo:block>
              <fo:block font-family="Arial, Helvetica, sans-serif" line-height="4.5mm" font-size="11pt" text-align="left" >Fecha de suscripción<fo:leader leader-pattern="space" leader-length="6.8mm"/>:<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="substring(../OperacionCredito/fechaSuscripcion,0,4)" /></fo:inline>
              <xsl:variable name="mes" select="substring(../OperacionCredito/fechaSuscripcion,4,2)" />
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
              <fo:inline font-weight="bold"><xsl:value-of select="substring(../OperacionCredito/fechaSuscripcion,6,5)" /></fo:inline>
              </fo:block>
              <fo:block font-family="Arial, Helvetica, sans-serif" line-height="4.5mm" font-size="11pt" text-align="left" >Monto<fo:leader leader-pattern="space" leader-length="29.6mm"/>:<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/moneda" /></fo:inline><fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold">

              <xsl:variable name="moneda" select="../OperacionCredito/moneda" />
                <xsl:choose>
                  <xsl:when test="$moneda = 'UF'">
                     <xsl:value-of select='format-number(../OperacionCredito/montoCredito, "###.###.##0,0000","decimal")' />
                  </xsl:when>

                  <xsl:when test="$moneda = '$'">
                    <xsl:value-of select='format-number(../OperacionCredito/montoCredito, "###.###.##0","decimal")' />
                  </xsl:when>
              </xsl:choose>

              </fo:inline></fo:block>
              <fo:block font-family="Arial, Helvetica, sans-serif" line-height="4.5mm" font-size="11pt" text-align="left" >Deudor<fo:leader leader-pattern="space" leader-length="28mm"/>:<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/nombreCompletoCliente" /></fo:inline></fo:block>
              <fo:block font-family="Arial, Helvetica, sans-serif" line-height="4.5mm" font-size="11pt" text-align="left" >RUT<fo:leader leader-pattern="space" leader-length="32.2mm"/>:<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select='format-number(../OperacionCredito/rutCliente, "###.###.##0","rut")' /></fo:inline>-<fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/dvCliente" /></fo:inline></fo:block>
              
                      <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                      <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                      <fo:block font-family="Arial, Helvetica, sans-serif" line-height="4.5mm" font-size="11pt" text-align="justify" ><fo:inline font-weight="bold">Intereses y Capitalización de Intereses</fo:inline></fo:block>
                      <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                      <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="justify" >Los intereses que se devenguen durante cada período, se capitalizarán mes a mes con  arreglo a lo prescrito en el artículo 9° de la Ley N° 18.010. Los intereses así capitalizados se pagaránconjuntamente con la amortización de capital.</fo:block>
                      <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="justify" ><fo:inline font-weight="bold">Prórroga de  plazo  por  día inhábil.</fo:inline> Las cuotas de amortización de capital e intereses se pagarán a su vencimiento,  siempre que éste corresponda a un día hábil  bancario.  En  caso  contrario,  se  pagarán  el  día  hábil  bancario siguiente.</fo:block>
                      <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="justify" ><fo:inline font-weight="bold">Prepagos.</fo:inline> Si el monto de  capital inicial  supera el  equivalente a UF 5.000, todo pago anticipado,  sea total o parcial,  será convenido  libremente entre el  suscriptor y el Banco.  A falta  de  acuerdo, el suscriptor podrá en todo caso  anticipar el pago, total o parcialmente, y en este último caso, siempre que  el importe  a  pagar sea  igual o  superior al  20 % del  capital de  la obligación  adeudada,  pagando  además los intereses estipulados devengados y no pagados a la fecha  del prepago,  calculados sobre el saldo  insoluto, más los  intereses  estipulados  en este instrumento, calculados sobre el capital prepagado desde la fecha  del prepago hasta el vencimiento del  plazo pactado.</fo:block>
                      <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="justify" >Si  el  monto  de capital  inicial  no  supera  el equivalente a UF 5.000, al capital  prepagado deberán sumársele los intereses  calculados hasta la fecha del  prepago y  la comisión de  prepago máxima  que el articulo  10 de la Ley 18.010 permite pactar.</fo:block>
                      <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="justify" ><fo:inline font-weight="bold">Exigibilidad anticipada.</fo:inline> El no pago oportuno de una  cualquiera de las cuotas de capital y/o  de interés comprendidos  en esta  obligación, dará derecho al acreedor a hacer  exigible de inmediato  y anticipadamente el monto total del saldo  insoluto  adeudado  a  esa  fecha,  el que desde  esa misma  fecha  se considerará de plazo vencido y devengará en favor del acreedor o de quien sus derechos  represente, el interés máximo convencional que rija durante la mora o simple retardo. </fo:block>
                      <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="justify" >Se deja expresamente establecido que  el ejercicio de este derecho constituye una  sanción  al  suscriptor  por el no  pago de  la deuda e importa una mera facultad  establecida en  beneficio exclusivo  del acreedor, que no altera en caso alguno la fecha de vencimiento del pagaré originalmente pactada, ni a la exigibilidad de las acciones cambiarias y ejecutivas derivadas de éste.</fo:block>
                      <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="justify" >El Banco podrá hacer exigible de inmediato el monto total adeudado, expirando todos los  plazos  pendientes por el sólo  hecho de constituirse en mora o de habérsele  protestado  al deudor  o al aval,  por  falta  de pago,  cualquier documento,  pagaré,  letra de cambio o  cheque,  aceptado, suscrito, girado o avalado por él.</fo:block>
                      <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="justify" >Se  deja  expresamente  establecido  que corresponderá al deudor acreditar el pago de las cuotas en que se divide el presente instrumento, en caso de cobro judicial.</fo:block>
                      <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                      <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                      <fo:block font-family="Arial, Helvetica, sans-serif" line-height="4.5mm" font-size="11pt" text-align="center" >Página 2 de 3</fo:block>
                </fo:flow>

          </xsl:when>
          <!--   AQUI TERMINO EL TEMPLATE   docpg13b  -->


          <!--   AQUI COMIENZA EL TEMPLATE   docpg13c  -->
          <xsl:when test="template = 'docpg13c'">
                <fo:flow flow-name="xsl-region-body">
              <fo:table border-collapse="collapse">
              <fo:table-column column-width="50mm" />
              <fo:table-column column-width="50mm" />
              <fo:table-body>
                  <fo:table-row>
                        <fo:table-cell text-align="left">
                                <fo:block >
                                  <fo:external-graphic height="12mm" width="25mm" vertical-align="middle">
                                    <xsl:attribute name="src">
                                    <xsl:value-of select="../OperacionCredito/logoBciSomosDiferentes"/>
                                    </xsl:attribute>
                                  </fo:external-graphic>
                                </fo:block>
                        </fo:table-cell>
                        <fo:table-cell >
                                <fo:block >
                                </fo:block>
                        </fo:table-cell>
                  </fo:table-row>
              </fo:table-body>
              </fo:table>
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block font-family="Arial, Helvetica, sans-serif" line-height="4.5mm" font-size="11pt" text-align="left" >Nº Operación<fo:leader leader-pattern="space" leader-length="17.2mm"/>:<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/nroOperacion" /></fo:inline></fo:block>
              <fo:block font-family="Arial, Helvetica, sans-serif" line-height="4.5mm" font-size="11pt" text-align="left" >Fecha de suscripción<fo:leader leader-pattern="space" leader-length="3.7mm"/>:<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="substring(../OperacionCredito/fechaSuscripcion,0,4)" /></fo:inline>
              <xsl:variable name="mes" select="substring(../OperacionCredito/fechaSuscripcion,4,2)" />
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
              <fo:inline font-weight="bold"><xsl:value-of select="substring(../OperacionCredito/fechaSuscripcion,6,5)" /></fo:inline>
              </fo:block>


              <fo:block font-family="Arial, Helvetica, sans-serif" line-height="4.5mm" font-size="11pt" text-align="left" >Monto<fo:leader leader-pattern="space" leader-length="29.6mm"/>:<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold">$</fo:inline><fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold">


              <!--<xsl:value-of select='format-number(../OperacionCredito/montoCredito, "###.###.##0,000","decimal")' />-->
              <xsl:variable name="moneda" select="../OperacionCredito/moneda" />
                <xsl:choose>

                  <xsl:when test="$moneda = 'UF'">
                     <xsl:value-of select='format-number(../OperacionCredito/montoCredito, "###.###.##0,0000","decimal")' />
                  </xsl:when>


                  <xsl:when test="$moneda = '$'">
                    <xsl:value-of select='format-number(../OperacionCredito/montoCredito, "###.###.##0","decimal")' />
                  </xsl:when>

              </xsl:choose>


              </fo:inline></fo:block>
              <fo:block font-family="Arial, Helvetica, sans-serif" line-height="4.5mm" font-size="11pt" text-align="left" >Deudor<fo:leader leader-pattern="space" leader-length="27.6mm"/>:<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/nombreCompletoCliente" /></fo:inline></fo:block>
              <fo:block font-family="Arial, Helvetica, sans-serif" line-height="4.5mm" font-size="11pt" text-align="left" >RUT<fo:leader leader-pattern="space" leader-length="32.5mm"/>:<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select='format-number(../OperacionCredito/rutCliente, "###.###.##0","rut")' /></fo:inline>-<fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/dvCliente" /></fo:inline></fo:block>
              
                      <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                      <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                      <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="justify" ><fo:inline font-weight="bold">Indivisibilidad  y solidaridad.</fo:inline>  Las obligaciones  que emanen de  este pagaré serán  solidarias para el suscriptor, avalista(s) y demás obligados al pago y serán  indivisibles  para  sus herederos.  Además,  el suscriptor  pagará los gastos, impuestos y costas personales y procesales que correspondan.</fo:block>
                      <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="justify" ><fo:inline font-weight="bold">Mandato para prórrogas.</fo:inline> El  suscriptor  faculta  al Banco de Crédito  e  Inversiones para que en su nombre y representación otorgue, previa autorización expresa de éste, una o más prórrogas que establezcan nuevas condiciones, tasas de interés y fechas de vencimiento. </fo:block>
                      <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="justify" ><fo:inline font-weight="bold">Domicilio  y  competencia.</fo:inline> Para todos los efectos legales, judiciales o extrajudiciales derivados de este pagaré, las partes acuerdan someterse  a los Tribunales de Justicia con asiento en la comuna y ciudad del domicilio del suscriptor,  lo que  será obligatorio tanto para el suscriptor como para sus avales, endosantes u obligados por garantía.</fo:block>
                      <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="justify" >Sin perjuicio declaro, que mi domicilio y residencia son los consignados en  este título, comprometiéndome a dar pronto aviso por escrito al Banco, en el evento que realice cualquier cambio de domicilio en el futuro.</fo:block>
                      <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="justify" ><fo:inline font-weight="bold">Impuesto de timbres y estampillas.</fo:inline> El impuesto de timbres y estampillas que grava  este  documento se paga por ingresos mensuales de dinero en Tesorería, según Decreto Ley Nº 3475.</fo:block>

                      <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                      <fo:block font-family="Arial, Helvetica, sans-serif" line-height="4.5mm" font-size="11pt" text-align="left" >
                      En<fo:leader leader-pattern="space" leader-length="1mm"/>
                      <fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/ciudadContrato" /></fo:inline>,
                      <fo:leader leader-pattern="space" leader-length="1mm"/>a<fo:leader leader-pattern="space" leader-length="1mm"/>
                      <fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/dia" /></fo:inline>

                      <!--<fo:leader leader-pattern="space" leader-length="1mm"/>de<fo:leader leader-pattern="space" leader-length="1mm"/>
                      <fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/mes" /></fo:inline>-->
                      <fo:leader leader-pattern="space" leader-length="1mm"/>de<fo:leader leader-pattern="space" leader-length="1mm"/>
                      <xsl:variable name="mes" select="../OperacionCredito/mes" />
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


                      <fo:leader leader-pattern="space" leader-length="1mm"/>de<fo:leader leader-pattern="space" leader-length="1mm"/>
                      <fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/anio" /></fo:inline>
                      </fo:block>



                      <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                      <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                      <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                      <fo:block font-family="Arial, Helvetica, sans-serif" line-height="4.5mm" font-size="11pt" text-align="center" ><fo:leader leader-length="6cm" leader-pattern="rule" rule-style="solid" rule-thickness="0.4mm" color="black"/></fo:block>
                      <fo:block font-family="Arial, Helvetica, sans-serif" line-height="4.5mm" font-size="11pt" text-align="center" >Firma del Suscriptor</fo:block>
                      <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                      <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>

                      <!-- AQUI COMIENZA LOS DATOS  DEL SUSCRIPTOR NOMBRE O RAZON SOCIAL -->
                       <xsl:apply-templates select="../OperacionCredito"/>
                      <!-- AQUI TERMINA LOS DATOS  DEL SUSCRIPTOR NOMBRE O RAZON SOCIAL -->

                      <!-- AQUI COMIENZA LOS DATOS  DEL SUSCRIPTOR DOMICILIO, COMUNA Y CIUDAD -->
                       <xsl:apply-templates select="../DireccionDeudorBci"/>
                      <!-- AQUI TERMINAN LOS DATOS  DEL SUSCRIPTOR DOMICILIO, COMUNA Y CIUDAD -->
                      <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
		      <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                      <fo:block font-family="Arial, Helvetica, sans-serif" line-height="4.5mm" font-size="11pt" text-align="center" >Página 3 de 3</fo:block>
                </fo:flow>
          </xsl:when>
          <!--   AQUI TERMINO EL TEMPLATE   docpg13c  -->




          <!--   AQUI COMIENZA EL TEMPLATE   docpg15a  -->
          <xsl:when test="template = 'docpg15a'">
                <fo:flow flow-name="xsl-region-body">
              <fo:table border-collapse="collapse">
              <fo:table-column column-width="50mm" />
              <fo:table-column column-width="50mm" />
              <fo:table-body>
                  <fo:table-row>
                        <fo:table-cell text-align="left">
                                <fo:block >
                                  <fo:external-graphic height="12mm" width="25mm" vertical-align="middle">
                                    <xsl:attribute name="src">
                                    <xsl:value-of select="../OperacionCredito/logoBciSomosDiferentes"/>
                                    </xsl:attribute>
                                  </fo:external-graphic>
                                </fo:block>
                        </fo:table-cell>
                        <fo:table-cell >
                                <fo:block >
                                </fo:block>
                        </fo:table-cell>
                  </fo:table-row>
              </fo:table-body>
              </fo:table>
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block font-family="Arial, Helvetica, sans-serif" line-height="4.5mm" font-size="11pt" text-align="center" ><fo:inline font-weight="bold">PAGARE (Sin Protesto)</fo:inline></fo:block>
              <fo:block font-family="Arial, Helvetica, sans-serif" line-height="4.5mm" font-size="11pt" text-align="center" ><fo:inline font-weight="bold">PRÉSTAMO DE NEGOCIOS $</fo:inline></fo:block>
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>

                      <fo:table border-collapse="collapse" font-family="Arial, Helvetica, sans-serif" font-size="11pt" text-align="left">
                          <fo:table-column column-width="50%"/>
                          <fo:table-column column-width="50%"/>
                          <fo:table-body>
                              <fo:table-row>
                                  <fo:table-cell > _
                                      <fo:block font-family="Arial, Helvetica, sans-serif" line-height="4.5mm" font-size="11pt" text-align="left" >N° de Operación :<fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/nroOperacion" /></fo:inline></fo:block>
                                  </fo:table-cell>
                              </fo:table-row>
                          </fo:table-body>
                      </fo:table>

                      <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                      <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                      <fo:block font-family="Arial, Helvetica, sans-serif" line-height="4.5mm" font-size="11pt" text-align="justify"  >Por  valor  recibido,  debo  y  pagaré  a  la  orden  del  BANCO DE CREDITO E INVERSIONES, en Avenida El Golf  N° 125,  Comuna de Las  Condes,  Santiago,  o  en  cualquiera  de  sus  sucursales,  la  suma de <fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold">$</fo:inline><fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold">


                      <!--<xsl:value-of select='format-number(../OperacionCredito/montoCredito, "###.###.##0,000","decimal")' />-->
                      <xsl:variable name="moneda" select="../OperacionCredito/moneda" />
                        <xsl:choose>

                          <xsl:when test="$moneda = 'UF'">
                             <xsl:value-of select='format-number(../OperacionCredito/montoCredito, "###.###.##0,0000","decimal")' />
                          </xsl:when>


                          <xsl:when test="$moneda = '$'">
                            <xsl:value-of select='format-number(../OperacionCredito/montoCredito, "###.###.##0","decimal")' />
                          </xsl:when>

                      </xsl:choose>


                      </fo:inline><fo:leader leader-pattern="space" leader-length="1mm"/>(<fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/montoCreditoManoEscrita" /></fo:inline> pesos m/l)</fo:block>
                      <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="left" ><fo:inline font-weight="bold">Tasa de Interés</fo:inline></fo:block>
                      <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="justify"  >La tasa de interés que se aplicará a los primeros 30 días de esta obligación, será de un <fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select='format-number(../OperacionCredito/tasaInteres, "###,####","decimal")'/></fo:inline> % mensual.</fo:block>
                      <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="justify"  >En lo sucesivo,el capital adeudado devengará un interés variable mensualmente que se determinará en la  fecha  correspondiente al primer día del respectivo período de intereses y  regirá hasta  el día anterior al próximo vencimiento.</fo:block>
                      <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="justify"  >Dicho interés se calculará considerando la TASA BASE del  Banco de  Crédito e Inversiones vigente al primer día del respectivo período  de  interés, más un spread o diferencial de <fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select='format-number(../OperacionCredito/tasaSpread, "###,####","decimal")'/></fo:inline> % mensual.</fo:block>
                      <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="justify"  >La  TASA  BASE  se  define  como  la  determinada diariamente por el Banco de Crédito e Inversiones de acuerdo a una  metodología  que  declaro  conocer  y aceptar,  y  que será certificada todos los días hábiles bancarios por uno de los Notarios que  atienden  los  negocios y operaciones de la Oficina Central del Banco. Reconozco dicho procedimiento como suficiente, válido y definitivo para la determinación y cálculo de la señalada TASA BASE.</fo:block>
                      <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                      <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="justify"  >La  TASA BASE para los días no hábiles bancarios será la vigente el día hábil bancario  inmediatamente  anterior  a  aquéllos. Igualmente, si por cualquier causa en algún día no existiera Certificación  Notarial para la referida TASA BASE, regirá para esa fecha la última que se hubiere certificado.</fo:block>
                      <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="justify"  >Si por cualquier motivo y en cualquiera forma resultare impugnada o discutida la determinación o certificación de la Tasa Base vigente  para  alguna fecha, se aplicará en su reemplazo la TASA DE INTERES MAXIMA CONVENCIONAL que la Ley permita estipular a esa fecha para operaciones no reajustables.</fo:block>
                      <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="left" ><fo:inline font-weight="bold">Amortización del Capital</fo:inline></fo:block>
                      <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="justify"  >El capital adeudado se pagará en <fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="count(../CalendarioPago)" /></fo:inline> cuotas sucesivas,  en  las fechas y por los montos que a continuación se indican:</fo:block>
                      <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>


               <xsl:for-each select="../CalendarioPago">

                  <xsl:variable name="mes" select="substring(fecVencPago,4,2)" />


                        <fo:table border-collapse="collapse" font-family="Arial, Helvetica, sans-serif" font-size="11pt" text-align="left">
                            <fo:table-column column-width="45mm"  />
                            <fo:table-column column-width="30mm"  />
                            <fo:table-column column-width="40mm"  />
                            <fo:table-column column-width="40mm"  />

                            <fo:table-body>
                                <fo:table-row>

                                    <fo:table-cell >
                                      <fo:block font-family="Arial, Helvetica, sans-serif" line-height="4.5mm" font-size="11pt" text-align="left" ><fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold">$</fo:inline> <fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select='format-number(cuota, "###.###.##0","decimal")' />.-</fo:inline></fo:block>
                                    </fo:table-cell>


                                    <fo:table-cell >
                                      <fo:block font-family="Arial, Helvetica, sans-serif" line-height="4.5mm" font-size="11pt" text-align="left" > , el día <fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="substring(fecVencPago,0,3)" /><!--<xsl:value-of select="fecVencPago" />--></fo:inline> de <fo:leader leader-pattern="space" leader-length="1mm"/></fo:block>
                                    </fo:table-cell>



                                    <fo:table-cell >
                                    <fo:block font-family="Arial, Helvetica, sans-serif" line-height="4.5mm" font-size="11pt" text-align="left" >
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
                                        </fo:block>
                                    </fo:table-cell>


                                    <fo:table-cell >
                                        <fo:block font-family="Arial, Helvetica, sans-serif" line-height="4.5mm" font-size="11pt" text-align="left" ><fo:leader leader-pattern="space" leader-length="1mm"/>de <fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="substring(fecVencPago,7,4)" /></fo:inline></fo:block>
                                    </fo:table-cell>


                                </fo:table-row>
                            </fo:table-body>
                        </fo:table>

           </xsl:for-each>

                      <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="left" ><fo:inline font-weight="bold">Intereses</fo:inline></fo:block>
                      <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="justify"  >Por su parte,los intereses se pagarán en <fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="count(../CalendarioPago)" /></fo:inline><fo:leader leader-pattern="space" leader-length="1mm"/> cuotas mensuales y sucesivas, la primera de ellas con vencimiento el día <fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/fechaPrimerVctoDD" /></fo:inline><fo:leader leader-pattern="space" leader-length="1mm"/>de<fo:leader leader-pattern="space" leader-length="1mm"/>


                      <!--<fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/fechaPrimerVctoMM" /></fo:inline>-->
                      <xsl:variable name="mes" select="../OperacionCredito/fechaPrimerVctoMM" />
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


                      <fo:leader leader-pattern="space" leader-length="1mm"/>de<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/fechaPrimerVctoYYYY" /></fo:inline> y las restantes los días<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/diaVencimiento" /></fo:inline> de los meses  siguientes  hasta la última cuota que vencerá el día <fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/fechaUltimoVctoDD" /></fo:inline><fo:leader leader-pattern="space" leader-length="1mm"/>de<fo:leader leader-pattern="space" leader-length="1mm"/>

                      <fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/fechaUltimoVctoMM" /></fo:inline>
                      <xsl:variable name="mes" select="../OperacionCredito/fechaUltimoVctoMM" />
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

                      <fo:leader leader-pattern="space" leader-length="1mm"/>de<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/fechaUltimoVctoYYYY" /></fo:inline></fo:block>
                      <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                      <fo:block font-family="Arial, Helvetica, sans-serif" line-height="4.5mm" font-size="11pt" text-align="center" >Página 1 de 3</fo:block>
                </fo:flow>
          </xsl:when>
          <!--   AQUI TERMINO EL TEMPLATE   docpg15a  -->

          <!--   AQUI COMIENZA EL TEMPLATE   docpg15b  -->
          <xsl:when test="template = 'docpg15b'">
                <fo:flow flow-name="xsl-region-body">
              <fo:table border-collapse="collapse">
              <fo:table-column column-width="50mm" />
              <fo:table-column column-width="50mm" />
              <fo:table-body>
                  <fo:table-row>
                        <fo:table-cell text-align="left">
                                <fo:block >
                                  <fo:external-graphic height="12mm" width="25mm" vertical-align="middle">
                                    <xsl:attribute name="src">
                                    <xsl:value-of select="../OperacionCredito/logoBciSomosDiferentes"/>
                                    </xsl:attribute>
                                  </fo:external-graphic>
                                </fo:block>
                        </fo:table-cell>
                        <fo:table-cell >
                                <fo:block >
                                </fo:block>
                        </fo:table-cell>
                  </fo:table-row>
              </fo:table-body>
              </fo:table>
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block font-family="Arial, Helvetica, sans-serif" line-height="4.5mm" font-size="11pt" text-align="left" >Nº Operación<fo:leader leader-pattern="space" leader-length="18.5mm"/>:<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/nroOperacion" /></fo:inline></fo:block>
              <fo:block font-family="Arial, Helvetica, sans-serif" line-height="4.5mm" font-size="11pt" text-align="left" >Fecha de suscripción<fo:leader leader-pattern="space" leader-length="6.8mm"/>:<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="substring(../OperacionCredito/fechaSuscripcion,0,4)" /></fo:inline>
              <xsl:variable name="mes" select="substring(../OperacionCredito/fechaSuscripcion,4,2)" />
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
              <fo:inline font-weight="bold"><xsl:value-of select="substring(../OperacionCredito/fechaSuscripcion,6,5)" /></fo:inline>
              </fo:block>
              <fo:block font-family="Arial, Helvetica, sans-serif" line-height="4.5mm" font-size="11pt" text-align="left" >Monto<fo:leader leader-pattern="space" leader-length="29.6mm"/>:<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/moneda" /></fo:inline><fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold">

              <xsl:variable name="moneda" select="../OperacionCredito/moneda" />
                <xsl:choose>
                  <xsl:when test="$moneda = 'UF'">
                     <xsl:value-of select='format-number(../OperacionCredito/montoCredito, "###.###.##0,0000","decimal")' />
                  </xsl:when>

                  <xsl:when test="$moneda = '$'">
                    <xsl:value-of select='format-number(../OperacionCredito/montoCredito, "###.###.##0","decimal")' />
                  </xsl:when>
              </xsl:choose>

              </fo:inline></fo:block>
              <fo:block font-family="Arial, Helvetica, sans-serif" line-height="4.5mm" font-size="11pt" text-align="left" >Deudor<fo:leader leader-pattern="space" leader-length="28mm"/>:<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/nombreCompletoCliente" /></fo:inline></fo:block>
              <fo:block font-family="Arial, Helvetica, sans-serif" line-height="4.5mm" font-size="11pt" text-align="left" >RUT<fo:leader leader-pattern="space" leader-length="32.2mm"/>:<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select='format-number(../OperacionCredito/rutCliente, "###.###.##0","rut")' /></fo:inline>-<fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/dvCliente" /></fo:inline></fo:block>
              
                      <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                      <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                      <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="justify"  ><fo:inline font-weight="bold">Prórroga de  plazo  por  día inhábil.</fo:inline> Las cuotas de amortización de capital e intereses se pagarán a su vencimiento,  siempre que éste corresponda a un día hábil  bancario.  En  caso  contrario,  se  pagarán  el  día  hábil  bancario siguiente.</fo:block>
                      <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="justify"  ><fo:inline font-weight="bold">Prepagos.</fo:inline> Si el monto de  capital inicial  supera el  equivalente a UF 5.000, todo pago anticipado,  sea total o parcial,  será convenido  libremente entre el  suscriptor y el Banco.  A falta  de  acuerdo, el suscriptor podrá en todo caso  anticipar el pago, total o parcialmente, y en este último caso, siempre que  el importe  a  pagar sea  igual o  superior al  20 % del  capital de  la obligación  adeudada,  pagando  además los intereses estipulados devengados y no pagados a la fecha  del prepago,  calculados sobre el saldo  insoluto, más los  intereses  estipulados  en este instrumento, calculados sobre el capital prepagado desde la fecha  del prepago hasta el vencimiento del  plazo pactado.</fo:block>
                      <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="justify"  >Si  el  monto  de capital  inicial  no  supera  el equivalente a UF 5.000, al capital  prepagado deberán sumársele los intereses  calculados hasta la fecha del  prepago y  la comisión de  prepago máxima  que el articulo  10 de la Ley 18.010 permite pactar.</fo:block>
                      <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="justify"  ><fo:inline font-weight="bold">Exigibilidad anticipada.</fo:inline> El no pago oportuno de una  cualquiera de las cuotas de capital y/o  de interés comprendidos  en esta  obligación, dará derecho al acreedor a hacer  exigible de inmediato  y anticipadamente el monto total del saldo  insoluto  adeudado  a  esa  fecha,  el que desde  esa misma  fecha  se considerará de plazo vencido y devengará en favor del acreedor o de quien sus derechos  represente, el interés máximo convencional que rija durante la mora o simple retardo.</fo:block>
                      <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="justify"  >Se deja expresamente establecido que  el ejercicio de este derecho constituye una  sanción  al  suscriptor  por el no  pago de  la deuda e importa una mera facultad  establecida en  beneficio exclusivo  del acreedor, que no altera en caso alguno la fecha de vencimiento del pagaré originalmente pactada, ni a la exigibilidad de las acciones cambiarias y ejecutivas derivadas de éste.</fo:block>
                      <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="justify"  >El Banco podrá hacer exigible de inmediato el monto total adeudado, expirando todos los  plazos  pendientes por el sólo  hecho de constituirse en mora o de habérsele  protestado  al deudor  o al aval,  por  falta  de pago,  cualquier documento,  pagaré,  letra de cambio o  cheque,  aceptado, suscrito, girado o avalado por él.</fo:block>
                      <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="justify"  >Se  deja  expresamente  establecido  que corresponderá al deudor acreditar el pago de las cuotas en que se divide el presente instrumento, en caso de cobro judicial.</fo:block>
                      <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                      <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                      <fo:block font-family="Arial, Helvetica, sans-serif" line-height="4.5mm" font-size="11pt" text-align="center" >Página 2 de 3</fo:block>
                </fo:flow>
          </xsl:when>
          <!--   AQUI TERMINA EL TEMPLATE   docpg15b  -->


          <!--   AQUI COMIENZA EL TEMPLATE   docpg15c  -->
          <xsl:when test="template = 'docpg15c'">
                <fo:flow flow-name="xsl-region-body">
              <fo:table border-collapse="collapse">
              <fo:table-column column-width="50mm" />
              <fo:table-column column-width="50mm" />
              <fo:table-body>
                  <fo:table-row>
                        <fo:table-cell text-align="left">
                                <fo:block >
                                  <fo:external-graphic height="12mm" width="25mm" vertical-align="middle">
                                    <xsl:attribute name="src">
                                    <xsl:value-of select="../OperacionCredito/logoBciSomosDiferentes"/>
                                    </xsl:attribute>
                                  </fo:external-graphic>
                                </fo:block>
                        </fo:table-cell>
                        <fo:table-cell >
                                <fo:block >
                                </fo:block>
                        </fo:table-cell>
                  </fo:table-row>
              </fo:table-body>
              </fo:table>
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block font-family="Arial, Helvetica, sans-serif" line-height="4.5mm" font-size="11pt" text-align="left" >Nº Operación<fo:leader leader-pattern="space" leader-length="17.2mm"/>:<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/nroOperacion" /></fo:inline></fo:block>
              <fo:block font-family="Arial, Helvetica, sans-serif" line-height="4.5mm" font-size="11pt" text-align="left" >Fecha de suscripción<fo:leader leader-pattern="space" leader-length="3.7mm"/>:<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="substring(../OperacionCredito/fechaSuscripcion,0,4)" /></fo:inline>
              <xsl:variable name="mes" select="substring(../OperacionCredito/fechaSuscripcion,4,2)" />
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
              <fo:inline font-weight="bold"><xsl:value-of select="substring(../OperacionCredito/fechaSuscripcion,6,5)" /></fo:inline>
              </fo:block>


              <fo:block font-family="Arial, Helvetica, sans-serif" line-height="4.5mm" font-size="11pt" text-align="left" >Monto<fo:leader leader-pattern="space" leader-length="29.6mm"/>:<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold">$</fo:inline><fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold">

              <!--<xsl:value-of select='format-number(../OperacionCredito/montoCredito, "###.###.##0,000","decimal")' />-->
              <xsl:variable name="moneda" select="../OperacionCredito/moneda" />
                <xsl:choose>

                  <xsl:when test="$moneda = 'UF'">
                     <xsl:value-of select='format-number(../OperacionCredito/montoCredito, "###.###.##0,0000","decimal")' />
                  </xsl:when>


                  <xsl:when test="$moneda = '$'">
                    <xsl:value-of select='format-number(../OperacionCredito/montoCredito, "###.###.##0","decimal")' />
                  </xsl:when>

              </xsl:choose>


              </fo:inline></fo:block>
              <fo:block font-family="Arial, Helvetica, sans-serif" line-height="4.5mm" font-size="11pt" text-align="left" >Deudor<fo:leader leader-pattern="space" leader-length="27.6mm"/>:<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/nombreCompletoCliente" /></fo:inline></fo:block>
              <fo:block font-family="Arial, Helvetica, sans-serif" line-height="4.5mm" font-size="11pt" text-align="left" >RUT<fo:leader leader-pattern="space" leader-length="32.5mm"/>:<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select='format-number(../OperacionCredito/rutCliente, "###.###.##0","rut")' /></fo:inline>-<fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/dvCliente" /></fo:inline></fo:block>
              
                      <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                      <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                      <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="justify" ><fo:inline font-weight="bold">Indivisibilidad  y solidaridad.</fo:inline>  Las obligaciones  que emanen de  este pagaré serán  solidarias para el suscriptor, avalista(s) y demás obligados al pago y serán  indivisibles  para  sus herederos.  Además,  el suscriptor  pagará los gastos, impuestos y costas personales y procesales que correspondan.</fo:block>
                      <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="justify" ><fo:inline font-weight="bold">Mandato para prórrogas.</fo:inline> El  suscriptor  faculta  al Banco de Crédito  e  Inversiones para que en su nombre y representación otorgue, previa autorización expresa de éste, una o más prórrogas que establezcan nuevas condiciones, tasas de interés y fechas de vencimiento. </fo:block>
                      <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="justify" ><fo:inline font-weight="bold">Domicilio  y  competencia.</fo:inline> Para todos los efectos legales, judiciales o extrajudiciales derivados de este pagaré, las partes acuerdan someterse  a los Tribunales de Justicia con asiento en la comuna y ciudad del domicilio del suscriptor,  lo que  será obligatorio tanto para el suscriptor como para sus avales, endosantes u obligados por garantía.</fo:block>
                      <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="justify" >Sin perjuicio declaro, que mi domicilio y residencia son los consignados en  este título, comprometiéndome a dar pronto aviso por escrito al Banco, en el evento que realice cualquier cambio de domicilio en el futuro.</fo:block>
                      <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="justify" ><fo:inline font-weight="bold">Impuesto de timbres y estampillas.</fo:inline> El impuesto de timbres y estampillas que grava  este  documento se paga por ingresos mensuales de dinero en Tesorería, según Decreto Ley Nº 3475.</fo:block>


                      <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                      <fo:block font-family="Arial, Helvetica, sans-serif" line-height="4.5mm" font-size="11pt" text-align="left" >
                      En<fo:leader leader-pattern="space" leader-length="1mm"/>
                      <fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/ciudadContrato" /></fo:inline>,
                      <fo:leader leader-pattern="space" leader-length="1mm"/>a<fo:leader leader-pattern="space" leader-length="1mm"/>
                      <fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/dia" /></fo:inline>

                      <!--<fo:leader leader-pattern="space" leader-length="1mm"/>de<fo:leader leader-pattern="space" leader-length="1mm"/>
                      <fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/mes" /></fo:inline>-->
                      <fo:leader leader-pattern="space" leader-length="1mm"/>de<fo:leader leader-pattern="space" leader-length="1mm"/>
                      <xsl:variable name="mes" select="../OperacionCredito/mes" />
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


                      <fo:leader leader-pattern="space" leader-length="1mm"/>de<fo:leader leader-pattern="space" leader-length="1mm"/>
                      <fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/anio" /></fo:inline>
                      </fo:block>




                      <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                      <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                      <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                      <fo:block font-family="Arial, Helvetica, sans-serif" line-height="4.5mm" font-size="11pt" text-align="center" ><fo:leader leader-length="6cm" leader-pattern="rule" rule-style="solid" rule-thickness="0.4mm" color="black"/></fo:block>
                      <fo:block font-family="Arial, Helvetica, sans-serif" line-height="4.5mm" font-size="11pt" text-align="center" >Firma del Suscriptor</fo:block>
                      <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                      <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>

                      <!-- AQUI COMIENZA LOS DATOS  DEL SUSCRIPTOR NOMBRE O RAZON SOCIAL -->
                       <xsl:apply-templates select="../OperacionCredito"/>
                      <!-- AQUI TERMINA LOS DATOS  DEL SUSCRIPTOR NOMBRE O RAZON SOCIAL -->

                      <!-- AQUI COMIENZA LOS DATOS  DEL SUSCRIPTOR DOMICILIO, COMUNA Y CIUDAD -->
                       <xsl:apply-templates select="../DireccionDeudorBci"/>
                      <!-- AQUI TERMINAN LOS DATOS  DEL SUSCRIPTOR DOMICILIO, COMUNA Y CIUDAD -->

		      <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
		      <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
		      <fo:block font-family="Arial, Helvetica, sans-serif" line-height="4.5mm" font-size="11pt" text-align="center" >Página 3 de 3</fo:block> 
		      		
                </fo:flow>
          </xsl:when>
          <!--   AQUI TERMINA EL TEMPLATE   docpg15c  -->


          <!--   AQUI COMIENZA EL TEMPLATE   docpg16a  -->
          <xsl:when test="template = 'docpg16a'">
                 <fo:flow flow-name="xsl-region-body">
              <fo:table border-collapse="collapse">
              <fo:table-column column-width="50mm" />
              <fo:table-column column-width="50mm" />
              <fo:table-body>
                  <fo:table-row>
                        <fo:table-cell text-align="left">
                                <fo:block >
                                  <fo:external-graphic height="12mm" width="25mm" vertical-align="middle">
                                    <xsl:attribute name="src">
                                    <xsl:value-of select="../OperacionCredito/logoBciSomosDiferentes"/>
                                    </xsl:attribute>
                                  </fo:external-graphic>
                                </fo:block>
                        </fo:table-cell>
                        <fo:table-cell >
                                <fo:block >
                                </fo:block>
                        </fo:table-cell>
                  </fo:table-row>
              </fo:table-body>
              </fo:table>
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                       <fo:block font-family="Arial, Helvetica, sans-serif" line-height="4.5mm" font-size="11pt" text-align="center" ><fo:inline font-weight="bold">PAGARE (Sin Protesto)</fo:inline></fo:block>
                       <fo:block font-family="Arial, Helvetica, sans-serif" line-height="4.5mm" font-size="11pt" text-align="center" ><fo:inline font-weight="bold">BOLETA DE GARANTIA  $</fo:inline></fo:block>
                       <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                       <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                       <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                       <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                       <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>

                       <fo:table border-collapse="collapse" font-family="Arial, Helvetica, sans-serif" font-size="11pt" text-align="left">
                           <fo:table-column column-width="50%"/>
                           <fo:table-column column-width="50%"/>
                           <fo:table-body>
                               <fo:table-row>
                                   <fo:table-cell > _
                                       <fo:block font-family="Arial, Helvetica, sans-serif" line-height="4.5mm" font-size="11pt" text-align="left" >N° de Operación :<fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/nroOperacion" /></fo:inline></fo:block>
                                   </fo:table-cell>
                               </fo:table-row>
                           </fo:table-body>
                       </fo:table>

                       <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                       <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="justify"  >Por valor recibido,  debo  y  pagaré  a  la  orden  del  BANCO  DE  CREDITO E INVERSIONES, en su domicilio ubicado en Avenida El Golf N° 125, Comuna de Las Condes, Santiago, o en cualquiera de sus sucursales, la suma de $<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold">

                       <!--<xsl:value-of select='format-number(../OperacionCredito/montoCredito, "###.###.##0,000","decimal")' />-->
                      <xsl:variable name="moneda" select="../OperacionCredito/moneda" />
                        <xsl:choose>

                          <xsl:when test="$moneda = 'UF'">
                             <xsl:value-of select='format-number(../OperacionCredito/montoCredito, "###.###.##0,0000","decimal")' />
                          </xsl:when>


                          <xsl:when test="$moneda = '$'">
                            <xsl:value-of select='format-number(../OperacionCredito/montoCredito, "###.###.##0","decimal")' />
                          </xsl:when>

                      </xsl:choose>


                       </fo:inline> <fo:leader leader-pattern="space" leader-length="1mm"/> (<fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/montoCreditoManoEscrita" /><fo:leader leader-pattern="space" leader-length="1mm"/></fo:inline>pesos m/l) por valor recibido en Boleta de Garantía N° <fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/nroBoletaGarantia" /></fo:inline> a favor de @-.............................................................</fo:block>
                       <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="left" ><fo:inline font-weight="bold">Tasa de Interés</fo:inline></fo:block>
                       <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="justify"  >El capital adeudado devengará a partir  de esta fecha una tasa de interés del <fo:inline font-weight="bold"><xsl:value-of select='format-number(../OperacionCredito/tasaInteres, "###,####","decimal")'/></fo:inline>% mensual vencido durante todo el plazo pactado.</fo:block>
                       <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="left" ><fo:inline font-weight="bold">Amortización del Capital</fo:inline></fo:block>
                       <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="justify"  >El capital adeudado se pagará íntegramente el día <fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/fechaPrimerVctoDD" /></fo:inline><fo:leader leader-pattern="space" leader-length="1mm"/>de<fo:leader leader-pattern="space" leader-length="1mm"/>

                      <xsl:variable name="mes" select="../OperacionCredito/fechaPrimerVctoMM" />
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

                       <fo:leader leader-pattern="space" leader-length="1mm"/>de<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/anioVencimiento" /></fo:inline> </fo:block>
                       <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="left" ><fo:inline font-weight="bold">Intereses</fo:inline></fo:block>
                       <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="justify" >Por su parte, los intereses  se  pagarán  en  <fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="count(../CalendarioPago)" /></fo:inline> cuotas  trimestrales  y sucesivas,la primera de ellas con vencimiento el día <fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/fechaPrimerVctoDD" /></fo:inline><fo:leader leader-pattern="space" leader-length="1mm"/>de<fo:leader leader-pattern="space" leader-length="1mm"/>

                       <!--<fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/fechaPrimerVctoMM" /></fo:inline>-->
                       <xsl:variable name="mes" select="../OperacionCredito/fechaPrimerVctoMM" />
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


                       <fo:leader leader-pattern="space" leader-length="1mm"/>de<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/fechaPrimerVctoYYYY" /></fo:inline> y las restantes los días <fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/diaVencimiento" /></fo:inline> de los meses de @-.............., @-...................., @-..................... y  @-......................., hasta la ultima cuota que vencerá el día <fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/fechaUltimoVctoDD" /></fo:inline><fo:leader leader-pattern="space" leader-length="1mm"/>de<fo:leader leader-pattern="space" leader-length="1mm"/>

                       <!--<fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/fechaUltimoVctoMM" /></fo:inline>-->
                         <xsl:variable name="mes" select="../OperacionCredito/fechaUltimoVctoMM" />
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

                       <fo:leader leader-pattern="space" leader-length="1mm"/>de<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/fechaUltimoVctoYYYY" /></fo:inline></fo:block>
                       <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="justify" >En todo caso abonaré una comisión mínima de @-..... % del valor de la Boleta, comisión que no podrá ser inferior a <fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold">$</fo:inline> @-................(@+................. @-.........................................................................).</fo:block>
                       <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="justify" ><fo:inline font-weight="bold">Prórroga de plazo por día inhábil.</fo:inline> Las  cuotas  de amortización de capital e intereses se pagarán a su  vencimiento,  siempre que éste  corresponda a un día  hábil  bancario.  En  caso  contrario,  se pagarán el día hábil bancario siguiente.</fo:block>
                       <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="justify" ><fo:inline font-weight="bold">Prepagos.</fo:inline>  Si el monto de capital inicial supera el equivalente  a  UF 5.000, todo pago anticipado, sea total o parcial, será convenido libremente entre el suscriptor y el Banco. A falta de acuerdo, el suscriptor podrá  en  todo caso anticipar el pago, total o parcialmente,  y  en este último caso, siempre que el importe a pagar sea igual o superior al 20 % del capital de la  obligación adeudada, pagando además los intereses estipulados devengados  y  no  pagados a la fecha del prepago, calculados sobre el saldo insoluto, más los intereses estipulados en este instrumento, calculados sobre el capital prepagado  desde la fecha del prepago hasta el vencimiento del plazo pactado.  Si  el monto de capital inicial no supera el equivalente a  UF 5.000,  al  capital  prepagado deberán sumársele los intereses calculados hasta  la  fecha  del prepago y la comisión de prepago máxima que el articulo 10 de la Ley 18.010 permite pactar.</fo:block>
                       <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="justify" ><fo:inline font-weight="bold">Exigibilidad anticipada.</fo:inline>  El no pago oportuno de una cualquiera de las cuotas de capital y/o de interés comprendidos en esta  obligación,  dará  derecho al acreedor a hacer exigible de inmediato y  anticipadamente  el monto total del saldo insoluto  adeudado a  esa  fecha,  el que  desde  esa  misma  fecha  se considerará de plazo vencido y devengará en favor del acreedor o de quien sus derechos represente, el interés máximo convencional que  rija durante la mora o simple retardo.</fo:block>
                       <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="justify" >Se deja  expresamente establecido que el ejercicio de este derecho constituye una  sanción  al  suscriptor por el  no  pago  de la deuda e importa una mera facultad establecida en beneficio  exclusivo del  acreedor,  que no altera en caso alguno la fecha de vencimiento del pagaré originalmente pactada, ni a la exigibilidad de las acciones cambiarias y ejecutivas derivadas de éste.</fo:block>
                       <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                       <fo:block font-family="Arial, Helvetica, sans-serif" line-height="4.5mm" font-size="11pt" text-align="center" >Página 1 de 3</fo:block>
                </fo:flow>
          </xsl:when>
          <!--   AQUI TERMINA EL TEMPLATE   docpg16a  -->

          <!--   AQUI COMIENZA EL TEMPLATE   docpg16b  -->
          <xsl:when test="template = 'docpg16b'">
                <fo:flow flow-name="xsl-region-body">
              <fo:table border-collapse="collapse">
              <fo:table-column column-width="50mm" />
              <fo:table-column column-width="50mm" />
              <fo:table-body>
                  <fo:table-row>
                        <fo:table-cell text-align="left">
                                <fo:block >
                                  <fo:external-graphic height="12mm" width="25mm" vertical-align="middle">
                                    <xsl:attribute name="src">
                                    <xsl:value-of select="../OperacionCredito/logoBciSomosDiferentes"/>
                                    </xsl:attribute>
                                  </fo:external-graphic>
                                </fo:block>
                        </fo:table-cell>
                        <fo:table-cell >
                                <fo:block >
                                </fo:block>
                        </fo:table-cell>
                  </fo:table-row>
              </fo:table-body>
              </fo:table>
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block font-family="Arial, Helvetica, sans-serif" line-height="4.5mm" font-size="11pt" text-align="left" >Nº Operación<fo:leader leader-pattern="space" leader-length="18.5mm"/>:<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/nroOperacion" /></fo:inline></fo:block>
              <fo:block font-family="Arial, Helvetica, sans-serif" line-height="4.5mm" font-size="11pt" text-align="left" >Fecha de suscripción<fo:leader leader-pattern="space" leader-length="6.8mm"/>:<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="substring(../OperacionCredito/fechaSuscripcion,0,4)" /></fo:inline>
              <xsl:variable name="mes" select="substring(../OperacionCredito/fechaSuscripcion,4,2)" />
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
              <fo:inline font-weight="bold"><xsl:value-of select="substring(../OperacionCredito/fechaSuscripcion,6,5)" /></fo:inline>
              </fo:block>
              <fo:block font-family="Arial, Helvetica, sans-serif" line-height="4.5mm" font-size="11pt" text-align="left" >Monto<fo:leader leader-pattern="space" leader-length="29.6mm"/>:<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/moneda" /></fo:inline><fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold">

              <xsl:variable name="moneda" select="../OperacionCredito/moneda" />
                <xsl:choose>
                  <xsl:when test="$moneda = 'UF'">
                     <xsl:value-of select='format-number(../OperacionCredito/montoCredito, "###.###.##0,0000","decimal")' />
                  </xsl:when>

                  <xsl:when test="$moneda = '$'">
                    <xsl:value-of select='format-number(../OperacionCredito/montoCredito, "###.###.##0","decimal")' />
                  </xsl:when>
              </xsl:choose>

              </fo:inline></fo:block>
              <fo:block font-family="Arial, Helvetica, sans-serif" line-height="4.5mm" font-size="11pt" text-align="left" >Deudor<fo:leader leader-pattern="space" leader-length="28mm"/>:<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/nombreCompletoCliente" /></fo:inline></fo:block>
              <fo:block font-family="Arial, Helvetica, sans-serif" line-height="4.5mm" font-size="11pt" text-align="left" >RUT<fo:leader leader-pattern="space" leader-length="32.2mm"/>:<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select='format-number(../OperacionCredito/rutCliente, "###.###.##0","rut")' /></fo:inline>-<fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/dvCliente" /></fo:inline></fo:block>
              
                      <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                      <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                      <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="justify"  >El Banco podrá hacer exigible de inmediato el monto total adeudado, expirando todos los plazos pendientes por el sólo hecho de  constituirse  en  mora o de habérsele protestado al deudor o  al  aval,  por  falta  de  pago,  cualquier documento,  pagaré,  letra  de  cambio  o  cheque, aceptado, suscrito, girado o avalado por él.</fo:block>
                      <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="justify"  >Se  deja  expresamente  establecido  que corresponderá al deudor acreditar el pago de las cuotas en que se divide el presente instrumento, en caso de cobro judicial.</fo:block>
                      <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="justify"  ><fo:inline font-weight="bold">Indivisibilidad y solidaridad.</fo:inline> Las obligaciones que  emanen  de  este  pagaré serán solidarias para el suscriptor,  avalista(s)  y  demás obligados al pago y serán indivisibles  para  sus  herederos. Además, el suscriptor  pagará los gastos, impuestos y costas personales y procesales que correspondan.</fo:block>
                      <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="justify"  ><fo:inline font-weight="bold">Mandato para prórrogas.</fo:inline> El  suscriptor  faculta  al Banco de Crédito  e  Inversiones para que en su nombre y representación otorgue, previa autorización expresa de éste, una o más prórrogas que establezcan nuevas condiciones, tasas de interés y fechas de vencimiento. </fo:block>
                      <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="justify"  ><fo:inline font-weight="bold">Domicilio y  competencia.</fo:inline>  Para todos los efectos legales, judiciales o extrajudiciales derivados de este pagaré, las partes acuerdan someterse  a los Tribunales de Justicia con asiento en la comuna y ciudad del domicilio del suscriptor,  lo que  será obligatorio tanto para el suscriptor como para sus avales, endosantes u obligados por garantía.  Sin perjuicio declaro, que mi domicilio y residencia son los consignados en  este título, comprometiéndome a dar pronto aviso por escrito al Banco, en el evento que realice cualquier cambio de domicilio en el futuro.</fo:block>
                      <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="justify"  ><fo:inline font-weight="bold">Impuesto de timbres y estampillas.</fo:inline> El  impuesto de  timbres y estampillas que grava este documento se paga por ingresos mensuales de  dinero en  Tesorería, según Decreto Ley Nº 3475.</fo:block>


                      <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                      <fo:block font-family="Arial, Helvetica, sans-serif" line-height="4.5mm" font-size="11pt" text-align="left" >
                      En<fo:leader leader-pattern="space" leader-length="1mm"/>
                      <fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/ciudadContrato" /></fo:inline>,
                      <fo:leader leader-pattern="space" leader-length="1mm"/>a<fo:leader leader-pattern="space" leader-length="1mm"/>
                      <fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/dia" /></fo:inline>

                      <!--<fo:leader leader-pattern="space" leader-length="1mm"/>de<fo:leader leader-pattern="space" leader-length="1mm"/>
                      <fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/mes" /></fo:inline>-->
                      <fo:leader leader-pattern="space" leader-length="1mm"/>de<fo:leader leader-pattern="space" leader-length="1mm"/>
                      <xsl:variable name="mes" select="../OperacionCredito/mes" />
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


                      <fo:leader leader-pattern="space" leader-length="1mm"/>de<fo:leader leader-pattern="space" leader-length="1mm"/>
                      <fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/anio" /></fo:inline>
                      </fo:block>



                      <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                      <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                      <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                      <fo:block font-family="Arial, Helvetica, sans-serif" line-height="4.5mm" font-size="11pt" text-align="center" ><fo:leader leader-length="6cm" leader-pattern="rule" rule-style="solid" rule-thickness="0.4mm" color="black"/></fo:block>
                      <fo:block font-family="Arial, Helvetica, sans-serif" line-height="4.5mm" font-size="11pt" text-align="center" >Firma del Suscriptor</fo:block>
                      <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                      <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>

                        <!-- AQUI COMIENZA LOS DATOS  DEL SUSCRIPTOR NOMBRE O RAZON SOCIAL -->
                         <xsl:apply-templates select="../OperacionCredito"/>
                        <!-- AQUI TERMINA LOS DATOS  DEL SUSCRIPTOR NOMBRE O RAZON SOCIAL -->

                        <!-- AQUI COMIENZA LOS DATOS  DEL SUSCRIPTOR DOMICILIO, COMUNA Y CIUDAD -->
                         <xsl:apply-templates select="../DireccionDeudorBci"/>
                        <!-- AQUI TERMINAN LOS DATOS  DEL SUSCRIPTOR DOMICILIO, COMUNA Y CIUDAD -->

		     <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
		     <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
		     <fo:block font-family="Arial, Helvetica, sans-serif" line-height="4.5mm" font-size="11pt" text-align="center" >Página 2 de 3</fo:block>
                </fo:flow>
          </xsl:when>
          <!--   AQUI COMIENZA EL TEMPLATE   docpg16b  -->


          <!--   AQUI COMIENZA EL TEMPLATE   docpg17a  -->
          <xsl:when test="template = 'docpg17a'">

                <fo:flow flow-name="xsl-region-body">
              <fo:table border-collapse="collapse">
              <fo:table-column column-width="50mm" />
              <fo:table-column column-width="50mm" />
              <fo:table-body>
                  <fo:table-row>
                        <fo:table-cell text-align="left">
                                <fo:block >
                                  <fo:external-graphic height="12mm" width="25mm" vertical-align="middle">
                                    <xsl:attribute name="src">
                                    <xsl:value-of select="../OperacionCredito/logoBciSomosDiferentes"/>
                                    </xsl:attribute>
                                  </fo:external-graphic>
                                </fo:block>
                        </fo:table-cell>
                        <fo:table-cell >
                                <fo:block >
                                </fo:block>
                        </fo:table-cell>
                  </fo:table-row>
              </fo:table-body>
              </fo:table>
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                      <fo:block font-family="Arial, Helvetica, sans-serif" line-height="4.5mm" font-size="11pt" text-align="center" ><fo:inline font-weight="bold">PAGARE (Sin Protesto)</fo:inline></fo:block>
                      <fo:block font-family="Arial, Helvetica, sans-serif" line-height="4.5mm" font-size="11pt" text-align="center" ><fo:inline font-weight="bold">BOLETA DE GARANTIA  UF</fo:inline></fo:block>
                      <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                      <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                      <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                      <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                      <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>

                      <fo:table border-collapse="collapse" font-family="Arial, Helvetica, sans-serif" font-size="11pt" text-align="left">
                          <fo:table-column column-width="50%"/>
                          <fo:table-column column-width="50%"/>
                          <fo:table-body>
                              <fo:table-row>
                                  <fo:table-cell > _
                                      <fo:block font-family="Arial, Helvetica, sans-serif" line-height="4.5mm" font-size="11pt" text-align="left" >N° de Operación :<fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/nroOperacion" /></fo:inline></fo:block>
                                  </fo:table-cell>
                              </fo:table-row>
                          </fo:table-body>
                      </fo:table>

                      <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                      <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="justify"  >Por valor recibido,  debo  y  pagaré  a  la  orden  del  BANCO  DE  CREDITO E INVERSIONES,   en   su   domicilio   ubicado   en  Avenida  El  Golf  N° 125, Comuna de Las Condes, Santiago, o en cualquiera de sus sucursales, la suma de <fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold">UF</fo:inline> <fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold">

                      <!--<xsl:value-of select='format-number(../OperacionCredito/montoCredito, "###.###.##0,000","decimal")' />-->
                      <xsl:variable name="moneda" select="../OperacionCredito/moneda" />
                        <xsl:choose>

                          <xsl:when test="$moneda = 'UF'">
                             <xsl:value-of select='format-number(../OperacionCredito/montoCredito, "###.###.##0,0000","decimal")' />
                          </xsl:when>


                          <xsl:when test="$moneda = '$'">
                            <xsl:value-of select='format-number(../OperacionCredito/montoCredito, "###.###.##0","decimal")' />
                          </xsl:when>

                      </xsl:choose>

                      </fo:inline> <fo:leader leader-pattern="space" leader-length="1mm"/> (<fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/montoCreditoManoEscrita" /></fo:inline><fo:leader leader-pattern="space" leader-length="1mm"/> Unidades de Fomento), equivalentes a la fecha a la suma de $<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold">

                      <!--<xsl:value-of select='format-number(../OperacionCredito/montoCredito, "###.###.##0,000","decimal")' />-->
                      <xsl:variable name="moneda" select="../OperacionCredito/moneda" />
                        <xsl:choose>

                          <xsl:when test="$moneda = 'UF'">
                             <xsl:value-of select='format-number(../OperacionCredito/montoCredito, "###.###.##0,0000","decimal")' />
                          </xsl:when>


                          <xsl:when test="$moneda = '$'">
                            <xsl:value-of select='format-number(../OperacionCredito/montoCredito, "###.###.##0","decimal")' />
                          </xsl:when>

                      </xsl:choose>



                      </fo:inline><fo:leader leader-pattern="space" leader-length="1mm"/>(<fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/montoCreditoManoEscrita" /></fo:inline><fo:leader leader-pattern="space" leader-length="1mm"/>pesos m/l).  por valor recibido en Boleta de Garantía N° <fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/nroBoletaGarantia" /></fo:inline> a  favor de @-........................................................................</fo:block>
                      <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="left" ><fo:inline font-weight="bold">Tasa de Interés</fo:inline></fo:block>
                      <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="justify"  >El capital adeudado devengará a partir  de esta fecha una tasa de interés del <fo:inline font-weight="bold"><xsl:value-of select='format-number(../OperacionCredito/tasaInteres, "###,####","decimal")'/></fo:inline>% mensual vencido durante todo el plazo pactado.</fo:block>
                      <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="left" ><fo:inline font-weight="bold">Amortización del Capital</fo:inline></fo:block>
                      <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="justify"  >El capital adeudado se pagará íntegramente el día <fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/fechaPrimerVctoDD" /></fo:inline><fo:leader leader-pattern="space" leader-length="1mm"/>de<fo:leader leader-pattern="space" leader-length="1mm"/>

                      <fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/mesVencimiento" /></fo:inline>

                      <fo:leader leader-pattern="space" leader-length="1mm"/>de<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/anioVencimiento" /></fo:inline></fo:block>
                      <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="left" ><fo:inline font-weight="bold">Intereses</fo:inline></fo:block>
                      <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="justify"  >Por su parte, los intereses se  pagarán en  <fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="count(../CalendarioPago)" /></fo:inline>  cuotas  trimestrales y sucesivas, la primera de ellas con vencimiento el día <fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/fechaPrimerVctoDD" /></fo:inline><fo:leader leader-pattern="space" leader-length="1mm"/>de<fo:leader leader-pattern="space" leader-length="1mm"/>

                      <!--<fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/fechaPrimerVctoMM" /></fo:inline>-->
                      <xsl:variable name="mes" select="../OperacionCredito/fechaPrimerVctoMM" />
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

                      <fo:leader leader-pattern="space" leader-length="1mm"/>de<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/fechaPrimerVctoYYYY" /></fo:inline>   y  las  restantes  los  días  <fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/fechaPrimerVctoDD" /></fo:inline>  de  los  meses  de @-............,  @-............,  @-............ y  @-............,  hasta la ultima cuota que vencerá el día <fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/fechaUltimoVctoDD" /></fo:inline><fo:leader leader-pattern="space" leader-length="1mm"/>de<fo:leader leader-pattern="space" leader-length="1mm"/>

                      <!--<fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/fechaUltimoVctoMM" /></fo:inline>-->
                        <xsl:variable name="mes" select="../OperacionCredito/fechaUltimoVctoMM" />
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

                      <fo:leader leader-pattern="space" leader-length="1mm"/>de<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/fechaUltimoVctoYYYY" /></fo:inline> En todo caso abonaré una comisión mínima de @-........ % del valor de la Boleta, comisión que no podrá ser inferior a <fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold">$</fo:inline> @-.....................(@+............ @-.........................................................................).</fo:block>
                      <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="justify"  ><fo:inline font-weight="bold">Prórroga de plazo por día inhábil.</fo:inline>  Las  cuotas de  amortización  de  capital e intereses se pagarán a su vencimiento,  siempre que éste  corresponda a  un día hábil bancario. En caso contrario,  se  pagarán  el  día  hábil  bancario siguiente.</fo:block>
                      <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="justify"  ><fo:inline font-weight="bold">Equivalencia.</fo:inline>  Las sumas adeudas,  tanto en lo  referente a  capital  como  a intereses, se calcularán por su equivalente en moneda legal chilena al día de pago efectivo.</fo:block>
                      <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="justify"  ><fo:inline font-weight="bold">Prepagos.</fo:inline>  Si el monto de capital inicial supera el  equivalente  a  UF 5.000, todo pago anticipado, sea total o parcial, será convenido libremente entre el suscriptor y el Banco. A falta de acuerdo,  el  suscriptor podrá en todo caso anticipar el pago, total o parcialmente, y en este último caso,  siempre  que el importe a pagar sea igual o superior al  20 % del capital de la obligación adeudada, pagando además los intereses estipulados  devengados y no pagados a la fecha del prepago,  calculados sobre el saldo insoluto,  más los intereses estipulados en este instrumento,  calculados sobre el capital prepagado desde la fecha del prepago hasta el vencimiento del plazo pactado.  Si el  monto de capital inicial no supera el  equivalente a  UF  5.000,  al capital prepagado deberán sumársele los intereses  calculados  hasta la  fecha del prepago y la comisión de prepago máxima que el articulo 10 de la Ley 18.010 permite pactar.</fo:block>
                      <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="justify"  ><fo:inline font-weight="bold">Exigibilidad anticipada.</fo:inline>  El no pago oportuno de una cualquiera de las cuotas de capital y/o de interés comprendidos en esta obligación,  dará  derecho  al acreedor a hacer exigible de inmediato y anticipadamente el  monto  total del saldo insoluto adeudado a  esa  fecha,  el  que  desde  esa  misma  fecha  se considerará de plazo vencido y devengará en favor del acreedor o de quien sus derechos represente, el interés máximo convencional que  rija durante la mora o simple retardo.</fo:block>
                      <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                      <fo:block font-family="Arial, Helvetica, sans-serif" line-height="4.5mm" font-size="11pt" text-align="center" >Página 1 de 3</fo:block>
                </fo:flow>
          </xsl:when>
          <!--   AQUI TERMINA EL TEMPLATE   docpg17a  -->


          <!--   AQUI COMIENZA EL TEMPLATE   docpg17b  -->
          <xsl:when test="template = 'docpg17b'">
                <fo:flow flow-name="xsl-region-body">
              <fo:table border-collapse="collapse">
              <fo:table-column column-width="50mm" />
              <fo:table-column column-width="50mm" />
              <fo:table-body>
                  <fo:table-row>
                        <fo:table-cell text-align="left">
                                <fo:block >
                                  <fo:external-graphic height="12mm" width="25mm" vertical-align="middle">
                                    <xsl:attribute name="src">
                                    <xsl:value-of select="../OperacionCredito/logoBciSomosDiferentes"/>
                                    </xsl:attribute>
                                  </fo:external-graphic>
                                </fo:block>
                        </fo:table-cell>
                        <fo:table-cell >
                                <fo:block >
                                </fo:block>
                        </fo:table-cell>
                  </fo:table-row>
              </fo:table-body>
              </fo:table>
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block font-family="Arial, Helvetica, sans-serif" line-height="4.5mm" font-size="11pt" text-align="left" >Nº Operación<fo:leader leader-pattern="space" leader-length="18.5mm"/>:<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/nroOperacion" /></fo:inline></fo:block>
              <fo:block font-family="Arial, Helvetica, sans-serif" line-height="4.5mm" font-size="11pt" text-align="left" >Fecha de suscripción<fo:leader leader-pattern="space" leader-length="6.8mm"/>:<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="substring(../OperacionCredito/fechaSuscripcion,0,4)" /></fo:inline>
              <xsl:variable name="mes" select="substring(../OperacionCredito/fechaSuscripcion,4,2)" />
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
              <fo:inline font-weight="bold"><xsl:value-of select="substring(../OperacionCredito/fechaSuscripcion,6,5)" /></fo:inline>
              </fo:block>
              <fo:block font-family="Arial, Helvetica, sans-serif" line-height="4.5mm" font-size="11pt" text-align="left" >Monto<fo:leader leader-pattern="space" leader-length="29.6mm"/>:<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/moneda" /></fo:inline><fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold">

              <xsl:variable name="moneda" select="../OperacionCredito/moneda" />
                <xsl:choose>
                  <xsl:when test="$moneda = 'UF'">
                     <xsl:value-of select='format-number(../OperacionCredito/montoCredito, "###.###.##0,0000","decimal")' />
                  </xsl:when>

                  <xsl:when test="$moneda = '$'">
                    <xsl:value-of select='format-number(../OperacionCredito/montoCredito, "###.###.##0","decimal")' />
                  </xsl:when>
              </xsl:choose>

              </fo:inline></fo:block>
              <fo:block font-family="Arial, Helvetica, sans-serif" line-height="4.5mm" font-size="11pt" text-align="left" >Deudor<fo:leader leader-pattern="space" leader-length="28mm"/>:<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/nombreCompletoCliente" /></fo:inline></fo:block>
              <fo:block font-family="Arial, Helvetica, sans-serif" line-height="4.5mm" font-size="11pt" text-align="left" >RUT<fo:leader leader-pattern="space" leader-length="32.2mm"/>:<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select='format-number(../OperacionCredito/rutCliente, "###.###.##0","rut")' /></fo:inline>-<fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/dvCliente" /></fo:inline></fo:block>
              
                      <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                      <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                      <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="justify"  >Se deja expresamente establecido que el ejercicio de  este derecho constituye una sanción  al  suscriptor  por el  no  pago de la deuda e  importa una mera facultad establecida en beneficio  exclusivo del acreedor,  que no  altera en caso alguno la fecha de vencimiento del pagaré originalmente pactada, ni a la exigibilidad de las acciones cambiarias y ejecutivas derivadas de éste.</fo:block>
                      <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="justify"  >El Banco podrá hacer exigible de inmediato el monto total adeudado, expirando todos los plazos pendientes por el sólo hecho de  constituirse  en  mora o de habérsele protestado al deudor o  al  aval,  por  falta  de  pago,  cualquier documento,  pagaré,  letra  de  cambio  o  cheque, aceptado, suscrito, girado o avalado por él.</fo:block>
                      <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="justify"  >Se  deja  expresamente  establecido  que corresponderá al deudor acreditar el pago de las cuotas en que se divide el presente instrumento, en caso de cobro judicial.</fo:block>
                      <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="justify"  ><fo:inline font-weight="bold">Indivisibilidad y solidaridad.</fo:inline> Las obligaciones que  emanen  de  este  pagaré serán solidarias para el suscriptor,  avalista(s)  y  demás obligados al pago y serán indivisibles  para  sus  herederos. Además, el suscriptor  pagará los gastos, impuestos y costas personales y procesales que correspondan.</fo:block>
                      <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="justify"  ><fo:inline font-weight="bold">Mandato para prórrogas.</fo:inline> El  suscriptor  faculta  al Banco de Crédito  e  Inversiones para que en su nombre y representación otorgue, previa autorización expresa de éste, una o más prórrogas que establezcan nuevas condiciones, tasas de interés y fechas de vencimiento. </fo:block>
                      <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="justify"  ><fo:inline font-weight="bold">Domicilio y  competencia.</fo:inline>  Para todos los efectos legales, judiciales o extrajudiciales derivados de este pagaré, las partes acuerdan someterse  a los Tribunales de Justicia con asiento en la comuna y ciudad del domicilio del suscriptor,  lo que  será obligatorio tanto para el suscriptor como para sus avales, endosantes u obligados por garantía.  Sin perjuicio declaro, que mi domicilio y residencia son los consignados en  este título, comprometiéndome a dar pronto aviso por escrito al Banco, en el evento que realice cualquier cambio de domicilio en el futuro.</fo:block>
                      <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="justify"  ><fo:inline font-weight="bold">Impuesto de timbres y estampillas.</fo:inline> El  impuesto de  timbres y estampillas que grava este documento se paga por ingresos mensuales de  dinero en  Tesorería, según Decreto Ley Nº 3475.</fo:block>



                      <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                      <fo:block font-family="Arial, Helvetica, sans-serif" line-height="4.5mm" font-size="11pt" text-align="left" >
                      En<fo:leader leader-pattern="space" leader-length="1mm"/>
                      <fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/ciudadContrato" /></fo:inline>,
                      <fo:leader leader-pattern="space" leader-length="1mm"/>a<fo:leader leader-pattern="space" leader-length="1mm"/>
                      <fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/dia" /></fo:inline>

                      <!--<fo:leader leader-pattern="space" leader-length="1mm"/>de<fo:leader leader-pattern="space" leader-length="1mm"/>
                      <fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/mes" /></fo:inline>-->
                      <fo:leader leader-pattern="space" leader-length="1mm"/>de<fo:leader leader-pattern="space" leader-length="1mm"/>
                      <xsl:variable name="mes" select="../OperacionCredito/mes" />
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


                      <fo:leader leader-pattern="space" leader-length="1mm"/>de<fo:leader leader-pattern="space" leader-length="1mm"/>
                      <fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/anio" /></fo:inline>
                      </fo:block>


                      <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                      <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                      <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                      <fo:block font-family="Arial, Helvetica, sans-serif" line-height="4.5mm" font-size="11pt" text-align="center" ><fo:leader leader-length="6cm" leader-pattern="rule" rule-style="solid" rule-thickness="0.4mm" color="black"/></fo:block>
                      <fo:block font-family="Arial, Helvetica, sans-serif" line-height="4.5mm" font-size="11pt" text-align="center" >Firma del Suscriptor</fo:block>
                      <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                      <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>

                        <!-- AQUI COMIENZA LOS DATOS  DEL SUSCRIPTOR NOMBRE O RAZON SOCIAL -->
                         <xsl:apply-templates select="../OperacionCredito"/>
                        <!-- AQUI TERMINA LOS DATOS  DEL SUSCRIPTOR NOMBRE O RAZON SOCIAL -->

                        <!-- AQUI COMIENZA LOS DATOS  DEL SUSCRIPTOR DOMICILIO, COMUNA Y CIUDAD -->
                         <xsl:apply-templates select="../DireccionDeudorBci"/>
                        <!-- AQUI TERMINAN LOS DATOS  DEL SUSCRIPTOR DOMICILIO, COMUNA Y CIUDAD -->

                      <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                      <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                      <fo:block font-family="Arial, Helvetica, sans-serif" line-height="4.5mm" font-size="11pt" text-align="center" >Página 2 de 3</fo:block>
                </fo:flow>
          </xsl:when>
          <!--   AQUI TERMINA EL TEMPLATE   docpg17b  -->



          <!--   AQUI COMIENZA EL TEMPLATE   docpg19a  -->
          <xsl:when test="template = 'docpg19a'">
                <fo:flow flow-name="xsl-region-body">
              <fo:table border-collapse="collapse">
              <fo:table-column column-width="50mm" />
              <fo:table-column column-width="50mm" />
              <fo:table-body>
                  <fo:table-row>
                        <fo:table-cell text-align="left">
                                <fo:block >
                                  <fo:external-graphic height="12mm" width="25mm" vertical-align="middle">
                                    <xsl:attribute name="src">
                                    <xsl:value-of select="../OperacionCredito/logoBciSomosDiferentes"/>
                                    </xsl:attribute>
                                  </fo:external-graphic>
                                </fo:block>
                        </fo:table-cell>
                        <fo:table-cell >
                                <fo:block >
                                </fo:block>
                        </fo:table-cell>
                  </fo:table-row>
              </fo:table-body>
              </fo:table>
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                      <fo:block font-family="Arial, Helvetica, sans-serif" line-height="4.5mm" font-size="11pt" text-align="center" >       <fo:inline font-weight="bold">PAGARE (Sin Protesto)</fo:inline></fo:block>
                      <fo:block font-family="Arial, Helvetica, sans-serif" line-height="4.5mm" font-size="11pt" text-align="center" >         <fo:inline font-weight="bold">TAB UF 90 DIAS</fo:inline></fo:block>
                      <fo:block font-family="Arial, Helvetica, sans-serif" line-height="4.5mm" font-size="11pt" text-align="center" ><fo:inline font-weight="bold">AMORTIZACION FIJA E INTERESES TRIMESTRALES</fo:inline></fo:block>
                      <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>

                      <fo:table border-collapse="collapse" font-family="Arial, Helvetica, sans-serif" font-size="11pt" text-align="left">
                          <fo:table-column column-width="50%"/>
                          <fo:table-column column-width="50%"/>
                          <fo:table-body>
                              <fo:table-row>
                                  <fo:table-cell > _
                                      <fo:block font-family="Arial, Helvetica, sans-serif" line-height="4.5mm" font-size="11pt" text-align="left" >N° de Operación :<fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/nroOperacion" /></fo:inline></fo:block>
                                  </fo:table-cell>
                              </fo:table-row>
                          </fo:table-body>
                      </fo:table>


                      <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                      <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="justify"  >Por valor recibido,  debo  y  pagaré  a  la  orden  del  BANCO  DE  CREDITO E INVERSIONES, en su domicilio ubicado en Avenida El Golf N° 125, Comuna de Las Condes,  Santiago,   o   en   cualquiera   de  sus  sucursales,  la  suma  de <fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold">UF</fo:inline><fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold">

                      <!--<xsl:value-of select='format-number(../OperacionCredito/montoCredito, "###.###.##0,000","decimal")' />-->
                      <xsl:variable name="moneda" select="../OperacionCredito/moneda" />
                        <xsl:choose>

                          <xsl:when test="$moneda = 'UF'">
                             <xsl:value-of select='format-number(../OperacionCredito/montoCredito, "###.###.##0,0000","decimal")' />
                          </xsl:when>


                          <xsl:when test="$moneda = '$'">
                            <xsl:value-of select='format-number(../OperacionCredito/montoCredito, "###.###.##0","decimal")' />
                          </xsl:when>

                      </xsl:choose>



                      </fo:inline> <fo:leader leader-pattern="space" leader-length="1mm"/>(<fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/montoCreditoManoEscrita" /></fo:inline><fo:leader leader-pattern="space" leader-length="1mm"/>Unidades de Fomento), equivalentes a esta fecha a la suma de <fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold">$</fo:inline><fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold">

                      <!--<xsl:value-of select='format-number(../OperacionCredito/montoCredito, "###.###.##0,000","decimal")' />-->
                      <xsl:variable name="moneda" select="../OperacionCredito/moneda" />
                        <xsl:choose>

                          <xsl:when test="$moneda = 'UF'">
                             <xsl:value-of select='format-number(../OperacionCredito/montoCredito, "###.###.##0,0000","decimal")' />
                          </xsl:when>


                          <xsl:when test="$moneda = '$'">
                            <xsl:value-of select='format-number(../OperacionCredito/montoCredito, "###.###.##0","decimal")' />
                          </xsl:when>

                      </xsl:choose>


                      </fo:inline><fo:leader leader-pattern="space" leader-length="1mm"/>(<fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/montoCreditoManoEscrita" /></fo:inline> <fo:leader leader-pattern="space" leader-length="1mm"/>pesos m/l).</fo:block>
                      <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="left" ><fo:inline font-weight="bold">Tasa de Interés</fo:inline></fo:block>
                      <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="justify"  >El capital adeudado devengará una tasa de interés variable trimestralmente  y será la compuesta por la Tasa T.A.B.  (Tasa Bancaria) de  90 días determinada por la Asociación de Bancos e Instituciones  Financieras,  más  un  spread  o diferencial del <fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select='format-number(../OperacionCredito/tasaSpread, "###,####","decimal")'/></fo:inline> % anual.  La Tasa Bancaria (T.A.B.) de 90 días, se define como la  determinada  diariamente  y  con  esa  denominación por la Asociación de Bancos e Instituciones  Financieras.  Dicha tasa se recalculará trimestralmente, aplicándose la que rija en su oportunidad al inicio  de cada período en conformidad al procedimiento  indicado  permaneciendo  inalterable por igual período.  Los  intereses  serán  vencidos  y se calcularán sobre el capital reajustado, en la forma y condiciones pactadas en este instrumento.</fo:block>
                      <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="justify"  >En el evento que la tasa TAB no fuere informada por la Asociación de Bancos e Instituciones Financieras se aplicará la TASA BASE  trimestral en Unidades de Fomento del  Banco de  Crédito e  Inversiones  para  dicho  período,  más  el diferencial o  spread  pactado  precedentemente.  Dicha  TASA  trimestral  en Unidades de Fomento se recalculará trimestralmente aplicándose la que rija en su  oportunidad  en  conformidad  al  procedimiento  indicado,  permaneciendo inalterable por igual período.</fo:block>
                      <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="justify"  >La TASA BASE trimestral en Unidades de Fomento se define como  la determinada diariamente  por  el  Banco  de  Crédito  e  Inversiones  de  acuerdo  a  una metodología que declaro conocer y aceptar y que  será  certificada  todos los días hábiles bancarios por uno de los  Notarios  que  atienden los negocios y operaciones de la Oficina Central del Banco.</fo:block>
                      <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="justify"  >La TASA BASE para los días inhábiles bancarios  será  la vigente el día hábil bancario inmediatamente anterior a aquellos.  Igualmente,  si  por  cualquier causa en algún día no existiera certificación notarial para la referida  TASA BASE, regirá para esa fecha la última  que se  hubiere  certificado.  Si  por cualquier motivo y  en  cualquiera  forma  resultare  impugnada  o  discutida la determinación o certificación de la  Tasa  Base  vigente para alguna fecha, se aplicará en su reemplazo la TASA DE INTERES MAXIMA CONVENCIONAL que la Ley permita estipular a esa fecha para operaciones reajustables.  Reconozco dicho procedimiento como suficiente, válido y  definitivo para la  determinación de la señalada Tasa Base Trimestral.</fo:block>
                      <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="left" ><fo:inline font-weight="bold">Amortización del Capital</fo:inline></fo:block>
                      <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="justify"  >El capital adeudado se pagará  en  <fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="count(../CalendarioPago)" /></fo:inline> cuotas  trimestrales,  iguales  y sucesivas, de UF <fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select='format-number(../OperacionCredito/montoCuota, "###.###.##0,000","decimal")' /></fo:inline><fo:leader leader-pattern="space" leader-length="1mm"/> cada una, con vencimiento la primera de ellas el día <fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/fechaPrimerVctoDD" /></fo:inline><fo:leader leader-pattern="space" leader-length="1mm"/>de<fo:leader leader-pattern="space" leader-length="1mm"/>

                      <!--<fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/fechaPrimerVctoMM" /></fo:inline>-->
                      <xsl:variable name="mes" select="../OperacionCredito/fechaPrimerVctoMM" />
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

                      <fo:leader leader-pattern="space" leader-length="1mm"/>de<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/fechaPrimerVctoYYYY" /></fo:inline> y  las  restantes los días <fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/fechaPrimerVctoDD" /></fo:inline> de los  meses de @-............,  @-............,  @-............ y @-............,<fo:leader leader-pattern="space" leader-length="1mm"/>venciendo la última de ellas el día <fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/fechaUltimoVctoDD" /></fo:inline><fo:leader leader-pattern="space" leader-length="1mm"/>de<fo:leader leader-pattern="space" leader-length="1mm"/>

                      <!--<fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/fechaUltimoVctoMM" /></fo:inline>-->
                        <xsl:variable name="mes" select="../OperacionCredito/fechaUltimoVctoMM" />
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

                      <fo:leader leader-pattern="space" leader-length="1mm"/>de<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/fechaUltimoVctoYYYY" /></fo:inline></fo:block>
                      <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="left" >Intereses</fo:block>
                      <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="justify"  >Por su parte, los intereses se  pagarán en  <fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="count(../CalendarioPago)" /></fo:inline>  cuotas  trimestrales y sucesivas,  la  primera  de  ellas  con  vencimiento  el  día  <fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/fechaPrimerVctoDD" /></fo:inline><fo:leader leader-pattern="space" leader-length="1mm"/>de<fo:leader leader-pattern="space" leader-length="1mm"/>

                      <!--<fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/fechaPrimerVctoMM" /></fo:inline>-->
                      <xsl:variable name="mes" select="../OperacionCredito/fechaPrimerVctoMM" />
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


                      <fo:leader leader-pattern="space" leader-length="1mm"/>de<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/fechaPrimerVctoYYYY" /></fo:inline> y las restantes los  días <fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/fechaPrimerVctoDD" /></fo:inline> de los  meses de @-............,  @-............,  @-............ y  @-............,  hasta la ultima cuota que vencerá el día <fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/fechaUltimoVctoDD" /></fo:inline><fo:leader leader-pattern="space" leader-length="1mm"/>de<fo:leader leader-pattern="space" leader-length="1mm"/>
                      <!--<fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/fechaUltimoVctoMM" /></fo:inline>-->
                        <xsl:variable name="mes" select="../OperacionCredito/fechaUltimoVctoMM" />
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



                      <fo:leader leader-pattern="space" leader-length="1mm"/>de<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/fechaUltimoVctoYYYY" /></fo:inline></fo:block>
                      <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="justify"  ><fo:inline font-weight="bold">Prórroga de plazo por día inhábil.</fo:inline>  Las  cuotas de  amortización  de  capital e intereses se pagarán a su vencimiento,  siempre que éste  corresponda a  un día hábil bancario. En caso contrario,  se  pagarán  el  día  hábil  bancario siguiente.</fo:block>
                      <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="justify"  ><fo:inline font-weight="bold">Equivalencia.</fo:inline>  Las sumas adeudas,  tanto en lo  referente a  capital  como  a intereses, se calcularán por su equivalente en moneda legal chilena al día de pago efectivo.</fo:block>
                      <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                      <fo:block font-family="Arial, Helvetica, sans-serif" line-height="4.5mm" font-size="11pt" text-align="center" >Página 1 de 3</fo:block>
                </fo:flow>
          </xsl:when>
          <!--   AQUI TERMINA EL TEMPLATE   docpg19a  -->



          <!--   AQUI COMIENZA EL TEMPLATE   docpg19b  -->
          <xsl:when test="template = 'docpg19b'">
                <fo:flow flow-name="xsl-region-body">
              <fo:table border-collapse="collapse">
              <fo:table-column column-width="50mm" />
              <fo:table-column column-width="50mm" />
              <fo:table-body>
                  <fo:table-row>
                        <fo:table-cell text-align="left">
                                <fo:block >
                                  <fo:external-graphic height="12mm" width="25mm" vertical-align="middle">
                                    <xsl:attribute name="src">
                                    <xsl:value-of select="../OperacionCredito/logoBciSomosDiferentes"/>
                                    </xsl:attribute>
                                  </fo:external-graphic>
                                </fo:block>
                        </fo:table-cell>
                        <fo:table-cell >
                                <fo:block >
                                </fo:block>
                        </fo:table-cell>
                  </fo:table-row>
              </fo:table-body>
              </fo:table>
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block font-family="Arial, Helvetica, sans-serif" line-height="4.5mm" font-size="11pt" text-align="left" >Nº Operación<fo:leader leader-pattern="space" leader-length="18.5mm"/>:<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/nroOperacion" /></fo:inline></fo:block>
              <fo:block font-family="Arial, Helvetica, sans-serif" line-height="4.5mm" font-size="11pt" text-align="left" >Fecha de suscripción<fo:leader leader-pattern="space" leader-length="6.8mm"/>:<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="substring(../OperacionCredito/fechaSuscripcion,0,4)" /></fo:inline>
              <xsl:variable name="mes" select="substring(../OperacionCredito/fechaSuscripcion,4,2)" />
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
              <fo:inline font-weight="bold"><xsl:value-of select="substring(../OperacionCredito/fechaSuscripcion,6,5)" /></fo:inline>
              </fo:block>
              <fo:block font-family="Arial, Helvetica, sans-serif" line-height="4.5mm" font-size="11pt" text-align="left" >Monto<fo:leader leader-pattern="space" leader-length="29.6mm"/>:<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/moneda" /></fo:inline><fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold">

              <xsl:variable name="moneda" select="../OperacionCredito/moneda" />
                <xsl:choose>
                  <xsl:when test="$moneda = 'UF'">
                     <xsl:value-of select='format-number(../OperacionCredito/montoCredito, "###.###.##0,0000","decimal")' />
                  </xsl:when>

                  <xsl:when test="$moneda = '$'">
                    <xsl:value-of select='format-number(../OperacionCredito/montoCredito, "###.###.##0","decimal")' />
                  </xsl:when>
              </xsl:choose>

              </fo:inline></fo:block>
              <fo:block font-family="Arial, Helvetica, sans-serif" line-height="4.5mm" font-size="11pt" text-align="left" >Deudor<fo:leader leader-pattern="space" leader-length="28mm"/>:<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/nombreCompletoCliente" /></fo:inline></fo:block>
              <fo:block font-family="Arial, Helvetica, sans-serif" line-height="4.5mm" font-size="11pt" text-align="left" >RUT<fo:leader leader-pattern="space" leader-length="32.2mm"/>:<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select='format-number(../OperacionCredito/rutCliente, "###.###.##0","rut")' /></fo:inline>-<fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/dvCliente" /></fo:inline></fo:block>
              
                      <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                      <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="justify"  ><fo:inline font-weight="bold">Prepagos.</fo:inline>  Si el monto de capital inicial supera el  equivalente  a  UF 5.000, todo pago anticipado, sea total o parcial, será convenido libremente entre el suscriptor y el Banco. A falta de acuerdo,  el  suscriptor podrá en todo caso anticipar el pago, total o parcialmente, y en este último caso,  siempre  que el importe a pagar sea igual o superior al  20 % del capital de la obligación adeudada, pagando además los intereses estipulados  devengados y no pagados a la fecha del prepago,  calculados sobre el saldo insoluto,  más los intereses estipulados en este instrumento,  calculados sobre el capital prepagado desde la fecha del prepago hasta el vencimiento del plazo pactado. Si  el  monto de capital inicial no supera el  equivalente a  UF  5.000,  al capital prepagado deberán sumársele los intereses  calculados  hasta la  fecha del prepago y la comisión de prepago máxima que el articulo 10 de la Ley 18.010 permite pactar.</fo:block>
                      <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="justify"  ><fo:inline font-weight="bold">Exigibilidad anticipada.</fo:inline>  El no pago oportuno de una cualquiera de las cuotas de capital y/o de interés comprendidos en esta obligación,  dará  derecho  al acreedor a hacer exigible de inmediato y anticipadamente el  monto  total del saldo insoluto adeudado a  esa  fecha,  el  que  desde  esa  misma  fecha  se considerará de plazo vencido y devengará en favor del acreedor o de quien sus derechos represente, el interés máximo convencional que  rija durante la mora o simple retardo.</fo:block>
                      <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="justify"  >Se deja expresamente establecido que el ejercicio de  este derecho constituye una sanción  al  suscriptor  por el  no  pago de la deuda e  importa una mera facultad establecida en beneficio  exclusivo del acreedor,  que no  altera en caso alguno la fecha de vencimiento del pagaré originalmente pactada, ni a la exigibilidad de las acciones cambiarias y ejecutivas derivadas de éste.</fo:block>
                      <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                      <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="justify"  >El Banco podrá hacer exigible de inmediato el monto total adeudado, expirando todos los plazos pendientes por el sólo hecho de  constituirse  en  mora o de habérsele protestado al deudor o  al  aval,  por  falta  de  pago,  cualquier documento,  pagaré,  letra  de  cambio  o  cheque, aceptado, suscrito, girado o avalado por él.</fo:block>
                      <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="justify"  >Se  deja  expresamente  establecido  que corresponderá al deudor acreditar el pago de las cuotas en que se divide el presente instrumento, en caso de cobro judicial.</fo:block>
                      <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="justify"  ><fo:inline font-weight="bold">Indivisibilidad y solidaridad.</fo:inline> Las obligaciones que  emanen  de  este  pagaré serán solidarias para el suscriptor,  avalista(s)  y  demás obligados al pago y serán indivisibles  para  sus  herederos. Además, el suscriptor  pagará los gastos, impuestos y costas personales y procesales que correspondan.</fo:block>
                      <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="justify"  ><fo:inline font-weight="bold">Mandato para prórrogas.</fo:inline> El  suscriptor  faculta  al Banco de Crédito  e  Inversiones para que en su nombre y representación otorgue, previa autorización expresa de éste, una o más prórrogas que establezcan nuevas condiciones, tasas de interés y fechas de vencimiento. </fo:block>
                      <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="justify"  ><fo:inline font-weight="bold">Domicilio y  competencia.</fo:inline>  Para todos los efectos legales, judiciales o extrajudiciales derivados de este pagaré, las partes acuerdan someterse  a los Tribunales de Justicia con asiento en la comuna y ciudad del domicilio del suscriptor,  lo que  será obligatorio tanto para el suscriptor como para sus avales, endosantes u obligados por garantía.  Sin perjuicio declaro, que mi domicilio y residencia son los consignados en  este título, comprometiéndome a dar pronto aviso por escrito al Banco, en el evento que realice cualquier cambio de domicilio en el futuro.</fo:block>
                      <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="justify"  ><fo:inline font-weight="bold">Impuesto de timbres y estampillas.</fo:inline> El  impuesto de  timbres y estampillas que grava este documento se paga por ingresos mensuales de  dinero en  Tesorería, según Decreto Ley Nº 3475.</fo:block>


                      <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                      <fo:block font-family="Arial, Helvetica, sans-serif" line-height="4.5mm" font-size="11pt" text-align="left" >
                      En<fo:leader leader-pattern="space" leader-length="1mm"/>
                      <fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/ciudadContrato" /></fo:inline>,
                      <fo:leader leader-pattern="space" leader-length="1mm"/>a<fo:leader leader-pattern="space" leader-length="1mm"/>
                      <fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/dia" /></fo:inline>

                      <!--<fo:leader leader-pattern="space" leader-length="1mm"/>de<fo:leader leader-pattern="space" leader-length="1mm"/>
                      <fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/mes" /></fo:inline>-->
                      <fo:leader leader-pattern="space" leader-length="1mm"/>de<fo:leader leader-pattern="space" leader-length="1mm"/>
                      <xsl:variable name="mes" select="../OperacionCredito/mes" />
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


                      <fo:leader leader-pattern="space" leader-length="1mm"/>de<fo:leader leader-pattern="space" leader-length="1mm"/>
                      <fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/anio" /></fo:inline>
                      </fo:block>

                      <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                      <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                      <fo:block font-family="Arial, Helvetica, sans-serif" line-height="4.5mm" font-size="11pt" text-align="center" ><fo:leader leader-length="6cm" leader-pattern="rule" rule-style="solid" rule-thickness="0.4mm" color="black"/></fo:block>
                      <fo:block font-family="Arial, Helvetica, sans-serif" line-height="4.5mm" font-size="11pt" text-align="center" >Firma del Suscriptor</fo:block>
                      <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                      <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>

                        <!-- AQUI COMIENZA LOS DATOS  DEL SUSCRIPTOR NOMBRE O RAZON SOCIAL -->
                         <xsl:apply-templates select="../OperacionCredito"/>
                        <!-- AQUI TERMINA LOS DATOS  DEL SUSCRIPTOR NOMBRE O RAZON SOCIAL -->

                        <!-- AQUI COMIENZA LOS DATOS  DEL SUSCRIPTOR DOMICILIO, COMUNA Y CIUDAD -->
                         <xsl:apply-templates select="../DireccionDeudorBci"/>
                        <!-- AQUI TERMINAN LOS DATOS  DEL SUSCRIPTOR DOMICILIO, COMUNA Y CIUDAD -->
                        <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
		      <fo:block font-family="Arial, Helvetica, sans-serif" line-height="4.5mm" font-size="11pt" text-align="center" >Página 2 de 3</fo:block>
                </fo:flow>
          </xsl:when>
          <!--   AQUI TERMINA EL TEMPLATE   docpg19b  -->

          <!--   AQUI COMIENZA EL TEMPLATE   docpg20a  -->
          <xsl:when test="template = 'docpg20a'">
                <fo:flow flow-name="xsl-region-body">
              <fo:table border-collapse="collapse">
              <fo:table-column column-width="50mm" />
              <fo:table-column column-width="50mm" />
              <fo:table-body>
                  <fo:table-row>
                        <fo:table-cell text-align="left">
                                <fo:block >
                                  <fo:external-graphic height="12mm" width="25mm" vertical-align="middle">
                                    <xsl:attribute name="src">
                                    <xsl:value-of select="../OperacionCredito/logoBciSomosDiferentes"/>
                                    </xsl:attribute>
                                  </fo:external-graphic>
                                </fo:block>
                        </fo:table-cell>
                        <fo:table-cell >
                                <fo:block >
                                </fo:block>
                        </fo:table-cell>
                  </fo:table-row>
              </fo:table-body>
              </fo:table>
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                      <fo:block font-family="Arial, Helvetica, sans-serif" line-height="4.5mm" font-size="11pt" text-align="center" ><fo:inline font-weight="bold">PAGARE (Sin Protesto)</fo:inline></fo:block>
                      <fo:block font-family="Arial, Helvetica, sans-serif" line-height="4.5mm" font-size="11pt" text-align="center" ><fo:inline font-weight="bold">TAB UF 90 DIAS</fo:inline></fo:block>
                      <fo:block font-family="Arial, Helvetica, sans-serif" line-height="4.5mm" font-size="11pt" text-align="center" ><fo:inline font-weight="bold">AMORTIZACIONES IGUALES INTERESES MENSUALES</fo:inline></fo:block>
                      <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>

                      <fo:table border-collapse="collapse" font-family="Arial, Helvetica, sans-serif" font-size="11pt" text-align="left">
                          <fo:table-column column-width="50%"/>
                          <fo:table-column column-width="50%"/>
                          <fo:table-body>
                              <fo:table-row>
                                  <fo:table-cell > _
                                      <fo:block font-family="Arial, Helvetica, sans-serif" line-height="4.5mm" font-size="11pt" text-align="left" >N° de Operación :<fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/nroOperacion" /></fo:inline></fo:block>
                                  </fo:table-cell>
                              </fo:table-row>
                          </fo:table-body>
                      </fo:table>


                      <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                      <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="left" >Por valor recibido,  debo  y  pagaré  a  la  orden  del  BANCO  DE  CREDITO E INVERSIONES, en su domicilio ubicado en Avenida El Golf N° 125, Comuna de Las Condes,  Santiago,   o   en   cualquiera   de  sus  sucursales,  la  suma  de <fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold">UF</fo:inline><fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold">

                      <!--<xsl:value-of select='format-number(../OperacionCredito/montoCredito, "###.###.##0,000","decimal")' />-->
                      <xsl:variable name="moneda" select="../OperacionCredito/moneda" />
                        <xsl:choose>

                          <xsl:when test="$moneda = 'UF'">
                             <xsl:value-of select='format-number(../OperacionCredito/montoCredito, "###.###.##0,0000","decimal")' />
                          </xsl:when>


                          <xsl:when test="$moneda = '$'">
                            <xsl:value-of select='format-number(../OperacionCredito/montoCredito, "###.###.##0","decimal")' />
                          </xsl:when>

                      </xsl:choose>



                      </fo:inline> <fo:leader leader-pattern="space" leader-length="1mm"/>(<fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/montoCreditoManoEscrita" /></fo:inline><fo:leader leader-pattern="space" leader-length="1mm"/>Unidades de Fomento),<fo:leader leader-pattern="space" leader-length="1mm"/>equivalentes a esta fecha a la suma de <fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold">$</fo:inline><fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold">


                      <!--<xsl:value-of select='format-number(../OperacionCredito/montoCredito, "###.###.##0,000","decimal")' />-->
                      <xsl:variable name="moneda" select="../OperacionCredito/moneda" />
                        <xsl:choose>

                          <xsl:when test="$moneda = 'UF'">
                             <xsl:value-of select='format-number(../OperacionCredito/montoCredito, "###.###.##0,0000","decimal")' />
                          </xsl:when>


                          <xsl:when test="$moneda = '$'">
                            <xsl:value-of select='format-number(../OperacionCredito/montoCredito, "###.###.##0","decimal")' />
                          </xsl:when>

                      </xsl:choose>




                      </fo:inline><fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/montoCreditoManoEscrita" /></fo:inline>.</fo:block>
                      <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                      <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="left" ><fo:inline font-weight="bold">Tasa de Interés</fo:inline></fo:block>
                      <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="justify"  >El capital adeudado devengará una tasa de interés variable trimestralmente  y será la compuesta por la Tasa T.A.B.  (Tasa Bancaria) de  90 días determinada por la Asociación de Bancos e Instituciones  Financieras,  más  un  spread  o diferencial del <fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select='format-number(../OperacionCredito/tasaSpread, "###,####","decimal")'/></fo:inline> % anual.  La Tasa Bancaria (T.A.B.) de 90 días, se define como la  determinada  diariamente  y  con  esa  denominación por la Asociación de Bancos e Instituciones  Financieras.  Dicha tasa se recalculará trimestralmente, aplicándose la que rija en su oportunidad al inicio  de cada período en conformidad al procedimiento  indicado  permaneciendo  inalterable por igual período.  Los  intereses  serán  vencidos  y se calcularán sobre el capital reajustado, en la forma y condiciones pactadas en este instrumento.</fo:block>
                      <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="justify"  >En el evento que la tasa TAB no fuere informada por la Asociación de Bancos e Instituciones Financieras se aplicará la TASA BASE  trimestral en Unidades de Fomento del  Banco de  Crédito e  Inversiones  para  dicho  período,  más  el diferencial o  spread  pactado  precedentemente.  Dicha  TASA  trimestral  en Unidades de Fomento se recalculará trimestralmente aplicándose la que rija en su  oportunidad  en  conformidad  al  procedimiento  indicado,  permaneciendo inalterable por igual período.</fo:block>
                      <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="justify"  >La TASA BASE trimestral en Unidades de Fomento se define como  la determinada diariamente  por  el  Banco  de  Crédito  e  Inversiones  de  acuerdo  a  una metodología que declaro conocer y aceptar y que  será  certificada  todos los días hábiles bancarios por uno de los  Notarios  que  atienden los negocios y operaciones de la Oficina Central del Banco. </fo:block>
                      <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="justify"  >La TASA BASE para los días inhábiles bancarios  será  la vigente el día hábil bancario inmediatamente anterior a aquellos.  Igualmente,  si  por  cualquier causa en algún día no existiera certificación notarial para la referida  TASA BASE, regirá para esa fecha la última  que se  hubiere  certificado.  Si  por cualquier motivo y  en  cualquiera  forma  resultare  impugnada  o  discutida la determinación o certificación de la  Tasa  Base  vigente para alguna fecha, se aplicará en su reemplazo la TASA DE INTERES MAXIMA CONVENCIONAL que la Ley permita estipular a esa fecha para operaciones reajustables.  Reconozco dicho procedimiento como suficiente, válido y  definitivo para la  determinación de la señalada Tasa Base Trimestral.</fo:block>
                      <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="left" ><fo:inline font-weight="bold">Amortización del Capital</fo:inline></fo:block>
                      <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="justify"  >El capital  adeudado  se  pagará  en  <fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="count(../CalendarioPago)" /></fo:inline> cuotas  mensuales,  iguales  y sucesivas, de UF <fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select='format-number(../OperacionCredito/montoCuota, "###.###.##0,000","decimal")' /></fo:inline><fo:leader leader-pattern="space" leader-length="1mm"/>cada una, con vencimiento la primera de ellas el día <fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/fechaPrimerVctoDD" /></fo:inline><fo:leader leader-pattern="space" leader-length="1mm"/>de<fo:leader leader-pattern="space" leader-length="1mm"/>

                      <!--<fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/fechaPrimerVctoMM" /></fo:inline>-->
                      <xsl:variable name="mes" select="../OperacionCredito/fechaPrimerVctoMM" />
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

                      <fo:leader leader-pattern="space" leader-length="1mm"/>de<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/fechaPrimerVctoYYYY" /></fo:inline> y  las  restantes los días <fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/fechaPrimerVctoDD" /></fo:inline> de  cada  mes,  venciendo  la última  de  ellas  el  día  <fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/fechaUltimoVctoDD" /></fo:inline><fo:leader leader-pattern="space" leader-length="1mm"/>de<fo:leader leader-pattern="space" leader-length="1mm"/>

                      <!--<fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/fechaUltimoVctoMM" /></fo:inline>-->
                        <xsl:variable name="mes" select="../OperacionCredito/fechaUltimoVctoMM" />
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


                      <fo:leader leader-pattern="space" leader-length="1mm"/>de<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/fechaUltimoVctoYYYY" /></fo:inline></fo:block>
                      <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="left" ><fo:inline font-weight="bold">Intereses</fo:inline></fo:block>
                      <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="justify"  >Por su parte,  los  intereses  se  pagarán en  <fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="count(../CalendarioPago)" /></fo:inline>  cuotas  mensuales y sucesivas,  la  primera  de  ellas  con  vencimiento  el  día  <fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/fechaPrimerVctoDD" /></fo:inline><fo:leader leader-pattern="space" leader-length="1mm"/>de<fo:leader leader-pattern="space" leader-length="1mm"/>

                      <!--<fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/fechaPrimerVctoMM" /></fo:inline>-->
                      <xsl:variable name="mes" select="../OperacionCredito/fechaPrimerVctoMM" />
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

                      <fo:leader leader-pattern="space" leader-length="1mm"/>de<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/fechaPrimerVctoYYYY" /></fo:inline> y las restantes los días<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/diaVencimiento" /></fo:inline><fo:leader leader-pattern="space" leader-length="1mm"/>de los meses siguientes hasta la ultima cuota que vencerá el día <fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/fechaUltimoVctoDD" /></fo:inline><fo:leader leader-pattern="space" leader-length="1mm"/>de<fo:leader leader-pattern="space" leader-length="1mm"/>

                      <!--<fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/fechaUltimoVctoMM" /></fo:inline>-->
                        <xsl:variable name="mes" select="../OperacionCredito/fechaUltimoVctoMM" />
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

                      <fo:leader leader-pattern="space" leader-length="1mm"/>de<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/fechaUltimoVctoYYYY" /></fo:inline></fo:block>
                      <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="justify"  ><fo:inline font-weight="bold">Prórroga de plazo por día inhábil.</fo:inline>  Las  cuotas de  amortización  de  capital e intereses se pagarán a su vencimiento,  siempre que éste  corresponda a  un día hábil bancario. En caso contrario,  se  pagarán  el  día  hábil  bancario siguiente.</fo:block>
                      <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="justify"  ><fo:inline font-weight="bold">Equivalencia.</fo:inline>  Las sumas adeudas,  tanto en lo  referente a  capital  como  a intereses, se calcularán por su equivalente en moneda legal chilena al día de pago efectivo.</fo:block>
                      <fo:block ><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
		      <fo:block font-family="Arial, Helvetica, sans-serif" line-height="4.5mm" font-size="11pt" text-align="center" >Página 1 de 3</fo:block>
                </fo:flow>
          </xsl:when>
          <!--   AQUI TERMINA EL TEMPLATE   docpg20a  -->


          <!--   AQUI COMIENZA EL TEMPLATE   docpg20b  -->
          <xsl:when test="template = 'docpg20b'">
                <fo:flow flow-name="xsl-region-body">
              <fo:table border-collapse="collapse">
              <fo:table-column column-width="50mm" />
              <fo:table-column column-width="50mm" />
              <fo:table-body>
                  <fo:table-row>
                        <fo:table-cell text-align="left">
                                <fo:block >
                                  <fo:external-graphic height="12mm" width="25mm" vertical-align="middle">
                                    <xsl:attribute name="src">
                                    <xsl:value-of select="../OperacionCredito/logoBciSomosDiferentes"/>
                                    </xsl:attribute>
                                  </fo:external-graphic>
                                </fo:block>
                        </fo:table-cell>
                        <fo:table-cell >
                                <fo:block >
                                </fo:block>
                        </fo:table-cell>
                  </fo:table-row>
              </fo:table-body>
              </fo:table>
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block font-family="Arial, Helvetica, sans-serif" line-height="4.5mm" font-size="11pt" text-align="left" >Nº Operación<fo:leader leader-pattern="space" leader-length="18.5mm"/>:<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/nroOperacion" /></fo:inline></fo:block>
              <fo:block font-family="Arial, Helvetica, sans-serif" line-height="4.5mm" font-size="11pt" text-align="left" >Fecha de suscripción<fo:leader leader-pattern="space" leader-length="6.8mm"/>:<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="substring(../OperacionCredito/fechaSuscripcion,0,4)" /></fo:inline>
              <xsl:variable name="mes" select="substring(../OperacionCredito/fechaSuscripcion,4,2)" />
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
              <fo:inline font-weight="bold"><xsl:value-of select="substring(../OperacionCredito/fechaSuscripcion,6,5)" /></fo:inline>
              </fo:block>
              <fo:block font-family="Arial, Helvetica, sans-serif" line-height="4.5mm" font-size="11pt" text-align="left" >Monto<fo:leader leader-pattern="space" leader-length="29.6mm"/>:<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/moneda" /></fo:inline><fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold">

              <xsl:variable name="moneda" select="../OperacionCredito/moneda" />
                <xsl:choose>
                  <xsl:when test="$moneda = 'UF'">
                     <xsl:value-of select='format-number(../OperacionCredito/montoCredito, "###.###.##0,0000","decimal")' />
                  </xsl:when>

                  <xsl:when test="$moneda = '$'">
                    <xsl:value-of select='format-number(../OperacionCredito/montoCredito, "###.###.##0","decimal")' />
                  </xsl:when>
              </xsl:choose>

              </fo:inline></fo:block>
              <fo:block font-family="Arial, Helvetica, sans-serif" line-height="4.5mm" font-size="11pt" text-align="left" >Deudor<fo:leader leader-pattern="space" leader-length="28mm"/>:<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/nombreCompletoCliente" /></fo:inline></fo:block>
              <fo:block font-family="Arial, Helvetica, sans-serif" line-height="4.5mm" font-size="11pt" text-align="left" >RUT<fo:leader leader-pattern="space" leader-length="32.2mm"/>:<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select='format-number(../OperacionCredito/rutCliente, "###.###.##0","rut")' /></fo:inline>-<fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/dvCliente" /></fo:inline></fo:block>
              
                      <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                      <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="justify"  ><fo:inline font-weight="bold">Prepagos.</fo:inline>  Si el monto de capital inicial supera el  equivalente  a UF 5.000, todo pago anticipado, sea total o parcial, será convenido libremente entre el suscriptor y el Banco. A falta de acuerdo,  el  suscriptor podrá en todo caso anticipar el pago, total o parcialmente, y en este último caso,  siempre  que el importe a pagar sea igual o superior al  20 % del capital de la obligación adeudada, pagando además los intereses estipulados  devengados y no pagados a la fecha del prepago,  calculados sobre el saldo insoluto,  más los intereses estipulados en este instrumento,  calculados sobre el capital prepagado desde la fecha del prepago hasta el vencimiento del plazo pactado.  Si el  monto de capital inicial no supera el  equivalente a  UF  5.000,  al capital prepagado deberán sumársele los intereses  calculados  hasta la  fecha del prepago y la comisión de prepago máxima que el articulo 10 de la Ley 18.010 permite pactar.</fo:block>
                      <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="justify"  ><fo:inline font-weight="bold">Exigibilidad anticipada.</fo:inline>  El no pago oportuno de una cualquiera de las cuotas de capital y/o de interés comprendidos en esta obligación,  dará  derecho  al acreedor a hacer exigible de inmediato y anticipadamente el  monto  total del saldo insoluto adeudado a  esa  fecha,  el  que  desde  esa  misma  fecha  se considerará de plazo vencido y devengará en favor del acreedor o de quien sus derechos represente, el interés máximo convencional que  rija durante la mora o simple retardo.</fo:block>
                      <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="justify"  >Se deja expresamente establecido que el ejercicio de  este derecho constituye una sanción  al  suscriptor  por el  no  pago de la deuda e  importa una mera facultad establecida en beneficio  exclusivo del acreedor,  que no  altera en caso alguno la fecha de vencimiento del pagaré originalmente pactada, ni a la exigibilidad de las acciones cambiarias y ejecutivas derivadas de éste.</fo:block>
                      <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="justify"  >El Banco podrá hacer exigible de inmediato el monto total adeudado, expirando todos los plazos pendientes por el sólo hecho de  constituirse  en  mora o de habérsele protestado al deudor o  al  aval,  por  falta  de  pago,  cualquier documento,  pagaré,  letra  de  cambio  o  cheque, aceptado, suscrito, girado o avalado por él.</fo:block>
                      <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="justify"  >Se  deja  expresamente  establecido  que corresponderá al deudor acreditar el pago de las cuotas en que se divide el presente instrumento, en caso de cobro judicial.</fo:block>
                      <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="justify"  ><fo:inline font-weight="bold">Indivisibilidad y solidaridad.</fo:inline> Las obligaciones que  emanen  de  este  pagaré serán solidarias para el suscriptor,  avalista(s)  y  demás obligados al pago y serán indivisibles  para  sus  herederos. Además, el suscriptor  pagará los gastos, impuestos y costas personales y procesales que correspondan.</fo:block>
                      <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="justify"  ><fo:inline font-weight="bold">Mandato para prórrogas.</fo:inline> El  suscriptor  faculta  al Banco de Crédito  e  Inversiones para que en su nombre y representación otorgue, previa autorización expresa de éste, una o más prórrogas que establezcan nuevas condiciones, tasas de interés y fechas de vencimiento. </fo:block>
                      <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="justify"  ><fo:inline font-weight="bold">Domicilio y  competencia.</fo:inline>  Para todos los efectos legales, judiciales o extrajudiciales derivados de este pagaré, las partes acuerdan someterse  a los Tribunales de Justicia con asiento en la comuna y ciudad del domicilio del suscriptor,  lo que  será obligatorio tanto para el suscriptor como para sus avales, endosantes u obligados por garantía.  Sin perjuicio declaro, que mi domicilio y residencia son los consignados en  este título, comprometiéndome a dar pronto aviso por escrito al Banco, en el evento que realice cualquier cambio de domicilio en el futuro.</fo:block>
                      <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="justify"  ><fo:inline font-weight="bold">Impuesto de timbres y estampillas.</fo:inline> El  impuesto de  timbres y estampillas que grava este documento se paga por ingresos mensuales de  dinero en  Tesorería, según Decreto Ley Nº 3475.</fo:block>



                      <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                      <fo:block font-family="Arial, Helvetica, sans-serif" line-height="4.5mm" font-size="11pt" text-align="left" >
                      En<fo:leader leader-pattern="space" leader-length="1mm"/>
                      <fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/ciudadContrato" /></fo:inline>,
                      <fo:leader leader-pattern="space" leader-length="1mm"/>a<fo:leader leader-pattern="space" leader-length="1mm"/>
                      <fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/dia" /></fo:inline>

                      <!--<fo:leader leader-pattern="space" leader-length="1mm"/>de<fo:leader leader-pattern="space" leader-length="1mm"/>
                      <fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/mes" /></fo:inline>-->
                      <fo:leader leader-pattern="space" leader-length="1mm"/>de<fo:leader leader-pattern="space" leader-length="1mm"/>
                      <xsl:variable name="mes" select="../OperacionCredito/mes" />
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


                      <fo:leader leader-pattern="space" leader-length="1mm"/>de<fo:leader leader-pattern="space" leader-length="1mm"/>
                      <fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/anio" /></fo:inline>
                      </fo:block>


                      <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                      <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                      <fo:block font-family="Arial, Helvetica, sans-serif" line-height="4.5mm" font-size="11pt" text-align="center" ><fo:leader leader-length="6cm" leader-pattern="rule" rule-style="solid" rule-thickness="0.4mm" color="black"/></fo:block>
                      <fo:block font-family="Arial, Helvetica, sans-serif" line-height="4.5mm" font-size="11pt" text-align="center" >Firma del Suscriptor</fo:block>
                      <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                      <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>

                        <!-- AQUI COMIENZA LOS DATOS  DEL SUSCRIPTOR NOMBRE O RAZON SOCIAL -->
                         <xsl:apply-templates select="../OperacionCredito"/>
                        <!-- AQUI TERMINA LOS DATOS  DEL SUSCRIPTOR NOMBRE O RAZON SOCIAL -->

                        <!-- AQUI COMIENZA LOS DATOS  DEL SUSCRIPTOR DOMICILIO, COMUNA Y CIUDAD -->
                         <xsl:apply-templates select="../DireccionDeudorBci"/>
                        <!-- AQUI TERMINAN LOS DATOS  DEL SUSCRIPTOR DOMICILIO, COMUNA Y CIUDAD -->
		      <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
		      <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
		      <fo:block font-family="Arial, Helvetica, sans-serif" line-height="4.5mm" font-size="11pt" text-align="center" >Página 2 de 3</fo:block>
                </fo:flow>
          </xsl:when>
          <!--   AQUI TERMINA EL TEMPLATE   docpg20b  -->


          <!--   AQUI COMIENZA EL TEMPLATE   docpg21a  -->
          <xsl:when test="template = 'docpg21a'">
                <fo:flow flow-name="xsl-region-body">
              <fo:table border-collapse="collapse">
              <fo:table-column column-width="50mm" />
              <fo:table-column column-width="50mm" />
              <fo:table-body>
                  <fo:table-row>
                        <fo:table-cell text-align="left">
                                <fo:block >
                                  <fo:external-graphic height="12mm" width="25mm" vertical-align="middle">
                                    <xsl:attribute name="src">
                                    <xsl:value-of select="../OperacionCredito/logoBciSomosDiferentes"/>
                                    </xsl:attribute>
                                  </fo:external-graphic>
                                </fo:block>
                        </fo:table-cell>
                        <fo:table-cell >
                                <fo:block >
                                </fo:block>
                        </fo:table-cell>
                  </fo:table-row>
              </fo:table-body>
              </fo:table>
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                      <fo:block font-family="Arial, Helvetica, sans-serif" line-height="4.5mm" font-size="11pt" text-align="center" ><fo:inline font-weight="bold">PAGARÉ (Sin Protesto)</fo:inline></fo:block>
                      <fo:block font-family="Arial, Helvetica, sans-serif" line-height="4.5mm" font-size="11pt" text-align="center" ><fo:inline font-weight="bold">TAB UF 180 DIAS</fo:inline></fo:block>
                      <fo:block font-family="Arial, Helvetica, sans-serif" line-height="4.5mm" font-size="11pt" text-align="center" ><fo:inline font-weight="bold">AMORTIZACION E INTERESES SEMESTRALES</fo:inline></fo:block>
                      <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                      <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                      <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>


                      <fo:table border-collapse="collapse" font-family="Arial, Helvetica, sans-serif" font-size="11pt" text-align="left">
                          <fo:table-column column-width="50%"/>
                          <fo:table-column column-width="50%"/>
                          <fo:table-body>
                              <fo:table-row>
                                  <fo:table-cell > _
                                      <fo:block font-family="Arial, Helvetica, sans-serif" line-height="4.5mm" font-size="11pt" text-align="left" >N° de Operación :<fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/nroOperacion" /></fo:inline></fo:block>
                                  </fo:table-cell>
                              </fo:table-row>
                          </fo:table-body>
                      </fo:table>

                      <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                      <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="justify"  >Por valor recibido,  debo  y  pagaré  a  la  orden  del  BANCO  DE  CREDITO E INVERSIONES, en su domicilio ubicado en Avenida El Golf N° 125, Comuna de Las Condes,  Santiago,   o   en   cualquiera   de  sus  sucursales,  la  suma  de <fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold">UF</fo:inline><fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold">

                      <!--<xsl:value-of select='format-number(../OperacionCredito/montoCredito, "###.###.##0,000","decimal")' />-->
                      <xsl:variable name="moneda" select="../OperacionCredito/moneda" />
                        <xsl:choose>

                          <xsl:when test="$moneda = 'UF'">
                             <xsl:value-of select='format-number(../OperacionCredito/montoCredito, "###.###.##0,0000","decimal")' />
                          </xsl:when>


                          <xsl:when test="$moneda = '$'">
                            <xsl:value-of select='format-number(../OperacionCredito/montoCredito, "###.###.##0","decimal")' />
                          </xsl:when>

                      </xsl:choose>



                      </fo:inline> <fo:leader leader-pattern="space" leader-length="1mm"/>(<fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/montoCreditoManoEscrita" /></fo:inline><fo:leader leader-pattern="space" leader-length="1mm"/>Unidades de Fomento), equivalentes a esta fecha a la suma de <fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold">$</fo:inline> <fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold">

                      <!--<xsl:value-of select='format-number(../OperacionCredito/montoCredito, "###.###.##0,000","decimal")' />-->
                      <xsl:variable name="moneda" select="../OperacionCredito/moneda" />
                        <xsl:choose>

                          <xsl:when test="$moneda = 'UF'">
                             <xsl:value-of select='format-number(../OperacionCredito/montoCredito, "###.###.##0,0000","decimal")' />
                          </xsl:when>


                          <xsl:when test="$moneda = '$'">
                            <xsl:value-of select='format-number(../OperacionCredito/montoCredito, "###.###.##0","decimal")' />
                          </xsl:when>

                      </xsl:choose>


                      </fo:inline><fo:leader leader-pattern="space" leader-length="1mm"/>(<fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/montoCreditoManoEscrita" /></fo:inline><fo:leader leader-pattern="space" leader-length="1mm"/>pesos m/l).</fo:block>
                      <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="left" ><fo:inline font-weight="bold">Tasa de Interés</fo:inline></fo:block>
                      <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="justify"  >El capital adeudado devengará una tasa de interés variable semestralmente   y será la compuesta por la Tasa T.A.B.  (Tasa Bancaria) de 180 días determinada por la Asociación de Bancos e Instituciones  Financieras,  más  un  spread  o diferencial del <fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select='format-number(../OperacionCredito/tasaSpread, "###,####","decimal")'/></fo:inline> % anual. La Tasa Bancaria (T.A.B.) de 180 días, se define como la  determinada  diariamente  y  con  esa  denominación por la Asociación de Bancos e Instituciones  Financieras.  Dicha tasa se recalculará semestralmente, aplicándose la que rija en su oportunidad al inicio  de cada período en conformidad al procedimiento  indicado  permaneciendo  inalterable por igual período.  Los  intereses  serán  vencidos  y se calcularán sobre el capital reajustado, en la forma y condiciones pactadas en este instrumento.</fo:block>
                      <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="justify"  >En el evento que la tasa TAB no fuere informada por la Asociación de Bancos e Instituciones Financieras se aplicará la TASA BASE  semestral  en Unidades de Fomento del  Banco de  Crédito e  Inversiones  para  dicho  período,  más  el diferencial o  spread  pactado  precedentemente. Dicha TASA BASE semestral en Unidades de Fomento se recalculará semestralmente aplicándose la que rija  en su  oportunidad  en  conformidad  al  procedimiento  indicado,  permaneciendo inalterable por igual período.</fo:block>
                      <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="justify"  >La TASA BASE semestral en Unidades de Fomento se  define  como la determinada diariamente  por  el  Banco  de  Crédito  e  Inversiones  de  acuerdo  a  una metodología que declaro conocer y aceptar y que será  certificada  todos  los días hábiles bancarios por uno de los Notarios que  atienden  los  negocios y operaciones de la Oficina Central del Banco.</fo:block>
                      <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="justify"  >La TASA BASE para los días inhábiles bancarios será la vigente  el  día hábil bancario inmediatamente anterior a aquellos.  Igualmente,  si  por  cualquier causa en algún día no existiera certificación notarial para la referida  TASA BASE,  regirá para  esa  fecha  la  última que se hubiere certificado. Si por cualquier motivo y en cualquiera forma resultare  impugnada  o  discutida  la determinación o certificación  de  la Tasa Base  vigente  para  alguna fecha, se aplicará en su reemplazo la TASA DE INTERES MAXIMA CONVENCIONAL que la Ley permita estipular a esa fecha para operaciones reajustables.  Reconozco dicho procedimiento como suficiente, válido y definitivo para la  determinación  de la señalada Tasa Base Semestral.</fo:block>
                      <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="left" ><fo:inline font-weight="bold">Amortización del Capital</fo:inline></fo:block>
                      <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="justify"  >El capital adeudado se pagará  en  <fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="count(../CalendarioPago)" /></fo:inline> cuotas   semestrales y sucesivas, de <fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold">UF</fo:inline> <fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select='format-number(../OperacionCredito/montoCuota, "###.###.##0,000","decimal")' /></fo:inline><fo:leader leader-pattern="space" leader-length="1mm"/> cada una, con vencimiento la primera  de  ellas  el  día <fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/fechaPrimerVctoDD" /></fo:inline><fo:leader leader-pattern="space" leader-length="1mm"/>de<fo:leader leader-pattern="space" leader-length="1mm"/>

                    <xsl:variable name="mes" select="../OperacionCredito/fechaPrimerVctoMM" />
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

                      <fo:leader leader-pattern="space" leader-length="1mm"/>de<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/fechaPrimerVctoYYYY" /></fo:inline> y las restantes los días<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/diaVencimiento" /></fo:inline>.<fo:leader leader-pattern="space" leader-length="1mm"/>de los meses de @-............. y @-..........., venciendo la ultima de ellas el día <fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/fechaUltimoVctoDD" /></fo:inline><fo:leader leader-pattern="space" leader-length="1mm"/>de<fo:leader leader-pattern="space" leader-length="1mm"/>

                      <!--<fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/fechaUltimoVctoMM" /></fo:inline>-->
                        <xsl:variable name="mes" select="../OperacionCredito/fechaUltimoVctoMM" />
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


                      <fo:leader leader-pattern="space" leader-length="1mm"/>de<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/fechaUltimoVctoYYYY" /></fo:inline></fo:block>
                      <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="left" ><fo:inline font-weight="bold">Intereses</fo:inline></fo:block>
                      <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="justify"  >Por su parte,  los  intereses  se  pagarán en <fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="count(../CalendarioPago)" /></fo:inline> cuotas semestrales y sucesivas,  la  primera  de  ellas  con  vencimiento  el  día  <fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/fechaPrimerVctoDD" /></fo:inline><fo:leader leader-pattern="space" leader-length="1mm"/>de<fo:leader leader-pattern="space" leader-length="1mm"/>

                      <!--<fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/fechaPrimerVctoMM" /></fo:inline>-->
                      <xsl:variable name="mes" select="../OperacionCredito/fechaPrimerVctoMM" />
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


                      <fo:leader leader-pattern="space" leader-length="1mm"/>de<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/fechaPrimerVctoYYYY" /></fo:inline> y las restantes los días<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/diaVencimiento" /></fo:inline><fo:leader leader-pattern="space" leader-length="1mm"/>de los meses de @-............. y @-..........., hasta la ultima cuota que vencerá el  día <fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/fechaUltimoVctoDD" /></fo:inline><fo:leader leader-pattern="space" leader-length="1mm"/>de<fo:leader leader-pattern="space" leader-length="1mm"/>

                      <!--<fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/fechaUltimoVctoMM" /></fo:inline>-->
                        <xsl:variable name="mes" select="../OperacionCredito/fechaUltimoVctoMM" />
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

                      <fo:leader leader-pattern="space" leader-length="1mm"/>de<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/fechaUltimoVctoYYYY" /></fo:inline></fo:block>
                      <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="justify"  ><fo:inline font-weight="bold">Prórroga de plazo por día inhábil.</fo:inline>  Las  cuotas de  amortización  de  capital e intereses se pagarán a su vencimiento,  siempre que éste  corresponda a  un día hábil bancario. En caso contrario,  se  pagarán  el  día  hábil  bancario siguiente.</fo:block>
                      <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="justify"  ><fo:inline font-weight="bold">Equivalencia.</fo:inline> Las sumas adeudadas, tanto en lo  referente a  capital  como  a intereses, se calcularán por su equivalente en moneda legal chilena al día de pago efectivo.</fo:block>
                      <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                      <fo:block font-family="Arial, Helvetica, sans-serif" line-height="4.5mm" font-size="11pt" text-align="center" >Página 1 de 3</fo:block>
                </fo:flow>
          </xsl:when>
          <!--   AQUI COMIENZA EL TEMPLATE   docpg21a  -->



          <!--   AQUI COMIENZA EL TEMPLATE   docpg21b  -->
          <xsl:when test="template = 'docpg21b'">
                <fo:flow flow-name="xsl-region-body">
              <fo:table border-collapse="collapse">
              <fo:table-column column-width="50mm" />
              <fo:table-column column-width="50mm" />
              <fo:table-body>
                  <fo:table-row>
                        <fo:table-cell text-align="left">
                                <fo:block >
                                  <fo:external-graphic height="12mm" width="25mm" vertical-align="middle">
                                    <xsl:attribute name="src">
                                    <xsl:value-of select="../OperacionCredito/logoBciSomosDiferentes"/>
                                    </xsl:attribute>
                                  </fo:external-graphic>
                                </fo:block>
                        </fo:table-cell>
                        <fo:table-cell >
                                <fo:block >
                                </fo:block>
                        </fo:table-cell>
                  </fo:table-row>
              </fo:table-body>
              </fo:table>
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block font-family="Arial, Helvetica, sans-serif" line-height="4.5mm" font-size="11pt" text-align="left" >Nº Operación<fo:leader leader-pattern="space" leader-length="18.5mm"/>:<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/nroOperacion" /></fo:inline></fo:block>
              <fo:block font-family="Arial, Helvetica, sans-serif" line-height="4.5mm" font-size="11pt" text-align="left" >Fecha de suscripción<fo:leader leader-pattern="space" leader-length="6.8mm"/>:<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="substring(../OperacionCredito/fechaSuscripcion,0,4)" /></fo:inline>
              <xsl:variable name="mes" select="substring(../OperacionCredito/fechaSuscripcion,4,2)" />
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
              <fo:inline font-weight="bold"><xsl:value-of select="substring(../OperacionCredito/fechaSuscripcion,6,5)" /></fo:inline>
              </fo:block>
              <fo:block font-family="Arial, Helvetica, sans-serif" line-height="4.5mm" font-size="11pt" text-align="left" >Monto<fo:leader leader-pattern="space" leader-length="29.6mm"/>:<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/moneda" /></fo:inline><fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold">

              <xsl:variable name="moneda" select="../OperacionCredito/moneda" />
                <xsl:choose>
                  <xsl:when test="$moneda = 'UF'">
                     <xsl:value-of select='format-number(../OperacionCredito/montoCredito, "###.###.##0,0000","decimal")' />
                  </xsl:when>

                  <xsl:when test="$moneda = '$'">
                    <xsl:value-of select='format-number(../OperacionCredito/montoCredito, "###.###.##0","decimal")' />
                  </xsl:when>
              </xsl:choose>

              </fo:inline></fo:block>
              <fo:block font-family="Arial, Helvetica, sans-serif" line-height="4.5mm" font-size="11pt" text-align="left" >Deudor<fo:leader leader-pattern="space" leader-length="28mm"/>:<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/nombreCompletoCliente" /></fo:inline></fo:block>
              <fo:block font-family="Arial, Helvetica, sans-serif" line-height="4.5mm" font-size="11pt" text-align="left" >RUT<fo:leader leader-pattern="space" leader-length="32.2mm"/>:<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select='format-number(../OperacionCredito/rutCliente, "###.###.##0","rut")' /></fo:inline>-<fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/dvCliente" /></fo:inline></fo:block>
              
                      <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                      <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="justify"  ><fo:inline font-weight="bold">Prepagos.</fo:inline> Si el monto de capital inicial supera el  equivalente  a  UF 5.000, todo pago anticipado, sea total o parcial, será convenido libremente entre el suscriptor y el Banco. A falta de acuerdo,  el  suscriptor podrá en todo caso anticipar el pago, total o parcialmente, y en este último caso,  siempre  que el importe a pagar sea igual o superior al  20 % del capital de la obligación adeudada, pagando además los intereses estipulados  devengados y no pagados a la fecha del prepago,  calculados sobre el saldo insoluto,  más los intereses estipulados en este instrumento,  calculados sobre el capital prepagado desde la fecha del prepago hasta el vencimiento del plazo pactado.  Si el  monto de capital inicial no supera el  equivalente a  UF  5.000,  al capital prepagado deberán sumársele los intereses  calculados  hasta la  fecha del prepago y la comisión de prepago máxima que el articulo 10 de la Ley 18.010 permite pactar.</fo:block>
                      <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="justify"  ><fo:inline font-weight="bold">Exigibilidad anticipada.</fo:inline>  El no pago oportuno de una cualquiera de las cuotas de capital y/o de interés comprendidos en esta obligación,  dará  derecho  al acreedor a hacer exigible de inmediato y anticipadamente el  monto  total del saldo insoluto adeudado a  esa  fecha,  el  que  desde  esa  misma  fecha  se considerará de plazo vencido y devengará en favor del acreedor o de quien sus derechos represente, el interés máximo convencional que  rija durante la mora o simple retardo.</fo:block>
                      <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="justify"  >Se deja expresamente establecido que el ejercicio de  este derecho constituye una sanción  al  suscriptor  por el  no  pago de la deuda e  importa una mera facultad establecida en beneficio  exclusivo del acreedor,  que no  altera en caso alguno la fecha de vencimiento del pagaré originalmente pactada, ni a la exigibilidad de las acciones cambiarias y ejecutivas derivadas de éste.</fo:block>
                      <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                      <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="justify"  >El Banco podrá hacer exigible de inmediato el monto total adeudado, expirando todos los plazos pendientes por el sólo hecho de  constituirse  en  mora o de habérsele protestado al deudor o  al  aval,  por  falta  de  pago,  cualquier documento,  pagaré,  letra  de  cambio  o  cheque, aceptado, suscrito, girado o avalado por él.</fo:block>
                      <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="justify"  >Se  deja  expresamente  establecido  que corresponderá al deudor acreditar el pago de las cuotas en que se divide el presente instrumento, en caso de cobro judicial.</fo:block>
                      <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="justify"  ><fo:inline font-weight="bold">Indivisibilidad y solidaridad.</fo:inline> Las obligaciones que  emanen  de  este  pagaré serán solidarias para el suscriptor,  avalista(s)  y  demás obligados al pago y serán indivisibles  para  sus  herederos. Además, el suscriptor  pagará los gastos, impuestos y costas personales y procesales que correspondan.</fo:block>
                      <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="justify"  ><fo:inline font-weight="bold">Mandato para prórrogas.</fo:inline> El  suscriptor  faculta  al Banco de Crédito  e  Inversiones para que en su nombre y representación otorgue, previa autorización expresa de éste, una o más prórrogas que establezcan nuevas condiciones, tasas de interés y fechas de vencimiento. </fo:block>
                      <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="justify"  ><fo:inline font-weight="bold">Domicilio y  competencia.</fo:inline>  Para todos los efectos legales, judiciales o extrajudiciales derivados de este pagaré, las partes acuerdan someterse  a los Tribunales de Justicia con asiento en la comuna y ciudad del domicilio del suscriptor,  lo que  será obligatorio tanto para el suscriptor como para sus avales, endosantes u obligados por garantía.  Sin perjuicio declaro, que mi domicilio y residencia son los consignados en  este título, comprometiéndome a dar pronto aviso por escrito al Banco, en el evento que realice cualquier cambio de domicilio en el futuro.</fo:block>
                      <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="justify"  ><fo:inline font-weight="bold">Impuesto de timbres y estampillas.</fo:inline> El  impuesto de  timbres y estampillas que grava este documento se paga por ingresos mensuales de  dinero en  Tesorería, según Decreto Ley Nº 3475.</fo:block>


                    <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                    <fo:block font-family="Arial, Helvetica, sans-serif" line-height="4.5mm" font-size="11pt" text-align="left" >
                    En<fo:leader leader-pattern="space" leader-length="1mm"/>
                    <fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/ciudadContrato" /></fo:inline>,
                    <fo:leader leader-pattern="space" leader-length="1mm"/>a<fo:leader leader-pattern="space" leader-length="1mm"/>
                    <fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/dia" /></fo:inline>

                    <!--<fo:leader leader-pattern="space" leader-length="1mm"/>de<fo:leader leader-pattern="space" leader-length="1mm"/>
                    <fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/mes" /></fo:inline>-->
                    <fo:leader leader-pattern="space" leader-length="1mm"/>de<fo:leader leader-pattern="space" leader-length="1mm"/>
                    <xsl:variable name="mes" select="../OperacionCredito/mes" />
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


                    <fo:leader leader-pattern="space" leader-length="1mm"/>de<fo:leader leader-pattern="space" leader-length="1mm"/>
                    <fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/anio" /></fo:inline>
                    </fo:block>


                      <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                      <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                      <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                      <fo:block font-family="Arial, Helvetica, sans-serif" line-height="4.5mm" font-size="11pt" text-align="center" ><fo:leader leader-length="6cm" leader-pattern="rule" rule-style="solid" rule-thickness="0.4mm" color="black"/></fo:block>
                      <fo:block font-family="Arial, Helvetica, sans-serif" line-height="4.5mm" font-size="11pt" text-align="center" >Firma del Suscriptor</fo:block>
                      <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                      <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>

                        <!-- AQUI COMIENZA LOS DATOS  DEL SUSCRIPTOR NOMBRE O RAZON SOCIAL -->
                         <xsl:apply-templates select="../OperacionCredito"/>
                        <!-- AQUI TERMINA LOS DATOS  DEL SUSCRIPTOR NOMBRE O RAZON SOCIAL -->

                        <!-- AQUI COMIENZA LOS DATOS  DEL SUSCRIPTOR DOMICILIO, COMUNA Y CIUDAD -->
                         <xsl:apply-templates select="../DireccionDeudorBci"/>
                        <!-- AQUI TERMINAN LOS DATOS  DEL SUSCRIPTOR DOMICILIO, COMUNA Y CIUDAD -->
                     <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                     <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
		     <fo:block font-family="Arial, Helvetica, sans-serif" line-height="4.5mm" font-size="11pt" text-align="center" >Página 2 de 3</fo:block>
                </fo:flow>
          </xsl:when>
          <!--   AQUI TERMINA EL TEMPLATE   docpg21b  -->






          <!--   AQUI COMIENZA EL TEMPLATE   docpg22a  -->
          <xsl:when test="template = 'docpg22a'">
                <fo:flow flow-name="xsl-region-body">
              <fo:table border-collapse="collapse">
              <fo:table-column column-width="50mm" />
              <fo:table-column column-width="50mm" />
              <fo:table-body>
                  <fo:table-row>
                        <fo:table-cell text-align="left">
                                <fo:block >
                                  <fo:external-graphic height="12mm" width="25mm" vertical-align="middle">
                                    <xsl:attribute name="src">
                                    <xsl:value-of select="../OperacionCredito/logoBciSomosDiferentes"/>
                                    </xsl:attribute>
                                  </fo:external-graphic>
                                </fo:block>
                        </fo:table-cell>
                        <fo:table-cell >
                                <fo:block >
                                </fo:block>
                        </fo:table-cell>
                  </fo:table-row>
              </fo:table-body>
              </fo:table>
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                      <fo:block font-family="Arial, Helvetica, sans-serif" line-height="4.5mm" font-size="11pt" text-align="center" ><fo:inline font-weight="bold">PAGARÉ (Sin Protesto) TAB UF 180 DIAS</fo:inline> </fo:block>
                      <fo:block font-family="Arial, Helvetica, sans-serif" line-height="4.5mm" font-size="11pt" text-align="center" ><fo:inline font-weight="bold">AMORTIZACIONES INFORMADAS SEMESTRALES</fo:inline></fo:block>
                      <fo:block font-family="Arial, Helvetica, sans-serif" line-height="4.5mm" font-size="11pt" text-align="center" ><fo:inline font-weight="bold">E INTERESES SEMESTRALES</fo:inline></fo:block>
                      <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                      <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                      <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                      <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                      <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>

                      <fo:table border-collapse="collapse" font-family="Arial, Helvetica, sans-serif" font-size="11pt" text-align="left">
                          <fo:table-column column-width="50%"/>
                          <fo:table-column column-width="50%"/>
                          <fo:table-body>
                              <fo:table-row>
                                  <fo:table-cell > _
                                      <fo:block font-family="Arial, Helvetica, sans-serif" line-height="4.5mm" font-size="11pt" text-align="left" >N° de Operación :<fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/nroOperacion" /></fo:inline></fo:block>
                                  </fo:table-cell>
                              </fo:table-row>
                          </fo:table-body>
                      </fo:table>


                      <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                      <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="justify"  >Por valor recibido,  debo  y  pagaré  a  la  orden  del  BANCO  DE  CREDITO E INVERSIONES, en su domicilio ubicado en Avenida El Golf N° 125, Comuna de Las Condes,  Santiago,   o   en   cualquiera   de  sus  sucursales,  la  suma  de <fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold">UF</fo:inline><fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold">

                      <!--<xsl:value-of select='format-number(../OperacionCredito/montoCredito, "###.###.##0,000","decimal")' />-->
                      <xsl:variable name="moneda" select="../OperacionCredito/moneda" />
                        <xsl:choose>

                          <xsl:when test="$moneda = 'UF'">
                             <xsl:value-of select='format-number(../OperacionCredito/montoCredito, "###.###.##0,0000","decimal")' />
                          </xsl:when>


                          <xsl:when test="$moneda = '$'">
                            <xsl:value-of select='format-number(../OperacionCredito/montoCredito, "###.###.##0","decimal")' />
                          </xsl:when>

                      </xsl:choose>




                      </fo:inline> <fo:leader leader-pattern="space" leader-length="1mm"/>(<fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/montoCreditoManoEscrita" /></fo:inline>  <fo:leader leader-pattern="space" leader-length="1mm"/>Unidades de Fomento), equivalentes a esta fecha a la suma de <fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold">$</fo:inline> <fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select='format-number(../OperacionCredito/montoCreditoEnPesos, "###.###.##0","decimal")' /></fo:inline><fo:leader leader-pattern="space" leader-length="1mm"/>(<fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/montoCreditoManoEscrita" /></fo:inline>  <fo:leader leader-pattern="space" leader-length="1mm"/>pesos m/l).</fo:block>
                      <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="left" ><fo:inline font-weight="bold">Tasa de Interés</fo:inline></fo:block>
                      <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="justify"  >El capital adeudado devengará una tasa de interés variable semestralmente   y será la compuesta por la Tasa T.A.B.  (Tasa Bancaria) de 180 días determinada por la Asociación de Bancos e Instituciones  Financieras,  más  un  spread  o diferencial del <fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select='format-number(../OperacionCredito/tasaSpread, "###,####","decimal")'/></fo:inline> % anual. La Tasa Bancaria (T.A.B.) de 180 días, se define como la  determinada  diariamente  y  con  esa  denominación por la Asociación de Bancos e Instituciones  Financieras.  Dicha tasa se recalculará semestralmente, aplicándose la que rija en su oportunidad al inicio  de cada período en conformidad al procedimiento  indicado  permaneciendo  inalterable por igual período.  Los  intereses  serán  vencidos  y se calcularán sobre el capital reajustado, en la forma y condiciones pactadas en este instrumento.</fo:block>
                      <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="justify"  >En el evento que la tasa TAB no fuere informada por la Asociación de Bancos e Instituciones Financieras se aplicará la TASA BASE  semestral  en Unidades de Fomento del  Banco de  Crédito e  Inversiones  para  dicho  período,  más  el diferencial o  spread  pactado  precedentemente. Dicha TASA BASE semestral en Unidades de Fomento se recalculará semestralmente aplicándose la que rija  en su  oportunidad  en  conformidad  al  procedimiento  indicado,  permaneciendo inalterable por igual período.</fo:block>
                      <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="justify"  >La TASA BASE semestral en Unidades de Fomento se  define  como la determinada diariamente  por  el  Banco  de  Crédito  e  Inversiones  de  acuerdo  a  una metodología que declaro conocer y aceptar y que será  certificada  todos  los días hábiles bancarios por uno de los Notarios que  atienden  los  negocios y operaciones de la Oficina Central del Banco.</fo:block>
                      <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="justify"  >La TASA BASE para los días inhábiles bancarios será la vigente  el  día hábil bancario inmediatamente anterior a aquellos.  Igualmente,  si  por  cualquier causa en algún día no existiera certificación notarial para la referida  TASA BASE,  regirá para  esa  fecha  la  última que se hubiere certificado. Si por cualquier motivo y en cualquiera forma resultare  impugnada  o  discutida  la determinación o certificación  de  la Tasa Base  vigente  para  alguna fecha, se aplicará en su reemplazo la TASA DE INTERES MAXIMA CONVENCIONAL que la Ley permita estipular a esa fecha para operaciones reajustables.  Reconozco dicho procedimiento como suficiente, válido y definitivo para la  determinación  de la señalada Tasa Base Semestral.</fo:block>
                      <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="left" ><fo:inline font-weight="bold">Amortización del Capital</fo:inline></fo:block>
                      <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="justify"  >El capital adeudado se pagará en <fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="count(../CalendarioPago)" /></fo:inline> cuotas semestrales  y  sucesivas, en las fechas y por los montos que a continuación se indican:</fo:block>
                      <fo:block ><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>


                          <!--DESDE ACA COMIENZA EL CALENDARIO DE PAGOS-->

                      <fo:block font-family="Arial, Helvetica, sans-serif" line-height="4.5mm" font-size="11pt" text-align="left" >Cuota  <fo:leader leader-pattern="space" leader-length="10mm"/>Fecha de    <fo:leader leader-pattern="space" leader-length="15mm"/> Amortización en</fo:block>
                      <fo:block font-family="Arial, Helvetica, sans-serif" line-height="4.5mm" font-size="11pt" text-align="left" ><fo:leader leader-pattern="space" leader-length="4mm"/>Nº<fo:leader leader-pattern="space" leader-length="10mm"/><fo:leader leader-pattern="space" leader-length="1mm"/>Vencimiento    <fo:leader leader-pattern="space" leader-length="20mm"/>   UF</fo:block>





              <xsl:variable name="venc" select="count(../CalendarioPago)" />
              <xsl:variable name="impar" select="$venc mod 2" />
              <xsl:variable name="mitad" select="($venc div 2)+$impar" />


              <fo:table border-collapse="collapse" text-align="left">
                <fo:table-column column-width="107mm"  />
                <fo:table-column column-width="107mm"  />

                <fo:table-body>
                    <fo:table-row>
                          <fo:table-cell >

              <xsl:for-each select="../CalendarioPago">
                        <xsl:variable name="mes" select="substring(fecVencPago,4,2)" />
                            <fo:table border-collapse="collapse" text-align="left" >

                                <fo:table-column column-width="15mm" />
                                <fo:table-column column-width="45mm" />
                                <fo:table-column  />

                                <fo:table-body>
                                 <fo:table-row>

                    <xsl:if test="position() &lt;= $mitad">

                                          <fo:table-cell >
                                                      <fo:block font-family="Arial, Helvetica, sans-serif" font-size="11pt" text-align="left" >
                                                      <xsl:value-of select="numVencimiento" />°</fo:block>
                                          </fo:table-cell>

                                          <fo:table-cell >
                                                      <fo:block font-family="Arial, Helvetica, sans-serif" font-size="11pt" text-align="left" >
                                                          <fo:inline font-weight="bold">
                                                              <xsl:value-of select="substring(fecVencPago,0,3)" />
                                                          </fo:inline>/
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
                                                          </fo:inline>/
                                                          <fo:inline font-weight="bold">
                                                              <xsl:value-of select="substring(fecVencPago,7,4)" />
                                                          </fo:inline>

                                                      </fo:block>
                                          </fo:table-cell>

                                          <fo:table-cell>
                                                       <fo:block font-family="Arial, Helvetica, sans-serif" font-size="11pt" text-align="left" >
                                                            <fo:leader leader-pattern="space" leader-length="2mm"/>
                                                            <xsl:value-of select='format-number(cuota, "###.###.##0,000","decimal")' />
                                                       </fo:block>
                                          </fo:table-cell>

                     </xsl:if>

                                    </fo:table-row>
                              </fo:table-body>
                            </fo:table>

                 </xsl:for-each>
                </fo:table-cell>
                <fo:table-cell>
              <xsl:for-each select="../CalendarioPago">
                        <xsl:variable name="mes" select="substring(fecVencPago,4,2)" />
                            <fo:table border-collapse="collapse" text-align="left" >

                                <fo:table-column column-width="15mm" />
                                <fo:table-column column-width="45mm" />
                                <fo:table-column  />

                                <fo:table-body>
                                 <fo:table-row>

                    <xsl:if test="position() &gt; $mitad">
                        <xsl:if test="position() &lt;= $venc">



                        <xsl:variable name="mes" select="substring(fecVencPago,4,2)" />

                                          <fo:table-cell >
                                                      <fo:block font-family="Arial, Helvetica, sans-serif" font-size="11pt" text-align="left" ><xsl:value-of select="numVencimiento" />°</fo:block>
                                          </fo:table-cell>


                                          <fo:table-cell >
                                                      <fo:block font-family="Arial, Helvetica, sans-serif" font-size="11pt" text-align="left" >
                                                          <fo:inline font-weight="bold">
                                                              <xsl:value-of select="substring(fecVencPago,0,3)" />
                                                          </fo:inline>/
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
                                                          </fo:inline>/
                                                          <fo:inline font-weight="bold">
                                                              <xsl:value-of select="substring(fecVencPago,7,4)" />
                                                          </fo:inline>

                                                      </fo:block>
                                          </fo:table-cell>


                                          <fo:table-cell>
                                                       <fo:block font-family="Arial, Helvetica, sans-serif" font-size="11pt" text-align="left" >
                                                            <fo:leader leader-pattern="space" leader-length="2mm"/>
                                                            <xsl:value-of select='format-number(cuota, "###.###.##0,000","decimal")' />
                                                       </fo:block>
                                          </fo:table-cell>

                      </xsl:if>
                      </xsl:if>

                                    </fo:table-row>
                              </fo:table-body>
                            </fo:table>

                 </xsl:for-each>
                </fo:table-cell>





              </fo:table-row>



              </fo:table-body>
              </fo:table>

                <!--AQUI TERMINA EL CALENDARIO DE PAGOS-->

                      <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                  <fo:block font-family="Arial, Helvetica, sans-serif" line-height="4.5mm" font-size="11pt" text-align="center" >Página 1 de 3</fo:block>    
                </fo:flow>
          </xsl:when>
          <!--   AQUI TERMINA EL TEMPLATE   docpg22a  -->


          <!--   AQUI COMIENZA EL TEMPLATE   docpg22b  -->
          <xsl:when test="template = 'docpg22b'">
                <fo:flow flow-name="xsl-region-body">
              <fo:table border-collapse="collapse">
              <fo:table-column column-width="50mm" />
              <fo:table-column column-width="50mm" />
              <fo:table-body>
                  <fo:table-row>
                        <fo:table-cell text-align="left">
                                <fo:block >
                                  <fo:external-graphic height="12mm" width="25mm" vertical-align="middle">
                                    <xsl:attribute name="src">
                                    <xsl:value-of select="../OperacionCredito/logoBciSomosDiferentes"/>
                                    </xsl:attribute>
                                  </fo:external-graphic>
                                </fo:block>
                        </fo:table-cell>
                        <fo:table-cell >
                                <fo:block >
                                </fo:block>
                        </fo:table-cell>
                  </fo:table-row>
              </fo:table-body>
              </fo:table>
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block font-family="Arial, Helvetica, sans-serif" line-height="4.5mm" font-size="11pt" text-align="left" >Nº Operación<fo:leader leader-pattern="space" leader-length="18.5mm"/>:<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/nroOperacion" /></fo:inline></fo:block>
              <fo:block font-family="Arial, Helvetica, sans-serif" line-height="4.5mm" font-size="11pt" text-align="left" >Fecha de suscripción<fo:leader leader-pattern="space" leader-length="6.8mm"/>:<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="substring(../OperacionCredito/fechaSuscripcion,0,4)" /></fo:inline>
              <xsl:variable name="mes" select="substring(../OperacionCredito/fechaSuscripcion,4,2)" />
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
              <fo:inline font-weight="bold"><xsl:value-of select="substring(../OperacionCredito/fechaSuscripcion,6,5)" /></fo:inline>
              </fo:block>
              <fo:block font-family="Arial, Helvetica, sans-serif" line-height="4.5mm" font-size="11pt" text-align="left" >Monto<fo:leader leader-pattern="space" leader-length="29.6mm"/>:<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/moneda" /></fo:inline><fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold">

              <xsl:variable name="moneda" select="../OperacionCredito/moneda" />
                <xsl:choose>
                  <xsl:when test="$moneda = 'UF'">
                     <xsl:value-of select='format-number(../OperacionCredito/montoCredito, "###.###.##0,0000","decimal")' />
                  </xsl:when>

                  <xsl:when test="$moneda = '$'">
                    <xsl:value-of select='format-number(../OperacionCredito/montoCredito, "###.###.##0","decimal")' />
                  </xsl:when>
              </xsl:choose>

              </fo:inline></fo:block>
              <fo:block font-family="Arial, Helvetica, sans-serif" line-height="4.5mm" font-size="11pt" text-align="left" >Deudor<fo:leader leader-pattern="space" leader-length="28mm"/>:<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/nombreCompletoCliente" /></fo:inline></fo:block>
              <fo:block font-family="Arial, Helvetica, sans-serif" line-height="4.5mm" font-size="11pt" text-align="left" >RUT<fo:leader leader-pattern="space" leader-length="32.2mm"/>:<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select='format-number(../OperacionCredito/rutCliente, "###.###.##0","rut")' /></fo:inline>-<fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/dvCliente" /></fo:inline></fo:block>
              
                      <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                      <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                      <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="left" >Intereses</fo:block>
                      <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="justify"  >Por su parte, los intereses  se  pagarán  en  <fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="count(../CalendarioPago)" /></fo:inline>  cuotas  semestrales y sucesivas,  la  primera  de  ellas  con  vencimiento  el  día  <fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/fechaPrimerVctoDD" /></fo:inline><fo:leader leader-pattern="space" leader-length="1mm"/>de<fo:leader leader-pattern="space" leader-length="1mm"/>

                      <!--<fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/fechaPrimerVctoMM" /></fo:inline>-->
                      <xsl:variable name="mes" select="../OperacionCredito/fechaPrimerVctoMM" />
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

                      <fo:leader leader-pattern="space" leader-length="1mm"/>de<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/fechaPrimerVctoYYYY" /></fo:inline> y las  restantes los días <fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/fechaPrimerVctoDD" /></fo:inline> de los meses de @-............. y @-..........., hasta  la ultima  cuota que vencerá el día <fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/fechaUltimoVctoDD" /></fo:inline><fo:leader leader-pattern="space" leader-length="1mm"/>de<fo:leader leader-pattern="space" leader-length="1mm"/>
                      <!--<fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/fechaUltimoVctoMM" /></fo:inline>-->
                        <xsl:variable name="mes" select="../OperacionCredito/fechaUltimoVctoMM" />
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


                      <fo:leader leader-pattern="space" leader-length="1mm"/>de<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/fechaUltimoVctoYYYY" /></fo:inline></fo:block>
                      <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                      <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="justify"  ><fo:inline font-weight="bold">Prórroga de plazo por día inhábil.</fo:inline> Las cuotas  de  amortización  de capital e intereses se pagarán a su vencimiento, siempre que éste corresponda a  un día hábil bancario. En caso contrario,se pagarán el día hábil bancario siguiente.</fo:block>
                      <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                      <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="justify"  ><fo:inline font-weight="bold">Equivalencia.</fo:inline> Las sumas adeudas,  tanto  en  lo  referente  a  capital como a intereses, se calcularán por su equivalente en moneda legal chilena al día de pago efectivo.</fo:block>
                      <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                      <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="justify"  ><fo:inline font-weight="bold">Prepagos.</fo:inline> Si el monto de capital inicial supera el  equivalente  a  UF 5.000, todo pago anticipado, sea total o parcial, será convenido libremente entre el suscriptor y el Banco. A falta de acuerdo,  el  suscriptor podrá en todo caso anticipar el pago, total o parcialmente, y en este último caso,  siempre  que el importe a pagar sea igual o superior al  20 % del capital de la obligación adeudada, pagando además los intereses estipulados  devengados y no pagados a la fecha del prepago,  calculados sobre el saldo insoluto,  más los intereses estipulados en este instrumento,  calculados sobre el capital prepagado desde la fecha del prepago hasta el vencimiento del plazo pactado.  Si el  monto de capital inicial no supera el  equivalente a  UF  5.000,  al capital prepagado deberán sumársele los intereses  calculados  hasta la  fecha del prepago y la comisión de prepago máxima que el articulo 10 de la Ley 18.010 permite pactar.</fo:block>
                      <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                      <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="justify"  ><fo:inline font-weight="bold">Exigibilidad anticipada.</fo:inline>  El no pago oportuno de una cualquiera de las cuotas de capital y/o de interés comprendidos en esta obligación,  dará  derecho  al acreedor a hacer exigible de inmediato y anticipadamente el  monto  total del saldo insoluto adeudado a  esa  fecha,  el  que  desde  esa  misma  fecha  se considerará de plazo vencido y devengará en favor del acreedor o de quien sus derechos represente, el interés máximo convencional que  rija durante la mora o simple retardo.</fo:block>
                      <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="justify"  >Se deja expresamente establecido que el ejercicio de  este derecho constituye una sanción  al  suscriptor  por el  no  pago de la deuda e  importa una mera facultad establecida en beneficio  exclusivo del acreedor,  que no  altera en</fo:block>
                      <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                      <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                      <fo:block font-family="Arial, Helvetica, sans-serif" line-height="4.5mm" font-size="11pt" text-align="center" >Página 2 de 3</fo:block>
                </fo:flow>
          </xsl:when>
          <!--   AQUI TERMINA EL TEMPLATE   docpg22b  -->

          <!--   AQUI COMIENZA EL TEMPLATE   docpg22c  -->
          <xsl:when test="template = 'docpg22c'">

                <fo:flow flow-name="xsl-region-body">
              <fo:table border-collapse="collapse">
              <fo:table-column column-width="50mm" />
              <fo:table-column column-width="50mm" />
              <fo:table-body>
                  <fo:table-row>
                        <fo:table-cell text-align="left">
                                <fo:block >
                                  <fo:external-graphic height="12mm" width="25mm" vertical-align="middle">
                                    <xsl:attribute name="src">
                                    <xsl:value-of select="../OperacionCredito/logoBciSomosDiferentes"/>
                                    </xsl:attribute>
                                  </fo:external-graphic>
                                </fo:block>
                        </fo:table-cell>
                        <fo:table-cell >
                                <fo:block >
                                </fo:block>
                        </fo:table-cell>
                  </fo:table-row>
              </fo:table-body>
              </fo:table>
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block font-family="Arial, Helvetica, sans-serif" line-height="4.5mm" font-size="11pt" text-align="left" >Nº Operación<fo:leader leader-pattern="space" leader-length="17.2mm"/>:<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/nroOperacion" /></fo:inline></fo:block>
              <fo:block font-family="Arial, Helvetica, sans-serif" line-height="4.5mm" font-size="11pt" text-align="left" >Fecha de suscripción<fo:leader leader-pattern="space" leader-length="3.7mm"/>:<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="substring(../OperacionCredito/fechaSuscripcion,0,4)" /></fo:inline>
              <xsl:variable name="mes" select="substring(../OperacionCredito/fechaSuscripcion,4,2)" />
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
              <fo:inline font-weight="bold"><xsl:value-of select="substring(../OperacionCredito/fechaSuscripcion,6,5)" /></fo:inline>
              </fo:block>


              <fo:block font-family="Arial, Helvetica, sans-serif" line-height="4.5mm" font-size="11pt" text-align="left" >Monto<fo:leader leader-pattern="space" leader-length="29.6mm"/>:<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold">UF</fo:inline><fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold">

              <!--<xsl:value-of select='format-number(../OperacionCredito/montoCredito, "###.###.##0,000","decimal")' />-->
                      <xsl:variable name="moneda" select="../OperacionCredito/moneda" />
                        <xsl:choose>

                          <xsl:when test="$moneda = 'UF'">
                             <xsl:value-of select='format-number(../OperacionCredito/montoCredito, "###.###.##0,0000","decimal")' />
                          </xsl:when>


                          <xsl:when test="$moneda = '$'">
                            <xsl:value-of select='format-number(../OperacionCredito/montoCredito, "###.###.##0","decimal")' />
                          </xsl:when>

                      </xsl:choose>



              </fo:inline></fo:block>
              <fo:block font-family="Arial, Helvetica, sans-serif" line-height="4.5mm" font-size="11pt" text-align="left" >Deudor<fo:leader leader-pattern="space" leader-length="27.6mm"/>:<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/nombreCompletoCliente" /></fo:inline></fo:block>
              <fo:block font-family="Arial, Helvetica, sans-serif" line-height="4.5mm" font-size="11pt" text-align="left" >RUT<fo:leader leader-pattern="space" leader-length="32.5mm"/>:<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select='format-number(../OperacionCredito/rutCliente, "###.###.##0","rut")' /></fo:inline>-<fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/dvCliente" /></fo:inline></fo:block>
              
                      <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                      <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                      <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="justify"  >caso alguno la fecha de vencimiento del pagaré originalmente pactada, ni a la exigibilidad de las acciones cambiarias y ejecutivas derivadas de éste.</fo:block>
                      <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="justify"  >El Banco podrá hacer exigible de inmediato el monto total adeudado, expirando todos los plazos pendientes por el sólo hecho de  constituirse  en  mora o de habérsele protestado al deudor o  al  aval,  por  falta  de  pago,  cualquier documento,  pagaré,  letra  de  cambio  o  cheque, aceptado, suscrito, girado o avalado por él.</fo:block>
                      <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="justify"  >Se  deja  expresamente  establecido  que corresponderá al deudor acreditar el pago de las cuotas en que se divide el presente instrumento, en caso de cobro judicial.</fo:block>
                      <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                      <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="justify"  ><fo:inline font-weight="bold">Indivisibilidad y solidaridad.</fo:inline> Las obligaciones que  emanen  de  este  pagaré serán solidarias para el suscriptor,  avalista(s)  y  demás obligados al pago y serán indivisibles  para  sus  herederos. Además, el suscriptor  pagará los gastos, impuestos y costas personales y procesales que correspondan.</fo:block>
                      <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="justify"  ><fo:inline font-weight="bold">Mandato para prórrogas.</fo:inline> El  suscriptor  faculta  al Banco de Crédito  e  Inversiones para que en su nombre y representación otorgue, previa autorización expresa de éste, una o más prórrogas que establezcan nuevas condiciones, tasas de interés y fechas de vencimiento. </fo:block>
                      <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                      <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="justify"  ><fo:inline font-weight="bold">Domicilio y  competencia.</fo:inline>  Para todos los efectos legales, judiciales o extrajudiciales derivados de este pagaré, las partes acuerdan someterse  a los Tribunales de Justicia con asiento en la comuna y ciudad del domicilio del suscriptor,  lo que  será obligatorio tanto para el suscriptor como para sus avales, endosantes u obligados por garantía.  Sin perjuicio declaro, que mi domicilio y residencia son los consignados en  este título, comprometiéndome a dar pronto aviso por escrito al Banco, en el evento que realice cualquier cambio de domicilio en el futuro.</fo:block>
                      <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                      <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="justify"  ><fo:inline font-weight="bold">Impuesto de timbres y estampillas.</fo:inline> El  impuesto de  timbres y estampillas que grava este documento se paga por ingresos mensuales de  dinero en  Tesorería, según Decreto Ley Nº 3475.</fo:block>


                      <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                      <fo:block font-family="Arial, Helvetica, sans-serif" line-height="4.5mm" font-size="11pt" text-align="left" >
                      En<fo:leader leader-pattern="space" leader-length="1mm"/>
                      <fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/ciudadContrato" /></fo:inline>,
                      <fo:leader leader-pattern="space" leader-length="1mm"/>a<fo:leader leader-pattern="space" leader-length="1mm"/>
                      <fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/dia" /></fo:inline>

                      <!--<fo:leader leader-pattern="space" leader-length="1mm"/>de<fo:leader leader-pattern="space" leader-length="1mm"/>
                      <fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/mes" /></fo:inline>-->
                      <fo:leader leader-pattern="space" leader-length="1mm"/>de<fo:leader leader-pattern="space" leader-length="1mm"/>
                      <xsl:variable name="mes" select="../OperacionCredito/mes" />
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


                      <fo:leader leader-pattern="space" leader-length="1mm"/>de<fo:leader leader-pattern="space" leader-length="1mm"/>
                      <fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/anio" /></fo:inline>
                      </fo:block>




                      <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                      <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                      <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                      <fo:block font-family="Arial, Helvetica, sans-serif" line-height="4.5mm" font-size="11pt" text-align="center" ><fo:leader leader-length="6cm" leader-pattern="rule" rule-style="solid" rule-thickness="0.4mm" color="black"/></fo:block>
                      <fo:block font-family="Arial, Helvetica, sans-serif" line-height="4.5mm" font-size="11pt" text-align="center" >Firma del Suscriptor</fo:block>
                      <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                      <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>


                        <!-- AQUI COMIENZA LOS DATOS  DEL SUSCRIPTOR NOMBRE O RAZON SOCIAL -->
                         <xsl:apply-templates select="../OperacionCredito"/>
                        <!-- AQUI TERMINA LOS DATOS  DEL SUSCRIPTOR NOMBRE O RAZON SOCIAL -->

                        <!-- AQUI COMIENZA LOS DATOS  DEL SUSCRIPTOR DOMICILIO, COMUNA Y CIUDAD -->
                         <xsl:apply-templates select="../DireccionDeudorBci"/>
                        <!-- AQUI TERMINAN LOS DATOS  DEL SUSCRIPTOR DOMICILIO, COMUNA Y CIUDAD -->

			<fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
			<fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
			<fo:block font-family="Arial, Helvetica, sans-serif" line-height="4.5mm" font-size="11pt" text-align="center" >Página 3 de 3</fo:block>
			
                 </fo:flow>
          </xsl:when>
          <!--   AQUI TERMINA EL TEMPLATE   docpg22c  -->


          <!--   AQUI COMIENZA EL TEMPLATE   docpg23a  -->
          <xsl:when test="template = 'docpg23a'">
                <fo:flow flow-name="xsl-region-body">
              <fo:table border-collapse="collapse">
              <fo:table-column column-width="50mm" />
              <fo:table-column column-width="50mm" />
              <fo:table-body>
                  <fo:table-row>
                        <fo:table-cell text-align="left">
                                <fo:block >
                                  <fo:external-graphic height="12mm" width="25mm" vertical-align="middle">
                                    <xsl:attribute name="src">
                                    <xsl:value-of select="../OperacionCredito/logoBciSomosDiferentes"/>
                                    </xsl:attribute>
                                  </fo:external-graphic>
                                </fo:block>
                        </fo:table-cell>
                        <fo:table-cell >
                                <fo:block >
                                </fo:block>
                        </fo:table-cell>
                  </fo:table-row>
              </fo:table-body>
              </fo:table>
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                      <fo:block font-family="Arial, Helvetica, sans-serif" line-height="4.5mm" font-size="11pt" text-align="center" ><fo:inline font-weight="bold">PAGARE (Sin Protesto) $</fo:inline></fo:block>
                      <fo:block font-family="Arial, Helvetica, sans-serif" line-height="4.5mm" font-size="11pt" text-align="center" ><fo:inline font-weight="bold">UN VENCIMIENTO INTERESES ANTICIPADOS</fo:inline></fo:block>
                      <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                      <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                      <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                      <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>

                      <fo:table border-collapse="collapse" font-family="Arial, Helvetica, sans-serif" font-size="11pt" text-align="left">
                          <fo:table-column column-width="50%"/>
                          <fo:table-column column-width="50%"/>
                          <fo:table-body>
                              <fo:table-row>
                                  <fo:table-cell > _
                                      <fo:block font-family="Arial, Helvetica, sans-serif" line-height="4.5mm" font-size="11pt" text-align="left" >N° de Operación :<fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/nroOperacion" /></fo:inline></fo:block>
                                  </fo:table-cell>
                              </fo:table-row>
                          </fo:table-body>
                      </fo:table>

                      <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                      <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                      <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="justify"  >Por  valor  recibido,  debo  y  pagaré  a  la  orden  del  BANCO DE CREDITO E INVERSIONES, en  su  domicilio ubicado en Avenida El Golf  N° 125,  Comuna de Las  Condes,  Santiago,  o  en  cualquiera  de  sus  sucursales,  la  suma de <fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold">$</fo:inline><fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold">


                      <!--<xsl:value-of select='format-number(../OperacionCredito/montoCredito, "###.###.##0,000","decimal")'/>-->
                      <xsl:variable name="moneda" select="../OperacionCredito/moneda" />
                        <xsl:choose>

                          <xsl:when test="$moneda = 'UF'">
                             <xsl:value-of select='format-number(../OperacionCredito/montoCredito, "###.###.##0,0000","decimal")' />
                          </xsl:when>


                          <xsl:when test="$moneda = '$'">
                            <xsl:value-of select='format-number(../OperacionCredito/montoCredito, "###.###.##0","decimal")' />
                          </xsl:when>

                      </xsl:choose>



                      </fo:inline><fo:leader leader-pattern="space" leader-length="1mm"/>(<fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/montoCreditoManoEscrita" /></fo:inline> pesos m/l)  por concepto de capital y la suma de <fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold">$</fo:inline><fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select='format-number(../OperacionCredito/montoDeInteres, "###.###.##0,000","decimal")'/></fo:inline> por concepto  de  intereses que el deudor se obliga  a  pagar  el  día  <fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/mesVencimiento" /></fo:inline>de<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/anioVencimiento" /></fo:inline></fo:block>
                      <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="left" ><fo:inline font-weight="bold">Tasa de Interés</fo:inline></fo:block>
                      <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="justify"  >El interés que devenga esta obligación es de <fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select='format-number(../OperacionCredito/tasaInteres, "###,####","decimal")'/></fo:inline>%, por todo el  plazo pactado.</fo:block>
                      <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="left" ><fo:inline font-weight="bold">Amortización del Capital</fo:inline></fo:block>
                      <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="justify"  >El   capital   adeudado   se   pagará  íntegramente  el  día  <fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/mesVencimiento" /></fo:inline>de<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/anioVencimiento" /></fo:inline></fo:block>
                      <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="justify"  ><fo:inline font-weight="bold">Prórroga de  plazo  por  día inhábil.</fo:inline> Las cuotas de amortización de capital e intereses se pagarán a su vencimiento,  siempre que éste corresponda a un día hábil  bancario.  En  caso  contrario,  se  pagarán  el  día  hábil  bancario siguiente.</fo:block>
                      <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="justify"  ><fo:inline font-weight="bold">Prepagos.</fo:inline> Si el monto de  capital inicial  supera el  equivalente a UF 5.000, todo pago anticipado,  sea total o parcial,  será convenido  libremente entre el  suscriptor y el Banco.  A falta  de  acuerdo, el suscriptor podrá en todo caso  anticipar el pago, total o parcialmente, y en este último caso, siempre que  el importe  a  pagar sea  igual o  superior al  20 % del  capital de  la obligación  adeudada,  pagando  además los intereses estipulados devengados y no pagados a la fecha  del prepago,  calculados sobre el saldo  insoluto, más los  intereses  estipulados  en este instrumento, calculados sobre el capital prepagado desde la fecha  del prepago hasta el vencimiento del  plazo pactado.</fo:block>
                      <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="justify"  >Si  el  monto  de capital  inicial  no  supera  el equivalente a UF 5.000, al capital  prepagado deberán sumársele los intereses  calculados hasta la fecha del  prepago y  la comisión de  prepago máxima  que el articulo  10 de la Ley 18.010 permite pactar.</fo:block>
                      <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="justify"  ><fo:inline font-weight="bold">Exigibilidad anticipada.</fo:inline> El no pago oportuno de una  cualquiera de las cuotas de capital y/o  de interés comprendidos  en esta  obligación, dará derecho al acreedor a hacer  exigible de inmediato  y anticipadamente el monto total del saldo  insoluto  adeudado  a  esa  fecha,  el que desde  esa misma  fecha  se considerará de plazo vencido y devengará en favor del acreedor o de quien sus derechos  represente, el interés máximo convencional que rija durante la mora o simple retardo.</fo:block>
                      <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="justify"  >Se deja expresamente establecido que  el ejercicio de este derecho constituye una  sanción  al  suscriptor  por el no  pago de  la deuda e importa una mera facultad  establecida en  beneficio exclusivo  del acreedor, que no altera en caso alguno la fecha de vencimiento del pagaré originalmente pactada, ni a la exigibilidad de las acciones cambiarias y ejecutivas derivadas de éste.</fo:block>
                      <fo:block ><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
		      <fo:block font-family="Arial, Helvetica, sans-serif" line-height="4.5mm" font-size="11pt" text-align="center" >Página 1 de 3</fo:block>
                </fo:flow>
          </xsl:when>
          <!--   AQUI TERMINA EL TEMPLATE   docpg23a  -->


          <!--   AQUI COMIENZA EL TEMPLATE   docpg23b  -->
          <xsl:when test="template = 'docpg23b'">
                <fo:flow flow-name="xsl-region-body">
              <fo:table border-collapse="collapse">
              <fo:table-column column-width="50mm" />
              <fo:table-column column-width="50mm" />
              <fo:table-body>
                  <fo:table-row>
                        <fo:table-cell text-align="left">
                                <fo:block >
                                  <fo:external-graphic height="12mm" width="25mm" vertical-align="middle">
                                    <xsl:attribute name="src">
                                    <xsl:value-of select="../OperacionCredito/logoBciSomosDiferentes"/>
                                    </xsl:attribute>
                                  </fo:external-graphic>
                                </fo:block>
                        </fo:table-cell>
                        <fo:table-cell >
                                <fo:block >
                                </fo:block>
                        </fo:table-cell>
                  </fo:table-row>
              </fo:table-body>
              </fo:table>
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block font-family="Arial, Helvetica, sans-serif" line-height="4.5mm" font-size="11pt" text-align="left" >Nº Operación<fo:leader leader-pattern="space" leader-length="18.5mm"/>:<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/nroOperacion" /></fo:inline></fo:block>
              <fo:block font-family="Arial, Helvetica, sans-serif" line-height="4.5mm" font-size="11pt" text-align="left" >Fecha de suscripción<fo:leader leader-pattern="space" leader-length="6.8mm"/>:<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="substring(../OperacionCredito/fechaSuscripcion,0,4)" /></fo:inline>
              <xsl:variable name="mes" select="substring(../OperacionCredito/fechaSuscripcion,4,2)" />
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
              <fo:inline font-weight="bold"><xsl:value-of select="substring(../OperacionCredito/fechaSuscripcion,6,5)" /></fo:inline>
              </fo:block>
              <fo:block font-family="Arial, Helvetica, sans-serif" line-height="4.5mm" font-size="11pt" text-align="left" >Monto<fo:leader leader-pattern="space" leader-length="29.6mm"/>:<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/moneda" /></fo:inline><fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold">

              <xsl:variable name="moneda" select="../OperacionCredito/moneda" />
                <xsl:choose>
                  <xsl:when test="$moneda = 'UF'">
                     <xsl:value-of select='format-number(../OperacionCredito/montoCredito, "###.###.##0,0000","decimal")' />
                  </xsl:when>

                  <xsl:when test="$moneda = '$'">
                    <xsl:value-of select='format-number(../OperacionCredito/montoCredito, "###.###.##0","decimal")' />
                  </xsl:when>
              </xsl:choose>

              </fo:inline></fo:block>
              <fo:block font-family="Arial, Helvetica, sans-serif" line-height="4.5mm" font-size="11pt" text-align="left" >Deudor<fo:leader leader-pattern="space" leader-length="28mm"/>:<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/nombreCompletoCliente" /></fo:inline></fo:block>
              <fo:block font-family="Arial, Helvetica, sans-serif" line-height="4.5mm" font-size="11pt" text-align="left" >RUT<fo:leader leader-pattern="space" leader-length="32.2mm"/>:<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select='format-number(../OperacionCredito/rutCliente, "###.###.##0","rut")' /></fo:inline>-<fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/dvCliente" /></fo:inline></fo:block>
              
                      <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                      <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                      <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="justify"  >El Banco podrá hacer exigible de inmediato el monto total adeudado, expirando todos los  plazos  pendientes por el sólo  hecho de constituirse en mora o de habérsele  protestado  al deudor  o al aval,  por  falta  de pago,  cualquier documento,  pagaré,  letra de cambio o  cheque,  aceptado, suscrito, girado o avalado por él.</fo:block>
                      <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="justify"  >Se  deja  expresamente  establecido  que corresponderá al deudor acreditar el pago de las cuotas en que se divide el presente instrumento, en caso de cobro judicial.</fo:block>
                      <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="justify"  ><fo:inline font-weight="bold">Indivisibilidad  y solidaridad.</fo:inline>  Las obligaciones  que emanen de  este pagaré serán  solidarias para el suscriptor, avalista(s) y demás obligados al pago y serán  indivisibles  para  sus herederos.  Además,  el suscriptor  pagará los gastos, impuestos y costas personales y procesales que correspondan.</fo:block>
                      <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="justify"  ><fo:inline font-weight="bold">Mandato para prórrogas.</fo:inline> El  suscriptor  faculta  al Banco de Crédito  e  Inversiones para que en su nombre y representación otorgue, previa autorización expresa de éste, una o más prórrogas que establezcan nuevas condiciones, tasas de interés y fechas de vencimiento. </fo:block>
                      <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="justify"  ><fo:inline font-weight="bold">Domicilio  y  competencia.</fo:inline> Para todos los efectos legales, judiciales o extrajudiciales derivados de este pagaré, las partes acuerdan someterse  a los Tribunales de Justicia con asiento en la comuna y ciudad del domicilio del suscriptor,  lo que  será obligatorio tanto para el suscriptor como para sus avales, endosantes u obligados por garantía.</fo:block>
                      <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="justify"  >Sin perjuicio declaro, que mi domicilio y residencia son los consignados en  este título, comprometiéndome a dar pronto aviso por escrito al Banco, en el evento que realice cualquier cambio de domicilio en el futuro.</fo:block>
                      <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                      <fo:block font-family="Arial, Helvetica, sans-serif" line-height="4.5mm" font-size="11pt" text-align="justify"  ><fo:inline font-weight="bold">Impuesto de timbres y estampillas.</fo:inline> El impuesto de timbres y estampillas que grava  este  documento se paga por ingresos mensuales de dinero en Tesorería, según Decreto Ley Nº 3475.</fo:block>


                    <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                    <fo:block font-family="Arial, Helvetica, sans-serif" line-height="4.5mm" font-size="11pt" text-align="left" >
                    En<fo:leader leader-pattern="space" leader-length="1mm"/>
                    <fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/ciudadContrato" /></fo:inline>,
                    <fo:leader leader-pattern="space" leader-length="1mm"/>a<fo:leader leader-pattern="space" leader-length="1mm"/>
                    <fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/dia" /></fo:inline>

                    <!--<fo:leader leader-pattern="space" leader-length="1mm"/>de<fo:leader leader-pattern="space" leader-length="1mm"/>
                    <fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/mes" /></fo:inline>-->
                    <fo:leader leader-pattern="space" leader-length="1mm"/>de<fo:leader leader-pattern="space" leader-length="1mm"/>
                    <xsl:variable name="mes" select="../OperacionCredito/mes" />
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


                    <fo:leader leader-pattern="space" leader-length="1mm"/>de<fo:leader leader-pattern="space" leader-length="1mm"/>
                    <fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/anio" /></fo:inline>
                    </fo:block>



                      <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                      <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                      <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                      <fo:block font-family="Arial, Helvetica, sans-serif" line-height="4.5mm" font-size="11pt" text-align="center" ><fo:leader leader-length="6cm" leader-pattern="rule" rule-style="solid" rule-thickness="0.4mm" color="black"/></fo:block>
                      <fo:block font-family="Arial, Helvetica, sans-serif" line-height="4.5mm" font-size="11pt" text-align="center" >Firma del Suscriptor</fo:block>
                      <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                      <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>

                        <!-- AQUI COMIENZA LOS DATOS  DEL SUSCRIPTOR NOMBRE O RAZON SOCIAL -->
                         <xsl:apply-templates select="../OperacionCredito"/>
                        <!-- AQUI TERMINA LOS DATOS  DEL SUSCRIPTOR NOMBRE O RAZON SOCIAL -->

                        <!-- AQUI COMIENZA LOS DATOS  DEL SUSCRIPTOR DOMICILIO, COMUNA Y CIUDAD -->
                         <xsl:apply-templates select="../DireccionDeudorBci"/>
                        <!-- AQUI TERMINAN LOS DATOS  DEL SUSCRIPTOR DOMICILIO, COMUNA Y CIUDAD -->
                        <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                        <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
		      <fo:block font-family="Arial, Helvetica, sans-serif" line-height="4.5mm" font-size="11pt" text-align="center" >Página 2 de 3</fo:block>
                </fo:flow>
          </xsl:when>
          <!--   AQUI TERMINA EL TEMPLATE   docpg23b  -->



          <!--   AQUI COMIENZA EL TEMPLATE   docpg25a  -->
          <xsl:when test="template = 'docpg25a'">
                <fo:flow flow-name="xsl-region-body">
              <fo:table border-collapse="collapse">
              <fo:table-column column-width="50mm" />
              <fo:table-column column-width="50mm" />
              <fo:table-body>
                  <fo:table-row>
                        <fo:table-cell text-align="left">
                                <fo:block >
                                  <fo:external-graphic height="12mm" width="25mm" vertical-align="middle">
                                    <xsl:attribute name="src">
                                    <xsl:value-of select="../OperacionCredito/logoBciSomosDiferentes"/>
                                    </xsl:attribute>
                                  </fo:external-graphic>
                                </fo:block>
                        </fo:table-cell>
                        <fo:table-cell >
                                <fo:block >
                                </fo:block>
                        </fo:table-cell>
                  </fo:table-row>
              </fo:table-body>
              </fo:table>
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                      <fo:block font-family="Arial, Helvetica, sans-serif" line-height="4.5mm" font-size="11pt" text-align="center" ><fo:inline font-weight="bold">PAGARE (Sin Protesto) $</fo:inline></fo:block>
                      <fo:block font-family="Arial, Helvetica, sans-serif" line-height="4.5mm" font-size="11pt" text-align="center" ><fo:inline font-weight="bold">CUOTA FIJA TASA FIJA $ (Balloon)</fo:inline></fo:block>
                      <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                      <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                      <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                      <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>


                      <fo:table border-collapse="collapse" font-family="Arial, Helvetica, sans-serif" font-size="11pt" text-align="left">
                          <fo:table-column column-width="50%"/>
                          <fo:table-column column-width="50%"/>
                          <fo:table-body>
                              <fo:table-row>
                                  <fo:table-cell > _
                                      <fo:block font-family="Arial, Helvetica, sans-serif" line-height="4.5mm" font-size="11pt" text-align="left" >N° de Operación :<fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/nroOperacion" /></fo:inline></fo:block>
                                  </fo:table-cell>
                              </fo:table-row>
                          </fo:table-body>
                      </fo:table>


                      <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                      <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                      <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="justify"  >Por  valor  recibido,  debo  y  pagaré  a  la  orden  del  BANCO DE CREDITO E INVERSIONES, en  su  domicilio ubicado en Avenida El Golf  N° 125,  Comuna de Las  Condes,  Santiago,  o  en  cualquiera  de  sus  sucursales,  la  suma de <fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold">$</fo:inline><fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold">
                            <xsl:value-of select='format-number(../OperacionCredito/montoCredito, "###.###.##0","decimal")' />
                      </fo:inline><fo:leader leader-pattern="space" leader-length="1mm"/>(<fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/montoCreditoManoEscrita" /></fo:inline> pesos m/l)</fo:block>
                      <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="left" ><fo:inline font-weight="bold">Tasa de Interés</fo:inline></fo:block>
                      <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="justify"  >El capital adeudado  devengará a partir de esta fecha una tasa de interés del <fo:inline font-weight="bold"><xsl:value-of select='format-number(../OperacionCredito/tasaInteres, "###,####","decimal")'/></fo:inline>% mensual vencido durante todo el plazo pactado.</fo:block>
                      <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="left" ><fo:inline font-weight="bold">Amortización del Capital</fo:inline></fo:block>
                      <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="justify"  >El capital de esta obligación lo pagare en  <fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="count(../CalendarioPago)" /></fo:inline><fo:leader leader-pattern="space" leader-length="1mm"/>cuotas mensuales, de las cuales <fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="count(../CalendarioPago)-1" /></fo:inline> cuotas serán iguales y sucesivas de <fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold">$</fo:inline> <fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select='format-number(../OperacionCredito/montoCuota, "###.###.##0","decimal")' /></fo:inline> (<fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/montoCuotaManoEscrita" /><fo:leader leader-pattern="space" leader-length="1mm"/></fo:inline>pesos m/l) cada una y una última cuota será de <fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold">$</fo:inline><fo:inline font-weight="bold"><xsl:value-of select='format-number(../OperacionCredito/montoUltimaCuota, "###.###.##0","decimal")' /></fo:inline><fo:leader leader-pattern="space" leader-length="1mm"/>(<fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/montoUltimaCuotaManoEscrita" /></fo:inline> pesos m/l), la primera de ellas con vencimiento el día <fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/fechaPrimerVctoDD" /></fo:inline><fo:leader leader-pattern="space" leader-length="1mm"/>de<fo:leader leader-pattern="space" leader-length="1mm"/>

                      <!--<fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/fechaPrimerVctoMM" /></fo:inline>-->
                      <xsl:variable name="mes" select="../OperacionCredito/fechaPrimerVctoMM" />
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


                      <fo:leader leader-pattern="space" leader-length="1mm"/>de<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/fechaPrimerVctoYYYY" /></fo:inline> y las restantes los días<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/diaVencimiento" /></fo:inline><fo:leader leader-pattern="space" leader-length="1mm"/>de los meses siguientes, hasta la última cuota que se  pagará  el  día <fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/fechaUltimoVctoDD" /></fo:inline><fo:leader leader-pattern="space" leader-length="1mm"/>de<fo:leader leader-pattern="space" leader-length="1mm"/>

                      <!--<fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/fechaUltimoVctoMM" /></fo:inline>-->
                        <xsl:variable name="mes" select="../OperacionCredito/fechaUltimoVctoMM" />
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


                      <fo:leader leader-pattern="space" leader-length="1mm"/>del año<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/fechaUltimoVctoYYYY" /></fo:inline></fo:block>
                      <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="left" ><fo:inline font-weight="bold">Intereses</fo:inline></fo:block>
                      <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="justify"  >Por su parte, los intereses correspondientes se pagarán  en cuotas sucesivas, por el monto total devengado en el respectivo período,la primera de ellas con vencimiento  el  día <fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/fechaPrimerVctoDD" /></fo:inline><fo:leader leader-pattern="space" leader-length="1mm"/>de<fo:leader leader-pattern="space" leader-length="1mm"/>

                      <!--<fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/fechaPrimerVctoMM" /></fo:inline>-->
                      <xsl:variable name="mes" select="../OperacionCredito/fechaPrimerVctoMM" />
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

                      <fo:leader leader-pattern="space" leader-length="1mm"/>de<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/fechaPrimerVctoYYYY" /></fo:inline>  y  las restantes conjuntamente con las cuotas de amortización de capital.</fo:block>
                      <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="justify"  ><fo:inline font-weight="bold">Prórroga de  plazo  por  día inhábil.</fo:inline> Las cuotas de amortización de capital e intereses se pagarán a su vencimiento,  siempre que éste corresponda a un día hábil  bancario.  En  caso  contrario,  se  pagarán  el  día  hábil  bancario siguiente.</fo:block>
                      <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="justify"  ><fo:inline font-weight="bold">Prepagos.</fo:inline> Si el monto de  capital inicial  supera el  equivalente a UF 5.000, todo pago anticipado,  sea total o parcial,  será convenido  libremente entre el  suscriptor y el Banco.  A falta  de  acuerdo, el suscriptor podrá en todo caso  anticipar el pago, total o parcialmente, y en este último caso, siempre que  el importe  a  pagar sea  igual o  superior al  20 % del  capital de  la obligación  adeudada,  pagando  además los intereses estipulados devengados y no pagados a la fecha  del prepago,  calculados sobre el saldo  insoluto, más los  intereses  estipulados  en este instrumento, calculados sobre el capital prepagado desde la fecha  del prepago hasta el vencimiento del  plazo pactado.</fo:block>
                      <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="justify"  >Si  el  monto  de capital  inicial  no  supera  el equivalente a UF 5.000, al capital  prepagado deberán sumársele los intereses  calculados hasta la fecha del  prepago y  la comisión de  prepago máxima  que el articulo  10 de la Ley 18.010 permite pactar.</fo:block>
                      <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="justify"  ><fo:inline font-weight="bold">Exigibilidad anticipada.</fo:inline> El no pago oportuno de una  cualquiera de las cuotas de capital y/o  de interés comprendidos  en esta  obligación, dará derecho al acreedor a hacer  exigible de inmediato  y anticipadamente el monto total del saldo  insoluto  adeudado  a  esa  fecha,  el que desde  esa misma  fecha  se considerará de plazo vencido y devengará en favor del acreedor o de quien sus derechos  represente, el interés máximo convencional que rija durante la mora o simple retardo.</fo:block>
                      <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="justify"  >Se deja expresamente establecido que  el ejercicio de este derecho constituye una  sanción  al  suscriptor  por el no  pago de  la deuda e importa una mera facultad  establecida en  beneficio exclusivo  del acreedor, que no altera en caso alguno la fecha de vencimiento del pagaré originalmente pactada, ni a la exigibilidad de las acciones cambiarias y ejecutivas derivadas de éste.</fo:block>
                      <fo:block ><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                      <fo:block font-family="Arial, Helvetica, sans-serif" line-height="4.5mm" font-size="11pt" text-align="center" >Página 1 de 3</fo:block>
                </fo:flow>
          </xsl:when>
          <!--   AQUI TERMINA EL TEMPLATE   docpg25a  -->


          <!--   AQUI COMIENZA EL TEMPLATE   docpg25b  -->
          <xsl:when test="template = 'docpg25b'">
                <fo:flow flow-name="xsl-region-body">
              <fo:table border-collapse="collapse">
              <fo:table-column column-width="50mm" />
              <fo:table-column column-width="50mm" />
              <fo:table-body>
                  <fo:table-row>
                        <fo:table-cell text-align="left">
                                <fo:block >
                                  <fo:external-graphic height="12mm" width="25mm" vertical-align="middle">
                                    <xsl:attribute name="src">
                                    <xsl:value-of select="../OperacionCredito/logoBciSomosDiferentes"/>
                                    </xsl:attribute>
                                  </fo:external-graphic>
                                </fo:block>
                        </fo:table-cell>
                        <fo:table-cell >
                                <fo:block >
                                </fo:block>
                        </fo:table-cell>
                  </fo:table-row>
              </fo:table-body>
              </fo:table>
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block font-family="Arial, Helvetica, sans-serif" line-height="4.5mm" font-size="11pt" text-align="left" >Nº Operación<fo:leader leader-pattern="space" leader-length="18.5mm"/>:<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/nroOperacion" /></fo:inline></fo:block>
              <fo:block font-family="Arial, Helvetica, sans-serif" line-height="4.5mm" font-size="11pt" text-align="left" >Fecha de suscripción<fo:leader leader-pattern="space" leader-length="6.8mm"/>:<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="substring(../OperacionCredito/fechaSuscripcion,0,4)" /></fo:inline>
              <xsl:variable name="mes" select="substring(../OperacionCredito/fechaSuscripcion,4,2)" />
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
              <fo:inline font-weight="bold"><xsl:value-of select="substring(../OperacionCredito/fechaSuscripcion,6,5)" /></fo:inline>
              </fo:block>
              <fo:block font-family="Arial, Helvetica, sans-serif" line-height="4.5mm" font-size="11pt" text-align="left" >Monto<fo:leader leader-pattern="space" leader-length="29.6mm"/>:<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/moneda" /></fo:inline><fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold">

              <xsl:variable name="moneda" select="../OperacionCredito/moneda" />
                <xsl:choose>
                  <xsl:when test="$moneda = 'UF'">
                     <xsl:value-of select='format-number(../OperacionCredito/montoCredito, "###.###.##0,0000","decimal")' />
                  </xsl:when>

                  <xsl:when test="$moneda = '$'">
                    <xsl:value-of select='format-number(../OperacionCredito/montoCredito, "###.###.##0","decimal")' />
                  </xsl:when>
              </xsl:choose>

              </fo:inline></fo:block>
              <fo:block font-family="Arial, Helvetica, sans-serif" line-height="4.5mm" font-size="11pt" text-align="left" >Deudor<fo:leader leader-pattern="space" leader-length="28mm"/>:<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/nombreCompletoCliente" /></fo:inline></fo:block>
              <fo:block font-family="Arial, Helvetica, sans-serif" line-height="4.5mm" font-size="11pt" text-align="left" >RUT<fo:leader leader-pattern="space" leader-length="32.2mm"/>:<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select='format-number(../OperacionCredito/rutCliente, "###.###.##0","rut")' /></fo:inline>-<fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/dvCliente" /></fo:inline></fo:block>
              
                      <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                      <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                      <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="justify"  >El Banco podrá hacer exigible de inmediato el monto total adeudado, expirando todos los  plazos  pendientes por el sólo  hecho de constituirse en mora o de habérsele  protestado  al deudor  o al aval,  por  falta  de pago,  cualquier documento,  pagaré,  letra de cambio o  cheque,  aceptado, suscrito, girado o avalado por él.</fo:block>
                      <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="justify"  >Se  deja  expresamente  establecido  que corresponderá al deudor acreditar el pago de las cuotas en que se divide el presente instrumento, en caso de cobro judicial.</fo:block>
                      <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="justify"  ><fo:inline font-weight="bold">Indivisibilidad  y solidaridad.</fo:inline>  Las obligaciones  que emanen de  este pagaré serán  solidarias para el suscriptor, avalista(s) y demás obligados al pago y serán  indivisibles  para  sus herederos.  Además,  el suscriptor  pagará los gastos, impuestos y costas personales y procesales que correspondan.</fo:block>
                      <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="justify"  ><fo:inline font-weight="bold">Mandato para prórrogas.</fo:inline> El  suscriptor  faculta  al Banco de Crédito  e  Inversiones para que en su nombre y representación otorgue, previa autorización expresa de éste, una o más prórrogas que establezcan nuevas condiciones, tasas de interés y fechas de vencimiento. </fo:block>
                      <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="justify"  ><fo:inline font-weight="bold">Domicilio  y  competencia.</fo:inline> Para todos los efectos legales, judiciales o extrajudiciales derivados de este pagaré, las partes acuerdan someterse  a los Tribunales de Justicia con asiento en la comuna y ciudad del domicilio del suscriptor,  lo que  será obligatorio tanto para el suscriptor como para sus avales, endosantes u obligados por garantía.</fo:block>
                      <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="justify"  >Sin perjuicio declaro, que mi domicilio y residencia son los consignados en  este título, comprometiéndome a dar pronto aviso por escrito al Banco, en el evento que realice cualquier cambio de domicilio en el futuro.</fo:block>
                      <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                      <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="justify"  ><fo:inline font-weight="bold">Impuesto de timbres y estampillas.</fo:inline> El impuesto de timbres y estampillas que grava  este  documento se paga por ingresos mensuales de dinero en Tesorería, según Decreto Ley Nº 3475.</fo:block>



                     <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                     <fo:block font-family="Arial, Helvetica, sans-serif" line-height="4.5mm" font-size="11pt" text-align="left" >
                     En<fo:leader leader-pattern="space" leader-length="1mm"/>
                     <fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/ciudadContrato" /></fo:inline>,
                     <fo:leader leader-pattern="space" leader-length="1mm"/>a<fo:leader leader-pattern="space" leader-length="1mm"/>
                     <fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/dia" /></fo:inline>

                     <!--<fo:leader leader-pattern="space" leader-length="1mm"/>de<fo:leader leader-pattern="space" leader-length="1mm"/>
                     <fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/mes" /></fo:inline>-->
                     <fo:leader leader-pattern="space" leader-length="1mm"/>de<fo:leader leader-pattern="space" leader-length="1mm"/>
                     <xsl:variable name="mes" select="../OperacionCredito/mes" />
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


                     <fo:leader leader-pattern="space" leader-length="1mm"/>de<fo:leader leader-pattern="space" leader-length="1mm"/>
                     <fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/anio" /></fo:inline>
                     </fo:block>

                      <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                      <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                      <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                      <fo:block font-family="Arial, Helvetica, sans-serif" line-height="4.5mm" font-size="11pt" text-align="center" ><fo:leader leader-length="6cm" leader-pattern="rule" rule-style="solid" rule-thickness="0.4mm" color="black"/></fo:block>
                      <fo:block font-family="Arial, Helvetica, sans-serif" line-height="4.5mm" font-size="11pt" text-align="center" >Firma del Suscriptor</fo:block>
                      <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                      <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>

                        <!-- AQUI COMIENZA LOS DATOS  DEL SUSCRIPTOR NOMBRE O RAZON SOCIAL -->
                         <xsl:apply-templates select="../OperacionCredito"/>
                        <!-- AQUI TERMINA LOS DATOS  DEL SUSCRIPTOR NOMBRE O RAZON SOCIAL -->

                        <!-- AQUI COMIENZA LOS DATOS  DEL SUSCRIPTOR DOMICILIO, COMUNA Y CIUDAD -->
                         <xsl:apply-templates select="../DireccionDeudorBci"/>
                        <!-- AQUI TERMINAN LOS DATOS  DEL SUSCRIPTOR DOMICILIO, COMUNA Y CIUDAD -->
                      <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                      <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                      <fo:block font-family="Arial, Helvetica, sans-serif" line-height="4.5mm" font-size="11pt" text-align="center" >Página 2 de 3</fo:block> 
                </fo:flow>
          </xsl:when>
          <!--   AQUI TERMINA EL TEMPLATE   docpg25b  -->


          <!--   AQUI COMIENZA EL TEMPLATE   docpg26a  -->
          <xsl:when test="template = 'docpg26a'">
                <fo:flow flow-name="xsl-region-body">
              <fo:table border-collapse="collapse">
              <fo:table-column column-width="50mm" />
              <fo:table-column column-width="50mm" />
              <fo:table-body>
                  <fo:table-row>
                        <fo:table-cell text-align="left">
                                <fo:block >
                                  <fo:external-graphic height="12mm" width="25mm" vertical-align="middle">
                                    <xsl:attribute name="src">
                                    <xsl:value-of select="../OperacionCredito/logoBciSomosDiferentes"/>
                                    </xsl:attribute>
                                  </fo:external-graphic>
                                </fo:block>
                        </fo:table-cell>
                        <fo:table-cell >
                                <fo:block >
                                </fo:block>
                        </fo:table-cell>
                  </fo:table-row>
              </fo:table-body>
              </fo:table>
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                      <fo:block font-family="Arial, Helvetica, sans-serif" line-height="4.5mm" font-size="11pt" text-align="center" ><fo:inline font-weight="bold">PAGARÉ (Sin Protesto)</fo:inline></fo:block>
                      <fo:block font-family="Arial, Helvetica, sans-serif" line-height="4.5mm" font-size="11pt" text-align="center" ><fo:inline font-weight="bold">UN VENCIMIENTO UF INTERES MENSUAL</fo:inline></fo:block>
                      <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                      <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                      <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                      <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                      <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>

                      <fo:table border-collapse="collapse" font-family="Arial, Helvetica, sans-serif" font-size="11pt" text-align="left">
                          <fo:table-column column-width="50%"/>
                          <fo:table-column column-width="50%"/>
                          <fo:table-body>
                              <fo:table-row>
                                  <fo:table-cell > _
                                      <fo:block font-family="Arial, Helvetica, sans-serif" line-height="4.5mm" font-size="11pt" text-align="left" >N° de Operación :<fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/nroOperacion" /></fo:inline></fo:block>
                                  </fo:table-cell>
                              </fo:table-row>
                          </fo:table-body>
                      </fo:table>


                      <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                      <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="justify"  >Por valor recibido,  debo  y  pagaré  a  la  orden  del  BANCO  DE  CREDITO E INVERSIONES, en su domicilio ubicado en Avenida El Golf N° 125, Comuna de Las Condes,  Santiago,   o   en   cualquiera   de  sus  sucursales,  la  suma  de <fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold">UF</fo:inline><fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold">

                      <!--<xsl:value-of select='format-number(../OperacionCredito/montoCredito, "###.###.##0,000","decimal")' />-->
                      <xsl:variable name="moneda" select="../OperacionCredito/moneda" />
                        <xsl:choose>

                          <xsl:when test="$moneda = 'UF'">
                             <xsl:value-of select='format-number(../OperacionCredito/montoCredito, "###.###.##0,0000","decimal")' />
                          </xsl:when>


                          <xsl:when test="$moneda = '$'">
                            <xsl:value-of select='format-number(../OperacionCredito/montoCredito, "###.###.##0","decimal")' />
                          </xsl:when>

                      </xsl:choose>


                      </fo:inline> <fo:leader leader-pattern="space" leader-length="1mm"/>(<fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/montoCreditoManoEscrita" /></fo:inline><fo:leader leader-pattern="space" leader-length="1mm"/>Unidades de Fomento), equivalentes a esta fecha a la suma de <fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold">$</fo:inline><fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold">

                      <!--<xsl:value-of select='format-number(../OperacionCredito/montoCredito, "###.###.##0,000","decimal")' />-->
                      <xsl:variable name="moneda" select="../OperacionCredito/moneda" />
                        <xsl:choose>

                          <xsl:when test="$moneda = 'UF'">
                             <xsl:value-of select='format-number(../OperacionCredito/montoCredito, "###.###.##0,0000","decimal")' />
                          </xsl:when>


                          <xsl:when test="$moneda = '$'">
                            <xsl:value-of select='format-number(../OperacionCredito/montoCredito, "###.###.##0","decimal")' />
                          </xsl:when>

                      </xsl:choose>


                      </fo:inline><fo:leader leader-pattern="space" leader-length="1mm"/>(<fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/montoCreditoManoEscrita" /></fo:inline> pesos m/l).</fo:block>
                      <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="left" ><fo:inline font-weight="bold">Tasa de Interés</fo:inline></fo:block>
                      <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="justify"  >El capital adeudado devengará a partir de esta fecha una tasa de  interés del <fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select='format-number(../OperacionCredito/tasaInteres, "###,####","decimal")'/></fo:inline>% anual vencido durante todo el plazo pactado.</fo:block>
                      <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="left" ><fo:inline font-weight="bold">Amortización del Capital</fo:inline></fo:block>
                      <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="justify"  >El capital adeudado se pagará íntegramente el día <fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/dia" /></fo:inline><fo:leader leader-pattern="space" leader-length="1mm"/>de<fo:leader leader-pattern="space" leader-length="1mm"/>

                      <xsl:variable name="mes" select="../OperacionCredito/mes" />
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

                      <fo:leader leader-pattern="space" leader-length="1mm"/>de<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/anio" /></fo:inline></fo:block>
                      <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="left" ><fo:inline font-weight="bold">Intereses</fo:inline></fo:block>
                      <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="justify"  >Por  su  parte, los intereses  se  pagarán  en  <fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="count(../CalendarioPago)" /></fo:inline>  cuotas  mensuales y sucesivas,  la  primera  de  ellas  con  vencimiento  el  día  <fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/fechaPrimerVctoDD" /></fo:inline><fo:leader leader-pattern="space" leader-length="1mm"/>de<fo:leader leader-pattern="space" leader-length="1mm"/>

                      <!--<fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/fechaPrimerVctoMM" /></fo:inline>-->
                      <xsl:variable name="mes" select="../OperacionCredito/fechaPrimerVctoMM" />
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

                      <fo:leader leader-pattern="space" leader-length="1mm"/>de<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/fechaPrimerVctoYYYY" /></fo:inline> y las  restantes los días <fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/fechaPrimerVctoDD" /></fo:inline> de los meses siguientes, hasta  la ultima  cuota  que  vencerá  el  día <fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/fechaUltimoVctoDD" /></fo:inline><fo:leader leader-pattern="space" leader-length="1mm"/>de<fo:leader leader-pattern="space" leader-length="1mm"/>

                      <!--<fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/fechaUltimoVctoMM" /></fo:inline>-->
                        <xsl:variable name="mes" select="../OperacionCredito/fechaUltimoVctoMM" />
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

                      <fo:leader leader-pattern="space" leader-length="1mm"/>de<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/fechaUltimoVctoYYYY" /></fo:inline></fo:block>
                      <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                      <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="justify"  ><fo:inline font-weight="bold">Prórroga de plazo por día inhábil.</fo:inline> Las cuotas  de  amortización  de capital e intereses se pagarán a su vencimiento, siempre que éste corresponda a  un día hábil bancario. En caso contrario,se pagarán el día hábil bancario siguiente.</fo:block>
                      <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="justify"  ><fo:inline font-weight="bold">Equivalencia.</fo:inline> Las sumas adeudas,  tanto  en  lo  referente  a  capital como a intereses, se calcularán por su equivalente en moneda legal chilena al día de pago efectivo.</fo:block>
                      <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="justify"  ><fo:inline font-weight="bold">Prepagos.</fo:inline> Si el monto de capital inicial supera el  equivalente  a  UF 5.000, todo pago anticipado, sea total o parcial, será convenido libremente entre el suscriptor y el Banco. A falta de acuerdo,  el  suscriptor podrá en todo caso anticipar el pago, total o parcialmente, y en este último caso,  siempre  que el importe a pagar sea igual o superior al  20 % del capital de la obligación adeudada, pagando además los intereses estipulados  devengados y no pagados a la fecha del prepago,  calculados sobre el saldo insoluto,  más los intereses estipulados en este instrumento,  calculados sobre el capital prepagado desde la fecha del prepago hasta el vencimiento del plazo pactado.  Si el  monto de capital inicial no supera el  equivalente a  UF  5.000,  al capital prepagado deberán sumársele los intereses  calculados  hasta la  fecha del prepago y la comisión de prepago máxima que el articulo 10 de la Ley 18.010 permite pactar.</fo:block>
                      <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="justify"  ><fo:inline font-weight="bold">Exigibilidad anticipada.</fo:inline>  El no pago oportuno de una cualquiera de las cuotas de capital y/o de interés comprendidos en esta obligación,  dará  derecho  al acreedor a hacer exigible de inmediato y anticipadamente el  monto  total del saldo insoluto adeudado a  esa  fecha,  el  que  desde  esa  misma  fecha  se considerará de plazo vencido y devengará en favor del acreedor o de quien sus derechos represente, el interés máximo convencional que  rija durante la mora o simple retardo.</fo:block>
                      <fo:block ><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                      <fo:block font-family="Arial, Helvetica, sans-serif" line-height="4.5mm" font-size="11pt" text-align="center" >Página 1 de 3</fo:block>
                </fo:flow>
          </xsl:when>
          <!--   AQUI TERMINA EL TEMPLATE   docpg26a  -->


          <!--   AQUI COMIENZA EL TEMPLATE   docpg26b  -->
          <xsl:when test="template = 'docpg26b'">
                <fo:flow flow-name="xsl-region-body">
              <fo:table border-collapse="collapse">
              <fo:table-column column-width="50mm" />
              <fo:table-column column-width="50mm" />
              <fo:table-body>
                  <fo:table-row>
                        <fo:table-cell text-align="left">
                                <fo:block >
                                  <fo:external-graphic height="12mm" width="25mm" vertical-align="middle">
                                    <xsl:attribute name="src">
                                    <xsl:value-of select="../OperacionCredito/logoBciSomosDiferentes"/>
                                    </xsl:attribute>
                                  </fo:external-graphic>
                                </fo:block>
                        </fo:table-cell>
                        <fo:table-cell >
                                <fo:block >
                                </fo:block>
                        </fo:table-cell>
                  </fo:table-row>
              </fo:table-body>
              </fo:table>
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block font-family="Arial, Helvetica, sans-serif" line-height="4.5mm" font-size="11pt" text-align="left" >Nº Operación<fo:leader leader-pattern="space" leader-length="17.2mm"/>:<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/nroOperacion" /></fo:inline></fo:block>
              <fo:block font-family="Arial, Helvetica, sans-serif" line-height="4.5mm" font-size="11pt" text-align="left" >Fecha de suscripción<fo:leader leader-pattern="space" leader-length="3.7mm"/>:<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="substring(../OperacionCredito/fechaSuscripcion,0,4)" /></fo:inline>
              <xsl:variable name="mes" select="substring(../OperacionCredito/fechaSuscripcion,4,2)" />
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
              <fo:inline font-weight="bold"><xsl:value-of select="substring(../OperacionCredito/fechaSuscripcion,6,5)" /></fo:inline>
              </fo:block>


              <fo:block font-family="Arial, Helvetica, sans-serif" line-height="4.5mm" font-size="11pt" text-align="left" >Monto<fo:leader leader-pattern="space" leader-length="29.6mm"/>:<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold">UF</fo:inline><fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold">

              <!--<xsl:value-of select='format-number(../OperacionCredito/montoCredito, "###.###.##0,000","decimal")' />-->
                      <xsl:variable name="moneda" select="../OperacionCredito/moneda" />
                        <xsl:choose>

                          <xsl:when test="$moneda = 'UF'">
                             <xsl:value-of select='format-number(../OperacionCredito/montoCredito, "###.###.##0,0000","decimal")' />
                          </xsl:when>


                          <xsl:when test="$moneda = '$'">
                            <xsl:value-of select='format-number(../OperacionCredito/montoCredito, "###.###.##0","decimal")' />
                          </xsl:when>

                      </xsl:choose>


              </fo:inline></fo:block>
              <fo:block font-family="Arial, Helvetica, sans-serif" line-height="4.5mm" font-size="11pt" text-align="left" >Deudor<fo:leader leader-pattern="space" leader-length="27.6mm"/>:<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/nombreCompletoCliente" /></fo:inline></fo:block>
              <fo:block font-family="Arial, Helvetica, sans-serif" line-height="4.5mm" font-size="11pt" text-align="left" >RUT<fo:leader leader-pattern="space" leader-length="32.5mm"/>:<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select='format-number(../OperacionCredito/rutCliente, "###.###.##0","rut")' /></fo:inline>-<fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/dvCliente" /></fo:inline></fo:block>
              
                      <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                      <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                      <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="justify"  >Se deja expresamente establecido que el ejercicio de  este derecho constituye una sanción  al  suscriptor  por el  no  pago de la deuda e  importa una mera facultad establecida en beneficio  exclusivo del acreedor,  que no  altera en caso alguno la fecha de vencimiento del pagaré originalmente pactada, ni a la exigibilidad de las acciones cambiarias y ejecutivas derivadas de éste.</fo:block>
                      <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="justify"  >El Banco podrá hacer exigible de inmediato el monto total adeudado, expirando todos los plazos pendientes por el sólo hecho de  constituirse  en  mora o de habérsele protestado al deudor o  al  aval,  por  falta  de  pago,  cualquier documento,  pagaré,  letra  de  cambio  o  cheque, aceptado, suscrito, girado o avalado por él.</fo:block>
                      <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="justify"  >Se  deja  expresamente  establecido  que corresponderá al deudor acreditar el pago de las cuotas en que se divide el presente instrumento, en caso de cobro judicial.</fo:block>
                      <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="justify"  ><fo:inline font-weight="bold">Indivisibilidad y solidaridad.</fo:inline> Las obligaciones que  emanen  de  este  pagaré serán solidarias para el suscriptor,  avalista(s)  y  demás obligados al pago y serán indivisibles  para  sus  herederos. Además, el suscriptor  pagará los gastos, impuestos y costas personales y procesales que correspondan.</fo:block>
                      <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="justify"  ><fo:inline font-weight="bold">Mandato para prórrogas.</fo:inline> El  suscriptor  faculta  al Banco de Crédito  e  Inversiones para que en su nombre y representación otorgue, previa autorización expresa de éste, una o más prórrogas que establezcan nuevas condiciones, tasas de interés y fechas de vencimiento. </fo:block>
                      <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="justify"  ><fo:inline font-weight="bold">Domicilio y  competencia.</fo:inline>  Para todos los efectos legales, judiciales o extrajudiciales derivados de este pagaré, las partes acuerdan someterse  a los Tribunales de Justicia con asiento en la comuna y ciudad del domicilio del suscriptor,  lo que  será obligatorio tanto para el suscriptor como para sus avales, endosantes u obligados por garantía.  Sin perjuicio declaro, que mi domicilio y residencia son los consignados en  este título, comprometiéndome a dar pronto aviso por escrito al Banco, en el evento que realice cualquier cambio de domicilio en el futuro.</fo:block>
                      <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="justify"  ><fo:inline font-weight="bold">Impuesto de timbres y estampillas.</fo:inline> El  impuesto de  timbres y estampillas que grava este documento se paga por ingresos mensuales de  dinero en  Tesorería, según Decreto Ley Nº 3475.</fo:block>

                      <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                      <fo:block font-family="Arial, Helvetica, sans-serif" line-height="4.5mm" font-size="11pt" text-align="left" >
                      En<fo:leader leader-pattern="space" leader-length="1mm"/>
                      <fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/ciudadContrato" /></fo:inline>,
                      <fo:leader leader-pattern="space" leader-length="1mm"/>a<fo:leader leader-pattern="space" leader-length="1mm"/>
                      <fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/dia" /></fo:inline>

                      <!--<fo:leader leader-pattern="space" leader-length="1mm"/>de<fo:leader leader-pattern="space" leader-length="1mm"/>
                      <fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/mes" /></fo:inline>-->
                      <fo:leader leader-pattern="space" leader-length="1mm"/>de<fo:leader leader-pattern="space" leader-length="1mm"/>
                      <xsl:variable name="mes" select="../OperacionCredito/mes" />
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


                      <fo:leader leader-pattern="space" leader-length="1mm"/>de<fo:leader leader-pattern="space" leader-length="1mm"/>
                      <fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/anio" /></fo:inline>
                      </fo:block>




                      <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                      <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                      <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                      <fo:block font-family="Arial, Helvetica, sans-serif" line-height="4.5mm" font-size="11pt" text-align="center" ><fo:leader leader-length="6cm" leader-pattern="rule" rule-style="solid" rule-thickness="0.4mm" color="black"/></fo:block>
                      <fo:block font-family="Arial, Helvetica, sans-serif" line-height="4.5mm" font-size="11pt" text-align="center" >Firma del Suscriptor</fo:block>
                      <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                      <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                        <!-- AQUI COMIENZA LOS DATOS  DEL SUSCRIPTOR NOMBRE O RAZON SOCIAL -->
                         <xsl:apply-templates select="../OperacionCredito"/>
                        <!-- AQUI TERMINA LOS DATOS  DEL SUSCRIPTOR NOMBRE O RAZON SOCIAL -->

                        <!-- AQUI COMIENZA LOS DATOS  DEL SUSCRIPTOR DOMICILIO, COMUNA Y CIUDAD -->
                         <xsl:apply-templates select="../DireccionDeudorBci"/>
                        <!-- AQUI TERMINAN LOS DATOS  DEL SUSCRIPTOR DOMICILIO, COMUNA Y CIUDAD -->
		      <fo:block font-family="Arial, Helvetica, sans-serif" line-height="4.5mm" font-size="11pt" text-align="center" >Página 1 de 3</fo:block>
                </fo:flow>
          </xsl:when>
          <!--   AQUI TERMINA EL TEMPLATE   docpg26b  -->


          <!--   AQUI COMIENZA EL TEMPLATE   docpg28a  -->
          <xsl:when test="template = 'docpg28a'">
                <fo:flow flow-name="xsl-region-body">
              <fo:table border-collapse="collapse">
              <fo:table-column column-width="50mm" />
              <fo:table-column column-width="50mm" />
              <fo:table-body>
                  <fo:table-row>
                        <fo:table-cell text-align="left">
                                <fo:block >
                                  <fo:external-graphic height="12mm" width="25mm" vertical-align="middle">
                                    <xsl:attribute name="src">
                                    <xsl:value-of select="../OperacionCredito/logoBciSomosDiferentes"/>
                                    </xsl:attribute>
                                  </fo:external-graphic>
                                </fo:block>
                        </fo:table-cell>
                        <fo:table-cell >
                                <fo:block >
                                </fo:block>
                        </fo:table-cell>
                  </fo:table-row>
              </fo:table-body>
              </fo:table>
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                      <fo:block font-family="Arial, Helvetica, sans-serif" line-height="4.5mm" font-size="11pt" text-align="center" ><fo:inline font-weight="bold">PAGARE (Sin Protesto)</fo:inline></fo:block>
                      <fo:block font-family="Arial, Helvetica, sans-serif" line-height="4.5mm" font-size="11pt" text-align="center" ><fo:inline font-weight="bold">CUOTA TASA FIJA TRIMESTRAL UF</fo:inline></fo:block>
                      <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                      <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                      <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                      <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                      <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>

                      <fo:table border-collapse="collapse" font-family="Arial, Helvetica, sans-serif" font-size="11pt" text-align="left">
                          <fo:table-column column-width="50%"/>
                          <fo:table-column column-width="50%"/>
                          <fo:table-body>
                              <fo:table-row>
                                  <fo:table-cell > _
                                      <fo:block font-family="Arial, Helvetica, sans-serif" line-height="4.5mm" font-size="11pt" text-align="left" >N° de Operación :<fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/nroOperacion" /></fo:inline></fo:block>
                                  </fo:table-cell>
                              </fo:table-row>
                          </fo:table-body>
                      </fo:table>

                      <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                      <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="justify"  >Por valor recibido,  debo  y  pagaré  a  la  orden  del  BANCO  DE  CREDITO E INVERSIONES, en su domicilio ubicado en Avenida El Golf N° 125, Comuna de Las Condes,  Santiago,   o   en   cualquiera   de  sus  sucursales,  la  suma  de <fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold">UF</fo:inline><fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold">

                      <!--<xsl:value-of select='format-number(../OperacionCredito/montoCredito, "###.###.##0,000","decimal")' />-->
                      <xsl:variable name="moneda" select="../OperacionCredito/moneda" />
                        <xsl:choose>

                          <xsl:when test="$moneda = 'UF'">
                             <xsl:value-of select='format-number(../OperacionCredito/montoCredito, "###.###.##0,0000","decimal")' />
                          </xsl:when>


                          <xsl:when test="$moneda = '$'">
                            <xsl:value-of select='format-number(../OperacionCredito/montoCredito, "###.###.##0","decimal")' />
                          </xsl:when>

                      </xsl:choose>



                      </fo:inline> <fo:leader leader-pattern="space" leader-length="1mm"/>(<fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/montoCreditoManoEscrita" /></fo:inline><fo:leader leader-pattern="space" leader-length="1mm"/>Unidades de Fomento), equivalentes a esta fecha a la suma de <fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold">$</fo:inline> <fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold">

                      <!--<xsl:value-of select='format-number(../OperacionCredito/montoCredito, "###.###.##0,000","decimal")' />-->
                      <xsl:variable name="moneda" select="../OperacionCredito/moneda" />
                        <xsl:choose>

                          <xsl:when test="$moneda = 'UF'">
                             <xsl:value-of select='format-number(../OperacionCredito/montoCredito, "###.###.##0,0000","decimal")' />
                          </xsl:when>


                          <xsl:when test="$moneda = '$'">
                            <xsl:value-of select='format-number(../OperacionCredito/montoCredito, "###.###.##0","decimal")' />
                          </xsl:when>

                      </xsl:choose>




                      </fo:inline><fo:leader leader-pattern="space" leader-length="1mm"/>(<fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/montoCreditoManoEscrita" /></fo:inline><fo:leader leader-pattern="space" leader-length="1mm"/>pesos m/l).</fo:block>
                      <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="left" ><fo:inline font-weight="bold">Tasa de Interés</fo:inline></fo:block>
                      <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="justify"  >El capital adeudado devengará a partir de esta fecha una tasa de  interés del <fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select='format-number(../OperacionCredito/tasaInteres, "###,####","decimal")'/></fo:inline>% anual vencido durante todo el plazo pactado.</fo:block>
                      <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="left" ><fo:inline font-weight="bold">Amortización del Capital</fo:inline></fo:block>
                      <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="justify"  >El capital adeudado se pagará  en  <fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="count(../CalendarioPago)" /></fo:inline> cuotas  trimestrales,  iguales  y sucesivas, de <fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold">UF</fo:inline> <fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/montoCuota" /></fo:inline><fo:leader leader-pattern="space" leader-length="1mm"/>cada una, con vencimiento la primera de ellas el día <fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/fechaPrimerVctoDD" /></fo:inline><fo:leader leader-pattern="space" leader-length="1mm"/>de<fo:leader leader-pattern="space" leader-length="1mm"/>

                      <!--<fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/fechaPrimerVctoMM" /></fo:inline>-->
                      <xsl:variable name="mes" select="../OperacionCredito/fechaPrimerVctoMM" />
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

                      <fo:leader leader-pattern="space" leader-length="1mm"/>de<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/fechaPrimerVctoYYYY" /></fo:inline> y  las  restantes los días <fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/fechaPrimerVctoDD" /></fo:inline> de los  meses de @-............,  @-............,  @-............ y @-............,<fo:leader leader-pattern="space" leader-length="1mm"/>venciendo la última de ellas el día <fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/fechaUltimoVctoDD" /></fo:inline><fo:leader leader-pattern="space" leader-length="1mm"/>de<fo:leader leader-pattern="space" leader-length="1mm"/>

                      <!--<fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/fechaUltimoVctoMM" /></fo:inline>-->
                        <xsl:variable name="mes" select="../OperacionCredito/fechaUltimoVctoMM" />
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

                      <fo:leader leader-pattern="space" leader-length="1mm"/>de<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/fechaUltimoVctoYYYY" /></fo:inline></fo:block>
                      <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="left" ><fo:inline font-weight="bold">Intereses</fo:inline></fo:block>
                      <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="justify"  >Por su parte, los intereses se  pagarán en  <fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="count(../CalendarioPago)" /></fo:inline>  cuotas  trimestrales y sucesivas,  la  primera  de  ellas  con  vencimiento  el  día  <fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/fechaPrimerVctoDD" /></fo:inline><fo:leader leader-pattern="space" leader-length="1mm"/>de<fo:leader leader-pattern="space" leader-length="1mm"/>

                      <!--<fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/fechaPrimerVctoMM" /></fo:inline>-->
                      <xsl:variable name="mes" select="../OperacionCredito/fechaPrimerVctoMM" />
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


                      <fo:leader leader-pattern="space" leader-length="1mm"/>de<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/fechaPrimerVctoYYYY" /></fo:inline> y las restantes los días<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/diaVencimiento" /></fo:inline><fo:leader leader-pattern="space" leader-length="1mm"/>de los meses de @-............,  @-............,  @-............ y  @-............,  hasta la ultima cuota que vencerá el día <fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/fechaUltimoVctoDD" /></fo:inline><fo:leader leader-pattern="space" leader-length="1mm"/>de<fo:leader leader-pattern="space" leader-length="1mm"/>

                      <!--<fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/fechaUltimoVctoMM" /></fo:inline>-->
                        <xsl:variable name="mes" select="../OperacionCredito/fechaUltimoVctoMM" />
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

                      <fo:leader leader-pattern="space" leader-length="1mm"/>de<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/fechaUltimoVctoYYYY" /></fo:inline></fo:block>
                      <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="justify"  ><fo:inline font-weight="bold">Prórroga de plazo por día inhábil.</fo:inline> Las cuotas  de  amortización  de capital e intereses se pagarán a su vencimiento, siempre que éste corresponda a  un día hábil bancario. En caso contrario,se pagarán el día hábil bancario siguiente.</fo:block>
                      <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="justify"  ><fo:inline font-weight="bold">Equivalencia.</fo:inline> Las sumas adeudas,  tanto  en  lo  referente  a  capital como a intereses, se calcularán por su equivalente en moneda legal chilena al día de pago efectivo.</fo:block>
                      <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="justify"  ><fo:inline font-weight="bold">Prepagos.</fo:inline> Si el monto de capital inicial supera el  equivalente  a  UF 5.000, todo pago anticipado, sea total o parcial, será convenido libremente entre el suscriptor y el Banco. A falta de acuerdo,  el  suscriptor podrá en todo caso anticipar el pago, total o parcialmente, y en este último caso,  siempre  que el importe a pagar sea igual o superior al  20 % del capital de la obligación adeudada, pagando además los intereses estipulados  devengados y no pagados a la fecha del prepago,  calculados sobre el saldo insoluto,  más los intereses estipulados en este instrumento,  calculados sobre el capital prepagado desde la fecha del prepago hasta el vencimiento del plazo pactado.  Si el  monto de capital inicial no supera el  equivalente a  UF  5.000,  al capital prepagado deberán sumársele los intereses  calculados  hasta la  fecha del prepago y la comisión de prepago máxima que el articulo 10 de la Ley 18.010 permite pactar.</fo:block>
                      <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="justify"  ><fo:inline font-weight="bold">Exigibilidad anticipada.</fo:inline>  El no pago oportuno de una cualquiera de las cuotas de capital y/o de interés comprendidos en esta obligación,  dará  derecho  al acreedor a hacer exigible de inmediato y anticipadamente el  monto  total del saldo insoluto adeudado a  esa  fecha,  el  que  desde  esa  misma  fecha  se considerará de plazo vencido y devengará en favor del acreedor o de quien sus derechos represente, el interés máximo convencional que  rija durante la mora o simple retardo.</fo:block>
                      <fo:block ><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                      <fo:block font-family="Arial, Helvetica, sans-serif" line-height="4.5mm" font-size="11pt" text-align="center" >Página 1 de 3</fo:block>
                </fo:flow>

          </xsl:when>
          <!--   AQUI TERMINA EL TEMPLATE   docpg28a  -->


          <!--   AQUI COMIENZA EL TEMPLATE   docpg28b  -->
          <xsl:when test="template = 'docpg28b'">
                <fo:flow flow-name="xsl-region-body">
              <fo:table border-collapse="collapse">
              <fo:table-column column-width="50mm" />
              <fo:table-column column-width="50mm" />
              <fo:table-body>
                  <fo:table-row>
                        <fo:table-cell text-align="left">
                                <fo:block >
                                  <fo:external-graphic height="12mm" width="25mm" vertical-align="middle">
                                    <xsl:attribute name="src">
                                    <xsl:value-of select="../OperacionCredito/logoBciSomosDiferentes"/>
                                    </xsl:attribute>
                                  </fo:external-graphic>
                                </fo:block>
                        </fo:table-cell>
                        <fo:table-cell >
                                <fo:block >
                                </fo:block>
                        </fo:table-cell>
                  </fo:table-row>
              </fo:table-body>
              </fo:table>
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block font-family="Arial, Helvetica, sans-serif" line-height="4.5mm" font-size="11pt" text-align="left" >Nº Operación<fo:leader leader-pattern="space" leader-length="17.2mm"/>:<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/nroOperacion" /></fo:inline></fo:block>
              <fo:block font-family="Arial, Helvetica, sans-serif" line-height="4.5mm" font-size="11pt" text-align="left" >Fecha de suscripción<fo:leader leader-pattern="space" leader-length="3.7mm"/>:<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="substring(../OperacionCredito/fechaSuscripcion,0,4)" /></fo:inline>
              <xsl:variable name="mes" select="substring(../OperacionCredito/fechaSuscripcion,4,2)" />
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
              <fo:inline font-weight="bold"><xsl:value-of select="substring(../OperacionCredito/fechaSuscripcion,6,5)" /></fo:inline>
              </fo:block>


              <fo:block font-family="Arial, Helvetica, sans-serif" line-height="4.5mm" font-size="11pt" text-align="left" >Monto<fo:leader leader-pattern="space" leader-length="29.6mm"/>:<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold">UF</fo:inline><fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold">

              <!--<xsl:value-of select='format-number(../OperacionCredito/montoCredito, "###.###.##0,000","decimal")' />-->
                      <xsl:variable name="moneda" select="../OperacionCredito/moneda" />
                        <xsl:choose>

                          <xsl:when test="$moneda = 'UF'">
                             <xsl:value-of select='format-number(../OperacionCredito/montoCredito, "###.###.##0,0000","decimal")' />
                          </xsl:when>


                          <xsl:when test="$moneda = '$'">
                            <xsl:value-of select='format-number(../OperacionCredito/montoCredito, "###.###.##0","decimal")' />
                          </xsl:when>

                      </xsl:choose>



              </fo:inline></fo:block>
              <fo:block font-family="Arial, Helvetica, sans-serif" line-height="4.5mm" font-size="11pt" text-align="left" >Deudor<fo:leader leader-pattern="space" leader-length="27.6mm"/>:<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/nombreCompletoCliente" /></fo:inline></fo:block>
              <fo:block font-family="Arial, Helvetica, sans-serif" line-height="4.5mm" font-size="11pt" text-align="left" >RUT<fo:leader leader-pattern="space" leader-length="32.5mm"/>:<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select='format-number(../OperacionCredito/rutCliente, "###.###.##0","rut")' /></fo:inline>-<fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/dvCliente" /></fo:inline></fo:block>
              
                      <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                      <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                      <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="justify"  >Se deja expresamente establecido que el ejercicio de  este derecho constituye una sanción  al  suscriptor  por el  no  pago de la deuda e  importa una mera facultad establecida en beneficio  exclusivo del acreedor,  que no  altera en caso alguno la fecha de vencimiento del pagaré originalmente pactada, ni a la exigibilidad de las acciones cambiarias y ejecutivas derivadas de éste.</fo:block>
                      <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="justify"  >El Banco podrá hacer exigible de inmediato el monto total adeudado, expirando todos los plazos pendientes por el sólo hecho de  constituirse  en  mora o de habérsele protestado al deudor o  al  aval,  por  falta  de  pago,  cualquier documento,  pagaré,  letra  de  cambio  o  cheque, aceptado, suscrito, girado o avalado por él.</fo:block>
                      <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="justify"  >Se  deja  expresamente  establecido  que corresponderá al deudor acreditar el pago de las cuotas en que se divide el presente instrumento, en caso de cobro judicial.</fo:block>
                      <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                      <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="justify"  ><fo:inline font-weight="bold">Indivisibilidad y solidaridad.</fo:inline> Las obligaciones que  emanen  de  este  pagaré serán solidarias para el suscriptor,  avalista(s)  y  demás obligados al pago y serán indivisibles  para  sus  herederos. Además, el suscriptor  pagará los gastos, impuestos y costas personales y procesales que correspondan.</fo:block>
                      <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="justify"  ><fo:inline font-weight="bold">Mandato para prórrogas.</fo:inline> El  suscriptor  faculta  al Banco de Crédito  e  Inversiones para que en su nombre y representación otorgue, previa autorización expresa de éste, una o más prórrogas que establezcan nuevas condiciones, tasas de interés y fechas de vencimiento. </fo:block>
                      <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                      <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="justify"  ><fo:inline font-weight="bold">Domicilio y  competencia.</fo:inline>  Para todos los efectos legales, judiciales o extrajudiciales derivados de este pagaré, las partes acuerdan someterse  a los Tribunales de Justicia con asiento en la comuna y ciudad del domicilio del suscriptor,  lo que  será obligatorio tanto para el suscriptor como para sus avales, endosantes u obligados por garantía.  Sin perjuicio declaro, que mi domicilio y residencia son los consignados en  este título, comprometiéndome a dar pronto aviso por escrito al Banco, en el evento que realice cualquier cambio de domicilio en el futuro.</fo:block>
                      <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="justify"  ><fo:inline font-weight="bold">Impuesto de timbres y estampillas.</fo:inline> El  impuesto de  timbres y estampillas que grava este documento se paga por ingresos mensuales de  dinero en  Tesorería, según Decreto Ley Nº 3475.</fo:block>


                      <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                      <fo:block font-family="Arial, Helvetica, sans-serif" line-height="4.5mm" font-size="11pt" text-align="left" >
                      En<fo:leader leader-pattern="space" leader-length="1mm"/>
                      <fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/ciudadContrato" /></fo:inline>,
                      <fo:leader leader-pattern="space" leader-length="1mm"/>a<fo:leader leader-pattern="space" leader-length="1mm"/>
                      <fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/dia" /></fo:inline>

                      <!--<fo:leader leader-pattern="space" leader-length="1mm"/>de<fo:leader leader-pattern="space" leader-length="1mm"/>
                      <fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/mes" /></fo:inline>-->
                      <fo:leader leader-pattern="space" leader-length="1mm"/>de<fo:leader leader-pattern="space" leader-length="1mm"/>
                      <xsl:variable name="mes" select="../OperacionCredito/mes" />
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


                      <fo:leader leader-pattern="space" leader-length="1mm"/>de<fo:leader leader-pattern="space" leader-length="1mm"/>
                      <fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/anio" /></fo:inline>
                      </fo:block>



                      <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                      <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                      <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                      <fo:block font-family="Arial, Helvetica, sans-serif" line-height="4.5mm" font-size="11pt" text-align="center" ><fo:leader leader-length="6cm" leader-pattern="rule" rule-style="solid" rule-thickness="0.4mm" color="black"/></fo:block>
                      <fo:block font-family="Arial, Helvetica, sans-serif" line-height="4.5mm" font-size="11pt" text-align="center" >Firma del Suscriptor</fo:block>
                      <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                      <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>

                        <!-- AQUI COMIENZA LOS DATOS  DEL SUSCRIPTOR NOMBRE O RAZON SOCIAL -->
                         <xsl:apply-templates select="../OperacionCredito"/>
                        <!-- AQUI TERMINA LOS DATOS  DEL SUSCRIPTOR NOMBRE O RAZON SOCIAL -->

                        <!-- AQUI COMIENZA LOS DATOS  DEL SUSCRIPTOR DOMICILIO, COMUNA Y CIUDAD -->
                         <xsl:apply-templates select="../DireccionDeudorBci"/>
                        <!-- AQUI TERMINAN LOS DATOS  DEL SUSCRIPTOR DOMICILIO, COMUNA Y CIUDAD -->

		     <fo:block font-family="Arial, Helvetica, sans-serif" line-height="4.5mm" font-size="11pt" text-align="center" >Página 1 de 3</fo:block>
                </fo:flow>

          </xsl:when>
          <!--   AQUI TERMINA EL TEMPLATE   docpg28b  -->


          <!--   AQUI COMIENZA EL TEMPLATE   docpg31a  -->
          <xsl:when test="template = 'docpg31a'">
                <fo:flow flow-name="xsl-region-body">
              <fo:table border-collapse="collapse">
              <fo:table-column column-width="50mm" />
              <fo:table-column column-width="50mm" />
              <fo:table-body>
                  <fo:table-row>
                        <fo:table-cell text-align="left">
                                <fo:block >
                                  <fo:external-graphic height="12mm" width="25mm" vertical-align="middle">
                                    <xsl:attribute name="src">
                                    <xsl:value-of select="../OperacionCredito/logoBciSomosDiferentes"/>
                                    </xsl:attribute>
                                  </fo:external-graphic>
                                </fo:block>
                        </fo:table-cell>
                        <fo:table-cell >
                                <fo:block >
                                </fo:block>
                        </fo:table-cell>
                  </fo:table-row>
              </fo:table-body>
              </fo:table>
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                      <fo:block font-family="Arial, Helvetica, sans-serif" line-height="4.5mm" font-size="11pt" text-align="center" ><fo:inline font-weight="bold">PAGARE (Sin Protesto)</fo:inline></fo:block>
                      <fo:block font-family="Arial, Helvetica, sans-serif" line-height="4.5mm" font-size="11pt" text-align="center" ><fo:inline font-weight="bold">CUOTA TASA FIJA TRIMESTRAL $</fo:inline></fo:block>
                      <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                      <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                      <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                      <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>


                      <fo:table border-collapse="collapse" font-family="Arial, Helvetica, sans-serif" font-size="11pt" text-align="left">
                          <fo:table-column column-width="50%"/>
                          <fo:table-column column-width="50%"/>
                          <fo:table-body>
                              <fo:table-row>
                                  <fo:table-cell > _
                                      <fo:block font-family="Arial, Helvetica, sans-serif" line-height="4.5mm" font-size="11pt" text-align="left" >N° de Operación :<fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/nroOperacion" /></fo:inline></fo:block>
                                  </fo:table-cell>
                              </fo:table-row>
                          </fo:table-body>
                      </fo:table>


                      <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                      <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                      <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="justify"  >Por  valor  recibido,  debo  y  pagaré  a  la  orden  del  BANCO DE CREDITO E INVERSIONES, en  su  domicilio ubicado en Avenida El Golf  N° 125,  Comuna de Las  Condes,  Santiago,  o  en  cualquiera  de  sus  sucursales,  la  suma de <fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold">$</fo:inline><fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold">

                      <!--<xsl:value-of select='format-number(../OperacionCredito/montoCredito, "###.###.##0,000","decimal")' />-->
                      <xsl:variable name="moneda" select="../OperacionCredito/moneda" />
                        <xsl:choose>

                          <xsl:when test="$moneda = 'UF'">
                             <xsl:value-of select='format-number(../OperacionCredito/montoCredito, "###.###.##0,0000","decimal")' />
                          </xsl:when>


                          <xsl:when test="$moneda = '$'">
                            <xsl:value-of select='format-number(../OperacionCredito/montoCredito, "###.###.##0","decimal")' />
                          </xsl:when>

                      </xsl:choose>


                      </fo:inline><fo:leader leader-pattern="space" leader-length="1mm"/>(<fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/montoCreditoManoEscrita" /></fo:inline> pesos m/l)</fo:block>
                      <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="left" ><fo:inline font-weight="bold">Tasa de Interés</fo:inline></fo:block>
                      <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="justify"  >El capital adeudado  devengará a partir de esta fecha una tasa de interés del <fo:inline font-weight="bold"><xsl:value-of select='format-number(../OperacionCredito/tasaInteres, "###,####","decimal")'/></fo:inline>% mensual vencido durante todo el plazo pactado.</fo:block>
                      <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="left" ><fo:inline font-weight="bold">Amortización del Capital</fo:inline></fo:block>
                      <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="justify"  >El capital adeudado  se  pagará  en <fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="count(../CalendarioPago)" /></fo:inline> cuotas  trimestrales, iguales  y sucesivas, de <fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold">$</fo:inline> <fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select='format-number(../OperacionCredito/montoCuota, "###.###.##0,000","decimal")' /></fo:inline><fo:leader leader-pattern="space" leader-length="1mm"/> cada una, con vencimiento la primera de ellas el  día  <fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/fechaPrimerVctoDD" /></fo:inline><fo:leader leader-pattern="space" leader-length="1mm"/>de<fo:leader leader-pattern="space" leader-length="1mm"/>

                     <!-- <fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/fechaPrimerVctoMM" /></fo:inline>-->
                      <xsl:variable name="mes" select="../OperacionCredito/fechaPrimerVctoMM" />
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

                      <fo:leader leader-pattern="space" leader-length="1mm"/>de<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/fechaPrimerVctoYYYY" /></fo:inline> y  las  restantes  los días <fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/fechaPrimerVctoDD" /></fo:inline> de los meses de @-............., @-............., @-............... y @-.................,  venciendo  la  última  de  ellas  el  día <fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/fechaUltimoVctoDD" /></fo:inline><fo:leader leader-pattern="space" leader-length="1mm"/>de<fo:leader leader-pattern="space" leader-length="1mm"/>

                      <!--<fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/fechaUltimoVctoMM" /></fo:inline>-->
                        <xsl:variable name="mes" select="../OperacionCredito/fechaUltimoVctoMM" />
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



                      <fo:leader leader-pattern="space" leader-length="1mm"/>de<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/fechaUltimoVctoYYYY" /></fo:inline></fo:block>
                      <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="left" ><fo:inline font-weight="bold">Intereses</fo:inline></fo:block>
                      <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="justify"  >Por su parte, los intereses se  pagarán en  <fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="count(../CalendarioPago)" /></fo:inline>  cuotas  trimestrales y sucesivas,  la  primera  de  ellas  con  vencimiento  el  día  <fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/fechaPrimerVctoDD" /></fo:inline><fo:leader leader-pattern="space" leader-length="1mm"/>de<fo:leader leader-pattern="space" leader-length="1mm"/>

                      <!--<fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/fechaPrimerVctoMM" /></fo:inline>-->
                      <xsl:variable name="mes" select="../OperacionCredito/fechaPrimerVctoMM" />
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

                      <fo:leader leader-pattern="space" leader-length="1mm"/>de<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/fechaPrimerVctoYYYY" /></fo:inline> y las restantes los días<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/diaVencimiento" /></fo:inline><fo:leader leader-pattern="space" leader-length="1mm"/>de los meses de @-............,  @-............,  @-............ y  @-............,  hasta la ultima cuota que vencerá el día <fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/fechaUltimoVctoDD" /></fo:inline>
                      <fo:leader leader-pattern="space" leader-length="1mm"/>de<fo:leader leader-pattern="space" leader-length="1mm"/>

                      <!--<fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/fechaUltimoVctoMM" /></fo:inline>-->
                        <xsl:variable name="mes" select="../OperacionCredito/fechaUltimoVctoMM" />
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


                      <fo:leader leader-pattern="space" leader-length="1mm"/>de<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/fechaUltimoVctoYYYY" /></fo:inline></fo:block>
                      <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="justify"  ><fo:inline font-weight="bold">Prórroga de plazo por día inhábil</fo:inline>. Las cuotas  de  amortización  de capital e intereses se pagarán a su vencimiento, siempre que éste corresponda a  un día hábil bancario. En caso contrario,se pagarán el día hábil bancario siguiente.</fo:block>
                      <!--<fo:block font-family="Arial, Helvetica, sans-serif" line-height="4.5mm" font-size="11pt" text-align="justify"  >Equivalencia. Las sumas adeudas,  tanto  en  lo  referente  a  capital como a intereses, se calcularán por su equivalente en moneda legal chilena al día de pago efectivo.</fo:block>-->
                      <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="justify"  ><fo:inline font-weight="bold">Prepagos</fo:inline>. Si el monto de capital inicial supera el  equivalente  a  UF 5.000, todo pago anticipado, sea total o parcial, será convenido libremente entre el suscriptor y el Banco. A falta de acuerdo,  el  suscriptor podrá en todo caso anticipar el pago, total o parcialmente, y en este último caso,  siempre  que el importe a pagar sea igual o superior al  20 % del capital de la obligación adeudada, pagando además los intereses estipulados  devengados y no pagados a la fecha del prepago,  calculados sobre el saldo insoluto,  más los intereses estipulados en este instrumento,  calculados sobre el capital prepagado desde la fecha del prepago hasta el vencimiento del plazo pactado.  Si el  monto de capital inicial no supera el  equivalente a  UF  5.000,  al capital prepagado deberán sumársele los intereses  calculados  hasta la  fecha del prepago y la comisión de prepago máxima que el articulo 10 de la Ley 18.010 permite pactar.</fo:block>
                      <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="justify"  ><fo:inline font-weight="bold">Exigibilidad anticipada</fo:inline>.  El no pago oportuno de una cualquiera de las cuotas de capital y/o de interés comprendidos en esta obligación,  dará  derecho  al acreedor a hacer exigible de inmediato y anticipadamente el  monto  total del saldo insoluto adeudado a  esa  fecha,  el  que  desde  esa  misma  fecha  se considerará de plazo vencido y devengará en favor del acreedor o de quien sus derechos represente, el interés máximo convencional que  rija durante la mora o simple retardo.</fo:block>
                      <fo:block ><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                      <fo:block font-family="Arial, Helvetica, sans-serif" line-height="4.5mm" font-size="11pt" text-align="center" >Página 1 de 3</fo:block>
                </fo:flow>
          </xsl:when>
          <!--   AQUI TERMINA EL TEMPLATE   docpg31a  -->


          <!--   AQUI COMIENZA EL TEMPLATE   docpg31b  -->
          <xsl:when test="template = 'docpg31b'">
                <fo:flow flow-name="xsl-region-body">
              <fo:table border-collapse="collapse">
              <fo:table-column column-width="50mm" />
              <fo:table-column column-width="50mm" />
              <fo:table-body>
                  <fo:table-row>
                        <fo:table-cell text-align="left">
                                <fo:block >
                                  <fo:external-graphic height="12mm" width="25mm" vertical-align="middle">
                                    <xsl:attribute name="src">
                                    <xsl:value-of select="../OperacionCredito/logoBciSomosDiferentes"/>
                                    </xsl:attribute>
                                  </fo:external-graphic>
                                </fo:block>
                        </fo:table-cell>
                        <fo:table-cell >
                                <fo:block >
                                </fo:block>
                        </fo:table-cell>
                  </fo:table-row>
              </fo:table-body>
              </fo:table>
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block font-family="Arial, Helvetica, sans-serif" line-height="4.5mm" font-size="11pt" text-align="left" >Nº Operación<fo:leader leader-pattern="space" leader-length="17.2mm"/>:<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/nroOperacion" /></fo:inline></fo:block>
              <fo:block font-family="Arial, Helvetica, sans-serif" line-height="4.5mm" font-size="11pt" text-align="left" >Fecha de suscripción<fo:leader leader-pattern="space" leader-length="3.7mm"/>:<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="substring(../OperacionCredito/fechaSuscripcion,0,4)" /></fo:inline>
              <xsl:variable name="mes" select="substring(../OperacionCredito/fechaSuscripcion,4,2)" />
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
              <fo:inline font-weight="bold"><xsl:value-of select="substring(../OperacionCredito/fechaSuscripcion,6,5)" /></fo:inline>
              </fo:block>


              <fo:block font-family="Arial, Helvetica, sans-serif" line-height="4.5mm" font-size="11pt" text-align="left" >Monto<fo:leader leader-pattern="space" leader-length="29.6mm"/>:<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold">$</fo:inline><fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold">

              <!--<xsl:value-of select='format-number(../OperacionCredito/montoCredito, "###.###.##0,000","decimal")' />-->
                      <xsl:variable name="moneda" select="../OperacionCredito/moneda" />
                        <xsl:choose>

                          <xsl:when test="$moneda = 'UF'">
                             <xsl:value-of select='format-number(../OperacionCredito/montoCredito, "###.###.##0,0000","decimal")' />
                          </xsl:when>


                          <xsl:when test="$moneda = '$'">
                            <xsl:value-of select='format-number(../OperacionCredito/montoCredito, "###.###.##0","decimal")' />
                          </xsl:when>

                      </xsl:choose>


              </fo:inline></fo:block>
              <fo:block font-family="Arial, Helvetica, sans-serif" line-height="4.5mm" font-size="11pt" text-align="left" >Deudor<fo:leader leader-pattern="space" leader-length="27.6mm"/>:<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/nombreCompletoCliente" /></fo:inline></fo:block>
              <fo:block font-family="Arial, Helvetica, sans-serif" line-height="4.5mm" font-size="11pt" text-align="left" >RUT<fo:leader leader-pattern="space" leader-length="32.5mm"/>:<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select='format-number(../OperacionCredito/rutCliente, "###.###.##0","rut")' /></fo:inline>-<fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/dvCliente" /></fo:inline></fo:block>
              
                      <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                      <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                      <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="justify"  >Se deja expresamente establecido que el ejercicio de  este derecho constituye una sanción  al  suscriptor  por el  no  pago de la deuda e  importa una mera facultad establecida en beneficio  exclusivo del acreedor,  que no  altera en caso alguno la fecha de vencimiento del pagaré originalmente pactada, ni a la exigibilidad de las acciones cambiarias y ejecutivas derivadas de éste.</fo:block>
                      <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="justify"  >El Banco podrá hacer exigible de inmediato el monto total adeudado, expirando todos los plazos pendientes por el sólo hecho de  constituirse  en  mora o de habérsele protestado al deudor o  al  aval,  por  falta  de  pago,  cualquier documento,  pagaré,  letra  de  cambio  o  cheque, aceptado, suscrito, girado o avalado por él.</fo:block>
                      <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="justify"  >Se  deja  expresamente  establecido  que corresponderá al deudor acreditar el pago de las cuotas en que se divide el presente instrumento, en caso de cobro judicial.</fo:block>
                      <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="justify"  ><fo:inline font-weight="bold">Indivisibilidad y solidaridad</fo:inline>. Las obligaciones que  emanen  de  este  pagaré serán solidarias para el suscriptor,  avalista(s)  y  demás obligados al pago y serán indivisibles  para  sus  herederos. Además, el suscriptor  pagará los gastos, impuestos y costas personales y procesales que correspondan.</fo:block>
                      <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="justify"  ><fo:inline font-weight="bold">Mandato para prórrogas.</fo:inline> El  suscriptor  faculta  al Banco de Crédito  e  Inversiones para que en su nombre y representación otorgue, previa autorización expresa de éste, una o más prórrogas que establezcan nuevas condiciones, tasas de interés y fechas de vencimiento. </fo:block>
                      <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="justify"  ><fo:inline font-weight="bold">Domicilio y  competencia</fo:inline>.  Para todos los efectos legales, judiciales o extrajudiciales derivados de este pagaré, las partes acuerdan someterse  a los Tribunales de Justicia con asiento en la comuna y ciudad del domicilio del suscriptor,  lo que  será obligatorio tanto para el suscriptor como para sus avales, endosantes u obligados por garantía.  Sin perjuicio declaro, que mi domicilio y residencia son los consignados en  este título, comprometiéndome a dar pronto aviso por escrito al Banco, en el evento que realice cualquier cambio de domicilio en el futuro.</fo:block>
                      <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="justify"  ><fo:inline font-weight="bold">Impuesto de timbres y estampillas</fo:inline>. El  impuesto de  timbres y estampillas que grava este documento se paga por ingresos mensuales de  dinero en  Tesorería, según Decreto Ley Nº 3475.</fo:block>


                      <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                      <fo:block font-family="Arial, Helvetica, sans-serif" line-height="4.5mm" font-size="11pt" text-align="left" >
                      En<fo:leader leader-pattern="space" leader-length="1mm"/>
                      <fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/ciudadContrato" /></fo:inline>,
                      <fo:leader leader-pattern="space" leader-length="1mm"/>a<fo:leader leader-pattern="space" leader-length="1mm"/>
                      <fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/dia" /></fo:inline>

                      <!--<fo:leader leader-pattern="space" leader-length="1mm"/>de<fo:leader leader-pattern="space" leader-length="1mm"/>
                      <fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/mes" /></fo:inline>-->
                      <fo:leader leader-pattern="space" leader-length="1mm"/>de<fo:leader leader-pattern="space" leader-length="1mm"/>
                      <xsl:variable name="mes" select="../OperacionCredito/mes" />
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


                      <fo:leader leader-pattern="space" leader-length="1mm"/>de<fo:leader leader-pattern="space" leader-length="1mm"/>
                      <fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/anio" /></fo:inline>
                      </fo:block>



                      <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                      <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                      <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                      <fo:block font-family="Arial, Helvetica, sans-serif" line-height="4.5mm" font-size="11pt" text-align="center" ><fo:leader leader-length="6cm" leader-pattern="rule" rule-style="solid" rule-thickness="0.4mm" color="black"/></fo:block>
                      <fo:block font-family="Arial, Helvetica, sans-serif" line-height="4.5mm" font-size="11pt" text-align="center" >Firma del Suscriptor</fo:block>
                      <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                      <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                        <!-- AQUI COMIENZA LOS DATOS  DEL SUSCRIPTOR NOMBRE O RAZON SOCIAL -->
                         <xsl:apply-templates select="../OperacionCredito"/>
                        <!-- AQUI TERMINA LOS DATOS  DEL SUSCRIPTOR NOMBRE O RAZON SOCIAL -->

                        <!-- AQUI COMIENZA LOS DATOS  DEL SUSCRIPTOR DOMICILIO, COMUNA Y CIUDAD -->
                         <xsl:apply-templates select="../DireccionDeudorBci"/>
                        <!-- AQUI TERMINAN LOS DATOS  DEL SUSCRIPTOR DOMICILIO, COMUNA Y CIUDAD -->
		     <fo:block font-family="Arial, Helvetica, sans-serif" line-height="4.5mm" font-size="11pt" text-align="center" >Página 1 de 3</fo:block>
                </fo:flow>
          </xsl:when>
          <!--   AQUI TERMINA EL TEMPLATE   docpg31b  -->


          <!--   AQUI COMIENZA EL TEMPLATE   docpg32a  -->
          <xsl:when test="template = 'docpg32a'">
                <fo:flow flow-name="xsl-region-body">
              <fo:table border-collapse="collapse">
              <fo:table-column column-width="50mm" />
              <fo:table-column column-width="50mm" />
              <fo:table-body>
                  <fo:table-row>
                        <fo:table-cell text-align="left">
                                <fo:block >
                                  <fo:external-graphic height="12mm" width="25mm" vertical-align="middle">
                                    <xsl:attribute name="src">
                                    <xsl:value-of select="../OperacionCredito/logoBciSomosDiferentes"/>
                                    </xsl:attribute>
                                  </fo:external-graphic>
                                </fo:block>
                        </fo:table-cell>
                        <fo:table-cell >
                                <fo:block >
                                </fo:block>
                        </fo:table-cell>
                  </fo:table-row>
              </fo:table-body>
              </fo:table>
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                      <fo:block font-family="Arial, Helvetica, sans-serif" line-height="4.5mm" font-size="11pt" text-align="center" ><fo:inline font-weight="bold">PAGARE (Sin Protesto)</fo:inline></fo:block>
                      <fo:block font-family="Arial, Helvetica, sans-serif" line-height="4.5mm" font-size="11pt" text-align="center" ><fo:inline font-weight="bold">UN VENCIMIENTO INTERES MENSUAL $</fo:inline></fo:block>
                      <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                      <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                      <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                      <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>

                      <fo:table border-collapse="collapse" font-family="Arial, Helvetica, sans-serif" font-size="11pt" text-align="left">
                          <fo:table-column column-width="50%"/>
                          <fo:table-column column-width="50%"/>
                          <fo:table-body>
                              <fo:table-row>
                                  <fo:table-cell > _
                                      <fo:block font-family="Arial, Helvetica, sans-serif" line-height="4.5mm" font-size="11pt" text-align="left" >N° de Operación :<fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/nroOperacion" /></fo:inline></fo:block>
                                  </fo:table-cell>
                              </fo:table-row>
                          </fo:table-body>
                      </fo:table>


                      <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                      <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                      <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="justify"  >Por  valor  recibido,  debo  y  pagaré  a  la  orden  del  BANCO DE CREDITO E INVERSIONES, en  su  domicilio ubicado en Avenida El Golf  N° 125,  Comuna de Las  Condes,  Santiago,  o  en  cualquiera  de  sus  sucursales,  la  suma de <fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold">$</fo:inline><fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold">

                      <!--<xsl:value-of select='format-number(../OperacionCredito/montoCredito, "###.###.##0,000","decimal")' />-->
                      <xsl:variable name="moneda" select="../OperacionCredito/moneda" />
                        <xsl:choose>

                          <xsl:when test="$moneda = 'UF'">
                             <xsl:value-of select='format-number(../OperacionCredito/montoCredito, "###.###.##0,0000","decimal")' />
                          </xsl:when>


                          <xsl:when test="$moneda = '$'">
                            <xsl:value-of select='format-number(../OperacionCredito/montoCredito, "###.###.##0","decimal")' />
                          </xsl:when>

                      </xsl:choose>

                      </fo:inline><fo:leader leader-pattern="space" leader-length="1mm"/>(<fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/montoCreditoManoEscrita" /></fo:inline> pesos m/l)</fo:block>
                      <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="left" ><fo:inline font-weight="bold">Tasa de Interés</fo:inline></fo:block>
                      <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="justify"  >El capital adeudado  devengará a partir de esta fecha una tasa de interés del <fo:inline font-weight="bold"><xsl:value-of select='format-number(../OperacionCredito/tasaInteres, "###,####","decimal")'/></fo:inline>% mensual vencido durante todo el plazo pactado.</fo:block>
                      <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="left" ><fo:inline font-weight="bold">Amortización del Capital</fo:inline></fo:block>
                      <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="justify"  >El capital adeudado se pagará íntegramente el día <fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/dia" /></fo:inline><fo:leader leader-pattern="space" leader-length="1mm"/>de<fo:leader leader-pattern="space" leader-length="1mm"/>

                      <xsl:variable name="mes" select="../OperacionCredito/mes" />
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

                      <fo:leader leader-pattern="space" leader-length="1mm"/>de<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/anio" /></fo:inline></fo:block>
                      <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="left" ><fo:inline font-weight="bold">Intereses</fo:inline></fo:block>
                      <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="justify"  >Por su parte, los intereses se pagarán en<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="count(../CalendarioPago)" /></fo:inline><fo:leader leader-pattern="space" leader-length="1mm"/>cuotas anuales y sucesivas, la primera de  ellas  con  vencimiento  el  día<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/fechaPrimerVctoDD" /></fo:inline><fo:leader leader-pattern="space" leader-length="1mm"/>de<fo:leader leader-pattern="space" leader-length="1mm"/>

                      <!--<fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/fechaPrimerVctoMM" /></fo:inline>-->
                      <xsl:variable name="mes" select="../OperacionCredito/fechaPrimerVctoMM" />
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

                      <fo:leader leader-pattern="space" leader-length="1mm"/>de<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/fechaPrimerVctoYYYY" /></fo:inline> y las restantes los días<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/diaVencimiento" /></fo:inline><fo:leader leader-pattern="space" leader-length="1mm"/>de los meses siguientes hasta la última cuota que vencerá el día <fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/fechaUltimoVctoDD" /></fo:inline><fo:leader leader-pattern="space" leader-length="1mm"/>de<fo:leader leader-pattern="space" leader-length="1mm"/>

                      <!--<fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/fechaUltimoVctoMM" /></fo:inline>-->
                        <xsl:variable name="mes" select="../OperacionCredito/fechaUltimoVctoMM" />
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


                      <fo:leader leader-pattern="space" leader-length="1mm"/>de<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/fechaUltimoVctoYYYY" /></fo:inline></fo:block>
                      <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="justify"  ><fo:inline font-weight="bold">Prórroga de  plazo  por  día inhábil.</fo:inline> Las cuotas de amortización de capital e intereses se pagarán a su vencimiento,  siempre que éste corresponda a un día hábil  bancario.  En  caso  contrario,  se  pagarán  el  día  hábil  bancario siguiente.</fo:block>
                      <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="justify"  ><fo:inline font-weight="bold">Prepagos.</fo:inline> Si el monto de  capital inicial  supera el  equivalente a UF 5.000, todo pago anticipado,  sea total o parcial,  será convenido  libremente entre el  suscriptor y el Banco.  A falta  de  acuerdo, el suscriptor podrá en todo caso  anticipar el pago, total o parcialmente, y en este último caso, siempre que  el importe  a  pagar sea  igual o  superior al  20 % del  capital de  la obligación  adeudada,  pagando  además los intereses estipulados devengados y no pagados a la fecha  del prepago,  calculados sobre el saldo  insoluto, más los  intereses  estipulados  en este instrumento, calculados sobre el capital prepagado desde la fecha  del prepago hasta el vencimiento del  plazo pactado.</fo:block>
                      <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="justify"  >Si  el  monto  de capital  inicial  no  supera  el equivalente a UF 5.000, al capital  prepagado deberán sumársele los intereses  calculados hasta la fecha del  prepago y  la comisión de  prepago máxima  que el articulo  10 de la Ley 18.010 permite pactar.</fo:block>
                      <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="justify"  ><fo:inline font-weight="bold">Exigibilidad anticipada.</fo:inline> El no pago oportuno de una  cualquiera de las cuotas de capital y/o  de interés comprendidos  en esta  obligación, dará derecho al acreedor a hacer  exigible de inmediato  y anticipadamente el monto total del saldo  insoluto  adeudado  a  esa  fecha,  el que desde  esa misma  fecha  se considerará de plazo vencido y devengará en favor del acreedor o de quien sus derechos  represente, el interés máximo convencional que rija durante la mora o simple retardo.</fo:block>
                      <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="justify"  >Se deja expresamente establecido que  el ejercicio de este derecho constituye una  sanción  al  suscriptor  por el no  pago de  la deuda e importa una mera facultad  establecida en  beneficio exclusivo  del acreedor, que no altera en caso alguno la fecha de vencimiento del pagaré originalmente pactada, ni a la exigibilidad de las acciones cambiarias y ejecutivas derivadas de éste.</fo:block>
                      <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                      <fo:block font-family="Arial, Helvetica, sans-serif" line-height="4.5mm" font-size="11pt" text-align="center" >Página 1 de 3</fo:block>
                </fo:flow>
          </xsl:when>
          <!--   AQUI TERMINA EL TEMPLATE   docpg32a  -->


          <!--   AQUI COMIENZA EL TEMPLATE   docpg32b  -->
          <xsl:when test="template = 'docpg32b'">
                <fo:flow flow-name="xsl-region-body">
              <fo:table border-collapse="collapse">
              <fo:table-column column-width="50mm" />
              <fo:table-column column-width="50mm" />
              <fo:table-body>
                  <fo:table-row>
                        <fo:table-cell text-align="left">
                                <fo:block >
                                  <fo:external-graphic height="12mm" width="25mm" vertical-align="middle">
                                    <xsl:attribute name="src">
                                    <xsl:value-of select="../OperacionCredito/logoBciSomosDiferentes"/>
                                    </xsl:attribute>
                                  </fo:external-graphic>
                                </fo:block>
                        </fo:table-cell>
                        <fo:table-cell >
                                <fo:block >
                                </fo:block>
                        </fo:table-cell>
                  </fo:table-row>
              </fo:table-body>
              </fo:table>
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block font-family="Arial, Helvetica, sans-serif" line-height="4.5mm" font-size="11pt" text-align="left" >Nº Operación<fo:leader leader-pattern="space" leader-length="18.5mm"/>:<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/nroOperacion" /></fo:inline></fo:block>
              <fo:block font-family="Arial, Helvetica, sans-serif" line-height="4.5mm" font-size="11pt" text-align="left" >Fecha de suscripción<fo:leader leader-pattern="space" leader-length="6.8mm"/>:<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="substring(../OperacionCredito/fechaSuscripcion,0,4)" /></fo:inline>
              <xsl:variable name="mes" select="substring(../OperacionCredito/fechaSuscripcion,4,2)" />
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
              <fo:inline font-weight="bold"><xsl:value-of select="substring(../OperacionCredito/fechaSuscripcion,6,5)" /></fo:inline>
              </fo:block>
              <fo:block font-family="Arial, Helvetica, sans-serif" line-height="4.5mm" font-size="11pt" text-align="left" >Monto<fo:leader leader-pattern="space" leader-length="29.6mm"/>:<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/moneda" /></fo:inline><fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold">

              <xsl:variable name="moneda" select="../OperacionCredito/moneda" />
                <xsl:choose>
                  <xsl:when test="$moneda = 'UF'">
                     <xsl:value-of select='format-number(../OperacionCredito/montoCredito, "###.###.##0,0000","decimal")' />
                  </xsl:when>

                  <xsl:when test="$moneda = '$'">
                    <xsl:value-of select='format-number(../OperacionCredito/montoCredito, "###.###.##0","decimal")' />
                  </xsl:when>
              </xsl:choose>

              </fo:inline></fo:block>
              <fo:block font-family="Arial, Helvetica, sans-serif" line-height="4.5mm" font-size="11pt" text-align="left" >Deudor<fo:leader leader-pattern="space" leader-length="28mm"/>:<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/nombreCompletoCliente" /></fo:inline></fo:block>
              <fo:block font-family="Arial, Helvetica, sans-serif" line-height="4.5mm" font-size="11pt" text-align="left" >RUT<fo:leader leader-pattern="space" leader-length="32.2mm"/>:<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select='format-number(../OperacionCredito/rutCliente, "###.###.##0","rut")' /></fo:inline>-<fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/dvCliente" /></fo:inline></fo:block>
              
                      <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                      <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                      <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="justify"  >El Banco podrá hacer exigible de inmediato el monto total adeudado, expirando todos los  plazos  pendientes por el sólo  hecho de constituirse en mora o de habérsele  protestado  al deudor  o al aval,  por  falta  de pago,  cualquier documento,  pagaré,  letra de cambio o  cheque,  aceptado, suscrito, girado o avalado por él.</fo:block>
                      <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="justify"  >Se  deja  expresamente  establecido  que corresponderá al deudor acreditar el pago de las cuotas en que se divide el presente instrumento, en caso de cobro judicial.</fo:block>
                      <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="justify"  ><fo:inline font-weight="bold">Indivisibilidad  y solidaridad.</fo:inline>  Las obligaciones  que emanen de  este pagaré serán  solidarias para el suscriptor, avalista(s) y demás obligados al pago y serán  indivisibles  para  sus herederos.  Además,  el suscriptor  pagará los gastos, impuestos y costas personales y procesales que correspondan.</fo:block>
                      <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="justify"  ><fo:inline font-weight="bold">Mandato para prórrogas.</fo:inline> El  suscriptor  faculta  al Banco de Crédito  e  Inversiones para que en su nombre y representación otorgue, previa autorización expresa de éste, una o más prórrogas que establezcan nuevas condiciones, tasas de interés y fechas de vencimiento. </fo:block>
                      <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="justify"  ><fo:inline font-weight="bold">Domicilio  y  competencia.</fo:inline> Para todos los efectos legales, judiciales o extrajudiciales derivados de este pagaré, las partes acuerdan someterse  a los Tribunales de Justicia con asiento en la comuna y ciudad del domicilio del suscriptor,  lo que  será obligatorio tanto para el suscriptor como para sus avales, endosantes u obligados por garantía.</fo:block>
                      <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="justify"  >Sin perjuicio declaro, que mi domicilio y residencia son los consignados en  este título, comprometiéndome a dar pronto aviso por escrito al Banco, en el evento que realice cualquier cambio de domicilio en el futuro.</fo:block>
                      <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                      <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="justify"  ><fo:inline font-weight="bold">Impuesto de timbres y estampillas.</fo:inline> El impuesto de timbres y estampillas que grava  este  documento se paga por ingresos mensuales de dinero en Tesorería, según Decreto Ley Nº 3475.</fo:block>


                      <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                      <fo:block font-family="Arial, Helvetica, sans-serif" line-height="4.5mm" font-size="11pt" text-align="left" >
                      En<fo:leader leader-pattern="space" leader-length="1mm"/>
                      <fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/ciudadContrato" /></fo:inline>,
                      <fo:leader leader-pattern="space" leader-length="1mm"/>a<fo:leader leader-pattern="space" leader-length="1mm"/>
                      <fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/dia" /></fo:inline>

                      <!--<fo:leader leader-pattern="space" leader-length="1mm"/>de<fo:leader leader-pattern="space" leader-length="1mm"/>
                      <fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/mes" /></fo:inline>-->
                      <fo:leader leader-pattern="space" leader-length="1mm"/>de<fo:leader leader-pattern="space" leader-length="1mm"/>
                      <xsl:variable name="mes" select="../OperacionCredito/mes" />
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


                      <fo:leader leader-pattern="space" leader-length="1mm"/>de<fo:leader leader-pattern="space" leader-length="1mm"/>
                      <fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/anio" /></fo:inline>
                      </fo:block>


                      <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                      <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                      <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                      <fo:block font-family="Arial, Helvetica, sans-serif" line-height="4.5mm" font-size="11pt" text-align="center" ><fo:leader leader-length="6cm" leader-pattern="rule" rule-style="solid" rule-thickness="0.4mm" color="black"/></fo:block>
                      <fo:block font-family="Arial, Helvetica, sans-serif" line-height="4.5mm" font-size="11pt" text-align="center" >Firma del Suscriptor</fo:block>
                      <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                      <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>


                        <!-- AQUI COMIENZA LOS DATOS  DEL SUSCRIPTOR NOMBRE O RAZON SOCIAL -->
                         <xsl:apply-templates select="../OperacionCredito"/>
                        <!-- AQUI TERMINA LOS DATOS  DEL SUSCRIPTOR NOMBRE O RAZON SOCIAL -->

                        <!-- AQUI COMIENZA LOS DATOS  DEL SUSCRIPTOR DOMICILIO, COMUNA Y CIUDAD -->
                         <xsl:apply-templates select="../DireccionDeudorBci"/>
                        <!-- AQUI TERMINAN LOS DATOS  DEL SUSCRIPTOR DOMICILIO, COMUNA Y CIUDAD -->
		      <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
		      <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
		      <fo:block font-family="Arial, Helvetica, sans-serif" line-height="4.5mm" font-size="11pt" text-align="center" >Página 2 de 3</fo:block>
                </fo:flow>
          </xsl:when>
          <!--   AQUI TERMINA EL TEMPLATE   docpg32b  -->


          <!--   AQUI COMIENZA EL TEMPLATE   docpg35a  -->
          <xsl:when test="template = 'docpg35a'">
                <fo:flow flow-name="xsl-region-body">
              <fo:table border-collapse="collapse">
              <fo:table-column column-width="50mm" />
              <fo:table-column column-width="50mm" />
              <fo:table-body>
                  <fo:table-row>
                        <fo:table-cell text-align="left">
                                <fo:block >
                                  <fo:external-graphic height="12mm" width="25mm" vertical-align="middle">
                                    <xsl:attribute name="src">
                                    <xsl:value-of select="../OperacionCredito/logoBciSomosDiferentes"/>
                                    </xsl:attribute>
                                  </fo:external-graphic>
                                </fo:block>
                        </fo:table-cell>
                        <fo:table-cell >
                                <fo:block >
                                </fo:block>
                        </fo:table-cell>
                  </fo:table-row>
              </fo:table-body>
              </fo:table>
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                        <fo:block font-family="Arial, Helvetica, sans-serif" line-height="4.5mm" font-size="11pt" text-align="center" ><fo:inline font-weight="bold">PAGARÉ (Sin Protesto)</fo:inline></fo:block>
                        <fo:block font-family="Arial, Helvetica, sans-serif" line-height="4.5mm" font-size="11pt" text-align="center" ><fo:inline font-weight="bold">PAGO INTERES MENSUAL EN PERIODO DE GRACIA UF</fo:inline></fo:block>
                        <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                        <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                        <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                        <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                        <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>

                        <fo:table border-collapse="collapse" font-family="Arial, Helvetica, sans-serif" font-size="11pt" text-align="left">
                            <fo:table-column column-width="50%"/>
                            <fo:table-column column-width="50%"/>
                            <fo:table-body>
                                <fo:table-row>
                                    <fo:table-cell > _
                                        <fo:block font-family="Arial, Helvetica, sans-serif" line-height="4.5mm" font-size="11pt" text-align="left" >N° de Operación :<fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/nroOperacion" /></fo:inline></fo:block>
                                    </fo:table-cell>
                                </fo:table-row>
                            </fo:table-body>
                        </fo:table>

                        <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                        <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="justify"  >Por valor recibido,  debo  y  pagaré  a  la  orden  del  BANCO  DE  CREDITO E INVERSIONES, en su domicilio ubicado en Avenida El Golf N° 125, Comuna de Las Condes,  Santiago,   o   en   cualquiera   de  sus  sucursales,  la  suma  de <fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold">UF</fo:inline><fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold">
                        <xsl:value-of select='format-number(../OperacionCredito/montoCredito, "###.###.##0,0000","decimal")' />
                        </fo:inline> <fo:leader leader-pattern="space" leader-length="1mm"/>(<fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/montoCreditoManoEscrita" /></fo:inline><fo:leader leader-pattern="space" leader-length="1mm"/>Unidades de Fomento), equivalentes a esta fecha a la suma de <fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold">$</fo:inline> <fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold">
                              <xsl:value-of select='format-number(../OperacionCredito/montoCreditoEnPesos, "###.###.##0","decimal")' />



                        </fo:inline><fo:leader leader-pattern="space" leader-length="1mm"/>(<fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/montoCreditoEnPesosManoEscrita" /></fo:inline><fo:leader leader-pattern="space" leader-length="1mm"/>pesos m/l).</fo:block>
                        <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="left" ><fo:inline font-weight="bold">Tasa de Interés</fo:inline></fo:block>
                        <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="justify"  >El capital adeudado devengará a partir de  esta fecha una tasa de interés del <fo:inline font-weight="bold"><xsl:value-of select='format-number(../OperacionCredito/tasaInteres, "###,####","decimal")'/></fo:inline>% anual vencido durante todo el plazo pactado.</fo:block>
                        <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="left" ><fo:inline font-weight="bold">Amortización del Capital y Pago de intereses</fo:inline></fo:block>
                        <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="justify"  >A contar de esta fecha, los intereses correspondientes se pagarán en <fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="count(../CalendarioPago)" /></fo:inline><fo:leader leader-pattern="space" leader-length="1mm"/> cuotas mensuales y sucesivas por el monto total devengado  en  el  respectivo período,con vencimiento la primera de ellas el día <fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/fechaPrimerVctoDD" /></fo:inline><fo:leader leader-pattern="space" leader-length="1mm"/>de<fo:leader leader-pattern="space" leader-length="1mm"/>

                        <!--<fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/fechaPrimerVctoMM" /></fo:inline>-->
                        <xsl:variable name="mes" select="../OperacionCredito/fechaPrimerVctoMM" />
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



                        <fo:leader leader-pattern="space" leader-length="1mm"/>de<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/fechaPrimerVctoYYYY" /></fo:inline> las restantes los días<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/diaVencimiento" /></fo:inline><fo:leader leader-pattern="space" leader-length="1mm"/>de cada mes, venciendo  la última de ellas, el día<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/fechaUltimoVctoDD" /></fo:inline><fo:leader leader-pattern="space" leader-length="1mm"/>de<fo:leader leader-pattern="space" leader-length="1mm"/>

                        <!--<fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/fechaUltimoVctoMM" /></fo:inline>-->
                        <xsl:variable name="mes" select="../OperacionCredito/fechaUltimoVctoMM" />
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

                        <fo:leader leader-pattern="space" leader-length="1mm"/>del año<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/fechaUltimoVctoYYYY" /></fo:inline></fo:block>
                        <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="justify"  >A contar del

                           <!--    por cambiar -->
                          <fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/fechaPrimerVctoDD" /></fo:inline><fo:leader leader-pattern="space" leader-length="1mm"/>de<fo:leader leader-pattern="space" leader-length="1mm"/>

                        <!--<fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/fechaPrimerVctoMM" /></fo:inline>-->
                        <xsl:variable name="mes" select="../OperacionCredito/fechaPrimerVctoMM" />
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



                        <fo:leader leader-pattern="space" leader-length="1mm"/>de<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/fechaPrimerVctoYYYY" /></fo:inline>
                        <!--    por cambiar -->

                        el capital adeudado y sus intereses se pagarán en  <fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="count(../CalendarioPago)" /></fo:inline><fo:leader leader-pattern="space" leader-length="1mm"/>cuotas mensuales,  iguales y sucesivas, de <fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold">UF</fo:inline> <fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select='format-number(../OperacionCredito/montoCuota, "###.###.##0,000","decimal")' /></fo:inline><fo:leader leader-pattern="space" leader-length="1mm"/> cada una, con vencimiento la primera de ellas el día <fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/fechaPrimerVctoDD" /></fo:inline><fo:leader leader-pattern="space" leader-length="1mm"/>de<fo:leader leader-pattern="space" leader-length="1mm"/>

                        <!--<fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/fechaPrimerVctoMM" /></fo:inline>-->
                        <xsl:variable name="mes" select="../OperacionCredito/fechaPrimerVctoMM" />
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


                        <fo:leader leader-pattern="space" leader-length="1mm"/>del año<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/fechaPrimerVctoYYYY" /></fo:inline> y las restantes los días<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/diaVencimiento" /></fo:inline><fo:leader leader-pattern="space" leader-length="1mm"/>de cada mes, venciendo la última de ellas el día <fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/fechaUltimoVctoDD" /></fo:inline><fo:leader leader-pattern="space" leader-length="1mm"/>de<fo:leader leader-pattern="space" leader-length="1mm"/>

                        <!--<fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/fechaUltimoVctoMM" /></fo:inline>-->
                        <xsl:variable name="mes" select="../OperacionCredito/fechaUltimoVctoMM" />
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



                        <fo:leader leader-pattern="space" leader-length="1mm"/>de<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/fechaUltimoVctoYYYY" /></fo:inline></fo:block>
                        <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="justify"  ><fo:inline font-weight="bold">Prórroga  de plazo  por día inhábil.</fo:inline> Las cuotas de  amortización de capital e intereses se  pagarán a su vencimiento, siempre que éste corresponda a un día hábil  bancario.  En  caso  contrario,  se  pagarán  el  día  hábil  bancario siguiente</fo:block>
                        <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="justify"  ><fo:inline font-weight="bold">Equivalencia.</fo:inline> Las sumas adeudadas,  tanto  en  lo  referente a capital como a intereses, se calcularán por su equivalente en moneda legal chilena al día de pago efectivo.</fo:block>
                        <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="justify"  ><fo:inline font-weight="bold">Prepagos.</fo:inline> Si el monto  de  capital  inicial supera el equivalente a UF 5.000, todo pago anticipado, sea total o parcial, será convenido libremente entre el suscriptor y el Banco. A falta  de acuerdo, el  suscriptor podrá en todo caso anticipar  el pago, total o  parcialmente, y en este último caso, siempre que el importe a  pagar sea igual o superior al 20 % del capital de la obligación adeudada, pagando  además los intereses estipulados devengados y no pagados a la fecha del prepago,  calculados  sobre el saldo insoluto, más los intereses estipulados en  este instrumento, calculados sobre el capital prepagado desde la  fecha del prepago  hasta el vencimiento del plazo pactado. Si el monto de capital  inicial no  supera  el  equivalente a UF 5.000, al capital prepagado deberán  sumársele los intereses  calculados  hasta la fecha del prepago y la comisión  de  prepago  máxima  que  el  articulo  10 de la Ley 18.010 permite pactar.</fo:block>
                        <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="justify"  ><fo:inline font-weight="bold">Exigibilidad anticipada.</fo:inline>  El no pago oportuno de una cualquiera de las cuotas de  capital  y/o de interés  comprendidos en esta obligación, dará derecho al acreedor a  hacer exigible  de inmediato y anticipadamente el monto total del saldo  insoluto  adeudado  a  esa  fecha, el  que  desde  esa  misma fecha se considerará de plazo vencido y devengará en favor del acreedor o de quien sus derechos represente, el interés máximo convencional  que rija durante la mora o simple retardo.</fo:block>
                        <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="justify"  >Se deja expresamente  establecido que el ejercicio de este derecho constituye una  sanción  al  suscriptor  por el  no  pago de la deuda e importa una mera facultad  establecida  en  beneficio exclusivo del acreedor, que no altera en caso  alguno la fecha  de vencimiento del  pagaré originalmente pactada, ni a la exigibilidad de las acciones cambiarias y ejecutivas derivadas de éste.</fo:block>
                        <fo:block ><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                        <fo:block font-family="Arial, Helvetica, sans-serif" line-height="4.5mm" font-size="11pt" text-align="center" >Página 1 de 3</fo:block>
                </fo:flow>
          </xsl:when>
          <!--   AQUI TERMINA EL TEMPLATE   docpg35a  -->


          <!--   AQUI COMIENZA EL TEMPLATE   docpg35b  -->
          <xsl:when test="template = 'docpg35b'">
                <fo:flow flow-name="xsl-region-body">
              <fo:table border-collapse="collapse">
              <fo:table-column column-width="50mm" />
              <fo:table-column column-width="50mm" />
              <fo:table-body>
                  <fo:table-row>
                        <fo:table-cell text-align="left">
                                <fo:block >
                                  <fo:external-graphic height="12mm" width="25mm" vertical-align="middle">
                                    <xsl:attribute name="src">
                                    <xsl:value-of select="../OperacionCredito/logoBciSomosDiferentes"/>
                                    </xsl:attribute>
                                  </fo:external-graphic>
                                </fo:block>
                        </fo:table-cell>
                        <fo:table-cell >
                                <fo:block >
                                </fo:block>
                        </fo:table-cell>
                  </fo:table-row>
              </fo:table-body>
              </fo:table>
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block font-family="Arial, Helvetica, sans-serif" line-height="4.5mm" font-size="11pt" text-align="left" >Nº Operación<fo:leader leader-pattern="space" leader-length="18.5mm"/>:<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/nroOperacion" /></fo:inline></fo:block>
              <fo:block font-family="Arial, Helvetica, sans-serif" line-height="4.5mm" font-size="11pt" text-align="left" >Fecha de suscripción<fo:leader leader-pattern="space" leader-length="6.8mm"/>:<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="substring(../OperacionCredito/fechaSuscripcion,0,4)" /></fo:inline>
              <xsl:variable name="mes" select="substring(../OperacionCredito/fechaSuscripcion,4,2)" />
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
              <fo:inline font-weight="bold"><xsl:value-of select="substring(../OperacionCredito/fechaSuscripcion,6,5)" /></fo:inline>
              </fo:block>
              <fo:block font-family="Arial, Helvetica, sans-serif" line-height="4.5mm" font-size="11pt" text-align="left" >Monto<fo:leader leader-pattern="space" leader-length="29.6mm"/>:<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/moneda" /></fo:inline><fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold">

              <xsl:variable name="moneda" select="../OperacionCredito/moneda" />
                <xsl:choose>
                  <xsl:when test="$moneda = 'UF'">
                     <xsl:value-of select='format-number(../OperacionCredito/montoCredito, "###.###.##0,0000","decimal")' />
                  </xsl:when>

                  <xsl:when test="$moneda = '$'">
                    <xsl:value-of select='format-number(../OperacionCredito/montoCredito, "###.###.##0","decimal")' />
                  </xsl:when>
              </xsl:choose>

              </fo:inline></fo:block>
              <fo:block font-family="Arial, Helvetica, sans-serif" line-height="4.5mm" font-size="11pt" text-align="left" >Deudor<fo:leader leader-pattern="space" leader-length="28mm"/>:<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/nombreCompletoCliente" /></fo:inline></fo:block>
              <fo:block font-family="Arial, Helvetica, sans-serif" line-height="4.5mm" font-size="11pt" text-align="left" >RUT<fo:leader leader-pattern="space" leader-length="32.2mm"/>:<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select='format-number(../OperacionCredito/rutCliente, "###.###.##0","rut")' /></fo:inline>-<fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/dvCliente" /></fo:inline></fo:block>
              
                          <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                          <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                          <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="justify"  >El Banco podrá hacer exigible de inmediato el monto total adeudado, expirando todos  los plazos  pendientes  por el sólo hecho de constituirse en mora o de habérsele  protestado  al  deudor  o  al  aval,  por falta  de pago,cualquier documento, pagaré, letra  de  cambio  o  cheque, aceptado, suscrito, girado o avalado por él.</fo:block>
                          <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="justify"  >Se  deja  expresamente  establecido  que corresponderá al deudor acreditar el pago de las cuotas en que se divide el presente instrumento, en caso de cobro judicial.</fo:block>
                          <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="justify"  ><fo:inline font-weight="bold">Indivisibilidad  y  solidaridad.</fo:inline> Las  obligaciones  que emanen de este pagaré serán  solidarias  para el suscriptor, avalista(s) y  demás obligados al pago y  serán  indivisibles  para sus herederos. Además, el suscriptor  pagará los gastos, impuestos y costas personales y procesales que correspondan.</fo:block>
                          <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="justify"  ><fo:inline font-weight="bold">Mandato para prórrogas.</fo:inline> El  suscriptor  faculta  al Banco de Crédito  e  Inversiones para que en su nombre y representación otorgue, previa autorización expresa de éste, una o más prórrogas que establezcan nuevas condiciones, tasas de interés y fechas de vencimiento. </fo:block>
                          <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="justify"  ><fo:inline font-weight="bold">Domicilio  y  competencia.</fo:inline>  Para todos los efectos legales, judiciales o extrajudiciales derivados de este pagaré, las partes acuerdan someterse  a los Tribunales de Justicia con asiento en la comuna y ciudad del domicilio del suscriptor,  lo que  será obligatorio tanto para el suscriptor como para sus avales, endosantes u obligados por garantía. Sin perjuicio declaro, que mi domicilio y residencia son los consignados en  este título, comprometiéndome a dar pronto aviso por escrito al Banco, en el evento que realice cualquier cambio de domicilio en el futuro.</fo:block>
                          <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="justify"  ><fo:inline font-weight="bold">Impuesto  de timbres y estampillas.</fo:inline> El impuesto de  timbres y estampillas que grava  este documento  se paga por ingresos mensuales de dinero en Tesorería, según Decreto Ley Nº 3475.</fo:block>
                          <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                          <fo:block font-family="Arial, Helvetica, sans-serif" line-height="4.5mm" font-size="11pt" text-align="left" >
                          En<fo:leader leader-pattern="space" leader-length="1mm"/>
                          <fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/ciudadContrato" /></fo:inline>,
                          <fo:leader leader-pattern="space" leader-length="1mm"/>a<fo:leader leader-pattern="space" leader-length="1mm"/>
                          <fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/dia" /></fo:inline>

                          <!--<fo:leader leader-pattern="space" leader-length="1mm"/>de<fo:leader leader-pattern="space" leader-length="1mm"/>
                          <fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/mes" /></fo:inline>-->
                          <fo:leader leader-pattern="space" leader-length="1mm"/>de<fo:leader leader-pattern="space" leader-length="1mm"/>
                          <xsl:variable name="mes" select="../OperacionCredito/mes" />
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


                          <fo:leader leader-pattern="space" leader-length="1mm"/>de<fo:leader leader-pattern="space" leader-length="1mm"/>
                          <fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/anio" /></fo:inline>
                          </fo:block>



                          <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                          <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                          <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                          <fo:block font-family="Arial, Helvetica, sans-serif" line-height="4.5mm" font-size="11pt" text-align="center" ><fo:leader leader-length="6cm" leader-pattern="rule" rule-style="solid" rule-thickness="0.4mm" color="black"/></fo:block>
                          <fo:block font-family="Arial, Helvetica, sans-serif" line-height="4.5mm" font-size="11pt" text-align="center" >Firma del Suscriptor</fo:block>
                          <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                          <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>

                        <!-- AQUI COMIENZA LOS DATOS  DEL SUSCRIPTOR NOMBRE O RAZON SOCIAL -->
                         <xsl:apply-templates select="../OperacionCredito"/>
                        <!-- AQUI TERMINA LOS DATOS  DEL SUSCRIPTOR NOMBRE O RAZON SOCIAL -->

                        <!-- AQUI COMIENZA LOS DATOS  DEL SUSCRIPTOR DOMICILIO, COMUNA Y CIUDAD -->
                         <xsl:apply-templates select="../DireccionDeudorBci"/>
                        <!-- AQUI TERMINAN LOS DATOS  DEL SUSCRIPTOR DOMICILIO, COMUNA Y CIUDAD -->
                        <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                        <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
			<fo:block font-family="Arial, Helvetica, sans-serif" line-height="4.5mm" font-size="11pt" text-align="center" >Página 2 de 3</fo:block>	

                </fo:flow>
          </xsl:when>
          <!--   AQUI TERMINA EL TEMPLATE   docpg35b  -->




          <!--   AQUI COMIENZA EL TEMPLATE   docpg36a  -->
          <xsl:when test="template = 'docpg36a'">
                <fo:flow flow-name="xsl-region-body">
              <fo:table border-collapse="collapse">
              <fo:table-column column-width="50mm" />
              <fo:table-column column-width="50mm" />
              <fo:table-body>
                  <fo:table-row>
                        <fo:table-cell text-align="left">
                                <fo:block >
                                  <fo:external-graphic height="12mm" width="25mm" vertical-align="middle">
                                    <xsl:attribute name="src">
                                    <xsl:value-of select="../OperacionCredito/logoBciSomosDiferentes"/>
                                    </xsl:attribute>
                                  </fo:external-graphic>
                                </fo:block>
                        </fo:table-cell>
                        <fo:table-cell >
                                <fo:block >
                                </fo:block>
                        </fo:table-cell>
                  </fo:table-row>
              </fo:table-body>
              </fo:table>
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                          <fo:block font-family="Arial, Helvetica, sans-serif" line-height="4.5mm" font-size="11pt" text-align="center" ><fo:inline font-weight="bold">PAGARÉ (Sin Protesto) UF</fo:inline></fo:block>
                          <fo:block font-family="Arial, Helvetica, sans-serif" line-height="4.5mm" font-size="11pt" text-align="center" ><fo:inline font-weight="bold">PAGO INTERES TRIMESTRAL EN PERIODO DE GRACIA</fo:inline></fo:block>
                          <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                          <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                          <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                          <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                          <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>

                          <fo:table border-collapse="collapse" font-family="Arial, Helvetica, sans-serif" font-size="11pt" text-align="left">
                              <fo:table-column column-width="50%"/>
                              <fo:table-column column-width="50%"/>
                              <fo:table-body>
                                  <fo:table-row>
                                      <fo:table-cell > _
                                          <fo:block font-family="Arial, Helvetica, sans-serif" line-height="4.5mm" font-size="11pt" text-align="left" >N° de Operación :<fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/nroOperacion" /></fo:inline></fo:block>
                                      </fo:table-cell>
                                  </fo:table-row>
                              </fo:table-body>
                          </fo:table>


                          <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                          <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="justify"  >Por valor recibido,  debo  y  pagaré  a  la  orden  del  BANCO  DE  CREDITO E INVERSIONES, en su domicilio ubicado en Avenida El Golf N° 125, Comuna de Las Condes,  Santiago,   o   en   cualquiera   de  sus  sucursales,  la  suma  de <fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold">UF</fo:inline><fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold">

                                 <xsl:value-of select='format-number(../OperacionCredito/montoCredito, "###.###.##0,0000","decimal")' />

                          </fo:inline> <fo:leader leader-pattern="space" leader-length="1mm"/>(<fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/montoCreditoManoEscrita" /></fo:inline> Unidades de Fomento), equivalentes a esta fecha a la suma de <fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold">$</fo:inline><fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold">
                          <xsl:value-of select='format-number(../OperacionCredito/montoCreditoEnPesos, "###.###.##0","decimal")' />
                          </fo:inline><fo:leader leader-pattern="space" leader-length="1mm"/>(<fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/montoCreditoEnPesosManoEscrita" /></fo:inline><fo:leader leader-pattern="space" leader-length="1mm"/>pesos m/l).</fo:block>
                          <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="left" ><fo:inline font-weight="bold">Tasa de Interés</fo:inline></fo:block>
                          <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="justify"  >El capital adeudado devengará a partir de  esta fecha una tasa de interés del <fo:inline font-weight="bold"><xsl:value-of select='format-number(../OperacionCredito/tasaInteres, "###,####","decimal")'/></fo:inline>% anual vencido durante todo el plazo pactado.</fo:block>
                          <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="left" ><fo:inline font-weight="bold">Amortización del Capital y Pago de intereses</fo:inline></fo:block>
                          <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="justify"  >A contar de esta fecha, los intereses correspondientes se pagarán en <fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="count(../CalendarioPago)" /></fo:inline> cuotas trimestrales y sucesivas por el monto total devengado en el respectivo período,con vencimiento la primera de ellas el día <fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/fechaPrimerVctoDD" /></fo:inline><fo:leader leader-pattern="space" leader-length="1mm"/>de<fo:leader leader-pattern="space" leader-length="1mm"/>

                         <!-- <fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/fechaPrimerVctoMM" /></fo:inline>-->
                          <xsl:variable name="mes" select="../OperacionCredito/fechaPrimerVctoMM" />
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

                          <fo:leader leader-pattern="space" leader-length="1mm"/>de<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/fechaPrimerVctoYYYY" /></fo:inline> las restantes los días<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/diaVencimiento" /></fo:inline><fo:leader leader-pattern="space" leader-length="1mm"/>de cada mes, venciendo  la última de ellas, el día<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/fechaUltimoVctoDD" /></fo:inline><fo:leader leader-pattern="space" leader-length="1mm"/>de<fo:leader leader-pattern="space" leader-length="1mm"/>

                          <!--<fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/fechaUltimoVctoMM" /></fo:inline>-->
                        <xsl:variable name="mes" select="../OperacionCredito/fechaUltimoVctoMM" />
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


                          <fo:leader leader-pattern="space" leader-length="1mm"/>del año<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/fechaUltimoVctoYYYY" /></fo:inline></fo:block>
                          <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="justify"  >A contar del

                           <!--    por cambiar -->
                          <fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/fechaPrimerVctoDD" /></fo:inline><fo:leader leader-pattern="space" leader-length="1mm"/>de<fo:leader leader-pattern="space" leader-length="1mm"/>

                        <!--<fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/fechaPrimerVctoMM" /></fo:inline>-->
                        <xsl:variable name="mes" select="../OperacionCredito/fechaPrimerVctoMM" />
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



                        <fo:leader leader-pattern="space" leader-length="1mm"/>de<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/fechaPrimerVctoYYYY" /></fo:inline>
                        <!--    por cambiar -->

                          el capital adeudado y sus intereses se pagarán en  <fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="count(../CalendarioPago)" /></fo:inline><fo:leader leader-pattern="space" leader-length="1mm"/>cuotas mensuales,  iguales y sucesivas, de <fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/moneda" /></fo:inline> <fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select='format-number(../OperacionCredito/montoCuota, "###.###.##0,000","decimal")' /></fo:inline><fo:leader leader-pattern="space" leader-length="1mm"/> cada una, con vencimiento la primera de ellas el día <fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/fechaPrimerVctoDD" /></fo:inline><fo:leader leader-pattern="space" leader-length="1mm"/>de<fo:leader leader-pattern="space" leader-length="1mm"/>

                         <!-- <fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/fechaPrimerVctoMM" /></fo:inline>-->
                          <xsl:variable name="mes" select="../OperacionCredito/fechaPrimerVctoMM" />
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

                          <fo:leader leader-pattern="space" leader-length="1mm"/>del año<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/fechaPrimerVctoYYYY" /></fo:inline> y las restantes los días<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/diaVencimiento" /></fo:inline><fo:leader leader-pattern="space" leader-length="1mm"/>de cada mes, venciendo la última de ellas el día <fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/fechaUltimoVctoDD" /></fo:inline><fo:leader leader-pattern="space" leader-length="1mm"/>de<fo:leader leader-pattern="space" leader-length="1mm"/>

                          <!--<fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/fechaUltimoVctoMM" /></fo:inline>-->
                        <xsl:variable name="mes" select="../OperacionCredito/fechaUltimoVctoMM" />
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


                          <fo:leader leader-pattern="space" leader-length="1mm"/>de<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/fechaUltimoVctoYYYY" /></fo:inline></fo:block>
                          <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="justify"  ><fo:inline font-weight="bold">Prórroga  de plazo  por día inhábil.</fo:inline> Las cuotas de  amortización de capital e intereses se  pagarán a su vencimiento, siempre que éste corresponda a un día hábil  bancario.  En  caso  contrario,  se  pagarán  el  día  hábil  bancario siguiente</fo:block>
                          <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="justify"  ><fo:inline font-weight="bold">Equivalencia.</fo:inline> Las sumas adeudadas,  tanto  en  lo  referente a capital como a intereses, se calcularán por su equivalente en moneda legal chilena al día de pago efectivo.</fo:block>
                          <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="justify"  ><fo:inline font-weight="bold">Prepagos.</fo:inline> Si el monto  de  capital  inicial supera el equivalente a UF 5.000, todo pago anticipado, sea total o parcial, será convenido libremente entre el suscriptor y el Banco. A falta  de acuerdo, el  suscriptor podrá en todo caso anticipar  el pago, total o  parcialmente, y en este último caso, siempre que el importe a  pagar sea igual o superior al 20 % del capital de la obligación adeudada, pagando  además los intereses estipulados devengados y no pagados a la fecha del prepago,  calculados  sobre el saldo insoluto, más los intereses estipulados en  este instrumento, calculados sobre el capital prepagado desde la  fecha del prepago  hasta el vencimiento del plazo pactado. Si el monto de capital  inicial no  supera  el  equivalente a UF 5.000, al capital prepagado deberán  sumársele los intereses  calculados  hasta la fecha del prepago y la comisión  de  prepago  máxima  que  el  articulo  10 de la Ley 18.010 permite pactar.</fo:block>
                          <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="justify"  ><fo:inline font-weight="bold">Exigibilidad anticipada.</fo:inline>  El no pago oportuno de una cualquiera de las cuotas de  capital  y/o de interés  comprendidos en esta obligación, dará derecho al acreedor a  hacer exigible  de inmediato y anticipadamente el monto total del saldo  insoluto  adeudado  a  esa  fecha, el  que  desde  esa  misma fecha se considerará de plazo vencido y devengará en favor del acreedor o de quien sus derechos represente, el interés máximo convencional  que rija durante la mora o simple retardo.</fo:block>
                          <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="justify"  >Se deja expresamente  establecido que el ejercicio de este derecho constituye una  sanción  al  suscriptor  por el  no  pago de la deuda e importa una mera facultad  establecida  en  beneficio exclusivo del acreedor, que no altera en caso  alguno la fecha  de vencimiento del  pagaré originalmente pactada, ni a la exigibilidad de las acciones cambiarias y ejecutivas derivadas de éste.</fo:block>
                          <fo:block ><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
			  <fo:block font-family="Arial, Helvetica, sans-serif" line-height="4.5mm" font-size="11pt" text-align="center" >Página 1 de 3</fo:block>
                </fo:flow>
          </xsl:when>
          <!--   AQUI TERMINA EL TEMPLATE   docpg36a  -->


          <!--   AQUI COMIENZA EL TEMPLATE   docpg36b  -->
          <xsl:when test="template = 'docpg36b'">
                <fo:flow flow-name="xsl-region-body">
              <fo:table border-collapse="collapse">
              <fo:table-column column-width="50mm" />
              <fo:table-column column-width="50mm" />
              <fo:table-body>
                  <fo:table-row>
                        <fo:table-cell text-align="left">
                                <fo:block >
                                  <fo:external-graphic height="12mm" width="25mm" vertical-align="middle">
                                    <xsl:attribute name="src">
                                    <xsl:value-of select="../OperacionCredito/logoBciSomosDiferentes"/>
                                    </xsl:attribute>
                                  </fo:external-graphic>
                                </fo:block>
                        </fo:table-cell>
                        <fo:table-cell >
                                <fo:block >
                                </fo:block>
                        </fo:table-cell>
                  </fo:table-row>
              </fo:table-body>
              </fo:table>
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block font-family="Arial, Helvetica, sans-serif" line-height="4.5mm" font-size="11pt" text-align="left" >Nº Operación<fo:leader leader-pattern="space" leader-length="18.5mm"/>:<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/nroOperacion" /></fo:inline></fo:block>
              <fo:block font-family="Arial, Helvetica, sans-serif" line-height="4.5mm" font-size="11pt" text-align="left" >Fecha de suscripción<fo:leader leader-pattern="space" leader-length="6.8mm"/>:<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="substring(../OperacionCredito/fechaSuscripcion,0,4)" /></fo:inline>
              <xsl:variable name="mes" select="substring(../OperacionCredito/fechaSuscripcion,4,2)" />
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
              <fo:inline font-weight="bold"><xsl:value-of select="substring(../OperacionCredito/fechaSuscripcion,6,5)" /></fo:inline>
              </fo:block>
              <fo:block font-family="Arial, Helvetica, sans-serif" line-height="4.5mm" font-size="11pt" text-align="left" >Monto<fo:leader leader-pattern="space" leader-length="29.6mm"/>:<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold">UF</fo:inline><fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold">
               <xsl:value-of select='format-number(../OperacionCredito/montoCredito, "###.###.##0,0000","decimal")' />

              </fo:inline></fo:block>
              <fo:block font-family="Arial, Helvetica, sans-serif" line-height="4.5mm" font-size="11pt" text-align="left" >Deudor<fo:leader leader-pattern="space" leader-length="28mm"/>:<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/nombreCompletoCliente" /></fo:inline></fo:block>
              <fo:block font-family="Arial, Helvetica, sans-serif" line-height="4.5mm" font-size="11pt" text-align="left" >RUT<fo:leader leader-pattern="space" leader-length="32.2mm"/>:<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select='format-number(../OperacionCredito/rutCliente, "###.###.##0","rut")' /></fo:inline>-<fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/dvCliente" /></fo:inline></fo:block>
              
                          <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                          <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                          <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="justify"  >El Banco podrá hacer exigible de inmediato el monto total adeudado, expirando todos  los plazos  pendientes  por el sólo hecho de constituirse en mora o de habérsele  protestado  al  deudor  o  al  aval,  por falta  de pago,cualquier documento, pagaré, letra  de  cambio  o  cheque, aceptado, suscrito, girado o avalado por él.</fo:block>
                          <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="justify"  >Se  deja  expresamente  establecido  que corresponderá al deudor acreditar el pago de las cuotas en que se divide el presente instrumento, en caso de cobro judicial.</fo:block>
                          <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="justify"  ><fo:inline font-weight="bold">Indivisibilidad  y  solidaridad.</fo:inline> Las  obligaciones  que emanen de este pagaré serán  solidarias  para el suscriptor, avalista(s) y  demás obligados al pago y  serán  indivisibles  para sus herederos. Además, el suscriptor  pagará los gastos, impuestos y costas personales y procesales que correspondan.</fo:block>
                          <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="justify"  ><fo:inline font-weight="bold">Mandato para prórrogas.</fo:inline> El  suscriptor  faculta  al Banco de Crédito  e  Inversiones para que en su nombre y representación otorgue, previa autorización expresa de éste, una o más prórrogas que establezcan nuevas condiciones, tasas de interés y fechas de vencimiento. </fo:block>
                          <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="justify"  ><fo:inline font-weight="bold">Domicilio  y  competencia.</fo:inline>  Para todos los efectos legales, judiciales o extrajudiciales derivados de este pagaré, las partes acuerdan someterse  a los Tribunales de Justicia con asiento en la comuna y ciudad del domicilio del suscriptor,  lo que  será obligatorio tanto para el suscriptor como para sus avales, endosantes u obligados por garantía. Sin perjuicio declaro, que mi domicilio y residencia son los consignados en  este título, comprometiéndome a dar pronto aviso por escrito al Banco, en el evento que realice cualquier cambio de domicilio en el futuro.</fo:block>
                          <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="justify"  ><fo:inline font-weight="bold">Impuesto  de timbres y estampillas.</fo:inline> El impuesto de  timbres y estampillas que grava  este documento  se paga por ingresos mensuales de dinero en Tesorería, según Decreto Ley Nº 3475.</fo:block>


                          <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                          <fo:block font-family="Arial, Helvetica, sans-serif" line-height="4.5mm" font-size="11pt" text-align="left" >
                          En<fo:leader leader-pattern="space" leader-length="1mm"/>
                          <fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/ciudadContrato" /></fo:inline>,
                          <fo:leader leader-pattern="space" leader-length="1mm"/>a<fo:leader leader-pattern="space" leader-length="1mm"/>
                          <fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/dia" /></fo:inline>

                          <!--<fo:leader leader-pattern="space" leader-length="1mm"/>de<fo:leader leader-pattern="space" leader-length="1mm"/>
                          <fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/mes" /></fo:inline>-->
                          <fo:leader leader-pattern="space" leader-length="1mm"/>de<fo:leader leader-pattern="space" leader-length="1mm"/>
                          <xsl:variable name="mes" select="../OperacionCredito/mes" />
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


                          <fo:leader leader-pattern="space" leader-length="1mm"/>de<fo:leader leader-pattern="space" leader-length="1mm"/>
                          <fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/anio" /></fo:inline>
                          </fo:block>


                          <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                          <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                          <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                          <fo:block font-family="Arial, Helvetica, sans-serif" line-height="4.5mm" font-size="11pt" text-align="center" ><fo:leader leader-length="6cm" leader-pattern="rule" rule-style="solid" rule-thickness="0.4mm" color="black"/></fo:block>
                          <fo:block font-family="Arial, Helvetica, sans-serif" line-height="4.5mm" font-size="11pt" text-align="center" >Firma del Suscriptor</fo:block>
                          <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                          <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>

                        <!-- AQUI COMIENZA LOS DATOS  DEL SUSCRIPTOR NOMBRE O RAZON SOCIAL -->
                         <xsl:apply-templates select="../OperacionCredito"/>
                        <!-- AQUI TERMINA LOS DATOS  DEL SUSCRIPTOR NOMBRE O RAZON SOCIAL -->

                        <!-- AQUI COMIENZA LOS DATOS  DEL SUSCRIPTOR DOMICILIO, COMUNA Y CIUDAD -->
                         <xsl:apply-templates select="../DireccionDeudorBci"/>
                        <!-- AQUI TERMINAN LOS DATOS  DEL SUSCRIPTOR DOMICILIO, COMUNA Y CIUDAD -->
                        <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                        <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
			<fo:block font-family="Arial, Helvetica, sans-serif" line-height="4.5mm" font-size="11pt" text-align="center" >Página 2 de 3</fo:block>
                </fo:flow>
          </xsl:when>
          <!--   AQUI TERMINA EL TEMPLATE   docpg36b  -->


          <!--   AQUI COMIENZA EL TEMPLATE   docpg37a  -->
          <xsl:when test="template = 'docpg37a'">
                <fo:flow flow-name="xsl-region-body">
              <fo:table border-collapse="collapse">
              <fo:table-column column-width="50mm" />
              <fo:table-column column-width="50mm" />
              <fo:table-body>
                  <fo:table-row>
                        <fo:table-cell text-align="left">
                                <fo:block >
                                  <fo:external-graphic height="12mm" width="25mm" vertical-align="middle">
                                    <xsl:attribute name="src">
                                    <xsl:value-of select="../OperacionCredito/logoBciSomosDiferentes"/>
                                    </xsl:attribute>
                                  </fo:external-graphic>
                                </fo:block>
                        </fo:table-cell>
                        <fo:table-cell >
                                <fo:block >
                                </fo:block>
                        </fo:table-cell>
                  </fo:table-row>
              </fo:table-body>
              </fo:table>
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                          <fo:block font-family="Arial, Helvetica, sans-serif" line-height="4.5mm" font-size="11pt" text-align="center" ><fo:inline font-weight="bold">PAGARÉ (Sin Protesto) UF</fo:inline></fo:block>
                          <fo:block font-family="Arial, Helvetica, sans-serif" line-height="4.5mm" font-size="11pt" text-align="center" ><fo:inline font-weight="bold">PAGO INTERES SEMESTRAL EN PERIODO DE GRACIA</fo:inline></fo:block>
                          <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                          <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                          <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                          <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                          <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>

                          <fo:table border-collapse="collapse" font-family="Arial, Helvetica, sans-serif" font-size="11pt" text-align="left">
                              <fo:table-column column-width="50%"/>
                              <fo:table-column column-width="50%"/>
                              <fo:table-body>
                                  <fo:table-row>
                                      <fo:table-cell > _
                                          <fo:block font-family="Arial, Helvetica, sans-serif" line-height="4.5mm" font-size="11pt" text-align="left" >N° de Operación :<fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/nroOperacion" /></fo:inline></fo:block>
                                      </fo:table-cell>
                                  </fo:table-row>
                              </fo:table-body>
                          </fo:table>


                          <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                          <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="justify"  >Por valor recibido,  debo  y  pagaré  a  la  orden  del  BANCO  DE  CREDITO E INVERSIONES, en su domicilio ubicado en Avenida El Golf N° 125, Comuna de Las Condes,  Santiago,   o   en   cualquiera   de  sus  sucursales,  la  suma  de <fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold">UF</fo:inline><fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold">
                               <xsl:value-of select='format-number(../OperacionCredito/montoCredito, "###.###.##0,0000","decimal")' />
                          </fo:inline> <fo:leader leader-pattern="space" leader-length="1mm"/>(<fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/montoCreditoManoEscrita" /></fo:inline> Unidades de Fomento), equivalentes a esta fecha a la suma de <fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold">$</fo:inline><fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold">
                                <xsl:value-of select='format-number(../OperacionCredito/montoCreditoEnPesos, "###.###.##0","decimal")' />
                          </fo:inline><fo:leader leader-pattern="space" leader-length="1mm"/>(<fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/montoCreditoEnPesosManoEscrita" /></fo:inline><fo:leader leader-pattern="space" leader-length="1mm"/>pesos m/l).</fo:block>
                          <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="left" ><fo:inline font-weight="bold">Tasa de Interés</fo:inline></fo:block>
                          <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="justify"  >El capital adeudado devengará a partir de  esta fecha una tasa de interés del <fo:inline font-weight="bold"><xsl:value-of select='format-number(../OperacionCredito/tasaInteres, "###,####","decimal")'/></fo:inline>% anual vencido durante todo el plazo pactado.</fo:block>
                          <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="left" ><fo:inline font-weight="bold">Amortización del Capital y Pago de intereses</fo:inline></fo:block>
                          <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="justify"  >A contar de esta fecha, los intereses correspondientes se pagarán en <fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="count(../CalendarioPago)" /></fo:inline> cuotas semestrales y sucesivas por el monto total devengado en el  respectivo período,con vencimiento la primera de ellas el día <fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/fechaPrimerVctoDD" /></fo:inline><fo:leader leader-pattern="space" leader-length="1mm"/>de<fo:leader leader-pattern="space" leader-length="1mm"/>

                          <!--<fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/fechaPrimerVctoMM" /></fo:inline>-->
                          <xsl:variable name="mes" select="../OperacionCredito/fechaPrimerVctoMM" />
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

                          <fo:leader leader-pattern="space" leader-length="1mm"/>de<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/fechaPrimerVctoYYYY" /></fo:inline> las restantes los días<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/diaVencimiento" /></fo:inline><fo:leader leader-pattern="space" leader-length="1mm"/>de cada mes, venciendo  la última de ellas, el día<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/fechaUltimoVctoDD" /></fo:inline><fo:leader leader-pattern="space" leader-length="1mm"/>de<fo:leader leader-pattern="space" leader-length="1mm"/>


                          <!--<fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/fechaUltimoVctoMM" /></fo:inline>-->
                        <xsl:variable name="mes" select="../OperacionCredito/fechaUltimoVctoMM" />
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


                          <fo:leader leader-pattern="space" leader-length="1mm"/>del año<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/fechaUltimoVctoYYYY" /></fo:inline></fo:block>
                          <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="justify"  >A contar del

                           <!--    por cambiar -->
                          <fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/fechaPrimerVctoDD" /></fo:inline><fo:leader leader-pattern="space" leader-length="1mm"/>de<fo:leader leader-pattern="space" leader-length="1mm"/>

                        <!--<fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/fechaPrimerVctoMM" /></fo:inline>-->
                        <xsl:variable name="mes" select="../OperacionCredito/fechaPrimerVctoMM" />
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



                        <fo:leader leader-pattern="space" leader-length="1mm"/>de<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/fechaPrimerVctoYYYY" /></fo:inline>
                        <!--    por cambiar -->

                          el capital adeudado y sus intereses se pagarán en  <fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="count(../CalendarioPago)" /></fo:inline><fo:leader leader-pattern="space" leader-length="1mm"/>cuotas mensuales,  iguales y sucesivas, de <fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/moneda" /></fo:inline> <fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select='format-number(../OperacionCredito/montoCuota, "###.###.##0,000","decimal")' /></fo:inline><fo:leader leader-pattern="space" leader-length="1mm"/> cada una, con vencimiento la primera de ellas el día <fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/fechaPrimerVctoDD" /></fo:inline><fo:leader leader-pattern="space" leader-length="1mm"/>de<fo:leader leader-pattern="space" leader-length="1mm"/>

                         <!--<fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/fechaPrimerVctoMM" /></fo:inline>-->
                          <xsl:variable name="mes" select="../OperacionCredito/fechaPrimerVctoMM" />
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


                          <fo:leader leader-pattern="space" leader-length="1mm"/>del año<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/fechaPrimerVctoYYYY" /></fo:inline> y las restantes los días<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/diaVencimiento" /></fo:inline><fo:leader leader-pattern="space" leader-length="1mm"/>de cada mes, venciendo la última de ellas el día <fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/fechaUltimoVctoDD" /></fo:inline><fo:leader leader-pattern="space" leader-length="1mm"/>de<fo:leader leader-pattern="space" leader-length="1mm"/>

                         <!-- <fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/fechaUltimoVctoMM" /></fo:inline>-->
                          <xsl:variable name="mes" select="../OperacionCredito/fechaUltimoVctoMM" />
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


                          <fo:leader leader-pattern="space" leader-length="1mm"/>del año<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/fechaUltimoVctoYYYY" /></fo:inline></fo:block>
                          <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="justify"  ><fo:inline font-weight="bold">Prórroga  de plazo  por día inhábil.</fo:inline> Las cuotas de  amortización de capital e intereses se  pagarán a su vencimiento, siempre que éste corresponda a un día hábil  bancario.  En  caso  contrario,  se  pagarán  el  día  hábil  bancario siguiente</fo:block>
                          <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="justify"  ><fo:inline font-weight="bold">Equivalencia.</fo:inline> Las sumas adeudadas,  tanto  en  lo  referente a capital como a intereses, se calcularán por su equivalente en moneda legal chilena al día de pago efectivo.</fo:block>
                          <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="justify"  ><fo:inline font-weight="bold">Prepagos.</fo:inline> Si el monto  de  capital  inicial supera el equivalente a UF 5.000, todo pago anticipado, sea total o parcial, será convenido libremente entre el suscriptor y el Banco. A falta  de acuerdo, el  suscriptor podrá en todo caso anticipar  el pago, total o  parcialmente, y en este último caso, siempre que el importe a  pagar sea igual o superior al 20 % del capital de la obligación adeudada, pagando  además los intereses estipulados devengados y no pagados a la fecha del prepago,  calculados  sobre el saldo insoluto, más los intereses estipulados en  este instrumento, calculados sobre el capital prepagado desde la  fecha del prepago  hasta el vencimiento del plazo pactado. Si el monto de capital  inicial no  supera  el  equivalente a UF 5.000, al capital prepagado deberán  sumársele los intereses  calculados  hasta la fecha del prepago y la comisión  de  prepago  máxima  que  el  articulo  10 de la Ley 18.010 permite pactar.</fo:block>
                          <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="justify"  ><fo:inline font-weight="bold">Exigibilidad anticipada.</fo:inline>  El no pago oportuno de una cualquiera de las cuotas de  capital  y/o de interés  comprendidos en esta obligación, dará derecho al acreedor a  hacer exigible  de inmediato y anticipadamente el monto total del saldo  insoluto  adeudado  a  esa  fecha, el  que  desde  esa  misma fecha se considerará de plazo vencido y devengará en favor del acreedor o de quien sus derechos represente, el interés máximo convencional  que rija durante la mora o simple retardo.</fo:block>
                          <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="justify"  >Se deja expresamente  establecido que el ejercicio de este derecho constituye una  sanción  al  suscriptor  por el  no  pago de la deuda e importa una mera facultad  establecida  en  beneficio exclusivo del acreedor, que no altera en caso  alguno la fecha  de vencimiento del  pagaré originalmente pactada, ni a la exigibilidad de las acciones cambiarias y ejecutivas derivadas de éste.</fo:block>
                          <fo:block ><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                          <fo:block font-family="Arial, Helvetica, sans-serif" line-height="4.5mm" font-size="11pt" text-align="center" >Página 1 de 3</fo:block>
                </fo:flow>
          </xsl:when>
          <!--   AQUI TERMINA EL TEMPLATE   docpg37a  -->


          <!--   AQUI COMIENZA EL TEMPLATE   docpg37b  -->
          <xsl:when test="template = 'docpg37b'">
                <fo:flow flow-name="xsl-region-body">
              <fo:table border-collapse="collapse">
              <fo:table-column column-width="50mm" />
              <fo:table-column column-width="50mm" />
              <fo:table-body>
                  <fo:table-row>
                        <fo:table-cell text-align="left">
                                <fo:block >
                                  <fo:external-graphic height="12mm" width="25mm" vertical-align="middle">
                                    <xsl:attribute name="src">
                                    <xsl:value-of select="../OperacionCredito/logoBciSomosDiferentes"/>
                                    </xsl:attribute>
                                  </fo:external-graphic>
                                </fo:block>
                        </fo:table-cell>
                        <fo:table-cell >
                                <fo:block >
                                </fo:block>
                        </fo:table-cell>
                  </fo:table-row>
              </fo:table-body>
              </fo:table>
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block font-family="Arial, Helvetica, sans-serif" line-height="4.5mm" font-size="11pt" text-align="left" >Nº Operación<fo:leader leader-pattern="space" leader-length="18.5mm"/>:<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/nroOperacion" /></fo:inline></fo:block>
              <fo:block font-family="Arial, Helvetica, sans-serif" line-height="4.5mm" font-size="11pt" text-align="left" >Fecha de suscripción<fo:leader leader-pattern="space" leader-length="6.8mm"/>:<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="substring(../OperacionCredito/fechaSuscripcion,0,4)" /></fo:inline>
              <xsl:variable name="mes" select="substring(../OperacionCredito/fechaSuscripcion,4,2)" />
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
              <fo:inline font-weight="bold"><xsl:value-of select="substring(../OperacionCredito/fechaSuscripcion,6,5)" /></fo:inline>
              </fo:block>
              <fo:block font-family="Arial, Helvetica, sans-serif" line-height="4.5mm" font-size="11pt" text-align="left" >Monto<fo:leader leader-pattern="space" leader-length="29.6mm"/>:<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold">UF</fo:inline><fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold">
               <xsl:value-of select='format-number(../OperacionCredito/montoCredito, "###.###.##0,0000","decimal")' />

              </fo:inline></fo:block>
              <fo:block font-family="Arial, Helvetica, sans-serif" line-height="4.5mm" font-size="11pt" text-align="left" >Deudor<fo:leader leader-pattern="space" leader-length="28mm"/>:<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/nombreCompletoCliente" /></fo:inline></fo:block>
              <fo:block font-family="Arial, Helvetica, sans-serif" line-height="4.5mm" font-size="11pt" text-align="left" >RUT<fo:leader leader-pattern="space" leader-length="32.2mm"/>:<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select='format-number(../OperacionCredito/rutCliente, "###.###.##0","rut")' /></fo:inline>-<fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/dvCliente" /></fo:inline></fo:block>
              
                          <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                          <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                          <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="justify"  >El Banco podrá hacer exigible de inmediato el monto total adeudado, expirando todos  los plazos  pendientes  por el sólo hecho de constituirse en mora o de habérsele  protestado  al  deudor  o  al  aval,  por falta  de pago,cualquier documento, pagaré, letra  de  cambio  o  cheque, aceptado, suscrito, girado o avalado por él.</fo:block>
                          <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="justify"  >Se  deja  expresamente  establecido  que corresponderá al deudor acreditar el pago de las cuotas en que se divide el presente instrumento, en caso de cobro judicial.</fo:block>
                          <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="justify"  ><fo:inline font-weight="bold">Indivisibilidad  y  solidaridad.</fo:inline> Las  obligaciones  que emanen de este pagaré serán  solidarias  para el suscriptor, avalista(s) y  demás obligados al pago y  serán  indivisibles  para sus herederos. Además, el suscriptor  pagará los gastos, impuestos y costas personales y procesales que correspondan.</fo:block>
                          <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="justify"  ><fo:inline font-weight="bold">Mandato para prórrogas.</fo:inline> El  suscriptor  faculta  al Banco de Crédito  e  Inversiones para que en su nombre y representación otorgue, previa autorización expresa de éste, una o más prórrogas que establezcan nuevas condiciones, tasas de interés y fechas de vencimiento. </fo:block>
                          <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="justify"  ><fo:inline font-weight="bold">Domicilio  y  competencia.</fo:inline>  Para todos los efectos legales, judiciales o extrajudiciales derivados de este pagaré, las partes acuerdan someterse  a los Tribunales de Justicia con asiento en la comuna y ciudad del domicilio del suscriptor,  lo que  será obligatorio tanto para el suscriptor como para sus avales, endosantes u obligados por garantía. Sin perjuicio declaro, que mi domicilio y residencia son los consignados en  este título, comprometiéndome a dar pronto aviso por escrito al Banco, en el evento que realice cualquier cambio de domicilio en el futuro.</fo:block>
                          <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="justify"  ><fo:inline font-weight="bold">Impuesto  de timbres y estampillas.</fo:inline> El impuesto de  timbres y estampillas que grava  este documento  se paga por ingresos mensuales de dinero en Tesorería, según Decreto Ley Nº 3475.</fo:block>


                          <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                          <fo:block font-family="Arial, Helvetica, sans-serif" line-height="4.5mm" font-size="11pt" text-align="left" >
                          En<fo:leader leader-pattern="space" leader-length="1mm"/>
                          <fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/ciudadContrato" /></fo:inline>,
                          <fo:leader leader-pattern="space" leader-length="1mm"/>a<fo:leader leader-pattern="space" leader-length="1mm"/>
                          <fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/dia" /></fo:inline>

                          <!--<fo:leader leader-pattern="space" leader-length="1mm"/>de<fo:leader leader-pattern="space" leader-length="1mm"/>
                          <fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/mes" /></fo:inline>-->
                          <fo:leader leader-pattern="space" leader-length="1mm"/>de<fo:leader leader-pattern="space" leader-length="1mm"/>
                          <xsl:variable name="mes" select="../OperacionCredito/mes" />
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


                          <fo:leader leader-pattern="space" leader-length="1mm"/>de<fo:leader leader-pattern="space" leader-length="1mm"/>
                          <fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/anio" /></fo:inline>
                          </fo:block>




                          <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                          <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                          <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                          <fo:block font-family="Arial, Helvetica, sans-serif" line-height="4.5mm" font-size="11pt" text-align="center" ><fo:leader leader-length="6cm" leader-pattern="rule" rule-style="solid" rule-thickness="0.4mm" color="black"/></fo:block>
                          <fo:block font-family="Arial, Helvetica, sans-serif" line-height="4.5mm" font-size="11pt" text-align="center" >Firma del Suscriptor</fo:block>
                          <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                          <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>

                        <!-- AQUI COMIENZA LOS DATOS  DEL SUSCRIPTOR NOMBRE O RAZON SOCIAL -->
                         <xsl:apply-templates select="../OperacionCredito"/>
                        <!-- AQUI TERMINA LOS DATOS  DEL SUSCRIPTOR NOMBRE O RAZON SOCIAL -->

                        <!-- AQUI COMIENZA LOS DATOS  DEL SUSCRIPTOR DOMICILIO, COMUNA Y CIUDAD -->
                         <xsl:apply-templates select="../DireccionDeudorBci"/>
                        <!-- AQUI TERMINAN LOS DATOS  DEL SUSCRIPTOR DOMICILIO, COMUNA Y CIUDAD -->
                        <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                        <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
			<fo:block font-family="Arial, Helvetica, sans-serif" line-height="4.5mm" font-size="11pt" text-align="center" >Página 2 de 3</fo:block>
                </fo:flow>
          </xsl:when>
          <!--   AQUI TERMINA EL TEMPLATE   docpg37b  -->


          <!--   AQUI COMIENZA EL TEMPLATE   docpg42a  -->
          <xsl:when test="template = 'docpg42a'">
                <fo:flow flow-name="xsl-region-body">
              <fo:table border-collapse="collapse">
              <fo:table-column column-width="50mm" />
              <fo:table-column column-width="50mm" />
              <fo:table-body>
                  <fo:table-row>
                        <fo:table-cell text-align="left">
                                <fo:block >
                                  <fo:external-graphic height="12mm" width="25mm" vertical-align="middle">
                                    <xsl:attribute name="src">
                                    <xsl:value-of select="../OperacionCredito/logoBciSomosDiferentes"/>
                                    </xsl:attribute>
                                  </fo:external-graphic>
                                </fo:block>
                        </fo:table-cell>
                        <fo:table-cell >
                                <fo:block >
                                </fo:block>
                        </fo:table-cell>
                  </fo:table-row>
              </fo:table-body>
              </fo:table>
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                          <fo:block font-family="Arial, Helvetica, sans-serif" line-height="4.5mm" font-size="11pt" text-align="center" ><fo:inline font-weight="bold">PAGARE (Sin Protesto)</fo:inline></fo:block>
                          <fo:block font-family="Arial, Helvetica, sans-serif" line-height="4.5mm" font-size="11pt" text-align="center" ><fo:inline font-weight="bold">PAGO INTERES MENSUAL EN PERIODO DE GRACIA $</fo:inline></fo:block>
                          <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                          <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                          <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                          <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>

                          <fo:table border-collapse="collapse" font-family="Arial, Helvetica, sans-serif" font-size="11pt" text-align="left">
                              <fo:table-column column-width="50%"/>
                              <fo:table-column column-width="50%"/>
                              <fo:table-body>
                                  <fo:table-row>
                                      <fo:table-cell > _
                                          <fo:block font-family="Arial, Helvetica, sans-serif" line-height="4.5mm" font-size="11pt" text-align="left" >N° de Operación :<fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/nroOperacion" /></fo:inline></fo:block>
                                      </fo:table-cell>
                                  </fo:table-row>
                              </fo:table-body>
                          </fo:table>


                          <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                          <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                          <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="justify"  >Por  valor  recibido,  debo  y  pagaré  a  la  orden  del  BANCO DE CREDITO E  INVERSIONES, en  su  domicilio ubicado en Avenida El Golf  N° 125,  Comuna de Las  Condes,  Santiago,  o  en  cualquiera  de  sus  sucursales,  la  suma de <fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/moneda" /></fo:inline><fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold">
                              <xsl:value-of select='format-number(../OperacionCredito/montoCredito, "###.###.##0","decimal")' />                          </fo:inline><fo:leader leader-pattern="space" leader-length="1mm"/>(<fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/montoCreditoManoEscrita" /></fo:inline> pesos m/l)</fo:block>
                          <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="left" ><fo:inline font-weight="bold">Tasa de Interés</fo:inline></fo:block>
                          <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="justify"  >El capital adeudado  devengará a partir de esta fecha una tasa de interés del <fo:inline font-weight="bold"><xsl:value-of select='format-number(../OperacionCredito/tasaInteres, "###,####","decimal")'/></fo:inline>% mensual vencido durante todo el plazo pactado.</fo:block>
                          <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="left" ><fo:inline font-weight="bold">Amortización del Capital y Pago de intereses</fo:inline></fo:block>
                          <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="justify"  >A contar de esta fecha, los intereses correspondientes se pagarán en <fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="count(../CalendarioPago)" /></fo:inline><fo:leader leader-pattern="space" leader-length="1mm"/> cuotas mensuales y sucesivas por el monto total devengado  en  el  respectivo período,con vencimiento la primera de ellas el día <fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/fechaPrimerVctoDD" /></fo:inline><fo:leader leader-pattern="space" leader-length="1mm"/>de<fo:leader leader-pattern="space" leader-length="1mm"/>

                          <!--<fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/fechaPrimerVctoMM" /></fo:inline>-->
                          <xsl:variable name="mes" select="../OperacionCredito/fechaPrimerVctoMM" />
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

                          <fo:leader leader-pattern="space" leader-length="1mm"/>de<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/fechaPrimerVctoYYYY" /></fo:inline> las restantes los días<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/diaVencimiento" /></fo:inline><fo:leader leader-pattern="space" leader-length="1mm"/>de cada mes, venciendo  la última de ellas, el día<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/fechaUltimoVctoDD" /></fo:inline><fo:leader leader-pattern="space" leader-length="1mm"/>de<fo:leader leader-pattern="space" leader-length="1mm"/>

                          <!--<fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/fechaUltimoVctoMM" /></fo:inline>-->
                        <xsl:variable name="mes" select="../OperacionCredito/fechaUltimoVctoMM" />
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

                          <fo:leader leader-pattern="space" leader-length="1mm"/>del año<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/fechaUltimoVctoYYYY" /></fo:inline></fo:block>
                          <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="justify"  >A contar del

                           <!--    por cambiar -->
                          <fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/fechaPrimerVctoDD" /></fo:inline><fo:leader leader-pattern="space" leader-length="1mm"/>de<fo:leader leader-pattern="space" leader-length="1mm"/>

                        <!--<fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/fechaPrimerVctoMM" /></fo:inline>-->
                        <xsl:variable name="mes" select="../OperacionCredito/fechaPrimerVctoMM" />
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



                        <fo:leader leader-pattern="space" leader-length="1mm"/>de<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/fechaPrimerVctoYYYY" /></fo:inline>
                        <!--    por cambiar -->

                          el capital adeudado y sus intereses se pagarán en  <fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="count(../CalendarioPago)" /></fo:inline><fo:leader leader-pattern="space" leader-length="1mm"/>cuotas mensuales,  iguales y sucesivas, de <fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/moneda" /></fo:inline> <fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select='format-number(../OperacionCredito/montoCuota, "###.###.##0","decimal")' /></fo:inline> <fo:leader leader-pattern="space" leader-length="1mm"/>cada una, con vencimiento la primera de ellas el día <fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/fechaPrimerVctoDD" /></fo:inline><fo:leader leader-pattern="space" leader-length="1mm"/>de<fo:leader leader-pattern="space" leader-length="1mm"/>

                          <!--<fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/fechaPrimerVctoMM" /></fo:inline>-->
                          <xsl:variable name="mes" select="../OperacionCredito/fechaPrimerVctoMM" />
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


                          <fo:leader leader-pattern="space" leader-length="1mm"/>del año<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/fechaPrimerVctoYYYY" /></fo:inline> y las restantes los días<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/diaVencimiento" /></fo:inline><fo:leader leader-pattern="space" leader-length="1mm"/>de cada mes, venciendo la última de ellas el día <fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/fechaUltimoVctoDD" /></fo:inline><fo:leader leader-pattern="space" leader-length="1mm"/>de<fo:leader leader-pattern="space" leader-length="1mm"/>
                          <!--<fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/fechaUltimoVctoMM" /></fo:inline>-->
                          <xsl:variable name="mes" select="../OperacionCredito/fechaUltimoVctoMM" />
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

                          <fo:leader leader-pattern="space" leader-length="1mm"/>del año<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/fechaUltimoVctoYYYY" /></fo:inline></fo:block>
                          <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="justify"  ><fo:inline font-weight="bold">Prórroga  de plazo  por día inhábil.</fo:inline> Las cuotas de  amortización de capital e intereses se  pagarán a su vencimiento, siempre que éste corresponda a un día hábil  bancario.  En  caso  contrario,  se  pagarán  el  día  hábil  bancario siguiente</fo:block>
                          <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="justify"  ><fo:inline font-weight="bold">Prepagos.</fo:inline> Si el monto  de  capital  inicial supera el equivalente a UF 5.000, todo pago anticipado, sea total o parcial, será convenido libremente entre el suscriptor y el Banco. A falta  de acuerdo, el  suscriptor podrá en todo caso anticipar  el pago, total o  parcialmente, y en este último caso, siempre que el importe a  pagar sea igual o superior al 20 % del capital de la obligación adeudada, pagando  además los intereses estipulados devengados y no pagados a la fecha del prepago,  calculados  sobre el saldo insoluto, más los intereses estipulados en  este instrumento, calculados sobre el capital prepagado desde la  fecha del prepago  hasta el vencimiento del plazo pactado. Si el monto de capital  inicial no  supera  el  equivalente a UF 5.000, al capital prepagado deberán  sumársele los intereses  calculados  hasta la fecha del prepago y la comisión  de  prepago  máxima  que  el  articulo  10 de la Ley 18.010 permite pactar.</fo:block>
                          <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="justify"  ><fo:inline font-weight="bold">Exigibilidad anticipada.</fo:inline>  El no pago oportuno de una cualquiera de las cuotas de  capital  y/o de interés  comprendidos en esta obligación, dará derecho al acreedor a  hacer exigible  de inmediato y anticipadamente el monto total del saldo  insoluto  adeudado  a  esa  fecha, el  que  desde  esa  misma fecha se considerará de plazo vencido y devengará en favor del acreedor o de quien sus derechos represente, el interés máximo convencional  que rija durante la mora o simple retardo.</fo:block>
                          <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="justify"  >Se deja expresamente  establecido que el ejercicio de este derecho constituye una  sanción  al  suscriptor  por el  no  pago de la deuda e importa una mera facultad  establecida  en  beneficio exclusivo del acreedor, que no altera en caso  alguno la fecha  de vencimiento del  pagaré originalmente pactada, ni a la exigibilidad de las acciones cambiarias y ejecutivas derivadas de éste.</fo:block>
                          <fo:block ><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                          <fo:block font-family="Arial, Helvetica, sans-serif" line-height="4.5mm" font-size="11pt" text-align="center" >Página 1 de 3</fo:block>
                </fo:flow>
          </xsl:when>
          <!--   AQUI TERMINA EL TEMPLATE   docpg42a  -->





          <!--   AQUI COMIENZA EL TEMPLATE   docpg42b  -->
          <xsl:when test="template = 'docpg42b'">
                <fo:flow flow-name="xsl-region-body">
              <fo:table border-collapse="collapse">
              <fo:table-column column-width="50mm" />
              <fo:table-column column-width="50mm" />
              <fo:table-body>
                  <fo:table-row>
                        <fo:table-cell text-align="left">
                                <fo:block >
                                  <fo:external-graphic height="12mm" width="25mm" vertical-align="middle">
                                    <xsl:attribute name="src">
                                    <xsl:value-of select="../OperacionCredito/logoBciSomosDiferentes"/>
                                    </xsl:attribute>
                                  </fo:external-graphic>
                                </fo:block>
                        </fo:table-cell>
                        <fo:table-cell >
                                <fo:block >
                                </fo:block>
                        </fo:table-cell>
                  </fo:table-row>
              </fo:table-body>
              </fo:table>
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block font-family="Arial, Helvetica, sans-serif" line-height="4.5mm" font-size="11pt" text-align="left" >Nº Operación<fo:leader leader-pattern="space" leader-length="18.5mm"/>:<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/nroOperacion" /></fo:inline></fo:block>
              <fo:block font-family="Arial, Helvetica, sans-serif" line-height="4.5mm" font-size="11pt" text-align="left" >Fecha de suscripción<fo:leader leader-pattern="space" leader-length="6.8mm"/>:<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="substring(../OperacionCredito/fechaSuscripcion,0,4)" /></fo:inline>
              <xsl:variable name="mes" select="substring(../OperacionCredito/fechaSuscripcion,4,2)" />
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
              <fo:inline font-weight="bold"><xsl:value-of select="substring(../OperacionCredito/fechaSuscripcion,6,5)" /></fo:inline>
              </fo:block>


              <fo:block font-family="Arial, Helvetica, sans-serif" line-height="4.5mm" font-size="11pt" text-align="left" >Monto<fo:leader leader-pattern="space" leader-length="29.6mm"/>:<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/moneda" /></fo:inline><fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold">

              <xsl:variable name="moneda" select="../OperacionCredito/moneda" />
                <xsl:choose>

                  <xsl:when test="$moneda = 'UF'">
                     <xsl:value-of select='format-number(../OperacionCredito/montoCredito, "###.###.##0,0000","decimal")' />
                  </xsl:when>


                  <xsl:when test="$moneda = '$'">
                    <xsl:value-of select='format-number(../OperacionCredito/montoCredito, "###.###.##0","decimal")' />
                  </xsl:when>

              </xsl:choose>

              </fo:inline></fo:block>
              <fo:block font-family="Arial, Helvetica, sans-serif" line-height="4.5mm" font-size="11pt" text-align="left" >Deudor<fo:leader leader-pattern="space" leader-length="28mm"/>:<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/nombreCompletoCliente" /></fo:inline></fo:block>
              <fo:block font-family="Arial, Helvetica, sans-serif" line-height="4.5mm" font-size="11pt" text-align="left" >RUT<fo:leader leader-pattern="space" leader-length="32.2mm"/>:<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select='format-number(../OperacionCredito/rutCliente, "###.###.##0","rut")' /></fo:inline>-<fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/dvCliente" /></fo:inline></fo:block>
              
                          <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                          <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                          <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="justify"  >El Banco podrá hacer exigible de inmediato el monto total adeudado, expirando todos  los plazos  pendientes  por el sólo hecho de constituirse en mora o de habérsele  protestado  al  deudor  o  al  aval,  por falta  de pago,cualquier documento, pagaré, letra  de  cambio  o  cheque, aceptado, suscrito, girado o avalado por él.</fo:block>
                          <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="justify"  >Se  deja  expresamente  establecido  que corresponderá al deudor acreditar el pago de las cuotas en que se divide el presente instrumento, en caso de cobro judicial.</fo:block>
                          <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="justify"  ><fo:inline font-weight="bold">Indivisibilidad  y  solidaridad.</fo:inline> Las  obligaciones  que emanen de este pagaré serán  solidarias  para el suscriptor, avalista(s) y  demás obligados al pago y  serán  indivisibles  para sus herederos. Además, el suscriptor  pagará los gastos, impuestos y costas personales y procesales que correspondan.</fo:block>
                          <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="justify"  ><fo:inline font-weight="bold">Mandato para prórrogas.</fo:inline> El  suscriptor  faculta  al Banco de Crédito  e  Inversiones para que en su nombre y representación otorgue, previa autorización expresa de éste, una o más prórrogas que establezcan nuevas condiciones, tasas de interés y fechas de vencimiento. </fo:block>
                          <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="justify"  ><fo:inline font-weight="bold">Domicilio  y  competencia.</fo:inline>  Para todos los efectos legales, judiciales o extrajudiciales derivados de este pagaré, las partes acuerdan someterse  a los Tribunales de Justicia con asiento en la comuna y ciudad del domicilio del suscriptor,  lo que  será obligatorio tanto para el suscriptor como para sus avales, endosantes u obligados por garantía. Sin perjuicio declaro, que mi domicilio y residencia son los consignados en  este título, comprometiéndome a dar pronto aviso por escrito al Banco, en el evento que realice cualquier cambio de domicilio en el futuro.</fo:block>
                          <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="justify"  ><fo:inline font-weight="bold">Impuesto  de timbres y estampillas.</fo:inline> El impuesto de  timbres y estampillas que grava  este documento  se paga por ingresos mensuales de dinero en Tesorería, según Decreto Ley Nº 3475.</fo:block>


                          <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                          <fo:block font-family="Arial, Helvetica, sans-serif" line-height="4.5mm" font-size="11pt" text-align="left" >
                          En<fo:leader leader-pattern="space" leader-length="1mm"/>
                          <fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/ciudadContrato" /></fo:inline>,
                          <fo:leader leader-pattern="space" leader-length="1mm"/>a<fo:leader leader-pattern="space" leader-length="1mm"/>
                          <fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/dia" /></fo:inline>

                          <!--<fo:leader leader-pattern="space" leader-length="1mm"/>de<fo:leader leader-pattern="space" leader-length="1mm"/>
                          <fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/mes" /></fo:inline>-->
                          <fo:leader leader-pattern="space" leader-length="1mm"/>de<fo:leader leader-pattern="space" leader-length="1mm"/>
                          <xsl:variable name="mes" select="../OperacionCredito/mes" />
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


                          <fo:leader leader-pattern="space" leader-length="1mm"/>de<fo:leader leader-pattern="space" leader-length="1mm"/>
                          <fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/anio" /></fo:inline>
                          </fo:block>

                          <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                          <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                          <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                          <fo:block font-family="Arial, Helvetica, sans-serif" line-height="4.5mm" font-size="11pt" text-align="center" ><fo:leader leader-length="6cm" leader-pattern="rule" rule-style="solid" rule-thickness="0.4mm" color="black"/></fo:block>
                          <fo:block font-family="Arial, Helvetica, sans-serif" line-height="4.5mm" font-size="11pt" text-align="center" >Firma del Suscriptor</fo:block>
                          <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                          <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>

                        <!-- AQUI COMIENZA LOS DATOS  DEL SUSCRIPTOR NOMBRE O RAZON SOCIAL -->
                         <xsl:apply-templates select="../OperacionCredito"/>
                        <!-- AQUI TERMINA LOS DATOS  DEL SUSCRIPTOR NOMBRE O RAZON SOCIAL -->

                        <!-- AQUI COMIENZA LOS DATOS  DEL SUSCRIPTOR DOMICILIO, COMUNA Y CIUDAD -->
                         <xsl:apply-templates select="../DireccionDeudorBci"/>
                        <!-- AQUI TERMINAN LOS DATOS  DEL SUSCRIPTOR DOMICILIO, COMUNA Y CIUDAD -->
                        <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                        <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
			<fo:block font-family="Arial, Helvetica, sans-serif" line-height="4.5mm" font-size="11pt" text-align="center" >Página 2 de 3</fo:block>
                </fo:flow>
          </xsl:when>
          <!--   AQUI TERMINA EL TEMPLATE   docpg42b  -->


          <!--   AQUI COMIENZA EL TEMPLATE   docpgcua  -->
          <xsl:when test="template = 'docpgcua'">
                    <fo:flow flow-name="xsl-region-body">
                    	
              <fo:table border-collapse="collapse">
                  <fo:table-column column-width="50mm" />
                  <fo:table-column column-width="50mm" />
                  <fo:table-body>
                      <fo:table-row>
                            <fo:table-cell text-align="left">
                                    <fo:block >
                                      <fo:external-graphic height="12mm" width="25mm" vertical-align="middle">
                                        <xsl:attribute name="src">
                                        <xsl:value-of select="../OperacionCredito/logoBciSomosDiferentes"/>
                                        </xsl:attribute>
                                      </fo:external-graphic>
                                    </fo:block>
                            </fo:table-cell>
                            
                            <fo:table-cell >
                                    <fo:block >
                                  
                                    </fo:block>
                            </fo:table-cell>                            
                            
                      </fo:table-row>
                </fo:table-body>
                </fo:table>
                
              <fo:table border-collapse="collapse">
                  <fo:table-column column-width="85mm" />
                  <fo:table-column column-width="50mm"/>
                  <fo:table-body>
                      <fo:table-row>
                            <fo:table-cell >
                                    <fo:block >
                                  
                                    </fo:block>
                            </fo:table-cell>
                            
                            <fo:table-cell >
                                    <fo:block font-family="Arial, Helvetica, sans-serif" line-height="4.5mm" font-size="11pt" text-align="left" ><fo:inline font-weight="bold"> PAGARE (UF)</fo:inline></fo:block>
                            </fo:table-cell>

                      </fo:table-row>
                </fo:table-body>
                </fo:table>
                
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:table border-collapse="collapse" font-family="Arial, Helvetica, sans-serif" font-size="11pt" text-align="left">
                  <fo:table-column column-width="50%"/>
                  <fo:table-column column-width="50%"/>
                  <fo:table-body>
                      <fo:table-row>
                          <fo:table-cell > _
                              <fo:block font-family="Arial, Helvetica, sans-serif" line-height="4.5mm" font-size="11pt" text-align="left" >N° de Operación : <fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/nroOperacion" /></fo:inline></fo:block>
                          </fo:table-cell>
                      </fo:table-row>
                  </fo:table-body>
              </fo:table>
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="justify"  >Por valor recibido, debo y pagaré a la orden del BANCO DE CREDITO E INVERSIONES, en  su  Oficina ubicada en El Golf número 125, Las  Condes,  Santiago,  o  en  cualquiera  de  sus  sucursales,  la  suma de <fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/moneda" /></fo:inline><fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold">
              <xsl:value-of select='format-number(../OperacionCredito/montoCredito, "###.###.##0,0000","decimal")'/>
              
              </fo:inline><fo:leader leader-pattern="space" leader-length="1mm"/>(<fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/montoCreditoManoEscrita" /></fo:inline> Unidades de Fomento ), equivalentes a esta fecha a la suma de <fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold">$</fo:inline><fo:leader leader-pattern="space" leader-length="1mm"/>
              <fo:inline font-weight="bold"><xsl:value-of select='format-number(../OperacionCredito/montoCreditoEnPesos, "###.###.##0","decimal")'/></fo:inline>
              
              <fo:leader leader-pattern="space" leader-length="1mm"/>(<fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/montoCreditoEnPesosManoEscrita"/></fo:inline> pesos m/l)</fo:block>
               
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>      
              <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="left" > <fo:inline font-weight="bold">TASA DE INTERES</fo:inline></fo:block>
              <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="justify"  >El capital adeudado devengará a partir de esta fecha y hasta el <fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/fechaUltimoVctoCuotonDD" /></fo:inline><fo:leader leader-pattern="space" leader-length="1mm"/>de<fo:leader leader-pattern="space" leader-length="1mm"/>

              <xsl:variable name="mes" select="../OperacionCredito/fechaUltimoVctoCuotonMM" />
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
              <fo:leader leader-pattern="space" leader-length="1mm"/>de<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/fechaUltimoVctoCuotonYYYY" /></fo:inline><fo:leader leader-pattern="space" leader-length="1mm"/>una tasa de interés del<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select='format-number(../OperacionCredito/tasaInteres, "###,####","decimal")'/></fo:inline>% anual. A contar del<fo:leader leader-pattern="space" leader-length="1mm"/>

              <fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/fechaPrimerVctoDD" /></fo:inline>
              <fo:leader leader-pattern="space" leader-length="1mm"/>de<fo:leader leader-pattern="space" leader-length="1mm"/>
              <xsl:variable name="mes" select="../OperacionCredito/fechaPrimerVctoMM" />
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
              <fo:leader leader-pattern="space" leader-length="1mm"/>de<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/fechaPrimerVctoYYYY" /></fo:inline><fo:leader leader-pattern="space" leader-length="1mm"/>y hasta el pago íntegro de la obligación a que se refiere el presente pagaré, el capital adeudado devengará la tasa de interés que se indica en el punto (ii) del párrafo "Amortización de capital y pago de intereses"</fo:block>
              
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>	
              <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="left" ><fo:inline font-weight="bold">AMORTIZACION DE CAPITAL Y PAGO DE INTERESES</fo:inline></fo:block>
              <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="justify"  >El capital adeudado y sus intereses se pagará en<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/nroCuotas"/></fo:inline><fo:leader leader-pattern="space" leader-length="1mm"/>cuotas conforme a lo siguiente:
              
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>              
              <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="justify" >(i)  Las<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/nroCuotas - 1"/></fo:inline><fo:leader leader-pattern="space" leader-length="1mm"/>primeras cuotas por un monto de UF<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select='format-number(../OperacionCredito/montoCuota, "###.###.##0,000","decimal")' /></fo:inline><fo:leader leader-pattern="space" leader-length="1mm"/>cada una, que comprende capital e intereses, con vencimiento la primera de ellas el día<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/fechaPrimerVctoDD" /></fo:inline><fo:leader leader-pattern="space" leader-length="1mm"/>de<fo:leader leader-pattern="space" leader-length="1mm"/>

              <xsl:variable name="mes" select="../OperacionCredito/fechaPrimerVctoMM" />
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

              <fo:leader leader-pattern="space" leader-length="1mm"/>de<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/fechaPrimerVctoYYYY" /></fo:inline>  y las restantes los días<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/diaVencimiento" /></fo:inline><fo:leader leader-pattern="space" leader-length="1mm"/>de cada mes, venciendo la última de ellas el día<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/fechaUltimoVctoDD" /></fo:inline><fo:leader leader-pattern="space" leader-length="1mm"/>de<fo:leader leader-pattern="space" leader-length="1mm"/>

              <xsl:variable name="mes" select="../OperacionCredito/fechaUltimoVctoMM" />
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

              <fo:leader leader-pattern="space" leader-length="1mm"/>de<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/fechaUltimoVctoYYYY" /></fo:inline>; y,     </fo:block>

              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <xsl:variable name="montoCuotonCredUniv" select="../OperacionCredito/montoCuotonCredUniv" />
              <xsl:choose>

              <xsl:when test="$montoCuotonCredUniv != 'false'">              
              <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="justify">(ii)  Una última cuota por un monto de capital de UF <fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select='format-number(../OperacionCredito/montoCuotonCredUniv, "###.###.##0,00","decimal")'/></fo:inline><fo:leader leader-pattern="space" leader-length="1mm"/> con vencimiento el día<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/fechaUltimoVctoCuotonDD" /></fo:inline><fo:leader leader-pattern="space" leader-length="1mm"/>de<fo:leader leader-pattern="space" leader-length="1mm"/>

              <xsl:variable name="mes" select="../OperacionCredito/fechaUltimoVctoCuotonMM" />
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

              <fo:leader leader-pattern="space" leader-length="1mm"/>de<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/fechaUltimoVctoCuotonYYYY" /></fo:inline>, más los correspondientes intereses. El capital de esta cuota devengará intereses conforme a una tasa de interés variable anualmente y será la Tasa T.A.B. (Tasa Bancaria)  de 360 días, días determinada por la Asociación de Bancos e Instituciones Financieras, más un spread o diferencial del<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select='format-number(../OperacionCredito/tasaSpread, "###,####","decimal")'/></fo:inline>% anual.
              La Tasa Bancaria  (T.A.B.) de 360  días, se define como la determinada diariamente y con esa denominación por la Asociación de Bancos e Instituciones Financieras. Dicha tasa se modificará anualmente, aplicándose la que rija en su oportunidad al inicio de cada período permaneciendo inalterable por igual período de tiempo.  En el evento que la tasa TAB no fuere informada por la Asociación de Bancos e Instituciones Financieras se aplicarán los intereses corrientes y en caso de impugnación o controversia, se aplicará en su reemplazo, la Tasa Máxima Convencional que la ley permita estipular a esa fecha para operaciones reajustables de plazos similares a la del presente pagaré. Los intereses se calcularán sobre el capital insoluto y se pagarán por períodos vencidos, por el número de días efectivamente transcurridos en cada período de intereses y sobre la base de años de trescientos sesenta días.</fo:block>
              </xsl:when>
          

              <xsl:when test="$montoCuotonCredUniv = 'false'">
                <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="justify">(ii)  Una última cuota por un monto de capital de UF<fo:leader leader-pattern="space" leader-length="12mm"/>con vencimiento el día<fo:leader leader-pattern="space" leader-length="10mm"/>de<fo:leader leader-pattern="space" leader-length="16mm"/>de<fo:leader leader-pattern="space" leader-length="16mm"/>, más los correspondientes intereses. El capital de esta cuota devengará intereses conforme a una tasa de interés variable anualmente y será la Tasa T.A.B. (Tasa Bancaria)  de 360 días, días determinada por la Asociación de Bancos e Instituciones Financieras, más un spread o diferencial del<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select='format-number(../OperacionCredito/tasaSpread, "###,####","decimal")'/></fo:inline>% anual.
                La Tasa Bancaria  (T.A.B.) de 360  días, se define como la determinada diariamente y con esa denominación por la Asociación de Bancos e Instituciones Financieras. Dicha tasa se modificará anualmente, aplicándose la que rija en su oportunidad al inicio de cada período permaneciendo inalterable por igual período de tiempo.  En el evento que la tasa TAB no fuere informada por la Asociación de Bancos e Instituciones Financieras se aplicarán los intereses corrientes y en caso de impugnación o controversia, se aplicará en su reemplazo, la Tasa Máxima Convencional que la ley permita estipular a esa fecha para operaciones reajustables de plazos similares a la del presente pagaré. Los intereses se calcularán sobre el capital insoluto y se pagarán por períodos vencidos, por el número de días efectivamente transcurridos en cada período de intereses y sobre la base de años de trescientos sesenta días.</fo:block>
              </xsl:when>

              </xsl:choose> 

              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="justify"  ><fo:inline font-weight="bold">Prórroga de plazo por día inhábil.</fo:inline>  Las cuotas  de  amortización de capital e intereses se  pagarán a su vencimiento, siempre que éste corresponda a un día hábil  bancario.  En  caso  contrario,  se  pagarán  el  día  hábil  bancario siguiente.</fo:block>
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="justify"  ><fo:inline font-weight="bold">Equivalencia.</fo:inline>  Las sumas adeudas,  tanto  en  lo referente  a  capital como a intereses, se calcularán por su equivalente en moneda legal chilena al día de pago efectivo.</fo:block>
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="justify"  ><fo:inline font-weight="bold">Prepagos.</fo:inline> Si el monto  de  capital  inicial supera el equivalente a UF 5.000, todo pago anticipado, sea total o parcial, será convenido libremente entre el suscriptor y el Banco.  A  falta de acuerdo, el suscriptor podrá en todo caso anticipar  el pago, total o parcialmente, y en  este último caso, siempre que el importe  a pagar sea igual o superior al 20 % del capital de la obligación adeudada,  pagando además los intereses estipulados devengados y no pagados a la fecha  del prepago, calculados  sobre el saldo insoluto, más los intereses estipulados en este instrumento,  calculados sobre el capital prepagado desde la fecha  del prepago hasta  el vencimiento del plazo pactado. Si el monto de capital inicial  no supera  el equivalente a UF 5.000, al  capital  prepagado deberán sumársele  los intereses  calculados hasta la  fecha del prepago y la comisión  de  prepago  máxima  que  el articulo  10 de  la Ley 18.010 permite pactar.</fo:block>
              </fo:block>
              <fo:block font-family="Arial, Helvetica, sans-serif" line-height="4.5mm" font-size="11pt" text-align="center" >1 de 3</fo:block>
              </fo:flow>
          </xsl:when>
          <!--   AQUI TERMINA EL TEMPLATE   docpgcua  -->
          
          
          <!--   AQUI COMIENZA EL TEMPLATE   docpgcub  -->
          <xsl:when test="template = 'docpgcub'">
                    <fo:flow flow-name="xsl-region-body">

              <fo:table border-collapse="collapse">
                  <fo:table-column column-width="50mm" />
                  <fo:table-column column-width="50mm" />
                  <fo:table-body>
                      <fo:table-row>
                            <fo:table-cell text-align="left">
                                    <fo:block >
                                      <fo:external-graphic height="12mm" width="25mm" vertical-align="middle">
                                        <xsl:attribute name="src">
                                        <xsl:value-of select="../OperacionCredito/logoBciSomosDiferentes"/>
                                        </xsl:attribute>
                                      </fo:external-graphic>
                                    </fo:block>
                            </fo:table-cell>
                            <fo:table-cell >
                                    <fo:block >
                                    </fo:block>
                            </fo:table-cell>
                      </fo:table-row>
                </fo:table-body>
                </fo:table>
                
              <fo:table border-collapse="collapse">
                  <fo:table-column column-width="85mm" />
                  <fo:table-column column-width="50mm"/>
                  <fo:table-body>
                      <fo:table-row>
                            <fo:table-cell >
                                    <fo:block >
                                  
                                    </fo:block>
                            </fo:table-cell>
                            
                            <fo:table-cell >
                                    <fo:block font-family="Arial, Helvetica, sans-serif" line-height="4.5mm" font-size="11pt" text-align="left" ><fo:inline font-weight="bold"> PAGARE (UF)</fo:inline></fo:block>
                            </fo:table-cell>

                      </fo:table-row>
                </fo:table-body>
                </fo:table>

              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              
              <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="justify"  ><fo:inline font-weight="bold">Intereses Moratorio</fo:inline>, En caso de retardo o mora en el cumplimiento de esta obligación, ésta devengará desde la fecha del retardo y a favor del acreedor, el interés máximo convencional que rija durante la mora.</fo:block>              
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="justify"  ><fo:inline font-weight="bold">Exigibilidad anticipada.</fo:inline>El no pago oportuno de una cualquiera de las cuotas de capital  y/o de interés comprendidos en esta obligación, dará derecho al acreedor a hacer exigible de inmediato y anticipadamente el monto total del saldo insoluto adeudado a esa fecha, el que desde esa misma fecha se considerará de plazo vencido y devengará en favor del acreedor o de quien sus derechos represente, el interés máximo convencional.</fo:block>
              <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="justify"  >Sin embargo, en operaciones de crédito de dinero cuyo capital sea igual o inferior a doscientas unidades de fomento no podrá hacerse exigible la obligación en forma anticipada, si no una vez cumplidos sesenta días corridos desde que el deudor incurra en mora o simple retardo en el pago.</fo:block>              
              <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="justify"  >Se deja expresamente establecido que el ejercicio de este derecho constituye una sanción al suscriptor por el no pago de la deuda e importa una mera facultad establecida en beneficio exclusivo del acreedor, que no altera en caso alguno la fecha de vencimiento del pagaré originalmente pactada, ni a la exigibilidad de las acciones cambiarias y ejecutivas derivadas de éste. El Banco podrá hacer exigible de inmediato el monto total adeudado, expirando todos los plazos pendientes por el sólo hecho de constituirse en mora o de habérsele protestado al deudor o al aval, por falta de pago, cualquier documento, pagaré, letra de cambio o cheque, aceptado, suscrito, girado o avalado por él. Se  deja expresamente establecido que corresponderá al deudor acreditar el pago de las cuotas en que se divide el presente instrumento, en caso de cobro judicial.</fo:block>
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="justify"  ><fo:inline font-weight="bold">Indivisibilidad  y solidaridad.</fo:inline>Las obligaciones  que emanen de  este pagaré serán  solidarias para el suscriptor, avalista(s) y demás obligados al pago y serán  indivisibles  para  sus herederos.  Además,  el suscriptor  pagará los gastos, impuestos y costas personales y procesales que correspondan.</fo:block>
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="justify"  ><fo:inline font-weight="bold">Mandato para prórrogas.</fo:inline> El  suscriptor  faculta  al Banco de Crédito  e  Inversiones para que en su nombre y representación otorgue, previa autorización expresa de éste, una o más prórrogas que establezcan nuevas condiciones, tasas de interés y fechas de vencimiento. </fo:block>
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="justify"  ><fo:inline font-weight="bold">Domicilio  y  competencia.</fo:inline> Para todos los efectos legales, judiciales o extrajudiciales derivados de este pagaré, las partes acuerdan someterse  a los Tribunales de Justicia con asiento en la comuna y ciudad del domicilio del suscriptor,  lo que  será obligatorio tanto para el suscriptor como para sus avales, endosantes u obligados por garantía. Sin perjuicio declaro, que mi domicilio y residencia son los consignados en  este título, comprometiéndome a dar pronto aviso por escrito al Banco, en el evento que realice cualquier cambio de domicilio en el futuro.</fo:block>
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="justify"  ><fo:inline font-weight="bold">Impuesto de timbres y estampillas.</fo:inline> El impuesto de timbres y estampillas que grava  este  documento se paga por ingresos mensuales de dinero en Tesorería, según Decreto Ley Nº 3475.</fo:block>

              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block font-family="Arial, Helvetica, sans-serif" line-height="4.5mm" font-size="11pt" text-align="left" >             	
              En<fo:leader leader-pattern="space" leader-length="1mm"/>
              <fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/ciudadContrato" /></fo:inline>,
              <fo:leader leader-pattern="space" leader-length="1mm"/>a<fo:leader leader-pattern="space" leader-length="1mm"/>
              <fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/dia" /></fo:inline>

              <fo:leader leader-pattern="space" leader-length="1mm"/>de<fo:leader leader-pattern="space" leader-length="1mm"/>
              <xsl:variable name="mes" select="../OperacionCredito/mes" />
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


              <fo:leader leader-pattern="space" leader-length="1mm"/>de<fo:leader leader-pattern="space" leader-length="1mm"/>
              <fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/anio" /></fo:inline>
              </fo:block>
             <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
             <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
             <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
             
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
             <xsl:apply-templates select="../OperacionCredito"/>

             <xsl:apply-templates select="../DireccionDeudorBci"/>
             <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>

              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block font-family="Arial, Helvetica, sans-serif" line-height="4.5mm" font-size="11pt" text-align="center" ><fo:leader leader-length="6cm" leader-pattern="rule" rule-style="solid" rule-thickness="0.4mm" color="black"/></fo:block>
             
             <fo:block font-family="Arial, Helvetica, sans-serif" line-height="4.5mm" font-size="11pt" text-align="center" >Firma del Suscriptor</fo:block>   
             <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
             <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
             <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
             <fo:block font-family="Arial, Helvetica, sans-serif" line-height="4.5mm" font-size="11pt" text-align="center" >2 de 3</fo:block>
                    </fo:flow>
          </xsl:when>
          <!--   AQUI TERMINA EL TEMPLATE   docpgcub  -->          
          
          <!--   AQUI COMIENZA EL TEMPLATE   AVALESCU  --> 
          <xsl:when test="template = 'AVALESCU'">
                    <fo:flow flow-name="xsl-region-body">
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:table border-collapse="collapse">
                  <fo:table-column column-width="50mm" />
                  <fo:table-column column-width="50mm" />
                  <fo:table-body>
                      <fo:table-row>
                            <fo:table-cell text-align="left">
                                    <fo:block >
                                      <fo:external-graphic height="12mm" width="25mm" vertical-align="middle">
                                        <xsl:attribute name="src">
                                        <xsl:value-of select="../OperacionCredito/logoBciSomosDiferentes"/>
                                        </xsl:attribute>
                                      </fo:external-graphic>
                                    </fo:block>
                            </fo:table-cell>
                            <fo:table-cell >
                                    <fo:block >
                                    </fo:block>
                            </fo:table-cell>
                      </fo:table-row>
                </fo:table-body>
                </fo:table>
                
              <fo:table border-collapse="collapse">
                  <fo:table-column column-width="85mm" />
                  <fo:table-column column-width="50mm"/>
                  <fo:table-body>
                      <fo:table-row>
                            <fo:table-cell >
                                    <fo:block >
                                  
                                    </fo:block>
                            </fo:table-cell>
                            
                            <fo:table-cell >
                                    <fo:block font-family="Arial, Helvetica, sans-serif" line-height="4.5mm" font-size="11pt" text-align="left" ><fo:inline font-weight="bold"> PAGARE (UF)</fo:inline></fo:block>
                            </fo:table-cell>

                      </fo:table-row>
                </fo:table-body>
                </fo:table>
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block font-family="Arial, Helvetica, sans-serif" line-height="4.5mm" font-size="11pt" text-align="left" >N° de Operación : <fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/nroOperacion" /></fo:inline></fo:block>
              <fo:block font-family="Arial, Helvetica, sans-serif" line-height="4.5mm" font-size="11pt" text-align="center" >POR  AVALES </fo:block>
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="justify"  >En nuestra calidad de avalistas del presente instrumento, nos constituimos en codeudores   solidarios   del  suscriptor,  y  aceptamos,  desde  luego,  las eventuales prórrogas o esperas que, con o sin protestos y con o  sin  abonos, pudieren  convenirse  entre  el  suscriptor y el Banco de Crédito e Inversiones o quien sus derechos represente.  Convenimos  asimismo,  en  que  la  falta  de protesto  en  tiempo  y  forma  no  perjudicará  nuestra  calidad de avales y codeudores solidarios del suscriptor del presente documento. </fo:block>
              <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="justify"  >Por  otra  parte,  en  nuestra  condición  de cónyuges de los avalistas que a continuación se indican, y para los efectos  de  lo  dispuesto en el artículo 1.749 y 1.792 - 3 del Código Civil, en los casos que corresponda, autorizo expresamente a mi cónyuge, debidamente individualizado,  para  que actúe como aval y codeudor solidario de<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/nombreCompletoCliente" /></fo:inline>,<fo:leader leader-pattern="space" leader-length="1mm"/>RUT <fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select='format-number(../OperacionCredito/rutCliente, "###.###.##0","rut")' />-<xsl:value-of select="../OperacionCredito/dvCliente" /></fo:inline>,<fo:leader leader-pattern="space" leader-length="1mm"/>por la obligación de que da cuenta este instrumento. La presente autorización se  confiere  en los mismos términos en que mi cónyuge presta su aval; por lo tanto, incluye  las eventuales prórrogas, renegociaciones, reprogramaciones y repactaciones de cualquier  naturaleza, que con o sin protesto y esperas, con o sin abonos, pudieren convenirse entre  el  suscriptor  y  el Banco de Crédito e Inversiones o quien sus derechos represente.</fo:block>
              <!-- aval 1 -->

              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block font-family="Arial, Helvetica, sans-serif" line-height="4.5mm" font-size="11pt" text-align="left" >
              En<fo:leader leader-pattern="space" leader-length="1mm"/>
              <fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/ciudadContrato" /></fo:inline>,
              <fo:leader leader-pattern="space" leader-length="1mm"/>a<fo:leader leader-pattern="space" leader-length="1mm"/>
              <fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/dia" /></fo:inline>

              <fo:leader leader-pattern="space" leader-length="1mm"/>de<fo:leader leader-pattern="space" leader-length="1mm"/>
              <xsl:variable name="mes" select="../OperacionCredito/mes" />
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

              <fo:leader leader-pattern="space" leader-length="1mm"/>de<fo:leader leader-pattern="space" leader-length="1mm"/>
              <fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/anio" /></fo:inline>
              </fo:block>

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
                                  <fo:block font-family="Arial, Helvetica, sans-serif" font-size="11pt"   text-align="left"  line-height="4.5mm">NOMBRE O RAZON SOCIAL</fo:block>
                          </fo:table-cell>

                          <fo:table-cell >
                                  <xsl:variable name="tipoCliente" select="../DireccionAvalBci/tipoCliente" />
                                  <xsl:if test="$tipoCliente = 'E'">
                                      <fo:block font-family="Arial, Helvetica, sans-serif" font-size="11pt"   text-align="left" margin-left="1mm" line-height="4.5mm"><fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/nombreCompletoAval" /></fo:inline></fo:block>
                                  </xsl:if>
                          </fo:table-cell>

                          <fo:table-cell >
                                      <fo:block font-family="Arial, Helvetica, sans-serif" font-size="11pt"   text-align="left" margin-left="1mm" line-height="4.5mm">RUT</fo:block>
                          </fo:table-cell>

                          <fo:table-cell >
                                  <xsl:variable name="tipoCliente" select="../DireccionAvalBci/tipoCliente" />
                                  <xsl:if test="$tipoCliente = 'E'">
                                      <fo:block font-family="Arial, Helvetica, sans-serif" font-size="11pt"   text-align="left" margin-left="1mm" line-height="4.5mm"><fo:inline font-weight="bold"><xsl:value-of select='format-number(../OperacionCredito/rutAval, "###.###.##0","rut")' />-<xsl:value-of select="../OperacionCredito/dvAval" /></fo:inline></fo:block>
                                  </xsl:if>
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
                                  <fo:block font-family="Arial, Helvetica, sans-serif" font-size="11pt"   text-align="left"  line-height="4.5mm">REPRESENTANTE LEGAL</fo:block>
                          </fo:table-cell>

                          <fo:table-cell >
                                  <fo:block font-family="Arial, Helvetica, sans-serif" font-size="11pt"   text-align="left" margin-left="1mm" line-height="4.5mm"><fo:inline font-weight="bold"></fo:inline></fo:block>
                          </fo:table-cell>

                          <fo:table-cell >
                                  <fo:block font-family="Arial, Helvetica, sans-serif" font-size="11pt"   text-align="left" margin-left="1mm" line-height="4.5mm">RUT</fo:block>
                          </fo:table-cell>

                          <fo:table-cell >
                                  <fo:block font-family="Arial, Helvetica, sans-serif" font-size="11pt"   text-align="left" margin-left="1mm" line-height="4.5mm"><fo:inline font-weight="bold"></fo:inline></fo:block>
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
                                  <fo:block font-family="Arial, Helvetica, sans-serif" font-size="11pt"   text-align="left"  line-height="4.5mm">REPRESENTANTE LEGAL</fo:block>
                          </fo:table-cell>

                          <fo:table-cell >
                                  <fo:block font-family="Arial, Helvetica, sans-serif" font-size="11pt"   text-align="left" margin-left="1mm" line-height="4.5mm"><fo:inline font-weight="bold"></fo:inline></fo:block>
                          </fo:table-cell>

                          <fo:table-cell >
                                  <fo:block font-family="Arial, Helvetica, sans-serif" font-size="11pt"   text-align="left" margin-left="1mm" line-height="4.5mm">RUT</fo:block>
                          </fo:table-cell>

                          <fo:table-cell >
                                  <fo:block font-family="Arial, Helvetica, sans-serif" font-size="11pt"   text-align="left" margin-left="1mm" line-height="4.5mm"><fo:inline font-weight="bold"></fo:inline></fo:block>
                          </fo:table-cell>

                    </fo:table-row>
              </fo:table-body>
              </fo:table>
            <!-- AQUI TERMINAN LOS DATOS  DEL SUSCRIPTOR NOMBRE DEL REPRESENTANTE LEGAL -->

            <!-- AQUI COMIENZA LOS DATOS  DEL SUSCRIPTOR DOMICILIO, COMUNA Y CIUDAD -->
              <fo:table border-collapse="collapse" text-align="left">
                <fo:table-column column-width="23mm" />
                <fo:table-column column-width="80mm" />
                <fo:table-column column-width="20mm" />
                <fo:table-column column-width="32mm" />
                <fo:table-column column-width="18mm" />
                <fo:table-column column-width="22mm" />
                <fo:table-body>
                    <fo:table-row>

                          <fo:table-cell >
                                  <fo:block font-family="Arial, Helvetica, sans-serif" font-size="11pt"   text-align="left"  line-height="4.5mm">DOMICILIO</fo:block>
                          </fo:table-cell>

                          <fo:table-cell >
                                  <xsl:variable name="tipoCliente" select="../DireccionAvalBci/tipoCliente" />
                                  <xsl:if test="$tipoCliente = 'E'">
                                     <fo:block font-family="Arial, Helvetica, sans-serif" font-size="11pt"   text-align="left" margin-left="1mm" line-height="4.5mm"><fo:inline font-weight="bold"><xsl:value-of select="substring(../DireccionAvalBci/direccion,0,32)" /></fo:inline></fo:block>
                                  </xsl:if>
                          </fo:table-cell>

                          <fo:table-cell >
                                  <fo:block font-family="Arial, Helvetica, sans-serif" font-size="11pt"   text-align="left" margin-left="1mm" line-height="4.5mm">COMUNA</fo:block>
                          </fo:table-cell>

                          <fo:table-cell >
                                  <xsl:variable name="tipoCliente" select="../DireccionAvalBci/tipoCliente" />
                                  <xsl:if test="$tipoCliente = 'E'">
                                     <fo:block font-family="Arial, Helvetica, sans-serif" font-size="11pt"   text-align="left" margin-left="1mm" line-height="4.5mm"><fo:inline font-weight="bold"><xsl:value-of select="substring(../DireccionAvalBci/comuna,0,20)" /></fo:inline></fo:block>
                                  </xsl:if>
                          </fo:table-cell>

                          <fo:table-cell >
                                  <fo:block font-family="Arial, Helvetica, sans-serif" font-size="11pt"   text-align="left" margin-left="1mm" line-height="4.5mm">CIUDAD</fo:block>
                          </fo:table-cell>

                          <fo:table-cell >
                                  <xsl:variable name="tipoCliente" select="../DireccionAvalBci/tipoCliente" />
                                  <xsl:if test="$tipoCliente = 'E'">
                                      <fo:block font-family="Arial, Helvetica, sans-serif" font-size="11pt"   text-align="left" margin-left="1mm" line-height="4.5mm"><fo:inline font-weight="bold"><xsl:value-of select="substring(../DireccionAvalBci/comuna,21,40)" /></fo:inline></fo:block>
                                  </xsl:if>
                          </fo:table-cell>

                    </fo:table-row>
              </fo:table-body>
              </fo:table>

              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:table border-collapse="collapse" font-size="14pt" font-family="Arial, Helvetica, sans-serif">
                  <fo:table-column column-width="50%"/>
                  <fo:table-column column-width="50%"/>
                  <fo:table-body>
                      <fo:table-row>
                          <fo:table-cell > _
                              <fo:block font-family="Arial, Helvetica, sans-serif" line-height="4.5mm" font-size="11pt" text-align="center" ><fo:leader leader-length="4cm" leader-pattern="rule" rule-style="solid" rule-thickness="0.4mm" color="black"/></fo:block>
                          </fo:table-cell>
                          <fo:table-cell >
                              <fo:block font-family="Arial, Helvetica, sans-serif" line-height="4.5mm" font-size="11pt" text-align="center" ><fo:leader leader-length="5.5cm" leader-pattern="rule" rule-style="solid" rule-thickness="0.4mm" color="black"/></fo:block>
                          </fo:table-cell>
                      </fo:table-row>
                      <fo:table-row>
                          <fo:table-cell > _
                              <fo:block font-family="Arial, Helvetica, sans-serif" line-height="4.5mm" font-size="11pt" text-align="center" >Firma del Avalista</fo:block>
                          </fo:table-cell>
                          <fo:table-cell >
                              <fo:block font-family="Arial, Helvetica, sans-serif" line-height="4.5mm" font-size="11pt" text-align="center" >Firma Cónyuge del Aval</fo:block>
                          </fo:table-cell>
                      </fo:table-row>
                  </fo:table-body>
              </fo:table>

              <!-- aval 1 -->
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block font-family="Arial, Helvetica, sans-serif" line-height="4.5mm" font-size="11pt" text-align="left" >
              En<fo:leader leader-pattern="space" leader-length="1mm"/>
              <fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/ciudadContrato" /></fo:inline>,
              <fo:leader leader-pattern="space" leader-length="1mm"/>a<fo:leader leader-pattern="space" leader-length="1mm"/>
              <fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/dia" /></fo:inline>

              <fo:leader leader-pattern="space" leader-length="1mm"/>de<fo:leader leader-pattern="space" leader-length="1mm"/>
              <xsl:variable name="mes" select="../OperacionCredito/mes" />
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

              <fo:leader leader-pattern="space" leader-length="1mm"/>de<fo:leader leader-pattern="space" leader-length="1mm"/>
              <fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/anio" /></fo:inline>
              </fo:block>
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              
            <!-- AQUI COMIENZAN LOS DATOS DEL CONYUGE -->
              <fo:table border-collapse="collapse" text-align="left">
                <fo:table-column column-width="57mm"  />
                <fo:table-column column-width="98mm"  />
                <fo:table-column column-width="10mm"  />
                <fo:table-column column-width="30mm"  />
                <fo:table-body>
                    <fo:table-row>

                          <fo:table-cell >
                                  <fo:block font-family="Arial, Helvetica, sans-serif" font-size="11pt"   text-align="left"  line-height="4.5mm">NOMBRE O RAZON SOCIAL</fo:block>
                          </fo:table-cell>

                          <fo:table-cell >
                                  <xsl:variable name="tipoCliente" select="../DireccionAvalBci/tipoCliente" />
                                  <fo:block font-family="Arial, Helvetica, sans-serif" font-size="11pt"   text-align="left" margin-left="1mm" line-height="4.5mm"><fo:inline font-weight="bold">
                                      <xsl:if test="$tipoCliente = 'P'">
                                              <xsl:value-of select="../OperacionCredito/nombreCompletoAval" />
                                      </xsl:if>
                                  </fo:inline></fo:block>
                          </fo:table-cell>

                          <fo:table-cell >
                                  <fo:block font-family="Arial, Helvetica, sans-serif" font-size="11pt"   text-align="left" margin-left="1mm" line-height="4.5mm">RUT</fo:block>
                          </fo:table-cell>

                          <fo:table-cell >
                                  <xsl:variable name="tipoCliente" select="../DireccionAvalBci/tipoCliente" />
                                  <fo:block font-family="Arial, Helvetica, sans-serif" font-size="11pt"   text-align="left" margin-left="1mm" line-height="4.5mm">

                                      <xsl:if test="$tipoCliente = 'P'">
                                            <xsl:variable name="rut" select="../OperacionCredito/rutAval" />
                                            <xsl:choose>
                                              <xsl:when test="string-length($rut) &gt; 0">
                                                <fo:inline font-weight="bold"><xsl:value-of select='format-number(../OperacionCredito/rutAval, "###.###.##0","rut")' />-<xsl:value-of select="../OperacionCredito/dvAval" /></fo:inline>
                                              </xsl:when>
                                            </xsl:choose>
                                      </xsl:if>

                                  </fo:block>
                          </fo:table-cell>

                    </fo:table-row>
              </fo:table-body>
              </fo:table>

              <fo:table border-collapse="collapse" text-align="left">
                <fo:table-column column-width="23mm"    />
                <fo:table-column column-width="75mm"    />
                <fo:table-column column-width="23mm"    />
                <fo:table-column column-width="30mm"    />
                <fo:table-column column-width="18mm"    />
                <fo:table-column column-width="25.9mm"  />
                <fo:table-body>
                    <fo:table-row>

                          <fo:table-cell >
                                  <fo:block font-family="Arial, Helvetica, sans-serif" font-size="11pt"   text-align="left"  line-height="4.5mm">DOMICILIO</fo:block>
                          </fo:table-cell>

                          <fo:table-cell >
                                  <xsl:variable name="tipoCliente" select="../DireccionAvalBci/tipoCliente" />
                                  <xsl:if test="$tipoCliente = 'P'">
                                        <fo:block font-family="Arial, Helvetica, sans-serif" font-size="11pt"   text-align="left" margin-left="1mm" line-height="4.5mm"><fo:inline font-weight="bold"><xsl:value-of select="substring(../DireccionAvalBci/direccion,0,32)" /></fo:inline></fo:block>
                                  </xsl:if>
                          </fo:table-cell>

                          <fo:table-cell >
                                  <fo:block font-family="Arial, Helvetica, sans-serif" font-size="11pt"   text-align="left" margin-left="1mm" line-height="4.5mm">COMUNA</fo:block>
                          </fo:table-cell>

                          <fo:table-cell >
                                  <xsl:variable name="tipoCliente" select="../DireccionAvalBci/tipoCliente" />
                                  <xsl:if test="$tipoCliente = 'P'">
                                        <fo:block font-family="Arial, Helvetica, sans-serif" font-size="11pt"   text-align="left" margin-left="1mm" line-height="4.5mm"><fo:inline font-weight="bold"><xsl:value-of select="substring(../DireccionAvalBci/comuna,0,20)" /></fo:inline></fo:block>
                                  </xsl:if>
                          </fo:table-cell>

                          <fo:table-cell >
                                  <fo:block font-family="Arial, Helvetica, sans-serif" font-size="11pt"   text-align="left" margin-left="1mm" line-height="4.5mm">CIUDAD</fo:block>
                          </fo:table-cell>

                          <fo:table-cell >
                                  <xsl:variable name="tipoCliente" select="../DireccionAvalBci/tipoCliente" />
                                  <xsl:if test="$tipoCliente = 'P'">
                                  <fo:block font-family="Arial, Helvetica, sans-serif" font-size="11pt"   text-align="left" margin-left="1mm" line-height="4.5mm"><fo:inline font-weight="bold"><xsl:value-of select="substring(../DireccionAvalBci/comuna,21,40)" /></fo:inline></fo:block>
                                  </xsl:if>
                          </fo:table-cell>
                    </fo:table-row>
              </fo:table-body>
             </fo:table>

             <fo:table border-collapse="collapse" text-align="left">
                <fo:table-column />
                <fo:table-column />
                <fo:table-column />
                <fo:table-column />
                <fo:table-body>
                    <fo:table-row>

                                  <xsl:variable name="relacionConyugal" select="../DireccionAvalBci/relacionConyugal" />
                                  <xsl:variable name="estadoCivilAval"  select="../OperacionCredito/codEstadoCivilAval" />
                                  <xsl:variable name="tipoCliente"      select="../DireccionAvalBci/tipoCliente" />

                          <fo:table-cell >
                                  <fo:block font-family="Arial, Helvetica, sans-serif" font-size="11pt"   text-align="left" line-height="4.5mm">NOMBRE CONYUGE</fo:block>
                          </fo:table-cell>

                          <fo:table-cell >
                                    <xsl:if test="$estadoCivilAval = 'CAS'">
                                      <xsl:if test="$tipoCliente = 'P'">
                                        <xsl:if test="$relacionConyugal = 1" >
                                          <fo:block font-family="Arial, Helvetica, sans-serif" font-size="11pt"   text-align="left" margin-left="1mm" line-height="4.5mm"><fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/nombresConyugeAval" /></fo:inline></fo:block>
                                        </xsl:if>
                                      </xsl:if>
                                    </xsl:if>
                          </fo:table-cell>

                          <fo:table-cell >
                                  <fo:block font-family="Arial, Helvetica, sans-serif" font-size="11pt"   text-align="left" margin-left="1mm" line-height="4.5mm">RUT</fo:block>
                          </fo:table-cell>

                          <fo:table-cell >
                                  <fo:block font-family="Arial, Helvetica, sans-serif" font-size="11pt"   text-align="left" margin-left="1mm" line-height="4.5mm">
                                  <xsl:variable name="tipoCliente" select="../DireccionAvalBci/tipoCliente" />

                                    <xsl:if test="$estadoCivilAval = 'CAS'">
                                      <xsl:if test="$tipoCliente = 'P'">
                                        <xsl:if test="$relacionConyugal = 1">
                                            <xsl:variable name="rut" select="../OperacionCredito/rutConyugeAval" />
                                            <xsl:choose>
                                              <xsl:when test="string-length($rut) &gt; 0">
                                                   <fo:inline font-weight="bold"><xsl:value-of select='format-number(../OperacionCredito/rutConyugeAval, "###.###.##0","rut")' />-<xsl:value-of select="../OperacionCredito/DvConyugeAval" /></fo:inline>
                                              </xsl:when>
                                            </xsl:choose>
                                        </xsl:if>
                                      </xsl:if>
                                    </xsl:if>
                                    </fo:block>
                          </fo:table-cell>
                    </fo:table-row>
              </fo:table-body>
              </fo:table>

              <fo:table border-collapse="collapse" text-align="left">
                <fo:table-column column-width="23mm"    />
                <fo:table-column column-width="75mm"    />
                <fo:table-column column-width="23mm"    />
                <fo:table-column column-width="30mm"    />
                <fo:table-column column-width="18mm"    />
                <fo:table-column column-width="25.9mm"  />
                <fo:table-body>
                    <fo:table-row>

                          <fo:table-cell >
                                  <fo:block font-family="Arial, Helvetica, sans-serif" font-size="11pt"   text-align="left"  line-height="4.5mm">DOMICILIO</fo:block>
                          </fo:table-cell>

                          <fo:table-cell >
                                  <xsl:variable name="relacionConyugal" select="../DireccionAvalBci/tipoCliente" />
                                  <xsl:variable name="tipoCliente" select="../DireccionAvalBci/tipoCliente" />
                                  <xsl:variable name="estadoCivilAval"  select="../OperacionCredito/codEstadoCivilAval" />

                                  <xsl:if test="$estadoCivilAval = 'CAS'">
                                    <xsl:if test="$tipoCliente = 'P'">
                                      <xsl:if test="$relacionConyugal = 1">
                                          <fo:block font-family="Arial, Helvetica, sans-serif" font-size="11pt"   text-align="left" margin-left="1mm" line-height="4.5mm"><fo:inline font-weight="bold"><xsl:value-of select="../DireccionConyugeAvalBci/direccion" /></fo:inline></fo:block>
                                      </xsl:if>
                                    </xsl:if>
                                  </xsl:if>

                          </fo:table-cell>

                          <fo:table-cell >
                                  <fo:block font-family="Arial, Helvetica, sans-serif" font-size="11pt"   text-align="left" margin-left="1mm" line-height="4.5mm">COMUNA</fo:block>
                          </fo:table-cell>

                          <fo:table-cell >
                                  <xsl:variable name="relacionConyugal" select="../DireccionAvalBci/tipoCliente" />
                                  <xsl:variable name="tipoCliente" select="../DireccionAvalBci/tipoCliente" />
                                  <xsl:variable name="estadoCivilAval"  select="../OperacionCredito/codEstadoCivilAval" />
                                  <xsl:if test="$estadoCivilAval = 'CAS'">
                                    <xsl:if test="$tipoCliente = 'P'">
                                      <xsl:if test="$relacionConyugal = 1">
                                         <fo:block font-family="Arial, Helvetica, sans-serif" font-size="11pt"   text-align="left" margin-left="1mm" line-height="4.5mm"><fo:inline font-weight="bold"><xsl:value-of select="substring(../DireccionConyugeAvalBci/comuna,0,20)" /></fo:inline></fo:block>
                                      </xsl:if>
                                    </xsl:if>
                                  </xsl:if>
                          </fo:table-cell>

                          <fo:table-cell >
                                  <fo:block font-family="Arial, Helvetica, sans-serif" font-size="11pt"   text-align="left" margin-left="1mm" line-height="4.5mm">CIUDAD</fo:block>
                          </fo:table-cell>

                          <fo:table-cell >

                                  <xsl:variable name="relacionConyugal" select="../DireccionAvalBci/tipoCliente" />
                                  <xsl:variable name="tipoCliente" select="../DireccionAvalBci/tipoCliente" />
                                  <xsl:variable name="estadoCivilAval"  select="../OperacionCredito/codEstadoCivilAval" />
                                  <xsl:if test="$estadoCivilAval = 'CAS'">
                                    <xsl:if test="$tipoCliente = 'P'">
                                      <xsl:if test="$relacionConyugal = 1">
                                       <fo:block font-family="Arial, Helvetica, sans-serif" font-size="11pt"   text-align="left" margin-left="1mm" line-height="4.5mm"><fo:inline font-weight="bold"><xsl:value-of select="substring(../DireccionConyugeAvalBci/comuna,20,40)" /></fo:inline></fo:block>
                                      </xsl:if>
                                    </xsl:if>
                                  </xsl:if>

                          </fo:table-cell>
                    </fo:table-row>
              </fo:table-body>
              </fo:table>

              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:table border-collapse="collapse" font-size="14pt" font-family="Arial, Helvetica, sans-serif">
                  <fo:table-column column-width="50%"/>
                  <fo:table-column column-width="50%"/>
                  <fo:table-body>
                      <fo:table-row>
                          <fo:table-cell > _
                              <fo:block font-family="Arial, Helvetica, sans-serif" line-height="4.5mm" font-size="11pt" text-align="center" ><fo:leader leader-length="4cm" leader-pattern="rule" rule-style="solid" rule-thickness="0.4mm" color="black"/></fo:block>
                          </fo:table-cell>
                          <fo:table-cell >
                              <fo:block font-family="Arial, Helvetica, sans-serif" line-height="4.5mm" font-size="11pt" text-align="center" ><fo:leader leader-length="5.5cm" leader-pattern="rule" rule-style="solid" rule-thickness="0.4mm" color="black"/></fo:block>
                          </fo:table-cell>
                      </fo:table-row>
                      <fo:table-row>
                          <fo:table-cell > _
                              <fo:block font-family="Arial, Helvetica, sans-serif" line-height="4.5mm" font-size="11pt" text-align="center" >Firma del Avalista</fo:block>
                          </fo:table-cell>
                          <fo:table-cell >
                              <fo:block font-family="Arial, Helvetica, sans-serif" line-height="4.5mm" font-size="11pt" text-align="center" >Firma Cónyuge del Aval</fo:block>
                          </fo:table-cell>
                      </fo:table-row>
                  </fo:table-body>
              </fo:table>
              <!-- aval 2 -->
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block font-family="Arial, Helvetica, sans-serif" line-height="4.5mm" font-size="11pt" text-align="left" >Autorizo las firmas estampadas en este instrumento, como suscriptor:</fo:block>
              <fo:block font-family="Arial, Helvetica, sans-serif" line-height="4.5mm" font-size="11pt" text-align="left" >DON(A)<fo:leader leader-pattern="space" leader-length="1mm"/>:<fo:leader leader-length="11.8cm" leader-pattern="rule" rule-style="solid" rule-thickness="0.4mm" color="black"/><fo:leader leader-pattern="space" leader-length="1mm"/>RUT<fo:leader leader-length="4cm" leader-pattern="rule" rule-style="solid" rule-thickness="0.4mm" color="black"/> </fo:block>
              <fo:block font-family="Arial, Helvetica, sans-serif" line-height="4.5mm" font-size="11pt" text-align="left" >DON(A)<fo:leader leader-pattern="space" leader-length="1mm"/>:<fo:leader leader-length="11.8cm" leader-pattern="rule" rule-style="solid" rule-thickness="0.4mm" color="black"/><fo:leader leader-pattern="space" leader-length="1mm"/>RUT<fo:leader leader-length="4cm" leader-pattern="rule" rule-style="solid" rule-thickness="0.4mm" color="black"/> </fo:block>
              <fo:block font-family="Arial, Helvetica, sans-serif" line-height="4.5mm" font-size="11pt" text-align="left" >Quienes lo hacen en representación de <fo:leader leader-length="14.3cm" leader-pattern="rule" rule-style="solid" rule-thickness="0.4mm" color="black"/> </fo:block>
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block font-family="Arial, Helvetica, sans-serif" line-height="4.5mm" font-size="11pt" text-align="left" >Como Avalistas:</fo:block>
              <fo:block font-family="Arial, Helvetica, sans-serif" line-height="4.5mm" font-size="11pt" text-align="left" >DON(A)<fo:leader leader-pattern="space" leader-length="1mm"/>:<fo:leader leader-length="11.8cm" leader-pattern="rule" rule-style="solid" rule-thickness="0.4mm" color="black"/><fo:leader leader-pattern="space" leader-length="1mm"/>RUT<fo:leader leader-length="4cm" leader-pattern="rule" rule-style="solid" rule-thickness="0.4mm" color="black"/> </fo:block>
              <fo:block font-family="Arial, Helvetica, sans-serif" line-height="4.5mm" font-size="11pt" text-align="left" >DON(A)<fo:leader leader-pattern="space" leader-length="1mm"/>:<fo:leader leader-length="11.8cm" leader-pattern="rule" rule-style="solid" rule-thickness="0.4mm" color="black"/><fo:leader leader-pattern="space" leader-length="1mm"/>RUT<fo:leader leader-length="4cm" leader-pattern="rule" rule-style="solid" rule-thickness="0.4mm" color="black"/> </fo:block>
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block font-family="Arial, Helvetica, sans-serif" line-height="4.5mm" font-size="11pt" text-align="left" >Como cónyuge de los avalistas, respectivamente, en los casos que corresponda: </fo:block>
              <fo:block font-family="Arial, Helvetica, sans-serif" line-height="4.5mm" font-size="11pt" text-align="left" >DON(A)<fo:leader leader-pattern="space" leader-length="1mm"/>:<fo:leader leader-length="11.6cm" leader-pattern="rule" rule-style="solid" rule-thickness="0.4mm" color="black"/><fo:leader leader-pattern="space" leader-length="1mm"/>RUT<fo:leader leader-length="4cm" leader-pattern="rule" rule-style="solid" rule-thickness="0.4mm" color="black"/> </fo:block>
              <fo:block font-family="Arial, Helvetica, sans-serif" line-height="4.5mm" font-size="11pt" text-align="left" >DON(A)<fo:leader leader-pattern="space" leader-length="1mm"/>:<fo:leader leader-length="11.6cm" leader-pattern="rule" rule-style="solid" rule-thickness="0.4mm" color="black"/><fo:leader leader-pattern="space" leader-length="1mm"/>RUT<fo:leader leader-length="4cm" leader-pattern="rule" rule-style="solid" rule-thickness="0.4mm" color="black"/> </fo:block>

              <fo:block font-family="Arial, Helvetica, sans-serif" line-height="4.5mm" font-size="11pt" text-align="left" >
              En<fo:leader leader-pattern="space" leader-length="1mm"/>
              <fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/ciudadContrato" /></fo:inline>,
              <fo:leader leader-pattern="space" leader-length="1mm"/>a<fo:leader leader-pattern="space" leader-length="1mm"/>
              <fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/dia" /></fo:inline>

              <fo:leader leader-pattern="space" leader-length="1mm"/>de<fo:leader leader-pattern="space" leader-length="1mm"/>
              <xsl:variable name="mes" select="../OperacionCredito/mes" />
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

              <fo:leader leader-pattern="space" leader-length="1mm"/>de<fo:leader leader-pattern="space" leader-length="1mm"/>
              <fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/anio" /></fo:inline>
              </fo:block>

              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block font-family="Arial, Helvetica, sans-serif" line-height="4.5mm" font-size="11pt" text-align="center" ><fo:leader leader-length="6cm" leader-pattern="rule" rule-style="solid" rule-thickness="0.4mm" color="black"/></fo:block>
              <fo:block font-family="Arial, Helvetica, sans-serif" line-height="4.5mm" font-size="11pt" text-align="center" >NOTARIO</fo:block>
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block font-family="Arial, Helvetica, sans-serif" line-height="4.5mm" font-size="11pt" text-align="center" >3 de 3</fo:block>
                    </fo:flow>
          </xsl:when>          
          <!--   AQUI TERMINA EL TEMPLATE   AVALESCU  -->


          <xsl:when test="template = 'AVALES3'">
                    <fo:flow flow-name="xsl-region-body">
              <fo:table border-collapse="collapse">
              <fo:table-column column-width="50mm" />
              <fo:table-column column-width="50mm" />
              <fo:table-body>
                  <fo:table-row>
                        <fo:table-cell text-align="left">
                                <fo:block >
                                  <fo:external-graphic height="12mm" width="25mm" vertical-align="middle">
                                    <xsl:attribute name="src">
                                    <xsl:value-of select="../OperacionCredito/logoBciSomosDiferentes"/>
                                    </xsl:attribute>
                                  </fo:external-graphic>
                                </fo:block>
                        </fo:table-cell>
                        <fo:table-cell >
                                <fo:block >
                                </fo:block>
                        </fo:table-cell>
                  </fo:table-row>
              </fo:table-body>
              </fo:table>
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block font-family="Arial, Helvetica, sans-serif" line-height="4.5mm" font-size="11pt" text-align="left" >Nº Operación<fo:leader leader-pattern="space" leader-length="18.5mm"/>:<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/nroOperacion" /></fo:inline></fo:block>
              <fo:block font-family="Arial, Helvetica, sans-serif" line-height="4.5mm" font-size="11pt" text-align="left" >Fecha de suscripción<fo:leader leader-pattern="space" leader-length="6.8mm"/>:<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="substring(../OperacionCredito/fechaSuscripcion,0,4)" /></fo:inline>
              <xsl:variable name="mes" select="substring(../OperacionCredito/fechaSuscripcion,4,2)" />
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
              <fo:inline font-weight="bold"><xsl:value-of select="substring(../OperacionCredito/fechaSuscripcion,6,5)" /></fo:inline>
              </fo:block>


              <fo:block font-family="Arial, Helvetica, sans-serif" line-height="4.5mm" font-size="11pt" text-align="left" >Monto<fo:leader leader-pattern="space" leader-length="29.6mm"/>:<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/moneda" /></fo:inline><fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold">

              <xsl:variable name="moneda" select="../OperacionCredito/moneda" />
                <xsl:choose>

                  <xsl:when test="$moneda = 'UF'">
                     <xsl:value-of select='format-number(../OperacionCredito/montoCredito, "###.###.##0,0000","decimal")' />
                  </xsl:when>


                  <xsl:when test="$moneda = '$'">
                    <xsl:value-of select='format-number(../OperacionCredito/montoCredito, "###.###.##0","decimal")' />
                  </xsl:when>

              </xsl:choose>
              <!--<xsl:value-of select='format-number(../OperacionCredito/montoCredito, "###.###.##0","decimal")' />-->

              </fo:inline></fo:block>
              <fo:block font-family="Arial, Helvetica, sans-serif" line-height="4.5mm" font-size="11pt" text-align="left" >Deudor<fo:leader leader-pattern="space" leader-length="28mm"/>:<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/nombreCompletoCliente" /></fo:inline></fo:block>
              <fo:block font-family="Arial, Helvetica, sans-serif" line-height="4.5mm" font-size="11pt" text-align="left" >RUT<fo:leader leader-pattern="space" leader-length="32.2mm"/>:<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select='format-number(../OperacionCredito/rutCliente, "###.###.##0","rut")' /></fo:inline>-<fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/dvCliente" /></fo:inline></fo:block>
              
              <fo:block font-family="Arial, Helvetica, sans-serif" line-height="4.5mm" font-size="11pt" text-align="center" >POR  AVALES </fo:block>
              <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="justify"  >En nuestra calidad de avalistas del presente instrumento, nos constituimos en codeudores   solidarios   del  suscriptor,  y  aceptamos,  desde  luego,  las eventuales prórrogas o esperas que, con o sin protestos y con o  sin  abonos, pudieren  convenirse  entre  el  suscriptor y el Banco de Crédito e Inversiones o quien sus derechos represente.  Convenimos  asimismo,  en  que  la  falta  de protesto  en  tiempo  y  forma  no  perjudicará  nuestra  calidad de avales y codeudores solidarios del suscriptor del presente documento. </fo:block>
              <fo:block font-family="Arial, Helvetica, sans-serif" line-height="5.8mm" font-size="11pt" text-align="justify"  >Por  otra  parte,  en  nuestra  condición  de cónyuges de los avalistas que a continuación se indican, y para los efectos  de  lo  dispuesto en el artículo 1.749 y 1.792 - 3 del Código Civil, en los casos que corresponda, autorizo expresamente a mi cónyuge, debidamente individualizado,  para  que actúe como aval y codeudor solidario de<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/nombreCompletoCliente" /></fo:inline>,<fo:leader leader-pattern="space" leader-length="1mm"/>RUT <fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select='format-number(../OperacionCredito/rutCliente, "###.###.##0","rut")' />-<xsl:value-of select="../OperacionCredito/dvCliente" /></fo:inline>,<fo:leader leader-pattern="space" leader-length="1mm"/>por la obligación de que da cuenta este instrumento. La presente autorización se  confiere  en los mismos términos en que mi cónyuge presta su aval; por lo tanto, incluye  las eventuales prórrogas, renegociaciones, reprogramaciones y repactaciones de cualquier  naturaleza, que con o sin protesto y esperas, con o sin abonos, pudieren convenirse entre  el  suscriptor  y  el Banco de Crédito e Inversiones o quien sus derechos represente.</fo:block>
              <!-- aval 1 -->
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
                                  <fo:block font-family="Arial, Helvetica, sans-serif" font-size="11pt"   text-align="left"  line-height="4.5mm">NOMBRE O RAZON SOCIAL</fo:block>
                          </fo:table-cell>

                          <fo:table-cell >
                                  <xsl:variable name="tipoCliente" select="../DireccionAvalBci/tipoCliente" />
                                  <xsl:if test="$tipoCliente = 'E'">
                                      <fo:block font-family="Arial, Helvetica, sans-serif" font-size="11pt"   text-align="left" margin-left="1mm" line-height="4.5mm"><fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/nombreCompletoAval" /></fo:inline></fo:block>
                                  </xsl:if>
                          </fo:table-cell>

                          <fo:table-cell >
                                      <fo:block font-family="Arial, Helvetica, sans-serif" font-size="11pt"   text-align="left" margin-left="1mm" line-height="4.5mm">RUT</fo:block>
                          </fo:table-cell>

                          <fo:table-cell >
                                  <xsl:variable name="tipoCliente" select="../DireccionAvalBci/tipoCliente" />
                                  <xsl:if test="$tipoCliente = 'E'">
                                      <fo:block font-family="Arial, Helvetica, sans-serif" font-size="11pt"   text-align="left" margin-left="1mm" line-height="4.5mm"><fo:inline font-weight="bold"><xsl:value-of select='format-number(../OperacionCredito/rutAval, "###.###.##0","rut")' />-<xsl:value-of select="../OperacionCredito/dvAval" /></fo:inline></fo:block>
                                  </xsl:if>
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
                                  <fo:block font-family="Arial, Helvetica, sans-serif" font-size="11pt"   text-align="left"  line-height="4.5mm">REPRESENTANTE LEGAL</fo:block>
                          </fo:table-cell>

                          <fo:table-cell >
                                  <fo:block font-family="Arial, Helvetica, sans-serif" font-size="11pt"   text-align="left" margin-left="1mm" line-height="4.5mm"><fo:inline font-weight="bold"><!--<xsl:value-of select="../OperacionCredito/nombreRepresentanteLegal" />--></fo:inline></fo:block>
                          </fo:table-cell>

                          <fo:table-cell >
                                  <fo:block font-family="Arial, Helvetica, sans-serif" font-size="11pt"   text-align="left" margin-left="1mm" line-height="4.5mm">RUT</fo:block>
                          </fo:table-cell>

                          <fo:table-cell >
                                  <fo:block font-family="Arial, Helvetica, sans-serif" font-size="11pt"   text-align="left" margin-left="1mm" line-height="4.5mm"><fo:inline font-weight="bold"><!--<xsl:value-of select='format-number(../OperacionCredito/rutRepresentanteLegal, "###.###.##0","rut")' />-<xsl:value-of select="../OperacionCredito/dvRepresentanteLegal" />--></fo:inline></fo:block>
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
                                  <fo:block font-family="Arial, Helvetica, sans-serif" font-size="11pt"   text-align="left"  line-height="4.5mm">REPRESENTANTE LEGAL</fo:block>
                          </fo:table-cell>

                          <fo:table-cell >
                                  <fo:block font-family="Arial, Helvetica, sans-serif" font-size="11pt"   text-align="left" margin-left="1mm" line-height="4.5mm"><fo:inline font-weight="bold"><!--<xsl:value-of select="../OperacionCredito/nombreRepresentanteLegal" />--></fo:inline></fo:block>
                          </fo:table-cell>

                          <fo:table-cell >
                                  <fo:block font-family="Arial, Helvetica, sans-serif" font-size="11pt"   text-align="left" margin-left="1mm" line-height="4.5mm">RUT</fo:block>
                          </fo:table-cell>

                          <fo:table-cell >
                                  <fo:block font-family="Arial, Helvetica, sans-serif" font-size="11pt"   text-align="left" margin-left="1mm" line-height="4.5mm"><fo:inline font-weight="bold"><!--<xsl:value-of select='format-number(../OperacionCredito/rutRepresentanteLegal, "###.###.##0","rut")' />-<xsl:value-of select="../OperacionCredito/dvRepresentanteLegal" />--></fo:inline></fo:block>
                          </fo:table-cell>

                    </fo:table-row>
              </fo:table-body>
              </fo:table>
            <!-- AQUI TERMINAN LOS DATOS  DEL SUSCRIPTOR NOMBRE DEL REPRESENTANTE LEGAL -->


            <!-- AQUI COMIENZA LOS DATOS  DEL SUSCRIPTOR DOMICILIO, COMUNA Y CIUDAD -->
              <fo:table border-collapse="collapse" text-align="left">
                <fo:table-column column-width="23mm" />
                <fo:table-column column-width="80mm" />
                <fo:table-column column-width="20mm" />
                <fo:table-column column-width="32mm" />
                <fo:table-column column-width="18mm" />
                <fo:table-column column-width="22mm" />
                <fo:table-body>
                    <fo:table-row>

                          <fo:table-cell >
                                  <fo:block font-family="Arial, Helvetica, sans-serif" font-size="11pt"   text-align="left"  line-height="4.5mm">DOMICILIO</fo:block>
                          </fo:table-cell>

                          <fo:table-cell >
                                  <xsl:variable name="tipoCliente" select="../DireccionAvalBci/tipoCliente" />
                                  <xsl:if test="$tipoCliente = 'E'">
                                     <fo:block font-family="Arial, Helvetica, sans-serif" font-size="11pt"   text-align="left" margin-left="1mm" line-height="4.5mm"><fo:inline font-weight="bold"><xsl:value-of select="substring(../DireccionAvalBci/direccion,0,32)" /></fo:inline></fo:block>
                                  </xsl:if>
                          </fo:table-cell>

                          <fo:table-cell >
                                  <fo:block font-family="Arial, Helvetica, sans-serif" font-size="11pt"   text-align="left" margin-left="1mm" line-height="4.5mm">COMUNA</fo:block>
                          </fo:table-cell>

                          <fo:table-cell >
                                  <xsl:variable name="tipoCliente" select="../DireccionAvalBci/tipoCliente" />
                                  <xsl:if test="$tipoCliente = 'E'">
                                     <fo:block font-family="Arial, Helvetica, sans-serif" font-size="11pt"   text-align="left" margin-left="1mm" line-height="4.5mm"><fo:inline font-weight="bold"><xsl:value-of select="substring(../DireccionAvalBci/comuna,0,20)" /></fo:inline></fo:block>
                                  </xsl:if>
                          </fo:table-cell>

                          <fo:table-cell >
                                  <fo:block font-family="Arial, Helvetica, sans-serif" font-size="11pt"   text-align="left" margin-left="1mm" line-height="4.5mm">CIUDAD</fo:block>
                          </fo:table-cell>

                          <fo:table-cell >
                                  <xsl:variable name="tipoCliente" select="../DireccionAvalBci/tipoCliente" />
                                  <xsl:if test="$tipoCliente = 'E'">
                                      <fo:block font-family="Arial, Helvetica, sans-serif" font-size="11pt"   text-align="left" margin-left="1mm" line-height="4.5mm"><fo:inline font-weight="bold"><xsl:value-of select="substring(../DireccionAvalBci/comuna,21,40)" /></fo:inline></fo:block>
                                  </xsl:if>
                          </fo:table-cell>


                    </fo:table-row>
              </fo:table-body>
              </fo:table>

<!--
              <fo:table border-collapse="collapse" text-align="left">
                <fo:table-column column-width="57mm"  />
                <fo:table-column column-width="98mm"  />
                <fo:table-column column-width="10mm"  />
                <fo:table-column column-width="30mm"  />
                <fo:table-body>
                    <fo:table-row>

                          <fo:table-cell >
                                  <fo:block font-family="Arial, Helvetica, sans-serif" font-size="11pt"   text-align="left"  line-height="4.5mm">NOMBRE O RAZON SOCIAL</fo:block>
                          </fo:table-cell>

                          <fo:table-cell >
                                  <fo:block font-family="Arial, Helvetica, sans-serif" font-size="11pt"   text-align="left" margin-left="1mm" line-height="4.5mm"><fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/nombreCompletoAval" /></fo:inline></fo:block>
                          </fo:table-cell>

                          <fo:table-cell >
                                  <fo:block font-family="Arial, Helvetica, sans-serif" font-size="11pt"   text-align="left" margin-left="1mm" line-height="4.5mm">RUT</fo:block>
                          </fo:table-cell>

                          <fo:table-cell >
                                  <fo:block font-family="Arial, Helvetica, sans-serif" font-size="11pt"   text-align="left" margin-left="1mm" line-height="4.5mm">

                                  <xsl:variable name="rut" select="../OperacionCredito/rutAval" />
                                  <xsl:choose>
                                    <xsl:when test="string-length($rut) &gt; 0">
                                      <fo:inline font-weight="bold"><xsl:value-of select='format-number(../OperacionCredito/rutAval, "###.###.##0","rut")' />-<xsl:value-of select="../OperacionCredito/dvAval" /></fo:inline>
                                    </xsl:when>
                                  </xsl:choose>

                                  </fo:block>
                          </fo:table-cell>

                    </fo:table-row>
              </fo:table-body>
              </fo:table>



              <fo:table border-collapse="collapse" text-align="left">
                <fo:table-column column-width="23mm"  />
                <fo:table-column column-width="75mm"  />
                <fo:table-column column-width="23mm"  />
                <fo:table-column column-width="30mm"  />
                <fo:table-column column-width="18mm"  />
                <fo:table-column column-width="25.9mm"/>
                <fo:table-body>
                    <fo:table-row>

                          <fo:table-cell >
                                  <fo:block font-family="Arial, Helvetica, sans-serif" font-size="11pt"   text-align="left"  line-height="4.5mm">DOMICILIO</fo:block>
                          </fo:table-cell>

                          <fo:table-cell >
                                  <fo:block font-family="Arial, Helvetica, sans-serif" font-size="11pt"   text-align="left" margin-left="1mm" line-height="4.5mm"><fo:inline font-weight="bold"><xsl:value-of select="substring(../DireccionAvalBci/direccion,0,32)" /></fo:inline></fo:block>
                          </fo:table-cell>

                          <fo:table-cell >
                                  <fo:block font-family="Arial, Helvetica, sans-serif" font-size="11pt"   text-align="left" margin-left="1mm" line-height="4.5mm">COMUNA</fo:block>
                          </fo:table-cell>

                          <fo:table-cell >
                                  <fo:block font-family="Arial, Helvetica, sans-serif" font-size="11pt"   text-align="left" margin-left="1mm" line-height="4.5mm"><fo:inline font-weight="bold"><xsl:value-of select="substring(../DireccionAvalBci/comuna,0,20)" /></fo:inline></fo:block>
                          </fo:table-cell>

                          <fo:table-cell >
                                  <fo:block font-family="Arial, Helvetica, sans-serif" font-size="11pt"   text-align="left" margin-left="1mm" line-height="4.5mm">CIUDAD</fo:block>
                          </fo:table-cell>

                          <fo:table-cell >
                                  <fo:block font-family="Arial, Helvetica, sans-serif" font-size="11pt"   text-align="left" margin-left="1mm" line-height="4.5mm"><fo:inline font-weight="bold"><xsl:value-of select="substring(../DireccionAvalBci/comuna,21,40)" /></fo:inline></fo:block>
                          </fo:table-cell>
                    </fo:table-row>
              </fo:table-body>
             </fo:table>


             <fo:table border-collapse="collapse" text-align="left">
                <fo:table-column column-width="57mm"  />
                <fo:table-column column-width="98mm"  />
                <fo:table-column column-width="10mm"  />
                <fo:table-column column-width="30mm"  />
                <fo:table-body>
                    <fo:table-row>

                          <fo:table-cell >
                                  <fo:block font-family="Arial, Helvetica, sans-serif" font-size="11pt"   text-align="left" margin-left="1mm" line-height="4.5mm">NOMBRE CONYUGE</fo:block>
                          </fo:table-cell>

                          <fo:table-cell >
                                  <fo:block font-family="Arial, Helvetica, sans-serif" font-size="11pt"   text-align="left" margin-left="1mm" line-height="4.5mm"><fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/nombresConyugeAval" /></fo:inline></fo:block>
                          </fo:table-cell>

                          <fo:table-cell >
                                  <fo:block font-family="Arial, Helvetica, sans-serif" font-size="11pt"   text-align="left" margin-left="1mm" line-height="4.5mm">RUT</fo:block>
                          </fo:table-cell>

                          <fo:table-cell >
                                  <fo:block font-family="Arial, Helvetica, sans-serif" font-size="11pt"   text-align="left" margin-left="1mm" line-height="4.5mm">
                                  <xsl:variable name="rut" select="../OperacionCredito/rutConyugeAval" />

                                  <xsl:choose>
                                    <xsl:when test="string-length($rut) &gt; 0">
                                      <fo:inline font-weight="bold"><xsl:value-of select='format-number(../OperacionCredito/rutConyugeAval, "###.###.##0","rut")' />-<xsl:value-of select="OperacionCredito/DvConyugeAval" /></fo:inline>
                                    </xsl:when>
                                  </xsl:choose>

                                    </fo:block>
                          </fo:table-cell>

                    </fo:table-row>
              </fo:table-body>

              </fo:table>



              <fo:table border-collapse="collapse" text-align="left">
                <fo:table-column column-width="23mm"    />
                <fo:table-column column-width="75mm"    />
                <fo:table-column column-width="23mm"    />
                <fo:table-column column-width="30mm"    />
                <fo:table-column column-width="18mm"    />
                <fo:table-column column-width="25.9mm"  />
                <fo:table-body>
                    <fo:table-row>

                          <fo:table-cell >
                                  <fo:block font-family="Arial, Helvetica, sans-serif" font-size="11pt"   text-align="left"  line-height="4.5mm">DOMICILIO</fo:block>
                          </fo:table-cell>

                          <fo:table-cell >
                                  <fo:block font-family="Arial, Helvetica, sans-serif" font-size="11pt"   text-align="left" margin-left="1mm" line-height="4.5mm"><fo:inline font-weight="bold"><xsl:value-of select="../DireccionConyugeAvalBci/direccion" /></fo:inline></fo:block>
                          </fo:table-cell>

                          <fo:table-cell >
                                  <fo:block font-family="Arial, Helvetica, sans-serif" font-size="11pt"   text-align="left" margin-left="1mm" line-height="4.5mm">COMUNA</fo:block>
                          </fo:table-cell>

                          <fo:table-cell >
                                  <fo:block font-family="Arial, Helvetica, sans-serif" font-size="11pt"   text-align="left" margin-left="1mm" line-height="4.5mm"><fo:inline font-weight="bold"><xsl:value-of select="substring(../DireccionConyugeAvalBci/comuna,0,20)" /></fo:inline></fo:block>
                          </fo:table-cell>

                          <fo:table-cell >
                                  <fo:block font-family="Arial, Helvetica, sans-serif" font-size="11pt"   text-align="left" margin-left="1mm" line-height="4.5mm">CIUDAD</fo:block>
                          </fo:table-cell>

                          <fo:table-cell >
                                  <fo:block font-family="Arial, Helvetica, sans-serif" font-size="11pt"   text-align="left" margin-left="1mm" line-height="4.5mm"><fo:inline font-weight="bold"><xsl:value-of select="substring(../DireccionConyugeAvalBci/comuna,20,40)" /></fo:inline></fo:block>
                          </fo:table-cell>
                    </fo:table-row>
              </fo:table-body>
              </fo:table>

-->


                          <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                          <fo:block font-family="Arial, Helvetica, sans-serif" line-height="4.5mm" font-size="11pt" text-align="left" >
                          En<fo:leader leader-pattern="space" leader-length="1mm"/>
                          <fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/ciudadContrato" /></fo:inline>,
                          <fo:leader leader-pattern="space" leader-length="1mm"/>a<fo:leader leader-pattern="space" leader-length="1mm"/>
                          <fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/dia" /></fo:inline>

                          <!--<fo:leader leader-pattern="space" leader-length="1mm"/>de<fo:leader leader-pattern="space" leader-length="1mm"/>
                          <fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/mes" /></fo:inline>-->
                          <fo:leader leader-pattern="space" leader-length="1mm"/>de<fo:leader leader-pattern="space" leader-length="1mm"/>
                          <xsl:variable name="mes" select="../OperacionCredito/mes" />
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


                          <fo:leader leader-pattern="space" leader-length="1mm"/>de<fo:leader leader-pattern="space" leader-length="1mm"/>
                          <fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/anio" /></fo:inline>
                          </fo:block>


              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:table border-collapse="collapse" font-size="14pt" font-family="Arial, Helvetica, sans-serif">
                  <fo:table-column />
                  <fo:table-body>

                      <fo:table-row>
                          <fo:table-cell >
                              <fo:block font-family="Arial, Helvetica, sans-serif" line-height="4.5mm" font-size="11pt" text-align="center" ><fo:leader leader-length="4cm" leader-pattern="rule" rule-style="solid" rule-thickness="0.4mm" color="black"/></fo:block>
                          </fo:table-cell>
                      </fo:table-row>

                  </fo:table-body>
              </fo:table>


              <fo:table border-collapse="collapse" font-size="14pt" font-family="Arial, Helvetica, sans-serif">
                  <fo:table-column />
                  <fo:table-body>

                      <fo:table-row>
                          <fo:table-cell >
                              <fo:block font-family="Arial, Helvetica, sans-serif" line-height="4.5mm" font-size="11pt" text-align="center" >Firma del Avalista</fo:block>
                          </fo:table-cell>
                      </fo:table-row>

                  </fo:table-body>
              </fo:table>


              <!-- aval 1 -->
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
               <!-- <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>-->





            <!-- AQUI COMIENZAN LOS DATOS DEL CONYUGE            -->


              <fo:table border-collapse="collapse" text-align="left">
                <fo:table-column column-width="57mm"  />
                <fo:table-column column-width="98mm"  />
                <fo:table-column column-width="10mm"  />
                <fo:table-column column-width="30mm"  />
                <fo:table-body>
                    <fo:table-row>

                          <fo:table-cell >
                                  <fo:block font-family="Arial, Helvetica, sans-serif" font-size="11pt"   text-align="left"  line-height="4.5mm">NOMBRE O RAZON SOCIAL</fo:block>
                          </fo:table-cell>

                          <fo:table-cell >
                                  <xsl:variable name="tipoCliente" select="../DireccionAvalBci/tipoCliente" />
                                  <fo:block font-family="Arial, Helvetica, sans-serif" font-size="11pt"   text-align="left" margin-left="1mm" line-height="4.5mm"><fo:inline font-weight="bold">
                                      <xsl:if test="$tipoCliente = 'P'">
                                              <xsl:value-of select="../OperacionCredito/nombreCompletoAval" />
                                      </xsl:if>
                                  </fo:inline></fo:block>
                          </fo:table-cell>

                          <fo:table-cell >
                                  <fo:block font-family="Arial, Helvetica, sans-serif" font-size="11pt"   text-align="left" margin-left="1mm" line-height="4.5mm">RUT</fo:block>
                          </fo:table-cell>

                          <fo:table-cell >
                                  <xsl:variable name="tipoCliente" select="../DireccionAvalBci/tipoCliente" />
                                  <fo:block font-family="Arial, Helvetica, sans-serif" font-size="11pt"   text-align="left" margin-left="1mm" line-height="4.5mm">

                                      <xsl:if test="$tipoCliente = 'P'">
                                            <xsl:variable name="rut" select="../OperacionCredito/rutAval" />
                                            <xsl:choose>
                                              <xsl:when test="string-length($rut) &gt; 0">
                                                <fo:inline font-weight="bold"><xsl:value-of select='format-number(../OperacionCredito/rutAval, "###.###.##0","rut")' />-<xsl:value-of select="../OperacionCredito/dvAval" /></fo:inline>
                                              </xsl:when>
                                            </xsl:choose>
                                      </xsl:if>

                                  </fo:block>
                          </fo:table-cell>

                    </fo:table-row>
              </fo:table-body>
              </fo:table>



              <fo:table border-collapse="collapse" text-align="left">
                <fo:table-column column-width="23mm"    />
                <fo:table-column column-width="75mm"    />
                <fo:table-column column-width="23mm"    />
                <fo:table-column column-width="30mm"    />
                <fo:table-column column-width="18mm"    />
                <fo:table-column column-width="25.9mm"  />
                <fo:table-body>
                    <fo:table-row>

                          <fo:table-cell >
                                  <fo:block font-family="Arial, Helvetica, sans-serif" font-size="11pt"   text-align="left"  line-height="4.5mm">DOMICILIO</fo:block>
                          </fo:table-cell>

                          <fo:table-cell >
                                  <xsl:variable name="tipoCliente" select="../DireccionAvalBci/tipoCliente" />
                                  <xsl:if test="$tipoCliente = 'P'">
                                        <fo:block font-family="Arial, Helvetica, sans-serif" font-size="11pt"   text-align="left" margin-left="1mm" line-height="4.5mm"><fo:inline font-weight="bold"><xsl:value-of select="substring(../DireccionAvalBci/direccion,0,32)" /></fo:inline></fo:block>
                                  </xsl:if>
                          </fo:table-cell>

                          <fo:table-cell >
                                  <fo:block font-family="Arial, Helvetica, sans-serif" font-size="11pt"   text-align="left" margin-left="1mm" line-height="4.5mm">COMUNA</fo:block>
                          </fo:table-cell>

                          <fo:table-cell >
                                  <xsl:variable name="tipoCliente" select="../DireccionAvalBci/tipoCliente" />
                                  <xsl:if test="$tipoCliente = 'P'">
                                        <fo:block font-family="Arial, Helvetica, sans-serif" font-size="11pt"   text-align="left" margin-left="1mm" line-height="4.5mm"><fo:inline font-weight="bold"><xsl:value-of select="substring(../DireccionAvalBci/comuna,0,20)" /></fo:inline></fo:block>
                                  </xsl:if>
                          </fo:table-cell>

                          <fo:table-cell >
                                  <fo:block font-family="Arial, Helvetica, sans-serif" font-size="11pt"   text-align="left" margin-left="1mm" line-height="4.5mm">CIUDAD</fo:block>
                          </fo:table-cell>

                          <fo:table-cell >
                                  <xsl:variable name="tipoCliente" select="../DireccionAvalBci/tipoCliente" />
                                  <xsl:if test="$tipoCliente = 'P'">
                                  <fo:block font-family="Arial, Helvetica, sans-serif" font-size="11pt"   text-align="left" margin-left="1mm" line-height="4.5mm"><fo:inline font-weight="bold"><xsl:value-of select="substring(../DireccionAvalBci/comuna,21,40)" /></fo:inline></fo:block>
                                  </xsl:if>
                          </fo:table-cell>
                    </fo:table-row>
              </fo:table-body>
             </fo:table>



             <fo:table border-collapse="collapse" text-align="left">
                <fo:table-column />
                <fo:table-column />
                <fo:table-column />
                <fo:table-column />
                <fo:table-body>
                    <fo:table-row>

                                  <xsl:variable name="relacionConyugal" select="../DireccionAvalBci/relacionConyugal" />
                                  <xsl:variable name="estadoCivilAval"  select="../OperacionCredito/codEstadoCivilAval" />
                                  <xsl:variable name="tipoCliente"      select="../DireccionAvalBci/tipoCliente" />

                          <fo:table-cell >
                                  <fo:block font-family="Arial, Helvetica, sans-serif" font-size="11pt"   text-align="left" line-height="4.5mm">NOMBRE CONYUGE</fo:block>
                          </fo:table-cell>

                          <fo:table-cell >
                                    <xsl:if test="$estadoCivilAval = 'CAS'">
                                      <xsl:if test="$tipoCliente = 'P'">
                                        <xsl:if test="$relacionConyugal = 1" >
                                          <fo:block font-family="Arial, Helvetica, sans-serif" font-size="11pt"   text-align="left" margin-left="1mm" line-height="4.5mm"><fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/nombresConyugeAval" /></fo:inline></fo:block>
                                        </xsl:if>
                                      </xsl:if>
                                    </xsl:if>
                          </fo:table-cell>

                          <fo:table-cell >
                                  <fo:block font-family="Arial, Helvetica, sans-serif" font-size="11pt"   text-align="left" margin-left="1mm" line-height="4.5mm">RUT</fo:block>
                          </fo:table-cell>

                          <fo:table-cell >
                                  <fo:block font-family="Arial, Helvetica, sans-serif" font-size="11pt"   text-align="left" margin-left="1mm" line-height="4.5mm">
                                  <xsl:variable name="tipoCliente" select="../DireccionAvalBci/tipoCliente" />

                                    <xsl:if test="$estadoCivilAval = 'CAS'">
                                      <xsl:if test="$tipoCliente = 'P'">
                                        <xsl:if test="$relacionConyugal = 1">
                                            <xsl:variable name="rut" select="../OperacionCredito/rutConyugeAval" />
                                            <xsl:choose>
                                              <xsl:when test="string-length($rut) &gt; 0">
                                                   <fo:inline font-weight="bold"><xsl:value-of select='format-number(../OperacionCredito/rutConyugeAval, "###.###.##0","rut")' />-<xsl:value-of select="../OperacionCredito/DvConyugeAval" /></fo:inline>
                                              </xsl:when>
                                            </xsl:choose>
                                        </xsl:if>
                                      </xsl:if>
                                    </xsl:if>
                                    </fo:block>
                          </fo:table-cell>

                    </fo:table-row>
              </fo:table-body>

              </fo:table>



              <fo:table border-collapse="collapse" text-align="left">
                <fo:table-column column-width="23mm"    />
                <fo:table-column column-width="75mm"    />
                <fo:table-column column-width="23mm"    />
                <fo:table-column column-width="30mm"    />
                <fo:table-column column-width="18mm"    />
                <fo:table-column column-width="25.9mm"  />
                <fo:table-body>
                    <fo:table-row>

                          <fo:table-cell >
                                  <fo:block font-family="Arial, Helvetica, sans-serif" font-size="11pt"   text-align="left"  line-height="4.5mm">DOMICILIO</fo:block>
                          </fo:table-cell>

                          <fo:table-cell >
                                  <xsl:variable name="relacionConyugal" select="../DireccionAvalBci/tipoCliente" />
                                  <xsl:variable name="tipoCliente" select="../DireccionAvalBci/tipoCliente" />
                                  <xsl:variable name="estadoCivilAval"  select="../OperacionCredito/codEstadoCivilAval" />

                                  <xsl:if test="$estadoCivilAval = 'CAS'">
                                    <xsl:if test="$tipoCliente = 'P'">
                                      <xsl:if test="$relacionConyugal = 1">
                                          <fo:block font-family="Arial, Helvetica, sans-serif" font-size="11pt"   text-align="left" margin-left="1mm" line-height="4.5mm"><fo:inline font-weight="bold"><xsl:value-of select="../DireccionConyugeAvalBci/direccion" /></fo:inline></fo:block>
                                      </xsl:if>
                                    </xsl:if>
                                  </xsl:if>


                          </fo:table-cell>

                          <fo:table-cell >
                                  <fo:block font-family="Arial, Helvetica, sans-serif" font-size="11pt"   text-align="left" margin-left="1mm" line-height="4.5mm">COMUNA</fo:block>
                          </fo:table-cell>

                          <fo:table-cell >
                                  <xsl:variable name="relacionConyugal" select="../DireccionAvalBci/tipoCliente" />
                                  <xsl:variable name="tipoCliente" select="../DireccionAvalBci/tipoCliente" />
                                  <xsl:variable name="estadoCivilAval"  select="../OperacionCredito/codEstadoCivilAval" />
                                  <xsl:if test="$estadoCivilAval = 'CAS'">
                                    <xsl:if test="$tipoCliente = 'P'">
                                      <xsl:if test="$relacionConyugal = 1">
                                         <fo:block font-family="Arial, Helvetica, sans-serif" font-size="11pt"   text-align="left" margin-left="1mm" line-height="4.5mm"><fo:inline font-weight="bold"><xsl:value-of select="substring(../DireccionConyugeAvalBci/comuna,0,20)" /></fo:inline></fo:block>
                                      </xsl:if>
                                    </xsl:if>
                                  </xsl:if>
                          </fo:table-cell>

                          <fo:table-cell >
                                  <fo:block font-family="Arial, Helvetica, sans-serif" font-size="11pt"   text-align="left" margin-left="1mm" line-height="4.5mm">CIUDAD</fo:block>
                          </fo:table-cell>

                          <fo:table-cell >

                                  <xsl:variable name="relacionConyugal" select="../DireccionAvalBci/tipoCliente" />
                                  <xsl:variable name="tipoCliente" select="../DireccionAvalBci/tipoCliente" />
                                  <xsl:variable name="estadoCivilAval"  select="../OperacionCredito/codEstadoCivilAval" />
                                  <xsl:if test="$estadoCivilAval = 'CAS'">
                                    <xsl:if test="$tipoCliente = 'P'">
                                      <xsl:if test="$relacionConyugal = 1">
                                       <fo:block font-family="Arial, Helvetica, sans-serif" font-size="11pt"   text-align="left" margin-left="1mm" line-height="4.5mm"><fo:inline font-weight="bold"><xsl:value-of select="substring(../DireccionConyugeAvalBci/comuna,20,40)" /></fo:inline></fo:block>
                                      </xsl:if>
                                    </xsl:if>
                                  </xsl:if>

                          </fo:table-cell>
                    </fo:table-row>
              </fo:table-body>
              </fo:table>




             <!-- <fo:!block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>-->
              <fo:block font-family="Arial, Helvetica, sans-serif" line-height="4.5mm" font-size="11pt" text-align="left" >
              En<fo:leader leader-pattern="space" leader-length="1mm"/>
              <fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/ciudadContrato" /></fo:inline>,
              <fo:leader leader-pattern="space" leader-length="1mm"/>a<fo:leader leader-pattern="space" leader-length="1mm"/>
              <fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/dia" /></fo:inline>


              <fo:leader leader-pattern="space" leader-length="1mm"/>de<fo:leader leader-pattern="space" leader-length="1mm"/>
              <xsl:variable name="mes" select="../OperacionCredito/mes" />
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


              <fo:leader leader-pattern="space" leader-length="1mm"/>de<fo:leader leader-pattern="space" leader-length="1mm"/>
              <fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/anio" /></fo:inline>
              </fo:block>
              <!--<fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block> -->
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:table border-collapse="collapse" font-size="14pt" font-family="Arial, Helvetica, sans-serif">
                  <fo:table-column column-width="50%"/>
                  <fo:table-column column-width="50%"/>
                  <fo:table-body>
                      <fo:table-row>
                          <fo:table-cell > _
                              <fo:block font-family="Arial, Helvetica, sans-serif" line-height="4.5mm" font-size="11pt" text-align="center" ><fo:leader leader-length="4cm" leader-pattern="rule" rule-style="solid" rule-thickness="0.4mm" color="black"/></fo:block>
                          </fo:table-cell>
                          <fo:table-cell >
                              <fo:block font-family="Arial, Helvetica, sans-serif" line-height="4.5mm" font-size="11pt" text-align="center" ><fo:leader leader-length="5.5cm" leader-pattern="rule" rule-style="solid" rule-thickness="0.4mm" color="black"/></fo:block>
                          </fo:table-cell>
                      </fo:table-row>
                      <fo:table-row>
                          <fo:table-cell > _
                              <fo:block font-family="Arial, Helvetica, sans-serif" line-height="4.5mm" font-size="11pt" text-align="center" >Firma del Avalista</fo:block>
                          </fo:table-cell>
                          <fo:table-cell >
                              <fo:block font-family="Arial, Helvetica, sans-serif" line-height="4.5mm" font-size="11pt" text-align="center" >Firma Cónyuge del Aval</fo:block>
                          </fo:table-cell>
                      </fo:table-row>
                  </fo:table-body>
              </fo:table>
              <!-- aval 2 -->
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block font-family="Arial, Helvetica, sans-serif" line-height="4.5mm" font-size="11pt" text-align="left" >Autorizo las firmas estampadas en este instrumento, como suscriptor:</fo:block>
              <fo:block font-family="Arial, Helvetica, sans-serif" line-height="4.5mm" font-size="11pt" text-align="left" >DON(A)<fo:leader leader-pattern="space" leader-length="1mm"/>:<fo:leader leader-length="11.8cm" leader-pattern="rule" rule-style="solid" rule-thickness="0.4mm" color="black"/><fo:leader leader-pattern="space" leader-length="1mm"/>RUT<fo:leader leader-length="4cm" leader-pattern="rule" rule-style="solid" rule-thickness="0.4mm" color="black"/> </fo:block>
              <fo:block font-family="Arial, Helvetica, sans-serif" line-height="4.5mm" font-size="11pt" text-align="left" >DON(A)<fo:leader leader-pattern="space" leader-length="1mm"/>:<fo:leader leader-length="11.8cm" leader-pattern="rule" rule-style="solid" rule-thickness="0.4mm" color="black"/><fo:leader leader-pattern="space" leader-length="1mm"/>RUT<fo:leader leader-length="4cm" leader-pattern="rule" rule-style="solid" rule-thickness="0.4mm" color="black"/> </fo:block>
              <fo:block font-family="Arial, Helvetica, sans-serif" line-height="4.5mm" font-size="11pt" text-align="left" >Quienes lo hacen en representación de <fo:leader leader-length="14.3cm" leader-pattern="rule" rule-style="solid" rule-thickness="0.4mm" color="black"/> </fo:block>
              <fo:block font-family="Arial, Helvetica, sans-serif" line-height="4.5mm" font-size="11pt" text-align="left" >Como Avalistas:</fo:block>
              <fo:block font-family="Arial, Helvetica, sans-serif" line-height="4.5mm" font-size="11pt" text-align="left" >DON(A)<fo:leader leader-pattern="space" leader-length="1mm"/>:<fo:leader leader-length="11.8cm" leader-pattern="rule" rule-style="solid" rule-thickness="0.4mm" color="black"/><fo:leader leader-pattern="space" leader-length="1mm"/>RUT<fo:leader leader-length="4cm" leader-pattern="rule" rule-style="solid" rule-thickness="0.4mm" color="black"/> </fo:block>
              <fo:block font-family="Arial, Helvetica, sans-serif" line-height="4.5mm" font-size="11pt" text-align="left" >DON(A)<fo:leader leader-pattern="space" leader-length="1mm"/>:<fo:leader leader-length="11.8cm" leader-pattern="rule" rule-style="solid" rule-thickness="0.4mm" color="black"/><fo:leader leader-pattern="space" leader-length="1mm"/>RUT<fo:leader leader-length="4cm" leader-pattern="rule" rule-style="solid" rule-thickness="0.4mm" color="black"/> </fo:block>
              <fo:block font-family="Arial, Helvetica, sans-serif" line-height="4.5mm" font-size="11pt" text-align="left" >Como cónyuge de los avalistas, respectivamente, en los casos que corresponda: </fo:block>
              <fo:block font-family="Arial, Helvetica, sans-serif" line-height="4.5mm" font-size="11pt" text-align="left" >DON(A)<fo:leader leader-pattern="space" leader-length="1mm"/>:<fo:leader leader-length="11.6cm" leader-pattern="rule" rule-style="solid" rule-thickness="0.4mm" color="black"/><fo:leader leader-pattern="space" leader-length="1mm"/>RUT<fo:leader leader-length="4cm" leader-pattern="rule" rule-style="solid" rule-thickness="0.4mm" color="black"/> </fo:block>
              <fo:block font-family="Arial, Helvetica, sans-serif" line-height="4.5mm" font-size="11pt" text-align="left" >DON(A)<fo:leader leader-pattern="space" leader-length="1mm"/>:<fo:leader leader-length="11.6cm" leader-pattern="rule" rule-style="solid" rule-thickness="0.4mm" color="black"/><fo:leader leader-pattern="space" leader-length="1mm"/>RUT<fo:leader leader-length="4cm" leader-pattern="rule" rule-style="solid" rule-thickness="0.4mm" color="black"/> </fo:block>


              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block font-family="Arial, Helvetica, sans-serif" line-height="4.5mm" font-size="11pt" text-align="left" >
              En<fo:leader leader-pattern="space" leader-length="2cm"/>
              <fo:leader leader-pattern="space" leader-length="2cm"/>a<fo:leader leader-pattern="space" leader-length="0.5cm"/>
              <fo:leader leader-pattern="space" leader-length="0.5cm"/>de<fo:leader leader-pattern="space" leader-length="2cm"/>
              <fo:leader leader-pattern="space" leader-length="2cm"/>de<fo:leader leader-pattern="space" leader-length="1mm"/>
              </fo:block>

              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block font-family="Arial, Helvetica, sans-serif" line-height="4.5mm" font-size="11pt" text-align="center" ><fo:leader leader-length="6cm" leader-pattern="rule" rule-style="solid" rule-thickness="0.4mm" color="black"/></fo:block>
              <fo:block font-family="Arial, Helvetica, sans-serif" line-height="4.5mm" font-size="11pt" text-align="center" >NOTARIO</fo:block>
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
			  <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block font-family="Arial, Helvetica, sans-serif" line-height="4.5mm" font-size="11pt" text-align="center" >Página 3 de 3</fo:block>
              </fo:flow>
          </xsl:when>

            <xsl:otherwise>
                    <fo:flow flow-name="xsl-region-body">
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                    </fo:flow>
            </xsl:otherwise>

        </xsl:choose>

            </fo:page-sequence>
            </xsl:for-each>
        </fo:root>
    </xsl:template>





        <xsl:template match="DireccionDeudorBci">

            <!-- AQUI COMIENZA LOS DATOS  DEL SUSCRIPTOR NOMBRE DEL REPRESENTANTE LEGAL -->
              <fo:table border-collapse="collapse" text-align="left">
                <fo:table-column column-width="58mm" />
                <fo:table-column column-width="97mm"  />
                <fo:table-column column-width="10mm"  />
                <fo:table-column column-width="30mm"  />
                <fo:table-body>
                    <fo:table-row>

                          <fo:table-cell >
                                  <fo:block font-family="Arial, Helvetica, sans-serif" font-size="11pt"   text-align="left"  line-height="4.5mm">REPRESENTANTE LEGAL</fo:block>
                          </fo:table-cell>

                          <fo:table-cell >
                                  <fo:block font-family="Arial, Helvetica, sans-serif" font-size="11pt"   text-align="left" margin-left="1mm" line-height="4.5mm"><fo:inline font-weight="bold"><!--<xsl:value-of select="../OperacionCredito/nombreRepresentanteLegal" />--></fo:inline></fo:block>
                          </fo:table-cell>

                          <fo:table-cell >
                                  <fo:block font-family="Arial, Helvetica, sans-serif" font-size="11pt"   text-align="left" margin-left="1mm" line-height="4.5mm">RUT</fo:block>
                          </fo:table-cell>

                          <fo:table-cell >
                                  <fo:block font-family="Arial, Helvetica, sans-serif" font-size="11pt"   text-align="left" margin-left="1mm" line-height="4.5mm"><fo:inline font-weight="bold"><!--<xsl:value-of select='format-number(../OperacionCredito/rutRepresentanteLegal, "###.###.##0","rut")' />-<xsl:value-of select="../OperacionCredito/dvRepresentanteLegal" />--></fo:inline></fo:block>
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
                                  <fo:block font-family="Arial, Helvetica, sans-serif" font-size="11pt"   text-align="left"  line-height="4.5mm">REPRESENTANTE LEGAL</fo:block>
                          </fo:table-cell>

                          <fo:table-cell >
                                  <fo:block font-family="Arial, Helvetica, sans-serif" font-size="11pt"   text-align="left" margin-left="1mm" line-height="4.5mm"><fo:inline font-weight="bold"><!--<xsl:value-of select="../OperacionCredito/nombreRepresentanteLegal" />--></fo:inline></fo:block>
                          </fo:table-cell>

                          <fo:table-cell >
                                  <fo:block font-family="Arial, Helvetica, sans-serif" font-size="11pt"   text-align="left" margin-left="1mm" line-height="4.5mm">RUT</fo:block>
                          </fo:table-cell>

                          <fo:table-cell >
                                  <fo:block font-family="Arial, Helvetica, sans-serif" font-size="11pt"   text-align="left" margin-left="1mm" line-height="4.5mm"><fo:inline font-weight="bold"><!--<xsl:value-of select='format-number(../OperacionCredito/rutRepresentanteLegal, "###.###.##0","rut")' />-<xsl:value-of select="../OperacionCredito/dvRepresentanteLegal" />--></fo:inline></fo:block>
                          </fo:table-cell>

                    </fo:table-row>
              </fo:table-body>
              </fo:table>
            <!-- AQUI TERMINAN LOS DATOS  DEL SUSCRIPTOR NOMBRE DEL REPRESENTANTE LEGAL -->


            <!-- AQUI COMIENZA LOS DATOS  DEL SUSCRIPTOR DOMICILIO, COMUNA Y CIUDAD -->
              <fo:table border-collapse="collapse" text-align="left">
                <fo:table-column column-width="23mm" />
                <fo:table-column column-width="80mm" />
                <fo:table-column column-width="20mm" />
                <fo:table-column column-width="32mm" />
                <fo:table-column column-width="18mm" />
                <fo:table-column column-width="22mm" />
                <fo:table-body>
                    <fo:table-row>

                          <fo:table-cell >
                                  <fo:block font-family="Arial, Helvetica, sans-serif" font-size="11pt"   text-align="left"  line-height="4.5mm">DOMICILIO</fo:block>
                          </fo:table-cell>

                          <fo:table-cell >
                                  <fo:block font-family="Arial, Helvetica, sans-serif" font-size="11pt"   text-align="left" margin-left="1mm" line-height="4.5mm"><fo:inline font-weight="bold"><xsl:value-of select="substring(direccion,0,32)" /></fo:inline></fo:block>
                          </fo:table-cell>

                          <fo:table-cell >
                                  <fo:block font-family="Arial, Helvetica, sans-serif" font-size="11pt"   text-align="left" margin-left="1mm" line-height="4.5mm">COMUNA</fo:block>
                          </fo:table-cell>

                          <fo:table-cell >
                                  <fo:block font-family="Arial, Helvetica, sans-serif" font-size="11pt"   text-align="left" margin-left="1mm" line-height="4.5mm"><fo:inline font-weight="bold"><xsl:value-of select="substring(comuna,0,20)" /></fo:inline></fo:block>
                          </fo:table-cell>

                          <fo:table-cell >
                                  <fo:block font-family="Arial, Helvetica, sans-serif" font-size="11pt"   text-align="left" margin-left="1mm" line-height="4.5mm">CIUDAD</fo:block>
                          </fo:table-cell>

                          <fo:table-cell >
                                  <fo:block font-family="Arial, Helvetica, sans-serif" font-size="11pt"   text-align="left" margin-left="1mm" line-height="4.5mm"><fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/ciudadCliente" /></fo:inline></fo:block>
                          </fo:table-cell>
                    </fo:table-row>
              </fo:table-body>
              </fo:table>
            <!-- AQUI TERMINAN LOS DATOS  DEL SUSCRIPTOR DOMICILIO, COMUNA Y CIUDAD -->


    </xsl:template>




        <xsl:template match="OperacionCredito">


            <!-- AQUI COMIENZA LOS DATOS  DEL SUSCRIPTOR NOMBRE O RAZON SOCIAL -->

              <fo:table border-collapse="collapse" text-align="left">
                <fo:table-column column-width="58mm" />
                <fo:table-column column-width="97mm"  />
                <fo:table-column column-width="10mm"  />
                <fo:table-column column-width="30mm"  />
                <fo:table-body>
                    <fo:table-row>

                          <fo:table-cell >
                                  <fo:block font-family="Arial, Helvetica, sans-serif" font-size="11pt"   text-align="left"  line-height="4.5mm">NOMBRE O RAZON SOCIAL</fo:block>
                          </fo:table-cell>

                          <fo:table-cell >
                                  <fo:block font-family="Arial, Helvetica, sans-serif" font-size="11pt"   text-align="left" margin-left="1mm" line-height="4.5mm"><fo:inline font-weight="bold"><xsl:value-of select="nombreCompletoCliente" /></fo:inline></fo:block>
                          </fo:table-cell>

                          <fo:table-cell >
                                  <fo:block font-family="Arial, Helvetica, sans-serif" font-size="11pt"   text-align="left" margin-left="1mm" line-height="4.5mm">RUT</fo:block>
                          </fo:table-cell>

                          <fo:table-cell >
                                  <fo:block font-family="Arial, Helvetica, sans-serif" font-size="11pt"   text-align="left" margin-left="1mm" line-height="4.5mm"><fo:inline font-weight="bold"><xsl:value-of select='format-number(rutCliente, "###.###.##0","rut")' />-<xsl:value-of select="dvCliente" /></fo:inline></fo:block>
                          </fo:table-cell>

                    </fo:table-row>
              </fo:table-body>
              </fo:table>
            <!-- AQUI TERMINA LOS DATOS  DEL SUSCRIPTOR NOMBRE O RAZON SOCIAL -->

    </xsl:template>



</xsl:stylesheet>
