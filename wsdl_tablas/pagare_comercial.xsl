<?xml version="1.0" encoding="iso-8859-1"?>

<xsl:stylesheet version="1.1" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format" exclude-result-prefixes="fo">
    <xsl:output method="xml" version="1.0" omit-xml-declaration="no" indent="yes"/>
    <xsl:decimal-format name="decimal" decimal-separator=',' grouping-separator='.' />
    <xsl:decimal-format name="rut" grouping-separator='.' />


    <xsl:param name="IMG_URL"/>

    <xsl:template match="pagare_comercial">
        <fo:root xmlns:fo="http://www.w3.org/1999/XSL/Format">
            <fo:layout-master-set>
                <fo:simple-page-master master-name="miCarta" page-width="215.9mm" page-height="330mm" margin-top="10mm" margin-bottom="20mm" margin-left="10mm" margin-right="10mm">
                    <fo:region-body/>
                </fo:simple-page-master>
            </fo:layout-master-set>

            <xsl:for-each select="Pagina">
            <fo:page-sequence master-reference="miCarta">
        <xsl:choose>

          <!--   AQUI COMIENZA EL TEMPLATE   doccc01a  -->
          <xsl:when test="template = 'doccc01a'">
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
                                        <xsl:value-of select="../logoBciSomosDiferentes"/>
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
                  <fo:table-column column-width="50mm" />
                  <fo:table-column column-width="100mm"/>
                  <fo:table-body>
                      <fo:table-row>
                            <fo:table-cell >
                                    <fo:block >
                                  
                                    </fo:block>
                            </fo:table-cell>
                            
                            <fo:table-cell >
                                    <fo:block font-family="Helvetica" line-height="4.5mm" font-size="11pt" text-align="center" ><fo:inline font-weight="bold"> PAGARE (Sin Protesto)</fo:inline></fo:block>
                                    
											              <fo:block>
											              <xsl:variable name="simboloMoneda" select="../simboloMoneda" />
											                <xsl:choose>
											                  <xsl:when test="$simboloMoneda = 'UF'">
											                     <fo:block font-family="Helvetica" line-height="4.5mm" font-size="11pt" text-align="center" ><fo:inline font-weight="bold"> CUOTA FIJA TASA FIJA MENSUAL UF</fo:inline></fo:block>
											                  </xsl:when>
											
											                  <xsl:when test="$simboloMoneda = '$'">
											                     <fo:block font-family="Helvetica" line-height="4.5mm" font-size="11pt" text-align="center" ><fo:inline font-weight="bold"> CUOTA FIJA TASA FIJA MENSUAL PESOS</fo:inline></fo:block>
											                  </xsl:when>
											              </xsl:choose>
											              </fo:block>
											              
                                    <fo:block font-family="Helvetica" line-height="4.5mm" font-size="11pt" text-align="center" ><fo:inline font-weight="bold"> CORFO</fo:inline></fo:block>
                            </fo:table-cell>

                      </fo:table-row>
                </fo:table-body>
                </fo:table>
                
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:table border-collapse="collapse" font-family="Helvetica" font-size="11pt" text-align="left">
                  <fo:table-column column-width="50%"/>
                  <fo:table-column column-width="50%"/>
                  <fo:table-body>
                      <fo:table-row>
                          <fo:table-cell > _
                              <fo:block font-family="Helvetica" line-height="4.5mm" font-size="11pt" text-align="left" >N� de Operaci�n :<fo:inline font-weight="bold"><xsl:value-of select="../nroOperacion" /></fo:inline></fo:block>
                          </fo:table-cell>
                      </fo:table-row>
                  </fo:table-body>
              </fo:table>
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              
              <fo:block>
              <xsl:variable name="simboloMoneda" select="../simboloMoneda" />
                <xsl:choose>

                  <xsl:when test="$simboloMoneda = 'UF'">
                      <fo:block font-family="Helvetica" line-height="5.8mm" font-size="11pt" text-align="justify"  >Por valor recibido, debo y pagar� a la orden del BANCO DE CREDITO E INVERSIONES, en  su  domicilio ubicado en Avenida El Golf N� 125, Comuna de Las Condes, Santiago, o en cualquiera de sus sucursales, la suma de <fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="../simboloMoneda" /></fo:inline><fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold">
                      <xsl:value-of select='format-number(../montoCredito, "###.###.##0,0000","decimal")'/>
              
                      </fo:inline><fo:leader leader-pattern="space" leader-length="1mm"/>(<fo:inline font-weight="bold"><xsl:value-of select="../montoCreditoManoEscrita" /></fo:inline> Unidades de Fomento ), equivalentes a esta fecha a la suma de <fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold">$</fo:inline><fo:leader leader-pattern="space" leader-length="1mm"/>
                      <fo:inline font-weight="bold"><xsl:value-of select="../montoCreditoEnPesos" /></fo:inline>
              
                      <fo:leader leader-pattern="space" leader-length="1mm"/>(<fo:inline font-weight="bold"><xsl:value-of select="../montoCreditoEnPesosManoEscrita"/></fo:inline> pesos m/l)</fo:block>
                     
                  </xsl:when>

                  <xsl:when test="$simboloMoneda = '$'">
                      <fo:block font-family="Helvetica" line-height="5.8mm" font-size="11pt" text-align="justify"  >Por valor recibido, debo y pagar� a la orden del BANCO DE CREDITO E INVERSIONES, en  su  domicilio ubicado en Avenida El Golf N� 125, Comuna de Las Condes, Santiago, o en cualquiera de sus sucursales, la suma de <fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="../simboloMoneda" /></fo:inline><fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold">
                      <xsl:value-of select="../montoCredito"/></fo:inline><fo:leader leader-pattern="space" leader-length="1mm"/>(<fo:inline font-weight="bold"><xsl:value-of select="../montoCreditoEnPesosManoEscrita" /></fo:inline> pesos m/l)</fo:block>
                  </xsl:when>
              </xsl:choose>
              </fo:block>
              
                             
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>      
              <fo:block font-family="Helvetica" line-height="5.8mm" font-size="11pt" text-align="left" > <fo:inline font-weight="bold">Tasa de Inter�s</fo:inline></fo:block>
              
              <fo:block>
              <xsl:variable name="simboloMoneda" select="../simboloMoneda" />
                <xsl:choose>

                  <xsl:when test="$simboloMoneda = 'UF'">
                      <fo:block font-family="Helvetica" line-height="5.8mm" font-size="11pt" text-align="justify" >El capital adeudado devengar� a partir de esta fecha una tasa de inter�s del<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select='format-number(../tasaInteres, "###,####","decimal")'/></fo:inline>% anual vencido durante todo el plazo pactado.</fo:block>                     
                  </xsl:when>

                  <xsl:when test="$simboloMoneda = '$'">
                      <fo:block font-family="Helvetica" line-height="5.8mm" font-size="11pt" text-align="justify"  >El capital adeudado devengar� a partir de esta fecha una tasa de inter�s del<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select='format-number(../tasaInteres, "###,####","decimal")'/></fo:inline>% mensual vencido durante todo el plazo pactado.</fo:block>
                  </xsl:when>
              </xsl:choose>
              </fo:block>
              
              <fo:block font-family="Helvetica" line-height="5.8mm" font-size="11pt" text-align="left" ><fo:inline font-weight="bold">Amortizaci�n Del Capital Y Pago De  Los Intereses</fo:inline></fo:block>
              
              <fo:block font-family="Helvetica" line-height="5.8mm" font-size="11pt" text-align="justify"  >El capital adeudado y sus intereses se pagar�n en  <fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="../cuota" /></fo:inline><fo:leader leader-pattern="space" leader-length="1mm"/>cuotas mensuales, iguales y sucesivas, de <fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="../simboloMoneda" /></fo:inline><fo:leader leader-pattern="space" leader-length="1mm"/>
              
              
              <xsl:variable name="simboloMoneda" select="../simboloMoneda" />
                <xsl:choose>
                  <xsl:when test="$simboloMoneda = 'UF'">
                     <fo:inline font-weight="bold"><xsl:value-of select='format-number(../montoCuota, "###.###.##0,000","decimal")' /></fo:inline>
                  </xsl:when>

                  <xsl:when test="$simboloMoneda = '$'">
                     <fo:inline font-weight="bold"><xsl:value-of select="../montoCuota" /></fo:inline>
                  </xsl:when>
              </xsl:choose>          

              <fo:leader leader-pattern="space" leader-length="1mm"/> cada una, con vencimiento la primera de ellas el d�a <fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="../fechaPrimerVctoDD" /></fo:inline><fo:leader leader-pattern="space" leader-length="1mm"/>de<fo:leader leader-pattern="space" leader-length="1mm"/>

                        <xsl:variable name="mes" select="../fechaPrimerVctoMM" />
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

                        <fo:leader leader-pattern="space" leader-length="1mm"/>de<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="../fechaPrimerVctoYYYY" /></fo:inline> y las restantes los d�as<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="../diaVencimiento" /></fo:inline><fo:leader leader-pattern="space" leader-length="1mm"/>de cada mes, venciendo la �ltima de ellas el d�a <fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="../fechaUltimoVctoDD" /></fo:inline><fo:leader leader-pattern="space" leader-length="1mm"/>de<fo:leader leader-pattern="space" leader-length="1mm"/>
                        <xsl:variable name="mes" select="../fechaUltimoVctoMM" />
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
                        <fo:leader leader-pattern="space" leader-length="1mm"/>de<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="../fechaUltimoVctoYYYY" /></fo:inline></fo:block>
              
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block font-family="Helvetica" line-height="5.8mm" font-size="11pt" text-align="justify"  ><fo:inline font-weight="bold">Pr�rroga de plazo por d�a inh�bil.</fo:inline>  Las cuotas  de  amortizaci�n de capital e intereses se  pagar�n a su vencimiento, siempre que �ste corresponda a un d�a h�bil  bancario.  En  caso  contrario,  se  pagar�n  el  d�a  h�bil  bancario siguiente.</fo:block>
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block>
              <xsl:variable name="simboloMoneda" select="../simboloMoneda" />
                <xsl:choose>

                  <xsl:when test="$simboloMoneda = 'UF'">
                    <fo:block font-family="Helvetica" line-height="5.8mm" font-size="11pt" text-align="justify"  ><fo:inline font-weight="bold">Equivalencia.</fo:inline>  Las sumas adeudas,  tanto  en  lo referente  a  capital como a intereses, se calcular�n por su equivalente en moneda legal chilena al d�a de pago efectivo.</fo:block>
                  </xsl:when>
              </xsl:choose>
              </fo:block>              
              <fo:block font-family="Helvetica" line-height="5.8mm" font-size="11pt" text-align="justify"  ><fo:inline font-weight="bold">Prepagos.</fo:inline> Si el monto  de  capital  inicial supera el equivalente a UF 5.000, todo pago anticipado, sea total o parcial, ser� convenido libremente entre el suscriptor y el Banco.  A  falta de acuerdo, el suscriptor podr� en todo caso anticipar  el pago, total o parcialmente, y en  este �ltimo caso, siempre que el importe  a pagar sea igual o superior al 20 % del capital de la obligaci�n adeudada,  pagando adem�s los intereses estipulados devengados y no pagados a la fecha  del prepago, calculados  sobre el saldo insoluto, m�s los intereses estipulados en este instrumento,  calculados sobre el capital prepagado desde la fecha  del prepago hasta  el vencimiento del plazo pactado. Si el monto de capital inicial  no supera  el equivalente a UF 5.000, al  capital  prepagado deber�n sum�rsele  los intereses  calculados hasta la  fecha del prepago y la comisi�n  de  prepago  m�xima  que  el art�culo  10 de  la Ley 18.010 permite pactar.</fo:block>
              <fo:block font-family="Helvetica" line-height="5.8mm" font-size="11pt" text-align="justify"  ><fo:inline font-weight="bold">Intereses Moratorios</fo:inline>, En caso de retardo o mora en el cumplimiento de esta obligaci�n, �sta devengar� desde la fecha del retardo y a favor del acreedor, el inter�s m�ximo convencional que rija durante la mora.</fo:block>              
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block font-family="Helvetica" line-height="5.8mm" font-size="11pt" text-align="justify"  ><fo:inline font-weight="bold">Exigibilidad anticipada.</fo:inline> El no pago oportuno de una cualquiera de las cuotas de capital  y/o de inter�s comprendidos en esta obligaci�n, dar� derecho al acreedor a hacer exigible de inmediato y anticipadamente el monto total del saldo insoluto adeudado a esa fecha, el que desde esa misma fecha se considerar� de plazo vencido y devengar� en favor del acreedor o de quien sus derechos represente, el inter�s m�ximo convencional.</fo:block>
              <fo:block font-family="Helvetica" line-height="5.8mm" font-size="11pt" text-align="justify"  >Se deja expresamente establecido que el ejercicio de este derecho constituye una sanci�n al suscriptor por el no pago de la deuda e importa una mera facultad establecida en beneficio exclusivo del acreedor, que no altera en caso alguno la fecha de vencimiento del pagar� originalmente pactada, ni a la exigibilidad de las acciones cambiarias y ejecutivas derivadas de �ste. El Banco podr� hacer exigible de inmediato el monto total adeudado, expirando todos los plazos pendientes por el s�lo hecho de constituirse en mora o de hab�rsele protestado al deudor o al aval, por falta de pago, cualquier documento, pagar�, letra de cambio o cheque, aceptado, suscrito, girado o avalado por �l. Se  deja expresamente establecido que corresponder� al deudor acreditar el pago de las cuotas en que se divide el presente instrumento, en caso de cobro judicial. Sin embargo, en operaciones de cr�dito de dinero en cuotas, cuyo capital inicial sea igual o inferior a 200 unidades de fomento no podr� hacerse exigible la obligaci�n en forma anticipada, si no una vez cumplidos 60 d�as corridos desde que el suscriptor incurra en mora o simple retardo en el pago.</fo:block>
              
              <fo:block font-family="Helvetica" line-height="4.5mm" font-size="11pt" text-align="center" >1 de 3</fo:block>
              </fo:flow>
          </xsl:when>
          <!--   AQUI TERMINA EL TEMPLATE   doccc01a  -->          
          
          <!--   AQUI COMIENZA EL TEMPLATE   doccc01b  -->
          <xsl:when test="template = 'doccc01b'">
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
                                        <xsl:value-of select="../logoBciSomosDiferentes"/>
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
                
              <fo:block font-family="Helvetica" line-height="4.5mm" font-size="11pt" text-align="left" >N� Operaci�n<fo:leader leader-pattern="space" leader-length="17.2mm"/>:<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="../nroOperacion" /></fo:inline></fo:block>
              <fo:block font-family="Helvetica" line-height="4.5mm" font-size="11pt" text-align="left" >Fecha de suscripci�n<fo:leader leader-pattern="space" leader-length="3.7mm"/>:<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="substring(../fechaSuscripcion,0,4)" /></fo:inline>
              <xsl:variable name="mes" select="substring(../fechaSuscripcion,4,2)" />
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
              <fo:inline font-weight="bold"><xsl:value-of select="substring(../fechaSuscripcion,6,5)" /></fo:inline>
              </fo:block>


              <fo:block font-family="Helvetica" line-height="4.5mm" font-size="11pt" text-align="left" >Monto<fo:leader leader-pattern="space" leader-length="29.6mm"/>:<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="../simboloMoneda" /></fo:inline><fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold">

              <xsl:variable name="simboloMoneda" select="../simboloMoneda" />
                <xsl:choose>

                  <xsl:when test="$simboloMoneda = 'UF'">
                     <xsl:value-of select='format-number(../montoCredito, "###.###.##0,0000","decimal")' />
                  </xsl:when>


                  <xsl:when test="$simboloMoneda = '$'">
                    <xsl:value-of select="../montoCredito"/>
                  </xsl:when>

              </xsl:choose>

              </fo:inline></fo:block>
              <fo:block font-family="Helvetica" line-height="4.5mm" font-size="11pt" text-align="left" >Deudor<fo:leader leader-pattern="space" leader-length="27.6mm"/>:<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="../nombreCompletoCliente" /></fo:inline></fo:block>
              <fo:block font-family="Helvetica" line-height="4.5mm" font-size="11pt" text-align="left" >RUT<fo:leader leader-pattern="space" leader-length="32.5mm"/>:<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select='format-number(../rutCliente, "###.###.##0","rut")' /></fo:inline>-<fo:inline font-weight="bold"><xsl:value-of select="../dvCliente" /></fo:inline></fo:block>


              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block font-family="Helvetica" line-height="5.8mm" font-size="11pt" text-align="justify"  ><fo:inline font-weight="bold">Indivisibilidad y solidaridad.</fo:inline> Las obligaciones que emanen de  este pagar� ser�n  solidarias para el suscriptor, avalista(s) y dem�s obligados al pago y ser�n  indivisibles  para  sus herederos.  Adem�s,  el suscriptor  pagar� los gastos, impuestos y costas personales y procesales que correspondan.</fo:block>
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block font-family="Helvetica" line-height="5.8mm" font-size="11pt" text-align="justify"  ><fo:inline font-weight="bold">Mandato para pr�rrogas.</fo:inline> El suscriptor faculta al Banco de Cr�dito e Inversiones para que en su nombre y representaci�n otorgue, previa autorizaci�n expresa de �ste, una o m�s pr�rrogas que establezcan nuevas condiciones, tasas de inter�s y fechas de vencimiento.</fo:block>
              <fo:block font-family="Helvetica" line-height="5.8mm" font-size="11pt" text-align="justify"  ><fo:inline font-weight="bold">Destino de los recursos y control de su inversi�n.</fo:inline> Me (Nos) obligo (obligamos) a destinar los recursos crediticios recibidos del Banco a<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-size="10pt" font-weight="bold">_______________________________________________________________________________________________</fo:inline><fo:leader leader-pattern="space" leader-length="1mm"/>y adem�s a facilitar al acreedor y/o a la Corporaci�n de Fomento de la Producci�n (Corfo) el control del destino de dichos recursos, en caso de que as� lo estimasen convenientes. El incumplimiento de una u otra obligaci�n facultar� al Banco  para hacer exigible anticipadamente la totalidad de lo adeudado en los t�rminos precedentemente se�alados, sin perjuicio de las responsabilidades establecidas en la ley.</fo:block>
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>   
              <fo:block font-family="Helvetica" line-height="5.8mm" font-size="11pt" text-align="justify"  ><fo:inline font-weight="bold">Autorizaci�n informaci�n antecedentes personales y cargo de comisi�n a favor de la Corfo:</fo:inline> por este instrumento autorizo (amos) al Banco a hacer entrega de todos los antecedentes necesarios a la Corfo para la adecuada aprobaci�n de esta operaci�n, y para que entregue a la Corfo en cuanto sea requerido, toda la informaci�n sobre la cartera financiada o cubierta o sobre operaciones en particular. Autorizo (amos) desde ya para que la Corfo, directamente o por encargo a terceros, efect�e visitas de inspecci�n o revisiones en la empresa beneficiada. Autorizo tambi�n al banco para que proporcione a la Corfo toda la informaci�n de contacto que fuere necesaria de los beneficiarios finales de la cobertura para los efectos de que aquella pueda realizar actividades de medici�n de satisfacci�n de clientes finales, focus- groups, entrevistas, etc. Asimismo autorizo al Banco a incorporar dentro del monto solicitado la comisi�n a favor de Corfo, que corresponde al<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="../comisionFogain" /></fo:inline><fo:leader leader-pattern="space" leader-length="1mm"/>% anual sobre el saldo capital insoluto garantizado y que ser� prorrateada dentro de las cuotas de amortizaci�n de capital e intereses.</fo:block>
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>                          
              <fo:block font-family="Helvetica" line-height="5.8mm" font-size="11pt" text-align="justify"  ><fo:inline font-weight="bold">Domicilio y competencia.</fo:inline> Para todos los efectos legales, judiciales o extrajudiciales derivados de este pagar�, prorrogo expresamente la competencia para los Tribunales de Justicia con asiento en la comuna y ciudad de <fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-size="10pt" font-weight="bold">________________________</fo:inline><fo:leader leader-pattern="space" leader-length="1mm"/>, pr�rroga que ser� obligatoria tanto para el suscriptor como para sus avales, endosantes u obligados por garant�a. Sin perjuicio de esta pr�rroga de competencia, declaro, s�lo para efectos del emplazamiento judicial, que mi domicilio y residencia son los indicados en el cuerpo de este  t�tulo, comprometi�ndome desde luego a dar pronto aviso por escrito, mediante carta certificada al Banco, en el evento que realice cualquier cambio de domicilio en el futuro.</fo:block>
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block font-family="Helvetica" line-height="5.8mm" font-size="11pt" text-align="justify"  ><fo:inline font-weight="bold">Impuesto de timbres y estampillas.</fo:inline> El impuesto de timbres y estampillas que grava este documento se paga por ingresos mensuales de dinero en Tesorer�a, seg�n Decreto Ley N� 3475.</fo:block>

              <fo:block font-family="Helvetica" line-height="4.5mm" font-size="11pt" text-align="left" >             	
              En<fo:leader leader-pattern="space" leader-length="25mm"/>
              <fo:inline font-weight="bold"><xsl:value-of select="../ciudadContrato" /></fo:inline>,
              <fo:leader leader-pattern="space" leader-length="1mm"/>a<fo:leader leader-pattern="space" leader-length="1mm"/>
              <fo:inline font-weight="bold"><xsl:value-of select="../dia" /></fo:inline>

              <fo:leader leader-pattern="space" leader-length="1mm"/>de<fo:leader leader-pattern="space" leader-length="1mm"/>
              <xsl:variable name="mes" select="../mes" />
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
              <fo:inline font-weight="bold"><xsl:value-of select="../anio" /></fo:inline>
              </fo:block>
             <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block font-family="Helvetica" line-height="4.5mm" font-size="11pt" text-align="center" ><fo:leader leader-length="6cm" leader-pattern="rule" rule-style="solid" rule-thickness="0.4mm" color="black"/></fo:block>
             
             <fo:block font-family="Helvetica" line-height="4.5mm" font-size="11pt" text-align="center" >Firma del Suscriptor</fo:block>   
             <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>

           <!-- AQUI COMIENZA LOS DATOS  DEL SUSCRIPTOR NOMBRE, RAZON SOCIAL Y DOMICILIO -->
             <xsl:call-template name="DatosRazonSociasl"/>
            <!-- AQUI TERMINA LOS DATOS  DEL SUSCRIPTOR NOMBRE, RAZON SOCIAL Y DOMICILIO  -->
            
             <fo:block font-family="Helvetica" line-height="4.5mm" font-size="11pt" text-align="center" >2 de 3</fo:block>
                    </fo:flow>
          </xsl:when>
          <!--   AQUI TERMINA EL TEMPLATE   doccc01b  -->          
          
          <!--   AQUI COMIENZA EL TEMPLATE   doccc02a  -->
          <xsl:when test="template = 'doccc02a'">
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
                                        <xsl:value-of select="../logoBciSomosDiferentes"/>
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
                  <fo:table-column column-width="70mm" />
                  <fo:table-column column-width="70mm"/>
                  <fo:table-body>
                      <fo:table-row>
                            <fo:table-cell >
                                    <fo:block >
                                  
                                    </fo:block>
                            </fo:table-cell>
                            
                            <fo:table-cell >
                                    <fo:block font-family="Helvetica" line-height="4.5mm" font-size="11pt" text-align="center" ><fo:inline font-weight="bold"> PAGARE (Sin Protesto)</fo:inline></fo:block>
                                    
											              <fo:block>
											              <xsl:variable name="simboloMoneda" select="../simboloMoneda" />
											                <xsl:choose>
											                  <xsl:when test="$simboloMoneda = 'UF'">
											                     <fo:block font-family="Helvetica" line-height="4.5mm" font-size="11pt" text-align="center" ><fo:inline font-weight="bold"> UN VENCIMIENTO UF CORFO</fo:inline></fo:block>
											                  </xsl:when>
											
											                  <xsl:when test="$simboloMoneda = '$'">
											                     <fo:block font-family="Helvetica" line-height="4.5mm" font-size="11pt" text-align="center" ><fo:inline font-weight="bold"> UN VENCIMIENTO PESOS CORFO</fo:inline></fo:block>
											                  </xsl:when>
											              </xsl:choose>
											              </fo:block>
                            </fo:table-cell>
                      </fo:table-row>
                </fo:table-body>
                </fo:table>
                
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:table border-collapse="collapse" font-family="Helvetica" font-size="11pt" text-align="left">
                  <fo:table-column column-width="50%"/>
                  <fo:table-column column-width="50%"/>
                  <fo:table-body>
                      <fo:table-row>
                          <fo:table-cell > _
                              <fo:block font-family="Helvetica" line-height="4.5mm" font-size="11pt" text-align="left" >N� de Operaci�n :<fo:inline font-weight="bold"><xsl:value-of select="../nroOperacion" /></fo:inline></fo:block>
                          </fo:table-cell>
                      </fo:table-row>
                  </fo:table-body>
              </fo:table>
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              
              <fo:block>
              <xsl:variable name="simboloMoneda" select="../simboloMoneda" />
                <xsl:choose>

                  <xsl:when test="$simboloMoneda = 'UF'">
                      <fo:block font-family="Helvetica" line-height="5.8mm" font-size="11pt" text-align="justify"  >Por valor recibido, debo y pagar� a la orden del BANCO DE CREDITO E INVERSIONES, en  su  domicilio ubicado en Avenida El Golf N� 125, Comuna de Las Condes, Santiago, o en cualquiera de sus sucursales, la suma de <fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="../simboloMoneda" /></fo:inline><fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold">
                      <xsl:value-of select='format-number(../montoCredito, "###.###.##0,0000","decimal")'/>
              
                      </fo:inline><fo:leader leader-pattern="space" leader-length="1mm"/>(<fo:inline font-weight="bold"><xsl:value-of select="../montoCreditoManoEscrita" /></fo:inline> Unidades de Fomento ), equivalentes a esta fecha a la suma de <fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold">$</fo:inline><fo:leader leader-pattern="space" leader-length="1mm"/>
                      <fo:inline font-weight="bold"><xsl:value-of select="../montoCreditoEnPesos" /></fo:inline>
              
                      <fo:leader leader-pattern="space" leader-length="1mm"/>(<fo:inline font-weight="bold"><xsl:value-of select="../montoCreditoEnPesosManoEscrita"/></fo:inline> pesos m/l)</fo:block>
                     
                  </xsl:when>

                  <xsl:when test="$simboloMoneda = '$'">
                      <fo:block font-family="Helvetica" line-height="5.8mm" font-size="11pt" text-align="justify"  >Por valor recibido, debo y pagar� a la orden del BANCO DE CREDITO E INVERSIONES, en  su  domicilio ubicado en Avenida El Golf N� 125, Comuna de Las Condes, Santiago, o en cualquiera de sus sucursales, la suma de <fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="../simboloMoneda" /></fo:inline><fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold">
                      <xsl:value-of select="../montoCredito"/></fo:inline><fo:leader leader-pattern="space" leader-length="1mm"/>(<fo:inline font-weight="bold"><xsl:value-of select="../montoCreditoEnPesosManoEscrita" /></fo:inline> pesos m/l)</fo:block>
                  </xsl:when>
              </xsl:choose>
              </fo:block>
              
                             
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>      
              <fo:block font-family="Helvetica" line-height="5.8mm" font-size="11pt" text-align="left" > <fo:inline font-weight="bold">Tasa de Inter�s</fo:inline></fo:block>
              
              <fo:block>
              <xsl:variable name="simboloMoneda" select="../simboloMoneda" />
                <xsl:choose>

                  <xsl:when test="$simboloMoneda = 'UF'">
                      <fo:block font-family="Helvetica" line-height="5.8mm" font-size="11pt" text-align="justify" >El capital adeudado devengar� a partir de esta fecha una tasa de inter�s del<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select='format-number(../tasaInteres, "###,####","decimal")'/></fo:inline>% anual vencido durante todo el plazo pactado.</fo:block>                     
                  </xsl:when>

                  <xsl:when test="$simboloMoneda = '$'">
                      <fo:block font-family="Helvetica" line-height="5.8mm" font-size="11pt" text-align="justify"  >El capital adeudado devengar� a partir de esta fecha una tasa de inter�s del<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select='format-number(../tasaInteres, "###,####","decimal")'/></fo:inline>% mensual vencido durante todo el plazo pactado.</fo:block>
                  </xsl:when>
              </xsl:choose>
              </fo:block>
                            
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>	
              <fo:block font-family="Helvetica" line-height="5.8mm" font-size="11pt" text-align="left" ><fo:inline font-weight="bold">Amortizaci�n del Capital y pago de los intereses</fo:inline></fo:block>
              
              <fo:block font-family="Helvetica" line-height="5.8mm" font-size="11pt" text-align="justify"  >El capital adeudado y sus intereses se pagar�n �ntegramente el d�a<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="../fechaPrimerVctoDD" /></fo:inline><fo:leader leader-pattern="space" leader-length="1mm"/>de<fo:leader leader-pattern="space" leader-length="1mm"/>

                        <xsl:variable name="mes" select="../fechaPrimerVctoMM" />
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

                        <fo:leader leader-pattern="space" leader-length="1mm"/>de<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="../fechaPrimerVctoYYYY" /></fo:inline></fo:block>
              
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block font-family="Helvetica" line-height="5.8mm" font-size="11pt" text-align="justify"  ><fo:inline font-weight="bold">Pr�rroga de plazo por d�a inh�bil.</fo:inline>  Las cuotas  de  amortizaci�n de capital e intereses se  pagar�n a su vencimiento, siempre que �ste corresponda a un d�a h�bil bancario. En caso contrario, se pagar�n el  d�a  h�bil  bancario siguiente.</fo:block>
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>

              <fo:block font-family="Helvetica" line-height="5.8mm" font-size="11pt" text-align="justify"  ><fo:inline font-weight="bold">Equivalencia.</fo:inline> Las sumas adeudas, tanto en lo referente a capital como a intereses, se calcular�n por su equivalente en moneda legal chilena al d�a de pago efectivo.</fo:block>             
              
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block font-family="Helvetica" line-height="5.8mm" font-size="11pt" text-align="justify"  ><fo:inline font-weight="bold">Prepagos.</fo:inline> Si el monto  de  capital  inicial supera el equivalente a UF 5.000, todo pago anticipado, sea total o parcial, ser� convenido libremente entre el suscriptor y el Banco.  A  falta de acuerdo, el suscriptor podr� en todo caso anticipar  el pago, total o parcialmente, y en  este �ltimo caso, siempre que el importe  a pagar sea igual o superior al 20 % del capital de la obligaci�n adeudada,  pagando adem�s los intereses estipulados devengados y no pagados a la fecha  del prepago, calculados  sobre el saldo insoluto, m�s los intereses estipulados en este instrumento,  calculados sobre el capital prepagado desde la fecha  del prepago hasta  el vencimiento del plazo pactado. Si el monto de capital inicial  no supera  el equivalente a UF 5.000, al  capital  prepagado deber�n sum�rsele  los intereses  calculados hasta la  fecha del prepago y la comisi�n  de  prepago  m�xima  que  el art�culo  10 de  la Ley 18.010 permite pactar.</fo:block>
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block font-family="Helvetica" line-height="5.8mm" font-size="11pt" text-align="justify"  ><fo:inline font-weight="bold">Intereses Moratorios</fo:inline>, En caso de retardo o mora en el cumplimiento de esta obligaci�n, �sta devengar� desde la fecha del retardo y a favor del acreedor, el inter�s m�ximo convencional que rija durante la mora.</fo:block>              
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block font-family="Helvetica" line-height="5.8mm" font-size="11pt" text-align="justify"  ><fo:inline font-weight="bold">Exigibilidad anticipada.</fo:inline> El no pago oportuno de una cualquiera de las cuotas de capital  y/o de inter�s comprendidos en esta obligaci�n, dar� derecho al acreedor a hacer exigible de inmediato y anticipadamente el monto total del saldo insoluto adeudado a esa fecha, el que desde esa misma fecha se considerar� de plazo vencido y devengar� en favor del acreedor o de quien sus derechos represente, el inter�s m�ximo convencional.</fo:block>
              <fo:block font-family="Helvetica" line-height="5.8mm" font-size="11pt" text-align="justify"  >Se deja expresamente establecido que el ejercicio de este derecho constituye una sanci�n al suscriptor por el no pago de la deuda e importa una mera facultad establecida en beneficio exclusivo del acreedor, que no altera en caso alguno la fecha de vencimiento del pagar� originalmente pactada, ni a la exigibilidad de las acciones cambiarias y ejecutivas derivadas de �ste. El Banco podr� hacer exigible de inmediato el monto total adeudado, expirando todos los plazos pendientes por el s�lo hecho de constituirse en mora o de hab�rsele protestado al deudor o al aval, por falta de pago, cualquier documento, pagar�, letra de cambio o cheque, aceptado, suscrito, girado o avalado por �l. Se  deja expresamente establecido que corresponder� al deudor acreditar el pago de las cuotas en que se divide el presente instrumento, en caso de cobro judicial. Sin embargo, en operaciones de cr�dito de dinero en cuotas, cuyo capital inicial sea igual o inferior a 200 unidades de fomento no podr� hacerse exigible la obligaci�n en forma anticipada, si no una vez cumplidos 60 d�as corridos desde que el suscriptor incurra en mora o simple retardo en el pago.</fo:block>
              
              <fo:block font-family="Helvetica" line-height="4.5mm" font-size="11pt" text-align="center" >1 de 3</fo:block>
              </fo:flow>
          </xsl:when>
          <!--   AQUI TERMINA EL TEMPLATE   doccc02a  -->          
          
          <!--   AQUI COMIENZA EL TEMPLATE   doccc02b  -->
          <xsl:when test="template = 'doccc02b'">
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
                                        <xsl:value-of select="../logoBciSomosDiferentes"/>
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
                
              <fo:block font-family="Helvetica" line-height="4.5mm" font-size="11pt" text-align="left" >N� Operaci�n<fo:leader leader-pattern="space" leader-length="17.2mm"/>:<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="../nroOperacion" /></fo:inline></fo:block>
              <fo:block font-family="Helvetica" line-height="4.5mm" font-size="11pt" text-align="left" >Fecha de suscripci�n<fo:leader leader-pattern="space" leader-length="3.7mm"/>:<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="substring(../fechaSuscripcion,0,4)" /></fo:inline>
              <xsl:variable name="mes" select="substring(../fechaSuscripcion,4,2)" />
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
              <fo:inline font-weight="bold"><xsl:value-of select="substring(../fechaSuscripcion,6,5)" /></fo:inline>
              </fo:block>


              <fo:block font-family="Helvetica" line-height="4.5mm" font-size="11pt" text-align="left" >Monto<fo:leader leader-pattern="space" leader-length="29.6mm"/>:<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="../simboloMoneda" /></fo:inline><fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold">

              <xsl:variable name="simboloMoneda" select="../simboloMoneda" />
                <xsl:choose>

                  <xsl:when test="$simboloMoneda = 'UF'">
                     <xsl:value-of select='format-number(../montoCredito, "###.###.##0,0000","decimal")' />
                  </xsl:when>


                  <xsl:when test="$simboloMoneda = '$'">
                    <xsl:value-of select="../montoCredito" />
                  </xsl:when>

              </xsl:choose>

              </fo:inline></fo:block>
              <fo:block font-family="Helvetica" line-height="4.5mm" font-size="11pt" text-align="left" >Deudor<fo:leader leader-pattern="space" leader-length="27.6mm"/>:<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="../nombreCompletoCliente" /></fo:inline></fo:block>
              <fo:block font-family="Helvetica" line-height="4.5mm" font-size="11pt" text-align="left" >RUT<fo:leader leader-pattern="space" leader-length="32.5mm"/>:<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select='format-number(../rutCliente, "###.###.##0","rut")' /></fo:inline>-<fo:inline font-weight="bold"><xsl:value-of select="../dvCliente" /></fo:inline></fo:block>


              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block font-family="Helvetica" line-height="5.8mm" font-size="11pt" text-align="justify"  ><fo:inline font-weight="bold">Indivisibilidad  y solidaridad.</fo:inline> Las obligaciones  que emanen de  este pagar� ser�n  solidarias para el suscriptor, avalista(s) y dem�s obligados al pago y ser�n  indivisibles  para  sus herederos.  Adem�s,  el suscriptor  pagar� los gastos, impuestos y costas personales y procesales que correspondan.</fo:block>
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block font-family="Helvetica" line-height="5.8mm" font-size="11pt" text-align="justify"  ><fo:inline font-weight="bold">Mandato para pr�rrogas.</fo:inline> El suscriptor faculta al Banco de Cr�dito e Inversiones para que en su nombre y representaci�n otorgue, previa autorizaci�n expresa de �ste, una o m�s pr�rrogas que establezcan nuevas condiciones, tasas de inter�s y fechas de vencimiento.</fo:block>
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block font-family="Helvetica" line-height="5.8mm" font-size="11pt" text-align="justify"  ><fo:inline font-weight="bold">Destino de los recursos y control de su utilizaci�n.</fo:inline> Me (Nos) obligo (obligamos) a destinar los recursos crediticios recibidos del Banco a<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-size="10pt" font-weight="bold">________________________________________________</fo:inline><fo:leader leader-pattern="space" leader-length="1mm"/>y adem�s a facilitar al acreedor los documentos necesarios para el control de su utilizaci�n. El incumplimiento de una u otra obligaci�n facultar� al Banco para hacer exigible anticipadamente la totalidad de lo adeudado en los t�rminos precedentemente se�alados, sin perjuicio de las responsabilidades establecidas en la ley.</fo:block>
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>   
              <fo:block font-family="Helvetica" line-height="5.8mm" font-size="11pt" text-align="justify"  ><fo:inline font-weight="bold">Autorizaci�n informaci�n antecedentes personales y cargo de comisi�n a favor de la Corfo:</fo:inline> por este instrumento autorizo (amos) al Banco a hacer entrega de todos los antecedentes necesarios a la Corfo para la adecuada aprobaci�n de esta operaci�n, y para que entregue a la Corfo en cuanto sea requerido, toda la informaci�n sobre la cartera financiada o cubierta o sobre operaciones en particular. Autorizo (amos) desde ya para que la Corfo, directamente o por encargo a terceros, efect�e visitas de inspecci�n o revisiones en la empresa beneficiada. Autorizo tambi�n al banco para que proporcione a la Corfo toda la informaci�n de contacto que fuere necesaria de los beneficiarios finales de la cobertura para los efectos de que aquella pueda realizar actividades de medici�n de satisfacci�n de clientes finales, focus- groups, entrevistas, etc.  Asimismo autorizo al Banco a incorporar dentro del monto solicitado la comisi�n a favor de Corfo, que corresponde al<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="../comisionFogain" /></fo:inline><fo:leader leader-pattern="space" leader-length="1mm"/>% anual sobre el saldo capital insoluto  garantizado y que ser� prorrateada dentro de las cuotas de amortizaci�n de capital e intereses.</fo:block>
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>                          
              <fo:block font-family="Helvetica" line-height="5.8mm" font-size="11pt" text-align="justify"  ><fo:inline font-weight="bold">Domicilio  y  competencia.</fo:inline> Para todos los efectos  legales, judiciales o extrajudiciales derivados de este pagar�, prorrogo expresamente la competencia para los Tribunales de Justicia con asiento en la comuna y ciudad de <fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-size="10pt" font-weight="bold">________________________</fo:inline><fo:leader leader-pattern="space" leader-length="1mm"/>,  pr�rroga  que  ser�  obligatoria  tanto  para  el suscriptor  como  para  sus  avales,  endosantes  u  obligados por  garant�a. Sin perjuicio de esta pr�rroga de competencia, declaro, s�lo para efectos del emplazamiento judicial, que mi domicilio y residencia son los indicados en el cuerpo  de  este  t�tulo, comprometi�ndome desde luego a dar pronto aviso por escrito,  mediante  carta  certificada  al  Banco,  en  el evento que realice cualquier cambio de domicilio en el futuro.</fo:block>
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block font-family="Helvetica" line-height="5.8mm" font-size="11pt" text-align="justify"  ><fo:inline font-weight="bold">Impuesto de timbres y estampillas.</fo:inline> El impuesto de timbres y estampillas que grava este documento se paga por ingresos mensuales de dinero en Tesorer�a, seg�n Decreto Ley N� 3475.</fo:block>

              <fo:block font-family="Helvetica" line-height="4.5mm" font-size="11pt" text-align="left" >             	
              En<fo:leader leader-pattern="space" leader-length="25mm"/>
              <fo:inline font-weight="bold"><xsl:value-of select="../ciudadContrato" /></fo:inline>,
              <fo:leader leader-pattern="space" leader-length="1mm"/>a<fo:leader leader-pattern="space" leader-length="1mm"/>
              <fo:inline font-weight="bold"><xsl:value-of select="../dia" /></fo:inline>

              <fo:leader leader-pattern="space" leader-length="1mm"/>de<fo:leader leader-pattern="space" leader-length="1mm"/>
              <xsl:variable name="mes" select="../mes" />
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
              <fo:inline font-weight="bold"><xsl:value-of select="../anio" /></fo:inline>
              </fo:block>
             <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block font-family="Helvetica" line-height="4.5mm" font-size="11pt" text-align="center" ><fo:leader leader-length="6cm" leader-pattern="rule" rule-style="solid" rule-thickness="0.4mm" color="black"/></fo:block>
             
             <fo:block font-family="Helvetica" line-height="4.5mm" font-size="11pt" text-align="center" >Firma del Suscriptor</fo:block>   
             <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>

           <!-- AQUI COMIENZA LOS DATOS  DEL SUSCRIPTOR NOMBRE, RAZON SOCIAL Y DOMICILIO -->
             <xsl:call-template name="DatosRazonSociasl"/>
            <!-- AQUI TERMINA LOS DATOS  DEL SUSCRIPTOR NOMBRE, RAZON SOCIAL Y DOMICILIO  -->
            
             <fo:block font-family="Helvetica" line-height="4.5mm" font-size="11pt" text-align="center" >2 de 3</fo:block>
                    </fo:flow>
          </xsl:when>
          <!--   AQUI TERMINA EL TEMPLATE   doccc02b  -->          
          
          <!--   AQUI COMIENZA EL TEMPLATE   doccc03a  -->
          <xsl:when test="template = 'doccc03a'">
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
                                        <xsl:value-of select="../logoBciSomosDiferentes"/>
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
                  <fo:table-column column-width="50mm" />
                  <fo:table-column column-width="100mm"/>
                  <fo:table-body>
                      <fo:table-row>
                            <fo:table-cell >
                                    <fo:block >
                                  
                                    </fo:block>
                            </fo:table-cell>
                            
                            <fo:table-cell >
                                    <fo:block font-family="Helvetica" line-height="4.5mm" font-size="11pt" text-align="center" ><fo:inline font-weight="bold">PAGARE FOGAPE (Sin Protesto)</fo:inline></fo:block>
                                     <fo:block>
                                     <xsl:variable name="simboloMoneda" select="../simboloMoneda" />
                                       <xsl:choose>
                                         <xsl:when test="$simboloMoneda = 'UF'">
                                            <fo:block font-family="Helvetica" line-height="4.5mm" font-size="11pt" text-align="center" ><fo:inline font-weight="bold"> CUOTA FIJA TASA FIJA MENSUAL UF</fo:inline></fo:block>
                                         </xsl:when>
                       
                                         <xsl:when test="$simboloMoneda = '$'">
                                            <fo:block font-family="Helvetica" line-height="4.5mm" font-size="11pt" text-align="center" ><fo:inline font-weight="bold"> CUOTA FIJA TASA FIJA MENSUAL PESOS</fo:inline></fo:block>
                                         </xsl:when>
                                     </xsl:choose>
                                     </fo:block>
                            </fo:table-cell>

                      </fo:table-row>
                </fo:table-body>
                </fo:table>
                
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:table border-collapse="collapse" font-family="Helvetica" font-size="11pt" text-align="left">
                  <fo:table-column column-width="50%"/>
                  <fo:table-column column-width="50%"/>
                  <fo:table-body>
                      <fo:table-row>
                          <fo:table-cell > _
                              <fo:block font-family="Helvetica" line-height="4.5mm" font-size="11pt" text-align="left" >N� de Operaci�n :<fo:inline font-weight="bold"><xsl:value-of select="../nroOperacion" /></fo:inline></fo:block>
                          </fo:table-cell>
                      </fo:table-row>
                  </fo:table-body>
              </fo:table>
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              
              <fo:block>
              <xsl:variable name="simboloMoneda" select="../simboloMoneda" />
                <xsl:choose>

                  <xsl:when test="$simboloMoneda = 'UF'">
                      <fo:block font-family="Helvetica" line-height="5.8mm" font-size="11pt" text-align="justify"  >Por valor recibido, debo y pagar� a la orden del BANCO DE CREDITO E INVERSIONES, en  su  domicilio ubicado en Avenida El Golf N� 125, Comuna de Las Condes, Santiago, o en cualquiera de sus sucursales, la suma de <fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="../simboloMoneda" /></fo:inline><fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold">
                      <xsl:value-of select='format-number(../montoCredito, "###.###.##0,0000","decimal")'/>
              
                      </fo:inline><fo:leader leader-pattern="space" leader-length="1mm"/>(<fo:inline font-weight="bold"><xsl:value-of select="../montoCreditoManoEscrita" /></fo:inline> Unidades de Fomento ), equivalentes a esta fecha a la suma de <fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold">$</fo:inline><fo:leader leader-pattern="space" leader-length="1mm"/>
                      <fo:inline font-weight="bold"><xsl:value-of select="../montoCreditoEnPesos"/></fo:inline>
              
                      <fo:leader leader-pattern="space" leader-length="1mm"/>(<fo:inline font-weight="bold"><xsl:value-of select="../montoCreditoEnPesosManoEscrita"/></fo:inline> pesos m/l)</fo:block>
                     
                  </xsl:when>

                  <xsl:when test="$simboloMoneda = '$'">
                      <fo:block font-family="Helvetica" line-height="5.8mm" font-size="11pt" text-align="justify"  >Por valor recibido, debo y pagar� a la orden del BANCO DE CREDITO E INVERSIONES, en  su  domicilio ubicado en Avenida El Golf N� 125, Comuna de Las Condes, Santiago, o en cualquiera de sus sucursales, la suma de <fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="../simboloMoneda" /></fo:inline><fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold">
                      <xsl:value-of select="../montoCredito"/></fo:inline><fo:leader leader-pattern="space" leader-length="1mm"/>(<fo:inline font-weight="bold"><xsl:value-of select="../montoCreditoEnPesosManoEscrita" /></fo:inline> pesos m/l)</fo:block>
                  </xsl:when>
              </xsl:choose>
              </fo:block>
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block font-family="Helvetica" line-height="5.8mm" font-size="11pt" text-align="left" > <fo:inline font-weight="bold">Destino de los recursos y control de su inversi�n.</fo:inline> Me obligo a destinar los recursos crediticios recibidos del Banco a <fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-size="10pt" font-weight="bold">_______________________________________________________________________________________________</fo:inline><fo:leader leader-pattern="space" leader-length="1mm"/>y adem�s a facilitar al acreedor el control de su inversi�n. El incumplimiento de una u otra obligaci�n facultar� al Banco para hacer exigible anticipadamente la totalidad de lo adeudado en los t�rminos precedentemente se�alados, sin perjuicio de la responsabilidad penal por la infracci�n, con arreglo al art�culo 4� del DL. 3.472 de 1980.</fo:block>
                             
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>      
              <fo:block>
              <xsl:variable name="simboloMoneda" select="../simboloMoneda" />
                <xsl:choose>
              
                  <xsl:when test="$simboloMoneda = 'UF'">
                      <fo:block font-family="Helvetica" line-height="5.8mm" font-size="11pt" text-align="justify" ><fo:inline font-weight="bold">Tasa de Inter�s</fo:inline> El capital adeudado devengar� a partir de esta fecha una tasa de inter�s del<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select='format-number(../tasaInteres, "###,####","decimal")'/></fo:inline>% anual vencido durante todo el plazo pactado.</fo:block>                     
                  </xsl:when>
              
                  <xsl:when test="$simboloMoneda = '$'">
                      <fo:block font-family="Helvetica" line-height="5.8mm" font-size="11pt" text-align="justify"  ><fo:inline font-weight="bold">Tasa de Inter�s</fo:inline> El capital adeudado devengar� a partir de esta fecha una tasa de inter�s del<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select='format-number(../tasaInteres, "###,####","decimal")'/></fo:inline>% mensual vencido durante todo el plazo pactado.</fo:block>
                  </xsl:when>
              </xsl:choose>
              </fo:block>
              
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block font-family="Helvetica" line-height="5.8mm" font-size="11pt" text-align="justify"  ><fo:inline font-weight="bold">Amortizaci�n del Capital y Pago de Intereses</fo:inline><fo:leader leader-pattern="space" leader-length="1mm"/>El capital adeudado y sus intereses se pagar�n en  <fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="../cuota" /></fo:inline><fo:leader leader-pattern="space" leader-length="1mm"/>cuotas mensuales, iguales y sucesivas, de <fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="../simboloMoneda" /></fo:inline><fo:leader leader-pattern="space" leader-length="1mm"/>
              
              <xsl:variable name="simboloMoneda" select="../simboloMoneda" />
                <xsl:choose>
                  <xsl:when test="$simboloMoneda = 'UF'">
                     <fo:inline font-weight="bold"><xsl:value-of select='format-number(../montoCuota, "###.###.##0,000","decimal")' /></fo:inline>
                  </xsl:when>

                  <xsl:when test="$simboloMoneda = '$'">
                     <fo:inline font-weight="bold"><xsl:value-of select="../montoCuota" /></fo:inline>
                  </xsl:when>
              </xsl:choose>           

              <fo:leader leader-pattern="space" leader-length="1mm"/> cada una, con vencimiento la primera de ellas el d�a <fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="../fechaPrimerVctoDD" /></fo:inline><fo:leader leader-pattern="space" leader-length="1mm"/>de<fo:leader leader-pattern="space" leader-length="1mm"/>

                        <xsl:variable name="mes" select="../fechaPrimerVctoMM" />
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

                        <fo:leader leader-pattern="space" leader-length="1mm"/>de<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="../fechaPrimerVctoYYYY" /></fo:inline> y las restantes los d�as<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="../diaVencimiento" /></fo:inline><fo:leader leader-pattern="space" leader-length="1mm"/>de cada mes, venciendo la �ltima de ellas el d�a <fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="../fechaUltimoVctoDD" /></fo:inline><fo:leader leader-pattern="space" leader-length="1mm"/>de<fo:leader leader-pattern="space" leader-length="1mm"/>
                        <xsl:variable name="mes" select="../fechaUltimoVctoMM" />
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
                        <fo:leader leader-pattern="space" leader-length="1mm"/>de<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="../fechaUltimoVctoYYYY" /></fo:inline></fo:block>
              
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block font-family="Helvetica" line-height="5.8mm" font-size="11pt" text-align="justify"  ><fo:inline font-weight="bold">Pr�rroga de plazo por d�a inh�bil.</fo:inline> Las cuotas  de  amortizaci�n de capital e intereses se  pagar�n a su vencimiento, siempre que �ste corresponda a un d�a h�bil  bancario.  En  caso  contrario,  se  pagar�n  el  d�a  h�bil  bancario siguiente.</fo:block>
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              
              <fo:block>
              <xsl:variable name="simboloMoneda" select="../simboloMoneda" />
                <xsl:choose>

                  <xsl:when test="$simboloMoneda = 'UF'">
                    <fo:block font-family="Helvetica" line-height="5.8mm" font-size="11pt" text-align="justify"  ><fo:inline font-weight="bold">Equivalencia.</fo:inline>  Las sumas adeudas,  tanto  en  lo referente  a  capital como a intereses, se calcular�n por su equivalente en moneda legal chilena al d�a de pago efectivo.</fo:block>
                  </xsl:when>
              </xsl:choose>
              </fo:block>              
              
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block font-family="Helvetica" line-height="5.8mm" font-size="11pt" text-align="justify"  ><fo:inline font-weight="bold">Comisi�n legal por garant�a FOGAPE.</fo:inline> Con cada vencimiento de capital e intereses o de s�lo intereses, pagar� al Banco de Cr�dito e Inversiones la comisi�n legal del <fo:inline font-weight="bold"><xsl:value-of select="../porComisionFogape"/></fo:inline> % anual sobre el saldo del capital garantizado, que �ste recauda para el Fondo de Garant�a para Peque�os Empresarios, el cual cauciona el cr�dito con una tasa de garant�a de <fo:inline font-weight="bold"><xsl:value-of select="../porGarantiaFogape"/></fo:inline> % del saldo de capital adeudado.</fo:block>
              
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block font-family="Helvetica" line-height="5.8mm" font-size="11pt" text-align="justify"  ><fo:inline font-weight="bold">Prepagos.</fo:inline> Si el monto  de  capital  inicial supera el equivalente a UF 5.000, todo pago anticipado, sea total o parcial, ser� convenido libremente entre el suscriptor y el Banco.  A  falta de acuerdo, el suscriptor podr� en todo caso anticipar  el pago, total o parcialmente, y en  este �ltimo caso, siempre que el importe  a pagar sea igual o superior al 20 % del capital de la obligaci�n adeudada,  pagando adem�s los intereses estipulados devengados y no pagados a la fecha  del prepago, calculados  sobre el saldo insoluto, m�s los intereses estipulados en este instrumento,  calculados sobre el capital prepagado desde la fecha  del prepago hasta  el vencimiento del plazo pactado. Si el monto de capital inicial  no supera  el equivalente a UF 5.000, al  capital  prepagado deber�n sum�rsele  los intereses  calculados hasta la  fecha del prepago y la comisi�n  de  prepago  m�xima  que  el art�culo  10 de  la Ley 18.010 permite pactar.</fo:block>
              
              <fo:block font-family="Helvetica" line-height="5.8mm" font-size="11pt" text-align="justify"  ><fo:inline font-weight="bold">Intereses Moratorios</fo:inline>, En caso de retardo o mora en el cumplimiento de esta obligaci�n, �sta devengar� desde la fecha del retardo y a favor del acreedor, el inter�s m�ximo convencional que rija durante la mora.</fo:block>              
              <fo:block font-family="Helvetica" line-height="5.8mm" font-size="11pt" text-align="justify"  ><fo:inline font-weight="bold">Exigibilidad anticipada.</fo:inline> El no pago oportuno de una cualquiera de las cuotas de capital  y/o de inter�s comprendidos en esta obligaci�n, dar� derecho al acreedor a hacer exigible de inmediato y anticipadamente el monto total del saldo insoluto adeudado a esa fecha, el que desde esa misma fecha se considerar� de plazo vencido y devengar� en favor del acreedor o de quien sus derechos represente, el inter�s m�ximo convencional.</fo:block>
              
              <fo:block font-family="Helvetica" line-height="4.5mm" font-size="11pt" text-align="center" >1 de 3</fo:block>
              </fo:flow>
          </xsl:when>
          <!--   AQUI TERMINA EL TEMPLATE   doccc03a  -->          
          
          <!--   AQUI COMIENZA EL TEMPLATE   doccc03b  -->
          <xsl:when test="template = 'doccc03b'">
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
                                        <xsl:value-of select="../logoBciSomosDiferentes"/>
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
              <fo:table border-collapse="collapse" font-family="Helvetica" font-size="11pt" text-align="left">
                  <fo:table-column column-width="50%"/>
                  <fo:table-column column-width="50%"/>
                  <fo:table-body>
                      <fo:table-row>
                          <fo:table-cell > _
                              <fo:block font-family="Helvetica" line-height="4.5mm" font-size="11pt" text-align="left" >N� de Operaci�n :<fo:inline font-weight="bold"><xsl:value-of select="../nroOperacion" /></fo:inline></fo:block>
                          </fo:table-cell>
                      </fo:table-row>
                  </fo:table-body>
              </fo:table>
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block font-family="Helvetica" line-height="5.8mm" font-size="11pt" text-align="justify"  >Se deja expresamente establecido que el ejercicio de este derecho constituye una sanci�n al suscriptor por el no pago de la deuda e importa una mera facultad establecida en beneficio exclusivo del acreedor, que no altera en caso alguno la fecha de vencimiento del pagar� originalmente pactada, ni a la exigibilidad de las acciones cambiarias y ejecutivas derivadas de �ste. El Banco podr� hacer exigible de inmediato el monto total adeudado, expirando todos los plazos pendientes por el s�lo hecho de constituirse en mora o de hab�rsele protestado al deudor o al aval, por falta de pago, cualquier documento, pagar�, letra de cambio o cheque, aceptado, suscrito, girado o avalado por �l. Se  deja expresamente establecido que corresponder� al deudor acreditar el pago de las cuotas en que se divide el presente instrumento, en caso de cobro judicial. Sin embargo, en operaciones de cr�dito de dinero en cuotas, cuyo capital inicial sea igual o inferior a 200 unidades de fomento no podr� hacerse exigible la obligaci�n en forma anticipada, si no una vez cumplidos 60 d�as corridos desde que el suscriptor incurra en mora o simple retardo en el pago.</fo:block>
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block font-family="Helvetica" line-height="5.8mm" font-size="11pt" text-align="justify"  ><fo:inline font-weight="bold">Incumplimiento.</fo:inline> Sin perjuicio de lo anterior, en caso de no pago oportuno de la comisi�n legal en favor del Fondo, pagar� un <fo:inline font-weight="bold"><xsl:value-of select="../porComisionFogape"/></fo:inline> % anual sobre el capital garantizado de la respectiva cuota vencida, por el per�odo comprendido entre el incumplimiento y el pago efectivo de lo adeudado. Producida la aceleraci�n del cr�dito la comisi�n se aplicar� al saldo total de capital garantizado, hasta que el deudor cumpla �ntegramente la obligaci�n o el Fondo efect�e el pago de la garant�a, caso este �ltimo en que operar� la subrogaci�n legal.</fo:block>
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>

              <fo:block font-family="Helvetica" line-height="5.8mm" font-size="11pt" text-align="justify"  ><fo:inline font-weight="bold">Indivisibilidad  y solidaridad.</fo:inline> Las obligaciones  que emanen de  este pagar� ser�n  solidarias para el suscriptor, avalista(s) y dem�s obligados al pago y ser�n  indivisibles  para  sus herederos.  Adem�s,  el suscriptor  pagar� los gastos, impuestos y costas personales y procesales que correspondan.</fo:block>
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block font-family="Helvetica" line-height="5.8mm" font-size="11pt" text-align="justify"  ><fo:inline font-weight="bold">Mandato para pr�rrogas.</fo:inline> El suscriptor faculta al Banco de Cr�dito e Inversiones para que en su nombre y representaci�n otorgue, previa autorizaci�n expresa de �ste, una o m�s pr�rrogas que establezcan nuevas condiciones, tasas de inter�s y fechas de vencimiento.</fo:block>
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>                          
              <fo:block font-family="Helvetica" line-height="5.8mm" font-size="11pt" text-align="justify"  ><fo:inline font-weight="bold">Domicilio y competencia.</fo:inline> Para todos los efectos legales, judiciales o extrajudiciales derivados de este pagar�, prorrogo expresamente la competencia para los Tribunales de Justicia con asiento en la comuna y ciudad de <fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-size="10pt" font-weight="bold">________________________</fo:inline><fo:leader leader-pattern="space" leader-length="1mm"/>, pr�rroga que ser� obligatoria tanto para el suscriptor como para sus avales, endosantes u obligados por garant�a. Sin perjuicio de esta pr�rroga de competencia, declaro, s�lo para efectos del emplazamiento judicial, que mi domicilio y residencia son los indicados en el cuerpo  de  este  t�tulo, comprometi�ndome desde luego a dar pronto aviso por escrito, mediante carta certificada al Banco, en el evento que realice cualquier cambio de domicilio en el futuro.</fo:block>
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block font-family="Helvetica" line-height="5.8mm" font-size="11pt" text-align="justify"  ><fo:inline font-weight="bold">Impuesto de timbres y estampillas.</fo:inline> El impuesto de timbres y estampillas que grava este documento se paga por ingresos mensuales de dinero en Tesorer�a, seg�n Decreto Ley N� 3475.</fo:block>

              <fo:block font-family="Helvetica" line-height="4.5mm" font-size="11pt" text-align="left" >             	
              En<fo:leader leader-pattern="space" leader-length="25mm"/>
              <fo:inline font-weight="bold"><xsl:value-of select="../ciudadContrato" /></fo:inline>,
              <fo:leader leader-pattern="space" leader-length="1mm"/>a<fo:leader leader-pattern="space" leader-length="1mm"/>
              <fo:inline font-weight="bold"><xsl:value-of select="../dia" /></fo:inline>

              <fo:leader leader-pattern="space" leader-length="1mm"/>de<fo:leader leader-pattern="space" leader-length="1mm"/>
              <xsl:variable name="mes" select="../mes" />
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
              <fo:inline font-weight="bold"><xsl:value-of select="../anio" /></fo:inline>
              </fo:block>
             <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
             <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block font-family="Helvetica" line-height="4.5mm" font-size="11pt" text-align="center" ><fo:leader leader-length="6cm" leader-pattern="rule" rule-style="solid" rule-thickness="0.4mm" color="black"/></fo:block>
             
             <fo:block font-family="Helvetica" line-height="4.5mm" font-size="11pt" text-align="center" >Firma del Suscriptor</fo:block>   
             <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>

           <!-- AQUI COMIENZA LOS DATOS  DEL SUSCRIPTOR NOMBRE, RAZON SOCIAL Y DOMICILIO -->
             <xsl:call-template name="DatosRazonSociasl"/>
            <!-- AQUI TERMINA LOS DATOS  DEL SUSCRIPTOR NOMBRE, RAZON SOCIAL Y DOMICILIO  -->
            
             <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
             <fo:block font-family="Helvetica" line-height="4.5mm" font-size="11pt" text-align="center" >2 de 3</fo:block>
                    </fo:flow>
          </xsl:when>
          <!--   AQUI TERMINA EL TEMPLATE   doccc03b  -->          
          
          <!--   AQUI COMIENZA EL TEMPLATE   doccc04a  -->
          <xsl:when test="template = 'doccc04a'">
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
                                        <xsl:value-of select="../logoBciSomosDiferentes"/>
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
                  <fo:table-column column-width="70mm" />
                  <fo:table-column column-width="80mm"/>
                  <fo:table-body>
                      <fo:table-row>
                            <fo:table-cell >
                                    <fo:block >
                                  
                                    </fo:block>
                            </fo:table-cell>
                            
                            <fo:table-cell >
					              <fo:block>
					              <xsl:variable name="simboloMoneda" select="../simboloMoneda" />
					                <xsl:choose>
					                  <xsl:when test="$simboloMoneda = 'UF'">
					                  	 <fo:block font-family="Helvetica" line-height="4.5mm" font-size="11pt" text-align="center" ><fo:inline font-weight="bold"> PAGARE FOGAPE(Sin Protesto)</fo:inline></fo:block>
					                     <fo:block font-family="Helvetica" line-height="4.5mm" font-size="11pt" text-align="center" ><fo:inline font-weight="bold">UN VENCIMIENTO UF INTERES VENCIDO</fo:inline></fo:block>
					                  </xsl:when>
					
					                  <xsl:when test="$simboloMoneda = '$'">
					                  	 <fo:block font-family="Helvetica" line-height="4.5mm" font-size="11pt" text-align="center" ><fo:inline font-weight="bold"> PAGARE FOGAPE (Sin Protesto)</fo:inline></fo:block>
					                     <fo:block font-family="Helvetica" line-height="4.5mm" font-size="11pt" text-align="center" ><fo:inline font-weight="bold">UN VENCIMIENTO $ INTERES VENCIDO</fo:inline></fo:block>
					                  </xsl:when>
					              </xsl:choose>
					              </fo:block>
                            </fo:table-cell>

                      </fo:table-row>
                </fo:table-body>
                </fo:table>
                
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:table border-collapse="collapse" font-family="Helvetica" font-size="11pt" text-align="left">
                  <fo:table-column column-width="50%"/>
                  <fo:table-column column-width="50%"/>
                  <fo:table-body>
                      <fo:table-row>
                          <fo:table-cell > _
                              <fo:block font-family="Helvetica" line-height="4.5mm" font-size="11pt" text-align="left" >N� de Operaci�n :<fo:inline font-weight="bold"><xsl:value-of select="../nroOperacion" /></fo:inline></fo:block>
                          </fo:table-cell>
                      </fo:table-row>
                  </fo:table-body>
              </fo:table>
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              
              <fo:block>
              <xsl:variable name="simboloMoneda" select="../simboloMoneda" />
                <xsl:choose>

                  <xsl:when test="$simboloMoneda = 'UF'">
                      <fo:block font-family="Helvetica" line-height="5.8mm" font-size="11pt" text-align="justify"  >Por valor recibido, debo y pagar� a la orden del BANCO DE CREDITO E INVERSIONES, en  su  domicilio ubicado en Avenida El Golf N� 125, Comuna de Las Condes, Santiago, o en cualquiera de sus sucursales, la suma de <fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="../simboloMoneda" /></fo:inline><fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold">
                      <xsl:value-of select='format-number(../montoCredito, "###.###.##0,0000","decimal")'/>
              
                      </fo:inline><fo:leader leader-pattern="space" leader-length="1mm"/>(<fo:inline font-weight="bold"><xsl:value-of select="../montoCreditoManoEscrita" /></fo:inline> Unidades de Fomento ), equivalentes a esta fecha a la suma de <fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold">$</fo:inline><fo:leader leader-pattern="space" leader-length="1mm"/>
                      <fo:inline font-weight="bold"><xsl:value-of select="../montoCreditoEnPesos" /></fo:inline>
              
                      <fo:leader leader-pattern="space" leader-length="1mm"/>(<fo:inline font-weight="bold"><xsl:value-of select="../montoCreditoEnPesosManoEscrita"/></fo:inline> pesos m/l)</fo:block>
                     
                  </xsl:when>

                  <xsl:when test="$simboloMoneda = '$'">
                      <fo:block font-family="Helvetica" line-height="5.8mm" font-size="11pt" text-align="justify"  >Por valor recibido, debo y pagar� a la orden del BANCO DE CREDITO E INVERSIONES, en  su  domicilio ubicado en Avenida El Golf N� 125, Comuna de Las Condes, Santiago, o en cualquiera de sus sucursales, la suma de <fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="../simboloMoneda" /></fo:inline><fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold">
                      <xsl:value-of select="../montoCredito"/></fo:inline><fo:leader leader-pattern="space" leader-length="1mm"/>(<fo:inline font-weight="bold"><xsl:value-of select="../montoCreditoEnPesosManoEscrita" /></fo:inline> pesos m/l)</fo:block>
                  </xsl:when>
              </xsl:choose>
              </fo:block>

              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block font-family="Helvetica" line-height="5.8mm" font-size="11pt" text-align="justify"  ><fo:inline font-weight="bold">Destino de los recursos y control de su inversi�n.</fo:inline> Me obligo a destinar los recursos crediticios recibidos del Banco a<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-size="10pt" font-weight="bold">_______________________________________________________________________________________________</fo:inline><fo:leader leader-pattern="space" leader-length="1mm"/>y adem�s a facilitar al acreedor el control de su inversi�n. El incumplimiento de una u otra obligaci�n facultar� al Banco para hacer exigible anticipadamente la totalidad de lo adeudado en los t�rminos precedentemente se�alados, sin perjuicio de la responsabilidad penal por la infracci�n, con arreglo al art�culo 4� del DL. 3.472 de 1980.</fo:block>             
                             
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block font-family="Helvetica" line-height="5.8mm" font-size="11pt" text-align="left" > <fo:inline font-weight="bold">Tasa de Inter�s</fo:inline></fo:block>

              <fo:block>
              <xsl:variable name="simboloMoneda" select="../simboloMoneda" />
                <xsl:choose>

                  <xsl:when test="$simboloMoneda = 'UF'">
                      <fo:block font-family="Helvetica" line-height="5.8mm" font-size="11pt" text-align="justify" >El capital adeudado devengar� a partir de esta fecha una tasa de inter�s del<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select='format-number(../tasaInteres, "###,####","decimal")'/></fo:inline>% anual vencido durante todo el plazo pactado.</fo:block>                     
                  </xsl:when>

                  <xsl:when test="$simboloMoneda = '$'">
                      <fo:block font-family="Helvetica" line-height="5.8mm" font-size="11pt" text-align="justify"  >El capital adeudado devengar� a partir de esta fecha una tasa de inter�s del<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select='format-number(../tasaInteres, "###,####","decimal")'/></fo:inline>% mensual vencido durante todo el plazo pactado.</fo:block>
                  </xsl:when>
              </xsl:choose>
              </fo:block>
              
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block font-family="Helvetica" line-height="5.8mm" font-size="11pt" text-align="left" ><fo:inline font-weight="bold">Amortizaci�n del Capital y Pago de Intereses</fo:inline></fo:block>
              
              <fo:block font-family="Helvetica" line-height="5.8mm" font-size="11pt" text-align="justify"  >El capital adeudado y sus intereses se pagar�n �ntegramente el d�a<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="../fechaPrimerVctoDD" /></fo:inline><fo:leader leader-pattern="space" leader-length="1mm"/>de<fo:leader leader-pattern="space" leader-length="1mm"/>

                        <xsl:variable name="mes" select="../fechaPrimerVctoMM" />
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

              <fo:leader leader-pattern="space" leader-length="1mm"/>de<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="../fechaPrimerVctoYYYY" /></fo:inline></fo:block>
              
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block font-family="Helvetica" line-height="5.8mm" font-size="11pt" text-align="justify"  ><fo:inline font-weight="bold">Pr�rroga de plazo por d�a inh�bil.</fo:inline> Las cuotas  de  amortizaci�n de capital e intereses se  pagar�n a su vencimiento, siempre que �ste corresponda a un d�a h�bil  bancario.  En  caso  contrario,  se  pagar�n  el  d�a  h�bil  bancario siguiente.</fo:block>
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block>
              <xsl:variable name="simboloMoneda" select="../simboloMoneda" />
                <xsl:choose>

                  <xsl:when test="$simboloMoneda = 'UF'">
                    <fo:block font-family="Helvetica" line-height="5.8mm" font-size="11pt" text-align="justify"  ><fo:inline font-weight="bold">Equivalencia.</fo:inline> Las sumas adeudas,  tanto  en  lo referente  a  capital como a intereses, se calcular�n por su equivalente en moneda legal chilena al d�a de pago efectivo.</fo:block>
                  </xsl:when>
              </xsl:choose>
              </fo:block>
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>              
              <fo:block font-family="Helvetica" line-height="5.8mm" font-size="11pt" text-align="justify"  ><fo:inline font-weight="bold">Comisi�n legal por garant�a FOGAPE.</fo:inline> Con cada vencimiento de capital e intereses o de s�lo intereses, pagar� al Banco de Cr�dito e Inversiones la comisi�n legal del <fo:inline font-weight="bold"><xsl:value-of select="../porComisionFogape"/></fo:inline> % anual vencido durante todo el plazo pactado. anual sobre el saldo del capital garantizado, que �ste recauda para el Fondo de Garant�a para Peque�os Empresarios, el cual cauciona el cr�dito con una tasa de garant�a de <fo:inline font-weight="bold"><xsl:value-of select="../porGarantiaFogape"/></fo:inline> % del saldo de capital adeudado.</fo:block>
              <fo:block font-family="Helvetica" line-height="5.8mm" font-size="11pt" text-align="justify"  ><fo:inline font-weight="bold">Prepagos.</fo:inline> Si el monto  de  capital  inicial supera el equivalente a UF 5.000, todo pago anticipado, sea total o parcial, ser� convenido libremente entre el suscriptor y el Banco.  A  falta de acuerdo, el suscriptor podr� en todo caso anticipar  el pago, total o parcialmente, y en  este �ltimo caso, siempre que el importe  a pagar sea igual o superior al 20 % del capital de la obligaci�n adeudada,  pagando adem�s los intereses estipulados devengados y no pagados a la fecha  del prepago, calculados  sobre el saldo insoluto, m�s los intereses estipulados en este instrumento,  calculados sobre el capital prepagado desde la fecha  del prepago hasta  el vencimiento del plazo pactado. Si el monto de capital inicial  no supera  el equivalente a UF 5.000, al  capital  prepagado deber�n sum�rsele  los intereses  calculados hasta la  fecha del prepago y la comisi�n  de  prepago  m�xima  que  el art�culo  10 de  la Ley 18.010 permite pactar.</fo:block>
             
              <fo:block font-family="Helvetica" line-height="5.8mm" font-size="11pt" text-align="justify"  ><fo:inline font-weight="bold">Intereses Moratorios</fo:inline>, En caso de retardo o mora en el cumplimiento de esta obligaci�n, �sta devengar� desde la fecha del retardo y a favor del acreedor, el inter�s m�ximo convencional que rija durante la mora.</fo:block>              
             
              <fo:block font-family="Helvetica" line-height="5.8mm" font-size="11pt" text-align="justify"  ><fo:inline font-weight="bold">Exigibilidad anticipada.</fo:inline> El no pago oportuno de una cualquiera de las cuotas de capital  y/o de inter�s comprendidos en esta obligaci�n, dar� derecho al acreedor a hacer exigible de inmediato y anticipadamente el monto total del saldo insoluto adeudado a esa fecha, el que desde esa misma fecha se considerar� de plazo vencido y devengar� en favor del acreedor o de quien sus derechos represente, el inter�s m�ximo convencional.</fo:block>
              
              <fo:block font-family="Helvetica" line-height="4.5mm" font-size="11pt" text-align="center" >1 de 3</fo:block>
              </fo:flow>
          </xsl:when>
          <!--   AQUI TERMINA EL TEMPLATE   doccc04a  -->          
          
          <!--   AQUI COMIENZA EL TEMPLATE   doccc04b  -->
          <xsl:when test="template = 'doccc04b'">
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
                                        <xsl:value-of select="../logoBciSomosDiferentes"/>
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
              <fo:table border-collapse="collapse" font-family="Helvetica" font-size="11pt" text-align="left">
                  <fo:table-column column-width="50%"/>
                  <fo:table-column column-width="50%"/>
                  <fo:table-body>
                      <fo:table-row>
                          <fo:table-cell > _
                              <fo:block font-family="Helvetica" line-height="4.5mm" font-size="11pt" text-align="left" >N� de Operaci�n :<fo:inline font-weight="bold"><xsl:value-of select="../nroOperacion" /></fo:inline></fo:block>
                          </fo:table-cell>
                      </fo:table-row>
                  </fo:table-body>
              </fo:table>
              
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block font-family="Helvetica" line-height="5.8mm" font-size="11pt" text-align="justify"  >Se deja expresamente establecido que el ejercicio de este derecho constituye una sanci�n al suscriptor por el no pago de la deuda e importa una mera facultad establecida en beneficio exclusivo del acreedor, que no altera en caso alguno la fecha de vencimiento del pagar� originalmente pactada, ni a la exigibilidad de las acciones cambiarias y ejecutivas derivadas de �ste. El Banco podr� hacer exigible de inmediato el monto total adeudado, expirando todos los plazos pendientes por el s�lo hecho de constituirse en mora o de hab�rsele protestado al deudor o al aval, por falta de pago, cualquier documento, pagar�, letra de cambio o cheque, aceptado, suscrito, girado o avalado por �l. Se  deja expresamente establecido que corresponder� al deudor acreditar el pago de las cuotas en que se divide el presente instrumento, en caso de cobro judicial. Sin embargo, en operaciones de cr�dito de dinero en cuotas, cuyo capital inicial sea igual o inferior a 200 unidades de fomento no podr� hacerse exigible la obligaci�n en forma anticipada, si no una vez cumplidos 60 d�as corridos desde que el suscriptor incurra en mora o simple retardo en el pago.</fo:block>
              <fo:block font-family="Helvetica" line-height="5.8mm" font-size="11pt" text-align="justify"  ><fo:inline font-weight="bold">Incumplimiento.</fo:inline> Sin perjuicio de lo anterior, en caso de no pago oportuno de la comisi�n legal en favor del Fondo, pagar� un <fo:inline font-weight="bold"><xsl:value-of select="../porComisionFogape"/></fo:inline> % anual sobre el capital garantizado de la respectiva cuota vencida, por el per�odo comprendido entre el incumplimiento y el pago efectivo de lo adeudado. Producida la aceleraci�n del cr�dito la comisi�n se aplicar� al saldo total de capital garantizado, hasta que el deudor cumpla �ntegramente la obligaci�n o el Fondo efect�e el pago de la garant�a, caso este �ltimo en que operar� la subrogaci�n legal.</fo:block>
              <fo:block font-family="Helvetica" line-height="5.8mm" font-size="11pt" text-align="justify"  ><fo:inline font-weight="bold">Indivisibilidad  y solidaridad.</fo:inline> Las obligaciones  que emanen de  este pagar� ser�n  solidarias para el suscriptor, avalista(s) y dem�s obligados al pago y ser�n  indivisibles  para  sus herederos.  Adem�s,  el suscriptor  pagar� los gastos, impuestos y costas personales y procesales que correspondan.</fo:block>
              <fo:block font-family="Helvetica" line-height="5.8mm" font-size="11pt" text-align="justify"  ><fo:inline font-weight="bold">Mandato para pr�rrogas.</fo:inline> El suscriptor faculta al Banco de Cr�dito e Inversiones para que en su nombre y representaci�n otorgue, previa autorizaci�n expresa de �ste, una o m�s pr�rrogas que establezcan nuevas condiciones, tasas de inter�s y fechas de vencimiento.</fo:block>
              <fo:block font-family="Helvetica" line-height="5.8mm" font-size="11pt" text-align="justify"  ><fo:inline font-weight="bold">Domicilio  y  competencia.</fo:inline> Para   todos  los  efectos  legales,  judiciales o extrajudiciales   derivados   de  este   pagar�,  prorrogo   expresamente  la competencia para los Tribunales  de  Justicia  con asiento  en la comuna y ciudad de <fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-size="10pt" font-weight="bold">________________________</fo:inline><fo:leader leader-pattern="space" leader-length="1mm"/>, pr�rroga  que ser� obligatoria tanto para el suscriptor como para sus avales, endosantes u obligados por garant�a. Sin perjuicio de esta pr�rroga de competencia, declaro, s�lo para efectos del emplazamiento judicial, que mi domicilio y residencia son los indicados en el cuerpo de este t�tulo, comprometi�ndome desde luego a dar pronto aviso por escrito, mediante carta certificada al Banco, en el evento que realice cualquier cambio de domicilio en el futuro.</fo:block>
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block font-family="Helvetica" line-height="5.8mm" font-size="11pt" text-align="justify"  ><fo:inline font-weight="bold">Impuesto de timbres y estampillas.</fo:inline> El impuesto de timbres y estampillas que grava este documento se paga por ingresos mensuales de dinero en Tesorer�a, seg�n Decreto Ley N� 3475.</fo:block>

              <fo:block font-family="Helvetica" line-height="4.5mm" font-size="11pt" text-align="left" >             	
              En<fo:leader leader-pattern="space" leader-length="25mm"/>
              <fo:inline font-weight="bold"><xsl:value-of select="../ciudadContrato" /></fo:inline>,
              <fo:leader leader-pattern="space" leader-length="1mm"/>a<fo:leader leader-pattern="space" leader-length="1mm"/>
              <fo:inline font-weight="bold"><xsl:value-of select="../dia" /></fo:inline>

              <fo:leader leader-pattern="space" leader-length="1mm"/>de<fo:leader leader-pattern="space" leader-length="1mm"/>
              <xsl:variable name="mes" select="../mes" />
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
              <fo:inline font-weight="bold"><xsl:value-of select="../anio" /></fo:inline>
              </fo:block>
             <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
             <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
             <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>

              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block font-family="Helvetica" line-height="4.5mm" font-size="11pt" text-align="center" ><fo:leader leader-length="6cm" leader-pattern="rule" rule-style="solid" rule-thickness="0.4mm" color="black"/></fo:block>
             
             <fo:block font-family="Helvetica" line-height="4.5mm" font-size="11pt" text-align="center" >Firma del Suscriptor</fo:block>   
             <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>

           <!-- AQUI COMIENZA LOS DATOS  DEL SUSCRIPTOR NOMBRE, RAZON SOCIAL Y DOMICILIO -->
             <xsl:call-template name="DatosRazonSociasl"/>
            <!-- AQUI TERMINA LOS DATOS  DEL SUSCRIPTOR NOMBRE, RAZON SOCIAL Y DOMICILIO  -->
            
             <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
             <fo:block font-family="Helvetica" line-height="4.5mm" font-size="11pt" text-align="center" >2 de 3</fo:block>
                    </fo:flow>
          </xsl:when>
          <!--   AQUI TERMINA EL TEMPLATE   doccc04b  -->
          
          <!--   AQUI COMIENZA EL TEMPLATE   doccc05a  -->
          <xsl:when test="template = 'doccc05a'">
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
                                        <xsl:value-of select="../logoBciSomosDiferentes"/>
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
                    
              <fo:block font-family="Helvetica" line-height="4.5mm" font-size="11pt" text-align="center" ><fo:inline font-weight="bold">PAGAR� (Sin Protesto)</fo:inline></fo:block>
              <fo:block font-family="Helvetica" line-height="4.5mm" font-size="11pt" text-align="center" ><fo:inline font-weight="bold">UN VENCIMIENTO $ INTERES VENCIDO</fo:inline></fo:block>
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:table border-collapse="collapse" font-family="Helvetica" font-size="11pt" text-align="left">
                  <fo:table-column column-width="50%"/>
                  <fo:table-column column-width="50%"/>
                  <fo:table-body>
                      <fo:table-row>
                          <fo:table-cell > _
                              <fo:block font-family="Helvetica" line-height="4.5mm" font-size="11pt" text-align="left" >N� de Operaci�n :<fo:inline font-weight="bold"><xsl:value-of select="../nroOperacion" /></fo:inline></fo:block>
                          </fo:table-cell>
                      </fo:table-row>
                  </fo:table-body>
              </fo:table>
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block font-family="Helvetica" line-height="4.5mm" font-size="11pt" text-align="justify"  >Por valor recibido,  debo  y  pagar�  a  la  orden  del  BANCO  DE  CREDITO E INVERSIONES, en su domicilio ubicado en Avenida El Golf N� 125, Comuna de Las Condes,  Santiago,   o   en   cualquiera   de  sus  sucursales,  la  suma de <fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold">$</fo:inline><fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold">

              <xsl:variable name="simboloMoneda" select="../simboloMoneda" />
                <xsl:choose>

                  <xsl:when test="$simboloMoneda = 'UF'">
                     <xsl:value-of select='format-number(../montoCredito, "###.###.##0,0000","decimal")' />
                  </xsl:when>

                  <xsl:when test="$simboloMoneda = '$'">
                    <xsl:value-of select='../montoCredito' />
                  </xsl:when>

              </xsl:choose>

              </fo:inline><fo:leader leader-pattern="space" leader-length="1mm"/>(<fo:inline font-weight="bold"><xsl:value-of select="../montoCreditoEnPesosManoEscrita" /></fo:inline> pesos m/l) .</fo:block>
              <fo:block font-family="Helvetica" line-height="5.8mm" font-size="11pt" text-align="left" > <fo:inline font-weight="bold">Tasa de Inter�s</fo:inline></fo:block>
              <fo:block font-family="Helvetica" line-height="5.8mm" font-size="11pt" text-align="justify"  >El capital adeudado devengar� a partir de esta fecha  una tasa de inter�s del <fo:inline font-weight="bold"><xsl:value-of select='format-number(../tasaInteres, "###,####","decimal")'/></fo:inline>% mensual vencido durante todo el plazo pactado.</fo:block>
              <fo:block font-family="Helvetica" line-height="5.8mm" font-size="11pt" text-align="left" ><fo:inline font-weight="bold">Amortizaci�n del Capital</fo:inline></fo:block>
              <fo:block font-family="Helvetica" line-height="5.8mm" font-size="11pt" text-align="justify"  >El capital adeudado se pagar� �ntegramente el d�a <fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="../fechaUltimoVctoDD" /></fo:inline><fo:leader leader-pattern="space" leader-length="1mm"/>de<fo:leader leader-pattern="space" leader-length="1mm"/>

              <xsl:variable name="mes" select="../fechaUltimoVctoMM" />
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

              <fo:leader leader-pattern="space" leader-length="1mm"/>de<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="../fechaUltimoVctoYYYY" /></fo:inline></fo:block>
              <fo:block font-family="Helvetica" line-height="5.8mm" font-size="11pt" text-align="left" ><fo:inline font-weight="bold">Intereses</fo:inline></fo:block>
              <fo:block font-family="Helvetica" line-height="5.8mm" font-size="11pt" text-align="justify"  >Por  su parte,  los  intereses se pagar�n en las mismas fechas se�aladas para las amortizaciones de capital. </fo:block>
              <fo:block font-family="Helvetica" line-height="5.8mm" font-size="11pt" text-align="justify"  ><fo:inline font-weight="bold">Pr�rroga  de  plazo  por d�a inh�bil.</fo:inline> Las cuotas de amortizaci�n de capital e intereses  se pagar�n a su vencimiento, siempre que �ste corresponda a un d�a h�bil  bancario.  En  caso contrario,  se  pagar�n   el  d�a  h�bil  bancario siguiente.</fo:block>
              <fo:block font-family="Helvetica" line-height="5.8mm" font-size="11pt" text-align="justify"  ><fo:inline font-weight="bold">Prepagos.</fo:inline> Si el  monto  de  capital inicial supera el equivalente a UF 5.000, todo pago anticipado, sea total o parcial, ser� convenido libremente entre el suscriptor  y  el Banco. A falta de acuerdo, el suscriptor podr� en todo caso anticipar el pago,  total o parcialmente, y  en este �ltimo caso, siempre que el importe a pagar sea  igual o superior al 25 % del capital de la obligaci�n adeudada, pagando adem�s  los intereses estipulados devengados y no pagados a la fecha  del prepago, calculados  sobre el saldo insoluto, m�s los intereses estipulados en este instrumento, calculados  sobre el capital prepagado desde la fecha  del  prepago hasta el vencimiento del plazo pactado. Si el monto de capital  inicial  no  supera el  equivalente a UF 5.000, al capital prepagado deber�n  sum�rsele  los  intereses calculados hasta la fecha del prepago y la comisi�n  de  prepago  m�xima  que el  articulo  10 de la  Ley 18.010 permite pactar.</fo:block>
              <fo:block font-family="Helvetica" line-height="5.8mm" font-size="11pt" text-align="justify"  ><fo:inline font-weight="bold">Exigibilidad anticipada.</fo:inline> El no pago  oportuno de una cualquiera de las cuotas de  capital y/o de inter�s  comprendidos  en esta obligaci�n, dar� derecho al acreedor a  hacer exigible de  inmediato y anticipadamente el monto total del saldo  insoluto  adeudado  a  esa  fecha,  el  que  desde  esa misma fecha se considerar� de plazo vencido y devengar� en favor del acreedor o de quien sus derechos represente, el  inter�s m�ximo convencional que rija durante la mora o simple retardo. </fo:block>
              <fo:block font-family="Helvetica" line-height="5.8mm" font-size="11pt" text-align="justify"  >Se  deja expresamente establecido que el ejercicio de este derecho constituye una  sanci�n  al  suscriptor  por  el  no pago de la deuda e importa una mera facultad  establecida  en beneficio exclusivo  del acreedor, que no altera en caso alguno la fecha de vencimiento del pagar� originalmente pactada, ni a la exigibilidad de las acciones cambiarias y ejecutivas derivadas de �ste.</fo:block>
              <fo:block font-family="Helvetica" line-height="5.8mm" font-size="11pt" text-align="justify"  >El Banco podr� hacer exigible de inmediato el monto total adeudado, expirando todos  los  plazos  pendientes por el s�lo hecho de constituirse en mora o de hab�rsele  protestado  al  deudor o  al aval, por  falta de  pago,  cualquier documento,  pagar�,  letra  de  cambio o cheque,  aceptado, suscrito,  girado o avalado por �l.</fo:block>
              <fo:block font-family="Helvetica" line-height="5.8mm" font-size="11pt" text-align="justify"  >Se deja  expresamente  establecido  que  corresponder� al deudor acreditar el pago de las cuotas en que se divide el presente instrumento, en caso de cobro judicial.</fo:block>
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>              
              <fo:block font-family="Helvetica" line-height="4.5mm" font-size="11pt" text-align="center" >1 de 3</fo:block>
                    </fo:flow>
          </xsl:when>
          <!--   AQUI TERMINA EL TEMPLATE   doccc05a  -->


          <!--   AQUI COMIENZA EL TEMPLATE   doccc05b  -->
          <xsl:when test="template = 'doccc05b'">
              <fo:flow flow-name="xsl-region-body">
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block font-family="Helvetica" line-height="4.5mm" font-size="11pt" text-align="left" >N� Operaci�n<fo:leader leader-pattern="space" leader-length="17.2mm"/>:<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="../nroOperacion" /></fo:inline></fo:block>
              <fo:block font-family="Helvetica" line-height="4.5mm" font-size="11pt" text-align="left" >Fecha de suscripci�n<fo:leader leader-pattern="space" leader-length="3.7mm"/>:<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="substring(../fechaSuscripcion,0,4)" /></fo:inline>
              <xsl:variable name="mes" select="substring(../fechaSuscripcion,4,2)" />
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
              <fo:inline font-weight="bold"><xsl:value-of select="substring(../fechaSuscripcion,6,5)" /></fo:inline>
              </fo:block>

              <fo:block font-family="Helvetica" line-height="4.5mm" font-size="11pt" text-align="left" >Monto<fo:leader leader-pattern="space" leader-length="29.6mm"/>:<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold">$</fo:inline><fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold">

              <xsl:variable name="simboloMoneda" select="../simboloMoneda" />
                <xsl:choose>
                  <xsl:when test="$simboloMoneda = 'UF'">
                     <xsl:value-of select='format-number(../montoCredito, "###.###.##0,0000","decimal")' />
                  </xsl:when>

                  <xsl:when test="$simboloMoneda = '$'">
                    <xsl:value-of select='../montoCredito' />
                  </xsl:when>
              </xsl:choose>

              </fo:inline></fo:block>
              <fo:block font-family="Helvetica" line-height="4.5mm" font-size="11pt" text-align="left" >Deudor<fo:leader leader-pattern="space" leader-length="27.6mm"/>:<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="../nombreCompletoCliente" /></fo:inline></fo:block>
              <fo:block font-family="Helvetica" line-height="4.5mm" font-size="11pt" text-align="left" >RUT<fo:leader leader-pattern="space" leader-length="32.5mm"/>:<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select='format-number(../rutCliente, "###.###.##0","rut")' /></fo:inline>-<fo:inline font-weight="bold"><xsl:value-of select="../dvCliente" /></fo:inline></fo:block>
              <fo:block font-family="Helvetica" line-height="4.5mm" font-size="11pt" text-align="left" >P�gina<fo:leader leader-pattern="space" leader-length="28.5mm"/>:<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="numeroPagina" /></fo:inline></fo:block>
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block font-family="Helvetica" line-height="5.8mm" font-size="11pt" text-align="justify"  ><fo:inline font-weight="bold">Indivisibilidad  y  solidaridad.</fo:inline> Las obligaciones  que emanen  de este pagar� ser�n  solidarias para el suscriptor, avalista(s) y dem�s obligados al pago y ser�n  indivisibles  para sus herederos.  Adem�s,  el  suscriptor  pagar� los gastos, impuestos y costas personales y procesales que correspondan.</fo:block>
              <fo:block font-family="Helvetica" line-height="5.8mm" font-size="11pt" text-align="justify"  >Mandato para  pr�rrogas. El  suscriptor  faculta al Banco de Cr�dito e Inversiones  para concederle  bajo la firma de uno o m�s apoderados de �ste, una o m�s  pr�rrogas  que se  efectuar�n sin �nimo de novar, y fijar en tal  caso y dentro de  los l�mites legales,  nuevas condiciones,  tasas de inter�s y fechas de vencimiento. </fo:block>
              <fo:block font-family="Helvetica" line-height="5.8mm" font-size="11pt" text-align="justify"  ><fo:inline font-weight="bold">Domicilio  y  competencia.</fo:inline>  Para  todos  los  efectos  legales,  judiciales o extrajudiciales   derivados  de   este   pagar�,   prorrogo  expresamente  la competencia para los Tribunales de Justicia con asiento en la comuna y ciudad de  <fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/ciudadContrato" /></fo:inline>, pr�rroga  que   ser�  obligatoria  tanto  para  el suscriptor como  para  sus  avales,  endosantes u obligados por garant�a. Sin perjuicio  de  esta  pr�rroga de competencia, declaro,  s�lo para efectos del emplazamiento judicial, que mi domicilio y residencia son los indicados en el cuerpo  de este t�tulo,  comprometi�ndome  desde luego a dar pronto aviso por escrito,  mediante  carta  certificada  al Banco, en el  evento  que  realice cualquier cambio de domicilio en el futuro.</fo:block>
              <fo:block font-family="Helvetica" line-height="5.8mm" font-size="11pt" text-align="justify"  ><fo:inline font-weight="bold">Impuesto  de timbres y estampillas.</fo:inline>  El impuesto de timbres y estampillas que grava este  documento se  paga por ingresos mensuales de dinero en Tesorer�a, seg�n Decreto Ley N� 3475.</fo:block>

              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block font-family="Helvetica" line-height="4.5mm" font-size="11pt" text-align="left" >
              En<fo:leader leader-pattern="space" leader-length="25mm"/>
              <fo:inline font-weight="bold"><xsl:value-of select="../ciudadContrato" /></fo:inline>,
              <fo:leader leader-pattern="space" leader-length="1mm"/>a<fo:leader leader-pattern="space" leader-length="1mm"/>
              <fo:inline font-weight="bold"><xsl:value-of select="../dia" /></fo:inline>

              <!--<fo:leader leader-pattern="space" leader-length="1mm"/>de<fo:leader leader-pattern="space" leader-length="1mm"/>
              <fo:inline font-weight="bold"><xsl:value-of select="../OperacionCredito/mes" /></fo:inline>-->
              <fo:leader leader-pattern="space" leader-length="1mm"/>de<fo:leader leader-pattern="space" leader-length="1mm"/>
              <xsl:variable name="mes" select="../mes" />
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
              <fo:inline font-weight="bold"><xsl:value-of select="../anio" /></fo:inline>
              </fo:block>

              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block font-family="Helvetica" line-height="4.5mm" font-size="11pt" text-align="center" ><fo:leader leader-length="6cm" leader-pattern="rule" rule-style="solid" rule-thickness="0.4mm" color="black"/></fo:block>
              <fo:block font-family="Helvetica" line-height="4.5mm" font-size="11pt" text-align="center" >Firma del Suscriptor</fo:block>
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>

           <!-- AQUI COMIENZA LOS DATOS  DEL SUSCRIPTOR NOMBRE, RAZON SOCIAL Y DOMICILIO -->
             <xsl:call-template name="DatosRazonSociasl"/>
            <!-- AQUI TERMINA LOS DATOS  DEL SUSCRIPTOR NOMBRE, RAZON SOCIAL Y DOMICILIO  -->

              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block font-family="Helvetica" line-height="4.5mm" font-size="11pt" text-align="center" >2 de 3</fo:block>
              
            </fo:flow>
          </xsl:when>
          <!--   AQUI TERMINA EL TEMPLATE   doccc05b  -->
          
          <!--   AQUI COMIENZA EL TEMPLATE   doccc06a  -->
          <xsl:when test="template = 'doccc06a'">
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
                                        <xsl:value-of select="../logoBciSomosDiferentes"/>
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
                  <fo:table-column column-width="50mm" />
                  <fo:table-column column-width="100mm"/>
                  <fo:table-body>
                      <fo:table-row>
                            <fo:table-cell >
                                    <fo:block >
                                  
                                    </fo:block>
                            </fo:table-cell>

                            <fo:table-cell >
                                    <fo:block font-family="Helvetica" line-height="4.5mm" font-size="11pt" text-align="center" ><fo:inline font-weight="bold">PAGARE (Sin Protesto)</fo:inline></fo:block>
                                     <fo:block>
                                     <xsl:variable name="simboloMoneda" select="../simboloMoneda" />
                                       <xsl:choose>
                                         <xsl:when test="$simboloMoneda = 'UF'">
                                            <fo:block font-family="Helvetica" line-height="4.5mm" font-size="11pt" text-align="center" ><fo:inline font-weight="bold"> BOLETA DE GARANTIA UF</fo:inline></fo:block>
                                         </xsl:when>
                       
                                         <xsl:when test="$simboloMoneda = '$'">
                                            <fo:block font-family="Helvetica" line-height="4.5mm" font-size="11pt" text-align="center" ><fo:inline font-weight="bold"> BOLETA DE GARANTIA  $</fo:inline></fo:block>
                                         </xsl:when>
                                     </xsl:choose>
                                     </fo:block>
                            </fo:table-cell>                            

                      </fo:table-row>
                </fo:table-body>
                </fo:table>
                
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:table border-collapse="collapse" font-family="Helvetica" font-size="11pt" text-align="left">
                  <fo:table-column column-width="50%"/>
                  <fo:table-column column-width="50%"/>
                  <fo:table-body>
                      <fo:table-row>
                          <fo:table-cell > _
                              <fo:block font-family="Helvetica" line-height="4.5mm" font-size="11pt" text-align="left" >N� de Operaci�n :<fo:inline font-weight="bold"><xsl:value-of select="../nroOperacion" /></fo:inline></fo:block>
                          </fo:table-cell>
                      </fo:table-row>
                  </fo:table-body>
              </fo:table>
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              
              <fo:block>
              <xsl:variable name="simboloMoneda" select="../simboloMoneda" />
                <xsl:choose>

                  <xsl:when test="$simboloMoneda = 'UF'">
                      <fo:block font-family="Helvetica" line-height="5.8mm" font-size="11pt" text-align="justify"  >Por valor recibido, debo y pagar� a la orden del BANCO DE CREDITO E INVERSIONES, en  su  domicilio ubicado en Avenida El Golf N� 125, Comuna de Las Condes, Santiago, o en cualquiera de sus sucursales, la suma de <fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="../simboloMoneda" /></fo:inline><fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold">
                      <xsl:value-of select='format-number(../montoCredito, "###.###.##0,0000","decimal")'/>
              
                      </fo:inline><fo:leader leader-pattern="space" leader-length="1mm"/>(<fo:inline font-weight="bold"><xsl:value-of select="../montoCreditoManoEscrita" /></fo:inline> Unidades de Fomento ), equivalentes a esta fecha a la suma de <fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold">$</fo:inline><fo:leader leader-pattern="space" leader-length="1mm"/>
                      <fo:inline font-weight="bold"><xsl:value-of select="../montoCreditoEnPesos"/></fo:inline>
              
                      <fo:leader leader-pattern="space" leader-length="1mm"/>(<fo:inline font-weight="bold"><xsl:value-of select="../montoCreditoEnPesosManoEscrita"/></fo:inline> pesos m/l). por valor recibido en Boleta de Garant�a N�<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="../nroOperacion" /></fo:inline><fo:leader leader-pattern="space" leader-length="1mm"/>a favor de _______________________________________________</fo:block>
                     
                  </xsl:when>

                  <xsl:when test="$simboloMoneda = '$'">
                      <fo:block font-family="Helvetica" line-height="5.8mm" font-size="11pt" text-align="justify"  >Por valor recibido, debo y pagar� a la orden del BANCO DE CREDITO E INVERSIONES, en  su  domicilio ubicado en Avenida El Golf N� 125, Comuna de Las Condes, Santiago, o en cualquiera de sus sucursales, la suma de <fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="../simboloMoneda" /></fo:inline><fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold">
                      <xsl:value-of select="../montoCredito"/></fo:inline><fo:leader leader-pattern="space" leader-length="1mm"/>(<fo:inline font-weight="bold"><xsl:value-of select="../montoCreditoEnPesosManoEscrita" /></fo:inline> pesos m/l) por valor recibido en Boleta de Garant�a N� <fo:inline font-weight="bold"><xsl:value-of select="../nroOperacion" /></fo:inline> a favor de _______________________________________________</fo:block>
                  </xsl:when>
              </xsl:choose>
              </fo:block>
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block font-family="Helvetica" line-height="5.8mm" font-size="11pt" text-align="left" > <fo:inline font-weight="bold">Destino de los recursos y control de su inversi�n.</fo:inline> Me obligo a destinar los recursos crediticios recibidos de la instituci�n a <fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-size="10pt" font-weight="bold">capital de trabajo</fo:inline><fo:leader leader-pattern="space" leader-length="1mm"/>, y adem�s a facilitar al acreedor el control de su inversi�n. El incumplimiento de una u otra obligaci�n facultar� a la instituci�n para hacer exigible anticipadamente la totalidad de lo adeudado, como si fuere de plazo vencido, sin perjuicio de la responsabilidad penal por la infracci�n, con arreglo al art�culo 4� del DL. 3.472 de 1980.</fo:block>
                             
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block> 
              <fo:block>
              <xsl:variable name="simboloMoneda" select="../simboloMoneda" />
                <xsl:choose>

                  <xsl:when test="$simboloMoneda = 'UF'">
                      <fo:block font-family="Helvetica" line-height="5.8mm" font-size="11pt" text-align="justify"><fo:inline font-weight="bold">Tasa de Inter�s</fo:inline> El capital adeudado devengar� a partir de esta fecha una tasa de inter�s del<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select='format-number(../tasaInteres, "###,####","decimal")'/></fo:inline>% anual vencido durante todo el plazo pactado.</fo:block>                     
                  </xsl:when>

                  <xsl:when test="$simboloMoneda = '$'">
                      <fo:block font-family="Helvetica" line-height="5.8mm" font-size="11pt" text-align="justify"><fo:inline font-weight="bold">Tasa de Inter�s</fo:inline> El capital adeudado devengar� a partir de esta fecha una tasa de inter�s del<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select='format-number(../tasaInteres, "###,####","decimal")'/></fo:inline>% mensual vencido durante todo el plazo pactado.</fo:block>
                  </xsl:when>
              </xsl:choose>
              </fo:block>
              
              <fo:block font-family="Helvetica" line-height="5.8mm" font-size="11pt" text-align="justify"><fo:inline font-weight="bold">Amortizaci�n del Capital</fo:inline> El capital adeudado se pagar� �ntegramente el d�a <fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="../fechaUltimoVctoDD" /></fo:inline><fo:leader leader-pattern="space" leader-length="1mm"/>de<fo:leader leader-pattern="space" leader-length="1mm"/>

              <xsl:variable name="mes" select="../fechaUltimoVctoMM" />
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

              <fo:leader leader-pattern="space" leader-length="1mm"/>de<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="../fechaUltimoVctoYYYY" /></fo:inline></fo:block>
              
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block font-family="Helvetica" line-height="5.8mm" font-size="11pt" text-align="justify"><fo:inline font-weight="bold">Intereses</fo:inline> Por su parte, los intereses se pagar�n en <fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="../cuota" /></fo:inline> cuotas trimestrales y sucesivas, la primera de ellas con vencimiento el d�a<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="../fechaPrimerVctoDD" /></fo:inline><fo:leader leader-pattern="space" leader-length="1mm"/>de<fo:leader leader-pattern="space" leader-length="1mm"/>

              <xsl:variable name="mes" select="../fechaPrimerVctoMM" />
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


              <fo:leader leader-pattern="space" leader-length="1mm"/>de<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="../fechaPrimerVctoYYYY" /></fo:inline><fo:leader leader-pattern="space" leader-length="1mm"/>y las restantes los d�as <fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="../diaVencimiento" /></fo:inline><fo:leader leader-pattern="space" leader-length="1mm"/>de los meses de <fo:leader leader-pattern="space" leader-length="1mm"/>
              <fo:inline font-weight="bold"><xsl:value-of select="../mes1" />,</fo:inline>
              <fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="../mes2" />,</fo:inline>
              <fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="../mes3" /></fo:inline><fo:leader leader-pattern="space" leader-length="1mm"/>
              y<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="../mes4" />,</fo:inline><fo:leader leader-pattern="space" leader-length="1mm"/>             
              hasta la ultima cuota que vencer� el d�a <fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="../fechaUltimoVctoInteresDD" /></fo:inline><fo:leader leader-pattern="space" leader-length="1mm"/>de<fo:leader leader-pattern="space" leader-length="1mm"/>

              <xsl:variable name="mes" select="../fechaUltimoVctoInteresMM" />
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
              de <fo:inline font-weight="bold"><xsl:value-of select="../fechaUltimoVctoInteresYYYY" />.<fo:leader leader-pattern="space" leader-length="1mm"/></fo:inline>En todo caso abonar� una comisi�n m�nima de <fo:inline font-weight="bold"><xsl:value-of select="../porComisionFogape"/></fo:inline> % del valor de la Boleta, comisi�n que no podr� ser inferior a $______________________(_________________________________________________________).</fo:block>
              
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block font-family="Helvetica" line-height="5.8mm" font-size="11pt" text-align="justify"  ><fo:inline font-weight="bold">Pr�rroga de plazo por d�a inh�bil.</fo:inline> Las cuotas  de  amortizaci�n de capital e intereses se  pagar�n a su vencimiento, siempre que �ste corresponda a un d�a h�bil  bancario.  En  caso  contrario,  se  pagar�n  el  d�a  h�bil  bancario siguiente.</fo:block>
              
              <fo:block>
              <xsl:variable name="simboloMoneda" select="../simboloMoneda" />
                <xsl:choose>

                  <xsl:when test="$simboloMoneda = 'UF'">
                    <fo:block font-family="Helvetica" line-height="5.8mm" font-size="11pt" text-align="justify"  ><fo:inline font-weight="bold">Equivalencia.</fo:inline>  Las sumas adeudas,  tanto  en  lo referente  a  capital como a intereses, se calcular�n por su equivalente en moneda legal chilena al d�a de pago efectivo.</fo:block>
                  </xsl:when>
              </xsl:choose>
              </fo:block>              
                            
              <fo:block font-family="Helvetica" line-height="5.8mm" font-size="11pt" text-align="justify"  ><fo:inline font-weight="bold">Prepagos.</fo:inline> Si el monto  de  capital  inicial supera el equivalente a UF 5.000, todo pago anticipado, sea total o parcial, ser� convenido libremente entre el suscriptor y el Banco.  A  falta de acuerdo, el suscriptor podr� en todo caso anticipar  el pago, total o parcialmente, y en  este �ltimo caso, siempre que el importe  a pagar sea igual o superior al 20 % del capital de la obligaci�n adeudada,  pagando adem�s los intereses estipulados devengados y no pagados a la fecha  del prepago, calculados  sobre el saldo insoluto, m�s los intereses estipulados en este instrumento,  calculados sobre el capital prepagado desde la fecha  del prepago hasta  el vencimiento del plazo pactado. Si el monto de capital inicial  no supera  el equivalente a UF 5.000, al  capital  prepagado deber�n sum�rsele  los intereses  calculados hasta la  fecha del prepago y la comisi�n  de  prepago  m�xima  que  el art�culo  10 de  la Ley 18.010 permite pactar.</fo:block>
              
              <fo:block font-family="Helvetica" line-height="5.8mm" font-size="11pt" text-align="justify"  ><fo:inline font-weight="bold">Intereses Moratorios</fo:inline>, En caso de retardo o mora en el cumplimiento de esta obligaci�n, �sta devengar� desde la fecha del retardo y a favor del acreedor, el inter�s m�ximo convencional que rija durante la mora.</fo:block>              
              
              <fo:block font-family="Helvetica" line-height="5.8mm" font-size="11pt" text-align="justify"  ><fo:inline font-weight="bold">Exigibilidad anticipada.</fo:inline> El no pago oportuno de una cualquiera de las cuotas de capital  y/o de inter�s comprendidos en esta obligaci�n, dar� derecho al acreedor a hacer exigible de inmediato y anticipadamente el monto total del saldo insoluto adeudado a esa fecha, el que desde esa misma fecha se considerar� de plazo vencido y devengar� en favor del acreedor o de quien sus derechos represente, el inter�s m�ximo convencional. Se deja expresamente establecido que el ejercicio de este derecho constituye una sanci�n al suscriptor por el no pago de la deuda e importa una mera facultad establecida en beneficio exclusivo del acreedor, que no altera en caso alguno la fecha de vencimiento del pagar� originalmente pactada, ni a la exigibilidad de las acciones cambiarias y ejecutivas derivadas de �ste. El Banco podr� hacer exigible de inmediato el monto total adeudado,</fo:block>
              
              <fo:block font-family="Helvetica" line-height="4.5mm" font-size="11pt" text-align="center" >1 de 3</fo:block>
              </fo:flow>
          </xsl:when>
          <!--   AQUI TERMINA EL TEMPLATE   doccc06a  -->          
          
          <!--   AQUI COMIENZA EL TEMPLATE   doccc06b  -->
          <xsl:when test="template = 'doccc06b'">
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
                                        <xsl:value-of select="../logoBciSomosDiferentes"/>
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
              <fo:table border-collapse="collapse" font-family="Helvetica" font-size="11pt" text-align="left">
                  <fo:table-column column-width="50%"/>
                  <fo:table-column column-width="50%"/>
                  <fo:table-body>
                      <fo:table-row>
                          <fo:table-cell > _
                              <fo:block font-family="Helvetica" line-height="4.5mm" font-size="11pt" text-align="left" >N� de Operaci�n :<fo:inline font-weight="bold"><xsl:value-of select="../nroOperacion" /></fo:inline></fo:block>
                          </fo:table-cell>
                      </fo:table-row>
                  </fo:table-body>
              </fo:table>
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block font-family="Helvetica" line-height="5.8mm" font-size="11pt" text-align="justify"  > expirando todos los plazos pendientes por el s�lo hecho de constituirse en mora o de hab�rsele protestado al deudor o al aval, por falta de pago, cualquier documento, pagar�, letra de cambio o cheque, aceptado, suscrito, girado o avalado por �l. Se  deja expresamente establecido que corresponder� al deudor acreditar el pago de las cuotas en que se divide el presente instrumento, en caso de cobro judicial. Sin embargo, en operaciones de cr�dito de dinero en cuotas, cuyo capital inicial sea igual o inferior a 200 unidades de fomento no podr� hacerse exigible la obligaci�n en forma anticipada, si no una vez cumplidos 60 d�as corridos desde que el suscriptor incurra en mora o simple retardo en el pago.</fo:block>
              
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block font-family="Helvetica" line-height="5.8mm" font-size="11pt" text-align="justify"  ><fo:inline font-weight="bold">Garant�a y comisi�n Fogape.</fo:inline> El Fondo de Garant�a para Peque�os Empresarios cauciona este cr�dito con una tasa de garant�a de <fo:inline font-weight="bold"><xsl:value-of select="../porGarantiaFogape"/></fo:inline> % del capital adeudado. La comisi�n legal del Fondo se devengar� desde la fecha de inicio de la garant�a y hasta que el deudor cumpla �ntegramente su obligaci�n o el Fondo pague la garant�a, seg�n lo que ocurra primero. Dicha comisi�n es del <fo:inline font-weight="bold"><xsl:value-of select="../porComisionFogape"/></fo:inline> % anual sobre el capital garantizado.</fo:block>
              
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block font-family="Helvetica" line-height="5.8mm" font-size="11pt" text-align="justify"  ><fo:inline font-weight="bold">Pago de la comisi�n e incumplimiento.</fo:inline> La comisi�n legal se pagar� anticipadamente. No obstante, una vez llenado este instrumento, pagar� dicha comisi�n a la Instituci�n acreedora con cada vencimiento de capital e intereses o de s�lo intereses, seg�n corresponda. Trat�ndose de vencimientos sucesivos, en caso de no pago oportuno de la comisi�n en favor del Fondo, pagar� adem�s un <fo:inline font-weight="bold"><xsl:value-of select="../porComisionFogape"/></fo:inline> % anual sobre el capital garantizado de la respectiva cuota vencida, por el per�odo comprendido entre el incumplimiento y el pago efectivo de lo adeudado.  </fo:block>
              
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block font-family="Helvetica" line-height="5.8mm" font-size="11pt" text-align="justify"  ><fo:inline font-weight="bold">Indivisibilidad  y solidaridad.</fo:inline> Las obligaciones  que emanen de  este pagar� ser�n  solidarias para el suscriptor, avalista(s) y dem�s obligados al pago y ser�n  indivisibles  para  sus herederos.  Adem�s,  el suscriptor  pagar� los gastos, impuestos y costas personales y procesales que correspondan.</fo:block>
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block font-family="Helvetica" line-height="5.8mm" font-size="11pt" text-align="justify"  ><fo:inline font-weight="bold">Mandato para pr�rrogas.</fo:inline> El suscriptor faculta al Banco de Cr�dito e Inversiones para que en su nombre y representaci�n otorgue, previa autorizaci�n expresa de �ste, una o m�s pr�rrogas que establezcan nuevas condiciones, tasas de inter�s y fechas de vencimiento.</fo:block>
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>                          
              <fo:block font-family="Helvetica" line-height="5.8mm" font-size="11pt" text-align="justify"  ><fo:inline font-weight="bold">Domicilio y competencia.</fo:inline> Para todos los efectos legales, judiciales o extrajudiciales derivados de este pagar�, prorrogo expresamente la competencia para los Tribunales de Justicia con asiento en la comuna y ciudad de <fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-size="10pt" font-weight="bold">________________________</fo:inline><fo:leader leader-pattern="space" leader-length="1mm"/>, pr�rroga que ser� obligatoria tanto para el suscriptor como para sus avales, endosantes u obligados por garant�a. Sin perjuicio de esta pr�rroga de competencia, declaro, s�lo para efectos del emplazamiento judicial, que mi domicilio y residencia son los indicados en el cuerpo  de  este  t�tulo, comprometi�ndome desde luego a dar pronto aviso por escrito, mediante carta certificada al Banco, en el evento que realice cualquier cambio de domicilio en el futuro.</fo:block>
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block font-family="Helvetica" line-height="5.8mm" font-size="11pt" text-align="justify"  ><fo:inline font-weight="bold">Impuesto de timbres y estampillas.</fo:inline> El impuesto de timbres y estampillas que grava este documento se paga por ingresos mensuales de dinero en Tesorer�a, seg�n Decreto Ley N� 3475.</fo:block>

              <fo:block font-family="Helvetica" line-height="4.5mm" font-size="11pt" text-align="left" >                
              En<fo:leader leader-pattern="space" leader-length="25mm"/>
              <fo:inline font-weight="bold"><xsl:value-of select="../ciudadContrato" /></fo:inline>,
              <fo:leader leader-pattern="space" leader-length="1mm"/>a<fo:leader leader-pattern="space" leader-length="1mm"/>
              <fo:inline font-weight="bold"><xsl:value-of select="../dia" /></fo:inline>

              <fo:leader leader-pattern="space" leader-length="1mm"/>de<fo:leader leader-pattern="space" leader-length="1mm"/>
              <xsl:variable name="mes" select="../mes" />
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
              <fo:inline font-weight="bold"><xsl:value-of select="../anio" /></fo:inline>
              </fo:block>
             <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
             <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block font-family="Helvetica" line-height="4.5mm" font-size="11pt" text-align="center" ><fo:leader leader-length="6cm" leader-pattern="rule" rule-style="solid" rule-thickness="0.4mm" color="black"/></fo:block>
             
             <fo:block font-family="Helvetica" line-height="4.5mm" font-size="11pt" text-align="center" >Firma del Suscriptor</fo:block>   
             <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>

           <!-- AQUI COMIENZA LOS DATOS  DEL SUSCRIPTOR NOMBRE, RAZON SOCIAL Y DOMICILIO -->
             <xsl:call-template name="DatosRazonSociasl"/>
            <!-- AQUI TERMINA LOS DATOS  DEL SUSCRIPTOR NOMBRE, RAZON SOCIAL Y DOMICILIO  -->
            
             <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
             <fo:block font-family="Helvetica" line-height="4.5mm" font-size="11pt" text-align="center" >2 de 3</fo:block>
                    </fo:flow>
          </xsl:when>
          <!--   AQUI TERMINA EL TEMPLATE   doccc06b  -->


          
          <!--   AQUI COMIENZA EL TEMPLATE   AVALESCC  --> 
          <xsl:when test="template = 'AVALESCC'">
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
                                        <xsl:value-of select="../logoBciSomosDiferentes"/>
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
                
              <fo:block font-family="Helvetica" line-height="4.5mm" font-size="11pt" text-align="left" >N� Operaci�n<fo:leader leader-pattern="space" leader-length="17.2mm"/>:<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="../nroOperacion" /></fo:inline></fo:block>
              <fo:block font-family="Helvetica" line-height="4.5mm" font-size="11pt" text-align="left" >Fecha de suscripci�n<fo:leader leader-pattern="space" leader-length="3.7mm"/>:<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="substring(../fechaSuscripcion,0,4)" /></fo:inline>
              <xsl:variable name="mes" select="substring(../fechaSuscripcion,4,2)" />
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
              <fo:inline font-weight="bold"><xsl:value-of select="substring(../fechaSuscripcion,6,5)" /></fo:inline>
              </fo:block>


              <fo:block font-family="Helvetica" line-height="4.5mm" font-size="11pt" text-align="left" >Monto<fo:leader leader-pattern="space" leader-length="29.6mm"/>:<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="../simboloMoneda" /></fo:inline><fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold">

              <xsl:variable name="simboloMoneda" select="../simboloMoneda" />
                <xsl:choose>

                  <xsl:when test="$simboloMoneda = 'UF'">
                     <xsl:value-of select='format-number(../montoCredito, "###.###.##0,0000","decimal")' />
                  </xsl:when>


                  <xsl:when test="$simboloMoneda = '$'">
                    <xsl:value-of select="../montoCredito"/>
                  </xsl:when>

              </xsl:choose>

              </fo:inline></fo:block>
              <fo:block font-family="Helvetica" line-height="4.5mm" font-size="11pt" text-align="left" >Deudor<fo:leader leader-pattern="space" leader-length="27.6mm"/>:<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="../nombreCompletoCliente" /></fo:inline></fo:block>
              <fo:block font-family="Helvetica" line-height="4.5mm" font-size="11pt" text-align="left" >RUT<fo:leader leader-pattern="space" leader-length="32.5mm"/>:<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select='format-number(../rutCliente, "###.###.##0","rut")' /></fo:inline>-<fo:inline font-weight="bold"><xsl:value-of select="../dvCliente" /></fo:inline></fo:block>
              <fo:block font-family="Helvetica" line-height="4.5mm" font-size="11pt" text-align="center" >POR AVALES </fo:block>
              <fo:block font-family="Helvetica" line-height="5.8mm" font-size="11pt" text-align="justify"  >En nuestra calidad de avalistas del presente instrumento, nos constituimos en codeudores   solidarios   del  suscriptor,  y  aceptamos,  desde  luego,  las eventuales pr�rrogas o esperas que, con o sin protestos y con o  sin  abonos, pudieren  convenirse  entre  el  suscriptor y el Banco de Cr�dito e Inversiones o quien sus derechos represente.  Convenimos  asimismo,  en  que  la  falta  de protesto  en  tiempo  y  forma  no  perjudicar�  nuestra  calidad de avales y codeudores solidarios del suscriptor del presente documento. </fo:block>
              <fo:block font-family="Helvetica" line-height="5.8mm" font-size="11pt" text-align="justify"  >Por  otra  parte,  en  nuestra  condici�n  de c�nyuges de los avalistas que a continuaci�n se indican, y para los efectos  de  lo  dispuesto en el art�culo 1.749 del C�digo Civil, en los casos que corresponda, y con el  objeto de que queden  obligados  los  bienes  sociales  de  la  sociedad conyugal, autorizo expresamente a mi c�nyuge, debidamente individualizado,  para  que act�e como aval y codeudor solidario de<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="../nombreCompletoCliente" /></fo:inline>,<fo:leader leader-pattern="space" leader-length="1mm"/>RUT <fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select='format-number(../rutCliente, "###.###.##0","rut")' />-<xsl:value-of select="../dvCliente" /></fo:inline>,<fo:leader leader-pattern="space" leader-length="1mm"/>por la obligaci�n de que da cuenta este instrumento. La presente autorizaci�n se  confiere  en los mismos t�rminos en que mi c�nyuge presta su aval; por lo tanto, incluye  las eventuales pr�rrogas, renegociaciones, reprogramaciones y repactaciones de cualquier  naturaleza, que con o sin protesto y esperas, con o sin abonos, pudieren convenirse entre  el  suscriptor  y  el Banco de Cr�dito e Inversiones o quien sus derechos represente.</fo:block>
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
                                  <fo:block font-family="Helvetica" font-size="11pt"   text-align="left"  line-height="4.5mm">NOMBRE O RAZON SOCIAL</fo:block>
                          </fo:table-cell>

                          <fo:table-cell >
                                      <fo:block font-family="Helvetica" font-size="11pt"   text-align="left" margin-left="1mm" line-height="4.5mm"><fo:inline font-weight="bold"><xsl:value-of select="../nombreCompletoAval" /></fo:inline></fo:block>
                          </fo:table-cell>

                          <fo:table-cell >
                                      <fo:block font-family="Helvetica" font-size="11pt"   text-align="left" margin-left="1mm" line-height="4.5mm">RUT</fo:block>
                          </fo:table-cell>

                          <fo:table-cell >
                                      <fo:block font-family="Helvetica" font-size="11pt"   text-align="left" margin-left="1mm" line-height="4.5mm">
                                      	<xsl:variable name="rut" select="../rutAval" />
                                      	<xsl:choose>
                                      		 <xsl:when test="string-length($rut) &gt; 0">
                                      	      <fo:inline font-weight="bold"><xsl:value-of select='format-number(../rutAval, "###.###.##0","rut")' />-<xsl:value-of select="../dvAval" /></fo:inline>
                                      	   </xsl:when>
                                      	</xsl:choose>
                                      </fo:block>
                          </fo:table-cell>
                          
                          <fo:table-cell >
                                      <fo:block font-family="Helvetica" font-size="11pt"   text-align="left" margin-left="1mm" line-height="4.5mm"><fo:inline font-weight="bold"></fo:inline></fo:block>
                          </fo:table-cell>                          

                    </fo:table-row>
              </fo:table-body>
              </fo:table>
            <!-- AQUI TERMINA LOS DATOS  DEL SUSCRIPTOR NOMBRE O RAZON SOCIAL -->

            <!-- AQUI COMIENZA LOS DATOS  DEL SUSCRIPTOR NOMBRE DEL REPRESENTANTE LEGAL 1 -->
              <fo:table border-collapse="collapse" text-align="left">
                <fo:table-column column-width="58mm" />
                <fo:table-column column-width="97mm"  />
                <fo:table-column column-width="10mm"  />
                <fo:table-column column-width="30mm"  />
                <fo:table-body>
                    <fo:table-row>

                          <fo:table-cell >
                                  <fo:block font-family="Helvetica" font-size="11pt"   text-align="left"  line-height="4.5mm">REPRESENTANTE LEGAL</fo:block>
                          </fo:table-cell>
                          
                          <fo:table-cell >
                          <xsl:variable name="nombreApoderado1" select="../nombreApoderado1" />
					                <xsl:choose>
					                  <xsl:when test="$nombreApoderado1 != ''">
					                     <fo:block font-family="Helvetica" font-size="11pt"   text-align="left" margin-left="1mm" line-height="4.5mm"><fo:inline font-weight="bold"><xsl:value-of select="../nombreApoderado1" /></fo:inline></fo:block>
					                  </xsl:when>
					
					                  <xsl:when test="$nombreApoderado1 = ''">
					                     <fo:block font-family="Helvetica" font-size="11pt"   text-align="left" margin-left="1mm" line-height="4.5mm"><fo:inline font-weight="bold"></fo:inline></fo:block>
					                  </xsl:when>
					                </xsl:choose>
                          </fo:table-cell>

                          <fo:table-cell >
                                  <fo:block font-family="Helvetica" font-size="11pt"   text-align="left" margin-left="1mm" line-height="4.5mm">RUT</fo:block>
                          </fo:table-cell>
                          
                          <fo:table-cell >
                          <xsl:variable name="rutApoderado1" select="../rutApoderado1" />
					                <xsl:choose>
					                  <xsl:when test="$rutApoderado1 != ''">
					                     <fo:block font-family="Helvetica" font-size="11pt"   text-align="left" margin-left="1mm" line-height="4.5mm"><fo:inline font-weight="bold"><xsl:value-of select="../rutApoderado1" /></fo:inline></fo:block>
					                  </xsl:when>
					
					                  <xsl:when test="$rutApoderado1 = ''">
					                     <fo:block font-family="Helvetica" font-size="11pt"   text-align="left" margin-left="1mm" line-height="4.5mm"><fo:inline font-weight="bold"></fo:inline></fo:block>
					                  </xsl:when>
					                </xsl:choose>
                          </fo:table-cell>                          

                    </fo:table-row>
              </fo:table-body>
              </fo:table>
            <!-- AQUI TERMINAN LOS DATOS  DEL SUSCRIPTOR NOMBRE DEL REPRESENTANTE LEGAL 1 -->

            <!-- AQUI COMIENZA LOS DATOS  DEL SUSCRIPTOR NOMBRE DEL REPRESENTANTE LEGAL 2 -->
              <fo:table border-collapse="collapse" text-align="left">
                <fo:table-column column-width="58mm" />
                <fo:table-column column-width="97mm"  />
                <fo:table-column column-width="10mm"  />
                <fo:table-column column-width="30mm"  />
                <fo:table-body>
                    <fo:table-row>

                          <fo:table-cell >
                                  <fo:block font-family="Helvetica" font-size="11pt"   text-align="left"  line-height="4.5mm">REPRESENTANTE LEGAL</fo:block>
                          </fo:table-cell>
                          
                          <fo:table-cell >
                          <xsl:variable name="nombreApoderado2" select="../nombreApoderado2" />
					                <xsl:choose>
					                  <xsl:when test="$nombreApoderado2 != ''">
					                     <fo:block font-family="Helvetica" font-size="11pt"   text-align="left" margin-left="1mm" line-height="4.5mm"><fo:inline font-weight="bold"><xsl:value-of select="../nombreApoderado2" /></fo:inline></fo:block>
					                  </xsl:when>
					
					                  <xsl:when test="$nombreApoderado2 = ''">
					                     <fo:block font-family="Helvetica" font-size="11pt"   text-align="left" margin-left="1mm" line-height="4.5mm"><fo:inline font-weight="bold"></fo:inline></fo:block>
					                  </xsl:when>
					                </xsl:choose>
                          </fo:table-cell>

                          <fo:table-cell >
                                  <fo:block font-family="Helvetica" font-size="11pt"   text-align="left" margin-left="1mm" line-height="4.5mm">RUT</fo:block>
                          </fo:table-cell>
                          
                          <fo:table-cell >
                          <xsl:variable name="rutApoderado2" select="../rutApoderado2" />
					                <xsl:choose>
					                  <xsl:when test="$rutApoderado2 != ''">
					                     <fo:block font-family="Helvetica" font-size="11pt"   text-align="left" margin-left="1mm" line-height="4.5mm"><fo:inline font-weight="bold"><xsl:value-of select="../rutApoderado2" /></fo:inline></fo:block>
					                  </xsl:when>
					
					                  <xsl:when test="$rutApoderado2 = ''">
					                     <fo:block font-family="Helvetica" font-size="11pt"   text-align="left" margin-left="1mm" line-height="4.5mm"><fo:inline font-weight="bold"></fo:inline></fo:block>
					                  </xsl:when>
					                </xsl:choose>
                          </fo:table-cell>                          


                    </fo:table-row>
              </fo:table-body>
              </fo:table>
            <!-- AQUI TERMINAN LOS DATOS  DEL SUSCRIPTOR NOMBRE DEL REPRESENTANTE LEGAL 2 -->

            <!-- AQUI COMIENZA LOS DATOS  DEL SUSCRIPTOR NOMBRE DEL REPRESENTANTE LEGAL 3 -->
              <fo:table border-collapse="collapse" text-align="left">
                <fo:table-column column-width="58mm" />
                <fo:table-column column-width="97mm"  />
                <fo:table-column column-width="10mm"  />
                <fo:table-column column-width="30mm"  />
                <fo:table-body>
                    <fo:table-row>

                          <fo:table-cell >
                                  <fo:block font-family="Helvetica" font-size="11pt"   text-align="left"  line-height="4.5mm">REPRESENTANTE LEGAL</fo:block>
                          </fo:table-cell>
                          
                          <fo:table-cell >
                          <xsl:variable name="nombreApoderado3" select="../nombreApoderado3" />
					                <xsl:choose>
					                  <xsl:when test="$nombreApoderado3 != ''">
					                     <fo:block font-family="Helvetica" font-size="11pt"   text-align="left" margin-left="1mm" line-height="4.5mm"><fo:inline font-weight="bold"><xsl:value-of select="../nombreApoderado3" /></fo:inline></fo:block>
					                  </xsl:when>
					
					                  <xsl:when test="$nombreApoderado3 = ''">
					                     <fo:block font-family="Helvetica" font-size="11pt"   text-align="left" margin-left="1mm" line-height="4.5mm"><fo:inline font-weight="bold"></fo:inline></fo:block>
					                  </xsl:when>
					                </xsl:choose>
                          </fo:table-cell>

                          <fo:table-cell >
                                  <fo:block font-family="Helvetica" font-size="11pt"   text-align="left" margin-left="1mm" line-height="4.5mm">RUT</fo:block>
                          </fo:table-cell>
                          
                          <fo:table-cell >
                          <xsl:variable name="rutApoderado3" select="../rutApoderado3" />
					                <xsl:choose>
					                  <xsl:when test="$rutApoderado3 != ''">
					                     <fo:block font-family="Helvetica" font-size="11pt"   text-align="left" margin-left="1mm" line-height="4.5mm"><fo:inline font-weight="bold"><xsl:value-of select="../rutApoderado3" /></fo:inline></fo:block>
					                  </xsl:when>
					
					                  <xsl:when test="$rutApoderado3 = ''">
					                     <fo:block font-family="Helvetica" font-size="11pt"   text-align="left" margin-left="1mm" line-height="4.5mm"><fo:inline font-weight="bold"></fo:inline></fo:block>
					                  </xsl:when>
					                </xsl:choose>
                          </fo:table-cell>                          


                    </fo:table-row>
              </fo:table-body>
              </fo:table>
            <!-- AQUI TERMINAN LOS DATOS  DEL SUSCRIPTOR NOMBRE DEL REPRESENTANTE LEGAL 3 -->

            <!-- AQUI COMIENZA LOS DATOS  DEL SUSCRIPTOR NOMBRE DEL REPRESENTANTE LEGAL 4 -->
              <fo:table border-collapse="collapse" text-align="left">
                <fo:table-column column-width="58mm" />
                <fo:table-column column-width="97mm"  />

                <fo:table-column column-width="10mm"  />
                <fo:table-column column-width="30mm"  />
                <fo:table-body>
                    <fo:table-row>

                          <fo:table-cell >
                                  <fo:block font-family="Helvetica" font-size="11pt"   text-align="left"  line-height="4.5mm">REPRESENTANTE LEGAL</fo:block>
                          </fo:table-cell>
                          
                          <fo:table-cell >
                          <xsl:variable name="nombreApoderado4" select="../nombreApoderado4" />
					                <xsl:choose>
					                  <xsl:when test="$nombreApoderado4 != ''">
					                     <fo:block font-family="Helvetica" font-size="11pt"   text-align="left" margin-left="1mm" line-height="4.5mm"><fo:inline font-weight="bold"><xsl:value-of select="../nombreApoderado4" /></fo:inline></fo:block>
					                  </xsl:when>
					
					                  <xsl:when test="$nombreApoderado4 = ''">
					                     <fo:block font-family="Helvetica" font-size="11pt"   text-align="left" margin-left="1mm" line-height="4.5mm"><fo:inline font-weight="bold"></fo:inline></fo:block>
					                  </xsl:when>
					                </xsl:choose>
                          </fo:table-cell>

                          <fo:table-cell >
                                  <fo:block font-family="Helvetica" font-size="11pt"   text-align="left" margin-left="1mm" line-height="4.5mm">RUT</fo:block>
                          </fo:table-cell>
                          
                          <fo:table-cell >
                          <xsl:variable name="rutApoderado4" select="../rutApoderado4" />
					                <xsl:choose>
					                  <xsl:when test="$rutApoderado4 != ''">
					                     <fo:block font-family="Helvetica" font-size="11pt"   text-align="left" margin-left="1mm" line-height="4.5mm"><fo:inline font-weight="bold"><xsl:value-of select="../rutApoderado4" /></fo:inline></fo:block>
					                  </xsl:when>
					
					                  <xsl:when test="$rutApoderado4 = ''">
					                     <fo:block font-family="Helvetica" font-size="11pt"   text-align="left" margin-left="1mm" line-height="4.5mm"><fo:inline font-weight="bold"></fo:inline></fo:block>
					                  </xsl:when>
					                </xsl:choose>
                          </fo:table-cell>                          

                    </fo:table-row>
              </fo:table-body>
              </fo:table>
            <!-- AQUI TERMINAN LOS DATOS  DEL SUSCRIPTOR NOMBRE DEL REPRESENTANTE LEGAL 4 -->
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
                                  <fo:block font-family="Helvetica" font-size="11pt"   text-align="left"  line-height="4.5mm">DOMICILIO</fo:block>
                          </fo:table-cell>

                          <fo:table-cell >
                                     <fo:block font-family="Helvetica" font-size="11pt"   text-align="left" margin-left="1mm" line-height="4.5mm"><fo:inline font-weight="bold"><xsl:value-of select="../direccionAval" /></fo:inline></fo:block>
                          </fo:table-cell>

                          <fo:table-cell >
                                  <fo:block font-family="Helvetica" font-size="11pt"   text-align="left" margin-left="1mm" line-height="4.5mm">COMUNA</fo:block>
                          </fo:table-cell>

                          <fo:table-cell >
                                     <fo:block font-family="Helvetica" font-size="11pt"   text-align="left" margin-left="1mm" line-height="4.5mm"><fo:inline font-weight="bold"><xsl:value-of select="../comunaAval" /></fo:inline></fo:block>
                          </fo:table-cell>

                          <fo:table-cell >
                                  <fo:block font-family="Helvetica" font-size="11pt"   text-align="left" margin-left="1mm" line-height="4.5mm">CIUDAD</fo:block>
                          </fo:table-cell>

                          <fo:table-cell >
                                      <fo:block font-family="Helvetica" font-size="11pt"   text-align="left" margin-left="1mm" line-height="4.5mm"><fo:inline font-weight="bold"><!--xsl:value-of select="../ciudadAval" /--></fo:inline></fo:block>
                          </fo:table-cell>

                    </fo:table-row>
              </fo:table-body>
              </fo:table>

              <fo:block font-family="Helvetica" line-height="4.5mm" font-size="11pt" text-align="left" >
              En<fo:leader leader-pattern="space" leader-length="25mm"/><fo:leader leader-pattern="space" leader-length="1mm"/>
              <fo:inline font-weight="bold"><xsl:value-of select="../ciudadContrato" /></fo:inline>,
              <fo:leader leader-pattern="space" leader-length="1mm"/>a<fo:leader leader-pattern="space" leader-length="1mm"/>
              <fo:inline font-weight="bold"><xsl:value-of select="../dia" /></fo:inline>

              <fo:leader leader-pattern="space" leader-length="1mm"/>de<fo:leader leader-pattern="space" leader-length="1mm"/>
              <xsl:variable name="mes" select="../mes" />
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
              <fo:inline font-weight="bold"><xsl:value-of select="../anio" /></fo:inline>
              </fo:block>

              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:table border-collapse="collapse" font-size="14pt" font-family="Helvetica">
                  <fo:table-column column-width="50%"/>
                  <fo:table-column column-width="50%"/>
                  <fo:table-body>
                      <fo:table-row>
                          <fo:table-cell > _
                              <fo:block font-family="Helvetica" line-height="4.5mm" font-size="11pt" text-align="center" ><fo:leader leader-length="4cm" leader-pattern="rule" rule-style="solid" rule-thickness="0.4mm" color="black"/></fo:block>
                          </fo:table-cell>
                          <fo:table-cell >
                              <fo:block font-family="Helvetica" line-height="4.5mm" font-size="11pt" text-align="center" ><fo:leader leader-length="5.5cm" leader-pattern="rule" rule-style="solid" rule-thickness="0.4mm" color="black"/></fo:block>
                          </fo:table-cell>
                      </fo:table-row>
                      <fo:table-row>
                          <fo:table-cell > _
                              <fo:block font-family="Helvetica" line-height="4.5mm" font-size="11pt" text-align="center" >Firma del Avalista</fo:block>
                          </fo:table-cell>
                          <fo:table-cell >
                              <fo:block font-family="Helvetica" line-height="4.5mm" font-size="11pt" text-align="center" >Firma C�nyuge del Aval</fo:block>
                          </fo:table-cell>
                      </fo:table-row>
                  </fo:table-body>
              </fo:table>

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
                                  <fo:block font-family="Helvetica" font-size="11pt"   text-align="left"  line-height="4.5mm">NOMBRE O RAZON SOCIAL</fo:block>
                          </fo:table-cell>

                          <fo:table-cell >
                                  
                                  <fo:block font-family="Helvetica" font-size="11pt"   text-align="left" margin-left="1mm" line-height="4.5mm"><fo:inline font-weight="bold">
                                      <xsl:value-of select="../nombresConyugeAval" />
                                  </fo:inline></fo:block>
                          </fo:table-cell>

                          <fo:table-cell >
                                  <fo:block font-family="Helvetica" font-size="11pt"   text-align="left" margin-left="1mm" line-height="4.5mm">RUT</fo:block>
                          </fo:table-cell>

                          <fo:table-cell >
                                      <fo:block font-family="Helvetica" font-size="11pt"   text-align="left" margin-left="1mm" line-height="4.5mm">
                                      	<xsl:variable name="rut" select="../rutConyugeAval" />
                                      	<xsl:choose>
                                      		 <xsl:when test="string-length($rut) &gt; 0">
                                      	      <fo:inline font-weight="bold"><xsl:value-of select='format-number(../rutConyugeAval, "###.###.##0","rut")' />-<xsl:value-of select="../dvConyugeAval" /></fo:inline>
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
                                  <fo:block font-family="Helvetica" font-size="11pt"   text-align="left"  line-height="4.5mm">DOMICILIO</fo:block>
                          </fo:table-cell>

                          <fo:table-cell >
                                        <fo:block font-family="Helvetica" font-size="11pt"   text-align="left" margin-left="1mm" line-height="4.5mm"><fo:inline font-weight="bold"><xsl:value-of select="../direccionConyugeAval" /></fo:inline></fo:block>
                          </fo:table-cell>

                          <fo:table-cell >
                                  <fo:block font-family="Helvetica" font-size="11pt"   text-align="left" margin-left="1mm" line-height="4.5mm">COMUNA</fo:block>
                          </fo:table-cell>

                          <fo:table-cell >
                                        <fo:block font-family="Helvetica" font-size="11pt"   text-align="left" margin-left="1mm" line-height="4.5mm"><fo:inline font-weight="bold"><xsl:value-of select="../comunaConyugeAval" /></fo:inline></fo:block>
                          </fo:table-cell>

                          <fo:table-cell >
                                  <fo:block font-family="Helvetica" font-size="11pt"   text-align="left" margin-left="1mm" line-height="4.5mm">CIUDAD</fo:block>
                          </fo:table-cell>

                          <fo:table-cell >
                                  <fo:block font-family="Helvetica" font-size="11pt"   text-align="left" margin-left="1mm" line-height="4.5mm"><fo:inline font-weight="bold"><!--xsl:value-of select="../ciudadConyugeAval" /--></fo:inline></fo:block>
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
                                  <xsl:variable name="estadoCivilAval"  select="../codEstadoCivilAval" />
                                  <xsl:variable name="tipoCliente"      select="../DireccionAvalBci/tipoCliente" />

                          <fo:table-cell >
                                  <fo:block font-family="Helvetica" font-size="11pt"   text-align="left" line-height="4.5mm">NOMBRE CONYUGE</fo:block>
                          </fo:table-cell>

                          <fo:table-cell >
                                    <xsl:if test="$estadoCivilAval = 'CAS'">
                                      <xsl:if test="$tipoCliente = 'P'">
                                        <xsl:if test="$relacionConyugal = 1" >
                                          <fo:block font-family="Helvetica" font-size="11pt"   text-align="left" margin-left="1mm" line-height="4.5mm"><fo:inline font-weight="bold"><xsl:value-of select="../nombresConyugeAval" /></fo:inline></fo:block>
                                        </xsl:if>
                                      </xsl:if>
                                    </xsl:if>
                          </fo:table-cell>

                          <fo:table-cell >
                                  <fo:block font-family="Helvetica" font-size="11pt"   text-align="left" margin-left="1mm" line-height="4.5mm">RUT</fo:block>
                          </fo:table-cell>

                          <fo:table-cell >
                                  <fo:block font-family="Helvetica" font-size="11pt"   text-align="left" margin-left="1mm" line-height="4.5mm">
                                  <xsl:variable name="tipoCliente" select="../DireccionAvalBci/tipoCliente" />

                                    <xsl:if test="$estadoCivilAval = 'CAS'">
                                      <xsl:if test="$tipoCliente = 'P'">
                                        <xsl:if test="$relacionConyugal = 1">
                                            <xsl:variable name="rut" select="../rutConyugeAval" />
                                            <xsl:choose>
                                              <xsl:when test="string-length($rut) &gt; 0">
                                                   <fo:inline font-weight="bold"><xsl:value-of select='format-number(rutConyugeAval, "###.###.##0","rut")' />-<xsl:value-of select="../DvConyugeAval" /></fo:inline>
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
                                  <fo:block font-family="Helvetica" font-size="11pt"   text-align="left"  line-height="4.5mm">DOMICILIO</fo:block>
                          </fo:table-cell>

                          <fo:table-cell >
                                  <xsl:variable name="relacionConyugal" select="../DireccionAvalBci/tipoCliente" />
                                  <xsl:variable name="tipoCliente" select="../DireccionAvalBci/tipoCliente" />
                                  <xsl:variable name="estadoCivilAval"  select="../codEstadoCivilAval" />

                                  <xsl:if test="$estadoCivilAval = 'CAS'">
                                    <xsl:if test="$tipoCliente = 'P'">
                                      <xsl:if test="$relacionConyugal = 1">
                                          <fo:block font-family="Helvetica" font-size="11pt"   text-align="left" margin-left="1mm" line-height="4.5mm"><fo:inline font-weight="bold"><xsl:value-of select="../DireccionConyugeAvalBci/direccion" /></fo:inline></fo:block>
                                      </xsl:if>
                                    </xsl:if>
                                  </xsl:if>

                          </fo:table-cell>

                          <fo:table-cell >
                                  <fo:block font-family="Helvetica" font-size="11pt"   text-align="left" margin-left="1mm" line-height="4.5mm">COMUNA</fo:block>
                          </fo:table-cell>

                          <fo:table-cell >
                                  <xsl:variable name="relacionConyugal" select="../DireccionAvalBci/tipoCliente" />
                                  <xsl:variable name="tipoCliente" select="../DireccionAvalBci/tipoCliente" />
                                  <xsl:variable name="estadoCivilAval"  select="../codEstadoCivilAval" />
                                  <xsl:if test="$estadoCivilAval = 'CAS'">
                                    <xsl:if test="$tipoCliente = 'P'">
                                      <xsl:if test="$relacionConyugal = 1">
                                         <fo:block font-family="Helvetica" font-size="11pt"   text-align="left" margin-left="1mm" line-height="4.5mm"><fo:inline font-weight="bold"><xsl:value-of select="substring(../DireccionConyugeAvalBci/comuna,0,20)" /></fo:inline></fo:block>
                                      </xsl:if>
                                    </xsl:if>
                                  </xsl:if>
                          </fo:table-cell>

                          <fo:table-cell >
                                  <fo:block font-family="Helvetica" font-size="11pt"   text-align="left" margin-left="1mm" line-height="4.5mm">CIUDAD</fo:block>
                          </fo:table-cell>

                    </fo:table-row>
              </fo:table-body>
              </fo:table>

              <fo:block font-family="Helvetica" line-height="4.5mm" font-size="11pt" text-align="left" >
              En<fo:leader leader-pattern="space" leader-length="25mm"/><fo:leader leader-pattern="space" leader-length="1mm"/>
              <fo:inline font-weight="bold"><xsl:value-of select="../ciudadContrato" /></fo:inline>,
              <fo:leader leader-pattern="space" leader-length="1mm"/>a<fo:leader leader-pattern="space" leader-length="1mm"/>
              <fo:inline font-weight="bold"><xsl:value-of select="../dia" /></fo:inline>

              <fo:leader leader-pattern="space" leader-length="1mm"/>de<fo:leader leader-pattern="space" leader-length="1mm"/>
              <xsl:variable name="mes" select="../mes" />
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
              <fo:inline font-weight="bold"><xsl:value-of select="../anio" /></fo:inline>
              </fo:block>

              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:table border-collapse="collapse" font-size="14pt" font-family="Helvetica">
                  <fo:table-column column-width="50%"/>
                  <fo:table-column column-width="50%"/>
                  <fo:table-body>
                      <fo:table-row>
                          <fo:table-cell > _
                              <fo:block font-family="Helvetica" line-height="4.5mm" font-size="11pt" text-align="center" ><fo:leader leader-length="4cm" leader-pattern="rule" rule-style="solid" rule-thickness="0.4mm" color="black"/></fo:block>
                          </fo:table-cell>
                          <fo:table-cell >
                              <fo:block font-family="Helvetica" line-height="4.5mm" font-size="11pt" text-align="center" ><fo:leader leader-length="5.5cm" leader-pattern="rule" rule-style="solid" rule-thickness="0.4mm" color="black"/></fo:block>
                          </fo:table-cell>
                      </fo:table-row>
                      <fo:table-row>
                          <fo:table-cell > _
                              <fo:block font-family="Helvetica" line-height="4.5mm" font-size="11pt" text-align="center" >Firma del Avalista</fo:block>
                          </fo:table-cell>
                          <fo:table-cell >
                              <fo:block font-family="Helvetica" line-height="4.5mm" font-size="11pt" text-align="center" >Firma C�nyuge del Aval</fo:block>
                          </fo:table-cell>
                      </fo:table-row>
                  </fo:table-body>
              </fo:table>
              <!-- aval 2 -->
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block font-family="Helvetica" line-height="4.5mm" font-size="11pt" text-align="left" >Autorizo las firmas estampadas en este instrumento, como suscriptor:</fo:block>
              <fo:block font-family="Helvetica" line-height="4.5mm" font-size="11pt" text-align="left" >DON(A)<fo:leader leader-pattern="space" leader-length="1mm"/>:<fo:leader leader-length="11.8cm" leader-pattern="rule" rule-style="solid" rule-thickness="0.4mm" color="black"/><fo:leader leader-pattern="space" leader-length="1mm"/>RUT<fo:leader leader-length="4cm" leader-pattern="rule" rule-style="solid" rule-thickness="0.4mm" color="black"/> </fo:block>
              <fo:block font-family="Helvetica" line-height="4.5mm" font-size="11pt" text-align="left" >DON(A)<fo:leader leader-pattern="space" leader-length="1mm"/>:<fo:leader leader-length="11.8cm" leader-pattern="rule" rule-style="solid" rule-thickness="0.4mm" color="black"/><fo:leader leader-pattern="space" leader-length="1mm"/>RUT<fo:leader leader-length="4cm" leader-pattern="rule" rule-style="solid" rule-thickness="0.4mm" color="black"/> </fo:block>
              <fo:block font-family="Helvetica" line-height="4.5mm" font-size="11pt" text-align="left" >Quienes lo hacen en representaci�n de <fo:leader leader-length="14.3cm" leader-pattern="rule" rule-style="solid" rule-thickness="0.4mm" color="black"/> </fo:block>
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block font-family="Helvetica" line-height="4.5mm" font-size="11pt" text-align="left" >Como Avalistas:</fo:block>
              <fo:block font-family="Helvetica" line-height="4.5mm" font-size="11pt" text-align="left" >DON(A)<fo:leader leader-pattern="space" leader-length="1mm"/>:<fo:leader leader-length="11.8cm" leader-pattern="rule" rule-style="solid" rule-thickness="0.4mm" color="black"/><fo:leader leader-pattern="space" leader-length="1mm"/>RUT<fo:leader leader-length="4cm" leader-pattern="rule" rule-style="solid" rule-thickness="0.4mm" color="black"/> </fo:block>
              <fo:block font-family="Helvetica" line-height="4.5mm" font-size="11pt" text-align="left" >DON(A)<fo:leader leader-pattern="space" leader-length="1mm"/>:<fo:leader leader-length="11.8cm" leader-pattern="rule" rule-style="solid" rule-thickness="0.4mm" color="black"/><fo:leader leader-pattern="space" leader-length="1mm"/>RUT<fo:leader leader-length="4cm" leader-pattern="rule" rule-style="solid" rule-thickness="0.4mm" color="black"/> </fo:block>
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block font-family="Helvetica" line-height="4.5mm" font-size="11pt" text-align="left" >Como c�nyuge de los avalistas, respectivamente, en los casos que corresponda: </fo:block>
              <fo:block font-family="Helvetica" line-height="4.5mm" font-size="11pt" text-align="left" >DON(A)<fo:leader leader-pattern="space" leader-length="1mm"/>:<fo:leader leader-length="11.6cm" leader-pattern="rule" rule-style="solid" rule-thickness="0.4mm" color="black"/><fo:leader leader-pattern="space" leader-length="1mm"/>RUT<fo:leader leader-length="4cm" leader-pattern="rule" rule-style="solid" rule-thickness="0.4mm" color="black"/> </fo:block>
              <fo:block font-family="Helvetica" line-height="4.5mm" font-size="11pt" text-align="left" >DON(A)<fo:leader leader-pattern="space" leader-length="1mm"/>:<fo:leader leader-length="11.6cm" leader-pattern="rule" rule-style="solid" rule-thickness="0.4mm" color="black"/><fo:leader leader-pattern="space" leader-length="1mm"/>RUT<fo:leader leader-length="4cm" leader-pattern="rule" rule-style="solid" rule-thickness="0.4mm" color="black"/> </fo:block>

              <fo:block font-family="Helvetica" line-height="4.5mm" font-size="11pt" text-align="left" >
              En<fo:leader leader-pattern="space" leader-length="25mm"/><fo:leader leader-pattern="space" leader-length="1mm"/>
              <fo:inline font-weight="bold"><xsl:value-of select="../ciudadContrato" /></fo:inline>,
              <fo:leader leader-pattern="space" leader-length="1mm"/>a<fo:leader leader-pattern="space" leader-length="1mm"/>
              <fo:inline font-weight="bold"><xsl:value-of select="../dia" /></fo:inline>

              <fo:leader leader-pattern="space" leader-length="1mm"/>de<fo:leader leader-pattern="space" leader-length="1mm"/>
              <xsl:variable name="mes" select="../mes" />
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
              <fo:inline font-weight="bold"><xsl:value-of select="../anio" /></fo:inline>
              </fo:block>

              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block font-family="Helvetica" line-height="4.5mm" font-size="11pt" text-align="center" ><fo:leader leader-length="6cm" leader-pattern="rule" rule-style="solid" rule-thickness="0.4mm" color="black"/></fo:block>
              <fo:block font-family="Helvetica" line-height="4.5mm" font-size="11pt" text-align="center" >NOTARIO</fo:block>
              <fo:block font-family="Helvetica" line-height="4.5mm" font-size="11pt" text-align="center" >3 de 3</fo:block>
                    </fo:flow>
          </xsl:when>          
          <!--   AQUI TERMINA EL TEMPLATE   AVALESCC  -->
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


        <xsl:template name="DatosRazonSociasl">
            <!-- AQUI COMIENZA LOS DATOS  DEL SUSCRIPTOR NOMBRE O RAZON SOCIAL -->
              <fo:table border-collapse="collapse" text-align="left">
                <fo:table-column column-width="58mm" />
                <fo:table-column column-width="97mm"  />
                <fo:table-column column-width="10mm"  />
                <fo:table-column column-width="30mm"  />
                <fo:table-body>
                    <fo:table-row>
                          <fo:table-cell >
                                  <fo:block font-family="Helvetica" font-size="11pt"   text-align="left"  line-height="4.5mm">NOMBRE O RAZON SOCIAL</fo:block>
                          </fo:table-cell>

                          <fo:table-cell >
                                  <fo:block font-family="Helvetica" font-size="11pt"   text-align="left" margin-left="1mm" line-height="4.5mm"><fo:inline font-weight="bold"><xsl:value-of select="../nombreCompletoCliente" /></fo:inline></fo:block>
                          </fo:table-cell>

                          <fo:table-cell >
                                      <fo:block font-family="Helvetica" font-size="11pt"   text-align="left" margin-left="1mm" line-height="4.5mm">RUT</fo:block>
                          </fo:table-cell>

                          <fo:table-cell >
                                  <fo:block font-family="Helvetica" font-size="11pt"   text-align="left" margin-left="1mm" line-height="4.5mm"><fo:inline font-weight="bold"><xsl:value-of select='format-number(../rutCliente, "###.###.##0","rut")' />-<xsl:value-of select="../dvCliente" /></fo:inline></fo:block>
                          </fo:table-cell>
                    </fo:table-row>
              </fo:table-body>
              </fo:table>
            <!-- AQUI TERMINA LOS DATOS  DEL SUSCRIPTOR NOMBRE O RAZON SOCIAL -->

            <!-- AQUI COMIENZA LOS DATOS  DEL SUSCRIPTOR NOMBRE DEL REPRESENTANTE LEGAL 1 -->
              <fo:table border-collapse="collapse" text-align="left">
                <fo:table-column column-width="58mm" />
                <fo:table-column column-width="97mm"  />
                <fo:table-column column-width="10mm"  />
                <fo:table-column column-width="30mm"  />
                <fo:table-body>
                    <fo:table-row>
                          <fo:table-cell >
                                  <fo:block font-family="Helvetica" font-size="11pt"   text-align="left"  line-height="4.5mm">REPRESENTANTE LEGAL</fo:block>
                          </fo:table-cell>
                          
                          <fo:table-cell >
                          <xsl:variable name="nombreApoderado1" select="../nombreApoderado1" />
                                    <xsl:choose>
                                      <xsl:when test="$nombreApoderado1 != ''">
                                         <fo:block font-family="Helvetica" font-size="11pt"   text-align="left" margin-left="1mm" line-height="4.5mm"><fo:inline font-weight="bold"><xsl:value-of select="../nombreApoderado1" /></fo:inline></fo:block>
                                      </xsl:when>
                    
                                      <xsl:when test="$nombreApoderado1 = ''">
                                         <fo:block font-family="Helvetica" font-size="11pt"   text-align="left" margin-left="1mm" line-height="4.5mm"><fo:inline font-weight="bold"></fo:inline></fo:block>
                                      </xsl:when>
                                    </xsl:choose>
                          </fo:table-cell>

                          <fo:table-cell >
                                  <fo:block font-family="Helvetica" font-size="11pt"   text-align="left" margin-left="1mm" line-height="4.5mm">RUT</fo:block>
                          </fo:table-cell>
                          
                          <fo:table-cell >
                          <xsl:variable name="rutApoderado1" select="../rutApoderado1" />
                                    <xsl:choose>
                                      <xsl:when test="$rutApoderado1 != ''">
                                         <fo:block font-family="Helvetica" font-size="11pt"   text-align="left" margin-left="1mm" line-height="4.5mm"><fo:inline font-weight="bold"><xsl:value-of select="../rutApoderado1" /></fo:inline></fo:block>
                                      </xsl:when>
                    
                                      <xsl:when test="$rutApoderado1 = ''">
                                         <fo:block font-family="Helvetica" font-size="11pt"   text-align="left" margin-left="1mm" line-height="4.5mm"><fo:inline font-weight="bold"></fo:inline></fo:block>
                                      </xsl:when>
                                    </xsl:choose>
                          </fo:table-cell>
                    </fo:table-row>
              </fo:table-body>
              </fo:table>
            <!-- AQUI TERMINAN LOS DATOS  DEL SUSCRIPTOR NOMBRE DEL REPRESENTANTE LEGAL 1 -->

            <!-- AQUI COMIENZA LOS DATOS  DEL SUSCRIPTOR NOMBRE DEL REPRESENTANTE LEGAL 2 -->
              <fo:table border-collapse="collapse" text-align="left">
                <fo:table-column column-width="58mm" />
                <fo:table-column column-width="97mm"  />
                <fo:table-column column-width="10mm"  />
                <fo:table-column column-width="30mm"  />
                <fo:table-body>
                    <fo:table-row>
                          <fo:table-cell >
                                  <fo:block font-family="Helvetica" font-size="11pt"   text-align="left"  line-height="4.5mm">REPRESENTANTE LEGAL</fo:block>
                          </fo:table-cell>
                          
                          <fo:table-cell >
                          <xsl:variable name="nombreApoderado2" select="../nombreApoderado2" />
                                    <xsl:choose>
                                      <xsl:when test="$nombreApoderado2 != ''">
                                         <fo:block font-family="Helvetica" font-size="11pt"   text-align="left" margin-left="1mm" line-height="4.5mm"><fo:inline font-weight="bold"><xsl:value-of select="../nombreApoderado2" /></fo:inline></fo:block>
                                      </xsl:when>
                    
                                      <xsl:when test="$nombreApoderado2 = ''">
                                         <fo:block font-family="Helvetica" font-size="11pt"   text-align="left" margin-left="1mm" line-height="4.5mm"><fo:inline font-weight="bold"></fo:inline></fo:block>
                                      </xsl:when>
                                    </xsl:choose>
                          </fo:table-cell>

                          <fo:table-cell >
                                  <fo:block font-family="Helvetica" font-size="11pt"   text-align="left" margin-left="1mm" line-height="4.5mm">RUT</fo:block>
                          </fo:table-cell>
                          
                          <fo:table-cell >
                          <xsl:variable name="rutApoderado2" select="../rutApoderado2" />
                                    <xsl:choose>
                                      <xsl:when test="$rutApoderado2 != ''">
                                         <fo:block font-family="Helvetica" font-size="11pt"   text-align="left" margin-left="1mm" line-height="4.5mm"><fo:inline font-weight="bold"><xsl:value-of select="../rutApoderado2" /></fo:inline></fo:block>
                                      </xsl:when>
                    
                                      <xsl:when test="$rutApoderado2 = ''">
                                         <fo:block font-family="Helvetica" font-size="11pt"   text-align="left" margin-left="1mm" line-height="4.5mm"><fo:inline font-weight="bold"></fo:inline></fo:block>
                                      </xsl:when>
                                    </xsl:choose>
                          </fo:table-cell>                          
                    </fo:table-row>
              </fo:table-body>
              </fo:table>
            <!-- AQUI TERMINAN LOS DATOS  DEL SUSCRIPTOR NOMBRE DEL REPRESENTANTE LEGAL 2 -->

            <!-- AQUI COMIENZA LOS DATOS  DEL SUSCRIPTOR NOMBRE DEL REPRESENTANTE LEGAL 3 -->
              <fo:table border-collapse="collapse" text-align="left">
                <fo:table-column column-width="58mm" />
                <fo:table-column column-width="97mm"  />
                <fo:table-column column-width="10mm"  />
                <fo:table-column column-width="30mm"  />
                <fo:table-body>
                    <fo:table-row>

                          <fo:table-cell >
                                  <fo:block font-family="Helvetica" font-size="11pt"   text-align="left"  line-height="4.5mm">REPRESENTANTE LEGAL</fo:block>
                          </fo:table-cell>
                          
                          <fo:table-cell >
                          <xsl:variable name="nombreApoderado3" select="../nombreApoderado3" />
                                    <xsl:choose>
                                      <xsl:when test="$nombreApoderado3 != ''">
                                         <fo:block font-family="Helvetica" font-size="11pt"   text-align="left" margin-left="1mm" line-height="4.5mm"><fo:inline font-weight="bold"><xsl:value-of select="../nombreApoderado3" /></fo:inline></fo:block>
                                      </xsl:when>
                    
                                      <xsl:when test="$nombreApoderado3 = ''">
                                         <fo:block font-family="Helvetica" font-size="11pt"   text-align="left" margin-left="1mm" line-height="4.5mm"><fo:inline font-weight="bold"></fo:inline></fo:block>
                                      </xsl:when>
                                    </xsl:choose>
                          </fo:table-cell>

                          <fo:table-cell >
                                  <fo:block font-family="Helvetica" font-size="11pt"   text-align="left" margin-left="1mm" line-height="4.5mm">RUT</fo:block>
                          </fo:table-cell>
                          
                          <fo:table-cell >
                          <xsl:variable name="rutApoderado3" select="../rutApoderado3" />
                                    <xsl:choose>
                                      <xsl:when test="$rutApoderado3 != ''">
                                         <fo:block font-family="Helvetica" font-size="11pt"   text-align="left" margin-left="1mm" line-height="4.5mm"><fo:inline font-weight="bold"><xsl:value-of select="../rutApoderado3" /></fo:inline></fo:block>
                                      </xsl:when>
                    
                                      <xsl:when test="$rutApoderado3 = ''">
                                         <fo:block font-family="Helvetica" font-size="11pt"   text-align="left" margin-left="1mm" line-height="4.5mm"><fo:inline font-weight="bold"></fo:inline></fo:block>
                                      </xsl:when>
                                    </xsl:choose>
                          </fo:table-cell>                          

                    </fo:table-row>
              </fo:table-body>
              </fo:table>
            <!-- AQUI TERMINAN LOS DATOS  DEL SUSCRIPTOR NOMBRE DEL REPRESENTANTE LEGAL 3 -->

            <!-- AQUI COMIENZA LOS DATOS  DEL SUSCRIPTOR NOMBRE DEL REPRESENTANTE LEGAL 4 -->
              <fo:table border-collapse="collapse" text-align="left">
                <fo:table-column column-width="58mm" />
                <fo:table-column column-width="97mm"  />

                <fo:table-column column-width="10mm"  />
                <fo:table-column column-width="30mm"  />
                <fo:table-body>
                    <fo:table-row>

                          <fo:table-cell >
                                  <fo:block font-family="Helvetica" font-size="11pt"   text-align="left"  line-height="4.5mm">REPRESENTANTE LEGAL</fo:block>
                          </fo:table-cell>
                          
                          <fo:table-cell >
                          <xsl:variable name="nombreApoderado4" select="../nombreApoderado4" />
                                    <xsl:choose>
                                      <xsl:when test="$nombreApoderado4 != ''">
                                         <fo:block font-family="Helvetica" font-size="11pt"   text-align="left" margin-left="1mm" line-height="4.5mm"><fo:inline font-weight="bold"><xsl:value-of select="../nombreApoderado4" /></fo:inline></fo:block>
                                      </xsl:when>
                    
                                      <xsl:when test="$nombreApoderado4 = ''">
                                         <fo:block font-family="Helvetica" font-size="11pt"   text-align="left" margin-left="1mm" line-height="4.5mm"><fo:inline font-weight="bold"></fo:inline></fo:block>
                                      </xsl:when>
                                    </xsl:choose>
                          </fo:table-cell>

                          <fo:table-cell >
                                  <fo:block font-family="Helvetica" font-size="11pt"   text-align="left" margin-left="1mm" line-height="4.5mm">RUT</fo:block>
                          </fo:table-cell>
                          
                          <fo:table-cell >
                          <xsl:variable name="rutApoderado4" select="../rutApoderado4" />
                                    <xsl:choose>
                                      <xsl:when test="$rutApoderado4 != ''">
                                         <fo:block font-family="Helvetica" font-size="11pt"   text-align="left" margin-left="1mm" line-height="4.5mm"><fo:inline font-weight="bold"><xsl:value-of select="../rutApoderado4" /></fo:inline></fo:block>
                                      </xsl:when>
                    
                                      <xsl:when test="$rutApoderado4 = ''">
                                         <fo:block font-family="Helvetica" font-size="11pt"   text-align="left" margin-left="1mm" line-height="4.5mm"><fo:inline font-weight="bold"></fo:inline></fo:block>
                                      </xsl:when>
                                    </xsl:choose>
                          </fo:table-cell>                          
                    </fo:table-row>
              </fo:table-body>
              </fo:table>
            <!-- AQUI TERMINAN LOS DATOS  DEL SUSCRIPTOR NOMBRE DEL REPRESENTANTE LEGAL 4 -->

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
                                  <fo:block font-family="Helvetica" font-size="11pt"   text-align="left"  line-height="4.5mm">DOMICILIO</fo:block>
                          </fo:table-cell>

                          <fo:table-cell >
                                     <fo:block font-family="Helvetica" font-size="11pt"   text-align="left" margin-left="1mm" line-height="4.5mm"><fo:inline font-weight="bold"><xsl:value-of select="../dirCliente" /></fo:inline></fo:block>
                          </fo:table-cell>

                          <fo:table-cell >
                                  <fo:block font-family="Helvetica" font-size="11pt"   text-align="left" margin-left="1mm" line-height="4.5mm">COMUNA</fo:block>
                          </fo:table-cell>

                          <fo:table-cell >
                                     <fo:block font-family="Helvetica" font-size="11pt"   text-align="left" margin-left="1mm" line-height="4.5mm"><fo:inline font-weight="bold"><xsl:value-of select="../comCliente" /></fo:inline></fo:block>
                          </fo:table-cell>

                          <fo:table-cell >
                                  <fo:block font-family="Helvetica" font-size="11pt"   text-align="left" margin-left="1mm" line-height="4.5mm">CIUDAD</fo:block>
                          </fo:table-cell>

                          <fo:table-cell >
                                      <fo:block font-family="Helvetica" font-size="11pt"   text-align="left" margin-left="1mm" line-height="4.5mm"><fo:inline font-weight="bold"><!--xsl:value-of select="../comCliente" /--></fo:inline></fo:block>
                          </fo:table-cell>
                    </fo:table-row>
              </fo:table-body>
              </fo:table>
    </xsl:template>

</xsl:stylesheet>