<?xml version="1.0" encoding="iso-8859-1"?>

<!-- <== version: 2006/08/23 12:15 ==> -->

<xsl:stylesheet version="1.1" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format" exclude-result-prefixes="fo">
    <xsl:output method="xml" version="1.0" omit-xml-declaration="no" indent="yes"/>
    <xsl:decimal-format name="decimal" decimal-separator=',' grouping-separator='.' />
    <xsl:decimal-format name="rut" grouping-separator='.' />    

    <xsl:template match="contrato_credito_universal">
        <fo:root xmlns:fo="http://www.w3.org/1999/XSL/Format">
           <fo:layout-master-set>
               <fo:simple-page-master master-name="miCarta" page-width="215.9mm" page-height="330mm" margin-top="10mm" margin-bottom="20mm" margin-left="10mm" margin-right="10mm">
                   <fo:region-body/>
               </fo:simple-page-master>
           </fo:layout-master-set>
           <fo:page-sequence master-reference="miCarta">
            
          <!--   AQUI COMIENZA LA PRIMERA PAGINA   -->
          <fo:flow flow-name="xsl-region-body">
              <fo:block font-family="Helvetica" line-height="4.5mm" font-size="13pt" text-align="center" ><fo:inline font-weight="bold"> CONTRATO</fo:inline></fo:block>
              <fo:block font-family="Helvetica" line-height="4.5mm" font-size="13pt" text-align="center" ><fo:inline font-weight="bold">CREDITO UNIVERSAL DE CONSUMO</fo:inline></fo:block>
              <fo:block font-family="Helvetica" line-height="4.5mm" font-size="13pt" text-align="center" ><fo:inline font-weight="bold">BANCO DE CRÉDITO E INVERSIONES</fo:inline></fo:block>
              <fo:block font-family="Helvetica" line-height="4.5mm" font-size="13pt" text-align="center" ><fo:inline font-weight="bold">A</fo:inline></fo:block>
              <fo:block font-family="Helvetica" line-height="4.5mm" font-size="13pt" text-align="center" ><fo:inline font-weight="bold"><xsl:value-of select="OperacionCredito/nombreCompletoCliente" /></fo:inline></fo:block>
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>                           
              
              <fo:block font-family="Helvetica" line-height="4.5mm" font-size="11pt" text-align="justify" >En<fo:leader leader-pattern="space" leader-length="1mm"/>
              <fo:inline font-weight="bold"><xsl:value-of select="OperacionCredito/ciudadContrato" /></fo:inline>,
              <fo:leader leader-pattern="space" leader-length="1mm"/>a<fo:leader leader-pattern="space" leader-length="1mm"/>
              <fo:inline font-weight="bold"><xsl:value-of select="OperacionCredito/dia" /></fo:inline>

              <fo:leader leader-pattern="space" leader-length="1mm"/>de<fo:leader leader-pattern="space" leader-length="1mm"/>
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

              <fo:leader leader-pattern="space" leader-length="1mm"/>del año<fo:leader leader-pattern="space" leader-length="1mm"/>
              <fo:inline font-weight="bold"><xsl:value-of select="OperacionCredito/anio" /></fo:inline><fo:leader leader-pattern="space" leader-length="1mm"/>, entre Banco de Crédito e Inversiones, Rol Único Tributario número noventa y siete millones seis mil guión seis, en adelante también e indistintamente el Banco o BCI, por una parte; y, por la otra, don(ña):<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="OperacionCredito/nombreCompletoCliente" /></fo:inline><fo:leader leader-pattern="space" leader-length="1mm"/>, cédula de identidad N°<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select='format-number(OperacionCredito/rutCliente, "###.###.##0","rut")' /></fo:inline>-<fo:inline font-weight="bold"><xsl:value-of select="OperacionCredito/dvCliente" /></fo:inline>, domiciliado en<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="substring(DireccionDeudorBci/direccion,0,32)" /></fo:inline>, en adelante también e indistintamente el Cliente o el Deudor(a), vienen en celebrar el siguiente contrato de Crédito Universal de Consumo, sujeto a las normas del artículo 7° de la Ley N° 20.448 de 13 de agosto de 2010 y su Reglamento, y supletoriamente, por las disposiciones de la Ley N° 18.010:</fo:block>
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block font-family="Helvetica" line-height="5.8mm" font-size="12pt" text-align="left" ><fo:inline font-weight="bold">PRIMERO: Monto del Crédito a cursar.</fo:inline></fo:block>
              <fo:block font-family="Helvetica" line-height="5.8mm" font-size="11pt" text-align="justify"  >Banco de Crédito e Inversiones da en mutuo en este acto al Cliente, quien declara recibir a entera satisfacción y completa conformidad, la suma de <fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold">$</fo:inline><fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold">
                    <xsl:value-of select='format-number(OperacionCredito/montoCredito, "###.###.##0","decimal")' />
              </fo:inline> <fo:leader leader-pattern="space" leader-length="1mm"/> (<fo:inline font-weight="bold"><xsl:value-of select="OperacionCredito/montoCreditoManoEscrita" /></fo:inline><fo:leader leader-pattern="space" leader-length="1mm"/> pesos m/l) .</fo:block>
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>              
              <fo:block font-family="Helvetica" line-height="5.8mm" font-size="12pt" text-align="left" ><fo:inline font-weight="bold">SEGUNDO: Amortización de Capital e Intereses.</fo:inline></fo:block>              
              <fo:block font-family="Helvetica" line-height="5.8mm" font-size="11pt" text-align="justify"  >El Cliente se obliga a pagar al Banco de Crédito e Inversiones en sus oficinas ubicadas en Avenida El Golf número 125, comuna de Las Condes, Santiago, o en cualquiera de sus sucursales, la suma indicada en la cláusula precedente, en <fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="count(CalendarioPago)" /></fo:inline><fo:leader leader-pattern="space" leader-length="1mm"/> cuotas mensuales, iguales y sucesivas, de $ <fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select='format-number(OperacionCredito/montoCuota, "###.###.##0","decimal")' /></fo:inline><fo:leader leader-pattern="space" leader-length="1mm"/> cada una, con vencimiento la primera de ellas el día<fo:leader leader-pattern="space" leader-length="1mm"/>
              <fo:inline font-weight="bold"><xsl:value-of select="OperacionCredito/fechaPrimerVctoDD" /></fo:inline>
              <fo:leader leader-pattern="space" leader-length="1mm"/>de<fo:leader leader-pattern="space" leader-length="1mm"/>
              <xsl:variable name="mes" select="OperacionCredito/fechaPrimerVctoMM" />
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
              <fo:leader leader-pattern="space" leader-length="1mm"/>de<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="OperacionCredito/fechaPrimerVctoYYYY" /></fo:inline><fo:leader leader-pattern="space" leader-length="1mm"/>y las restantes los días<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="OperacionCredito/diaVencimiento" /></fo:inline><fo:leader leader-pattern="space" leader-length="1mm"/>de cada mes, venciendo la última de ellas el día <fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="OperacionCredito/fechaUltimoVctoDD" /></fo:inline><fo:leader leader-pattern="space" leader-length="1mm"/>de<fo:leader leader-pattern="space" leader-length="1mm"/>
              
              <xsl:variable name="mes" select="OperacionCredito/fechaUltimoVctoMM" />
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
              <fo:leader leader-pattern="space" leader-length="1mm"/>de año<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="OperacionCredito/fechaUltimoVctoYYYY" /></fo:inline><fo:leader leader-pattern="space" leader-length="1mm"/>, cuotas en las cuales se encuentran comprendidos los intereses de <fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select='format-number(OperacionCredito/tasaInteres, "###,####","decimal")'/></fo:inline>% mensual, los que se devengarán a partir de esta fecha en sus respectivas fechas de vencimiento y durante todo el plazo pactado.</fo:block>
              
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>              
              <fo:block font-family="Helvetica" line-height="5.8mm" font-size="12pt" text-align="left" > <fo:inline font-weight="bold">TERCERO: Prórroga de plazo por día inhábil.</fo:inline></fo:block>
              <fo:block font-family="Helvetica" line-height="5.8mm" font-size="11pt" text-align="justify"  >Las cuotas de amortización de capital e intereses se pagarán a su vencimiento, siempre que éste corresponda a un día hábil bancario. En caso contrario, se pagarán el día hábil bancario siguiente.</fo:block>
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block font-family="Helvetica" line-height="5.8mm" font-size="12pt" text-align="left" > <fo:inline font-weight="bold">CUARTO: Prepagos.</fo:inline></fo:block>
              <fo:block font-family="Helvetica" line-height="5.8mm" font-size="11pt" text-align="justify"  >En caso que el Cliente opte por pagar anticipadamente el saldo adeudado, debe pagar el capital adeudado a la fecha del prepago, los intereses pactados y devengados hasta dicha fecha, más una comisión de prepago que es igual al valor de un mes de los intereses convenidos en la operación, calculado sobre el capital que se prepaga. Se deja expresa constancia que el pago anticipado que sea inferior al 25% del saldo de la obligación contraída requerirá el consentimiento del Banco en conformidad a lo establecido en el artículo 10 de la Ley 1</fo:block>
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block font-family="Helvetica" line-height="5.8mm" font-size="12pt" text-align="left" > <fo:inline font-weight="bold">QUINTO: Exigibilidad anticipada.</fo:inline></fo:block>
              <fo:block font-family="Helvetica" line-height="5.8mm" font-size="11pt" text-align="justify"  >El no pago oportuno de una cualquiera de las cuotas de capital y/o de interés comprendidos en esta obligación, facultará al Banco a hacer exigible en forma inmediata y anticipadamente el monto total del saldo insoluto adeudado a esa fecha, el que desde esa misma fecha se considerará de plazo vencido y devengará en favor del acreedor o de quien sus derechos represente, el interés máximo convencional que rija durante la mora o simple retardo.</fo:block>
              <fo:block font-family="Helvetica" line-height="5.8mm" font-size="11pt" text-align="justify"  >Se deja expresamente establecido que el ejercicio de este derecho constituye una sanción al suscriptor por el no pago de la deuda e importa una mera facultad establecida en beneficio exclusivo del acreedor, que no altera en caso alguno la fecha de vencimiento del pagaré originalmente pactada, ni a la exigibilidad de las acciones cambiarias y ejecutivas derivadas de éste.</fo:block>
              <fo:block font-family="Helvetica" line-height="5.8mm" font-size="11pt" text-align="justify"  >El Banco podrá hacer exigible de inmediato el monto total adeudado, expirando todos los plazos pendientes por el sólo hecho de constituirse el deudor en mora o de habérsele protestado, por falta de pago, cualquier documento, pagaré, letra de cambio o cheque, aceptado, suscrito o girado por él.</fo:block>
              <fo:block font-family="Helvetica" line-height="5.8mm" font-size="11pt" text-align="justify"  >Se deja expresamente establecido que corresponderá al deudor acreditar el pago de las cuotas en que se divide el crédito otorgado por el presente instrumento, en caso de cobro judicial.</fo:block>
                            
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block font-family="Helvetica" line-height="4.5mm" font-size="11pt" text-align="center" >1</fo:block>
          </fo:flow>
          </fo:page-sequence>
          <!--   AQUI TERMINA LA PRIMERA PAGINA  -->
          
          
          <!--   AQUI COMIENZA LA SEGUNDA PAGINA  -->
          <fo:page-sequence master-reference="miCarta">
          <fo:flow flow-name="xsl-region-body">
              <fo:block font-family="Helvetica" line-height="5.8mm" font-size="12pt" text-align="left" > <fo:inline font-weight="bold">SEXTO: Indivisibilidad.</fo:inline></fo:block>
              <fo:block font-family="Helvetica" line-height="5.8mm" font-size="11pt" text-align="justify"  >Las obligaciones que derivan del crédito otorgado al cliente serán indivisibles, de modo que su cumplimiento podrá exigirse a cualquiera de sus herederos, de acuerdo a lo dispuesto en los artículos 1526 N°4 y 1528 del Código Civil.</fo:block>
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block font-family="Helvetica" line-height="5.8mm" font-size="12pt" text-align="left" > <fo:inline font-weight="bold">SEPTIMO: Domicilio y competencia.</fo:inline></fo:block>
              <fo:block font-family="Helvetica" line-height="5.8mm" font-size="11pt" text-align="justify"  >Para todos los efectos legales de este contrato, los otorgantes fijan domicilio en esta ciudad.</fo:block>
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block font-family="Helvetica" line-height="5.8mm" font-size="12pt" text-align="left" > <fo:inline font-weight="bold">OCTAVO: Empresas encargadas de la cobranza extrajudicial y honorarios de cobranza.</fo:inline></fo:block>
              <fo:block font-family="Helvetica" line-height="5.8mm" font-size="11pt" text-align="justify"  >El Cliente declara conocer y aceptar que existen recargos por la cobranza extrajudicial de créditos impagos, incluyendo honorarios, a partir de la fecha que se indica, los cuales serán cobrados por la sociedad "Servicios de Normalización y Cobranza -Normaliza S.A." o por aquella que el Banco designare en su oportunidad, la que actuará en representación del Banco. La cobranza se efectuará entre 8:00 y 20:00 horas. Declara asimismo conocer y aceptar, que para que la Empresa designada pueda realizar la cobranza es imprescindible que el Banco le suministre antecedentes de los créditos morosos y otros asociados a éstos, como de sus antecedentes comerciales y personales.</fo:block>
              <fo:block font-family="Helvetica" line-height="5.8mm" font-size="11pt" text-align="justify"  >Los honorarios y gastos por las gestiones serán los siguientes, aplicados sobre el total de la deuda o cuota vencida: obligaciones hasta 10 unidades de fomento -UF- 9%; por la parte que exceda de 10 UF y hasta 50 UF, 6% y por la parte que exceda de 50 UF, 3%. Dichos porcentajes se aplicarán una vez transcurridos los primeros 15 días de atraso y podrán ser modificados anualmente en caso de créditos de consumo cuyo plazo de pago exceda de 1 año, siempre que tales cambios se avisen con una anticipación mínima de 2 períodos de pago.</fo:block>
              <fo:block font-family="Helvetica" line-height="5.8mm" font-size="11pt" text-align="justify"  >Las tarifas indicadas se basan en la reglamentación vigente y la Ley N° 19.659 y demás normativa aplicable. Si se modificaren las tarifas y modalidades de cobranza, el Banco podrá también modificarlas, dando previo aviso al Cliente.</fo:block>
              <fo:block font-family="Helvetica" line-height="5.8mm" font-size="11pt" text-align="justify"  >El Cliente declara haber recibido el volante que contiene la tabla de los honorarios antes indicadas, el período de vigencia de ellos y el número de días en que el préstamo o la cuota permanecerá impaga en la institución antes de ser enviado a cobranza externa.</fo:block>
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block font-family="Helvetica" line-height="5.8mm" font-size="12pt" text-align="left" > <fo:inline font-weight="bold">NOVENO: Derecho de Retracto:</fo:inline></fo:block>
              <fo:block font-family="Helvetica" line-height="5.8mm" font-size="11pt" text-align="justify"  >Sólo en los casos en que el Cliente contrate el Crédito de que da cuenta el presente instrumento a través de medios electrónicos o remotos de comunicación, podrá ejercer el derecho de retracto a que se refiere el artículo 3 Bis de la Ley N° 19.49 6, sobre Protección a los Consumidores, en el plazo y en las condiciones y requisitos que dicha norma establece.</fo:block>
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block font-family="Helvetica" line-height="5.8mm" font-size="12pt" text-align="left" > <fo:inline font-weight="bold">DECIMO: Meses de Gracia o de No Pago:</fo:inline></fo:block>
              <fo:block font-family="Helvetica" line-height="5.8mm" font-size="11pt" text-align="justify"  >El Banco y el Cliente acuerdan que el crédito de que da cuenta el presente instrumento, no tiene meses de gracia o de no pago.</fo:block>
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block font-family="Helvetica" line-height="5.8mm" font-size="12pt" text-align="left" > <fo:inline font-weight="bold">UNDECIMO: Contratación de Seguros Voluntarios.</fo:inline></fo:block>
              <fo:block font-family="Helvetica" line-height="5.8mm" font-size="11pt" text-align="justify"  >El cliente por el presente instrumento declara su voluntad de contratar los seguros voluntarios que se indican a continuación, por el precio señalado en el resumen de condiciones de este contrato:</fo:block>              
              
              <fo:table border-collapse="collapse" text-align="left">
                  <fo:table-column column-width="120,95mm" border-top="0.5pt solid black" border-left="0.5pt solid black" />
                  <fo:table-column column-width="33.475mm" border-top="0.5pt solid black" border-left="0.5pt solid black" />
                  <fo:table-column column-width="33.475mm" border-top="0.5pt solid black" border-left="0.5pt solid black" />
                  <fo:table-column column-width="33.475mm" border-top="0.5pt solid black" border-left="0.5pt solid black" />
                  <fo:table-column column-width="41.475mm" border-top="0.5pt solid black" border-left="0.5pt solid black"  border-right="0.5pt solid black"/>

                  <fo:table-body>
                      <fo:table-row>

                            <fo:table-cell >
                                    <fo:block   font-family="Helvetica" font-size="11pt"   text-align="center" font-weight="bold" margin-left="1mm" line-height="4.5mm">COBERTURA</fo:block>
                                    <fo:block   font-family="Helvetica" font-size="11pt"   text-align="center" font-weight="bold" line-height="4.5mm"></fo:block>
                            </fo:table-cell>
                            <fo:table-cell >
                                    <fo:block   font-family="Helvetica" font-size="11pt"   text-align="center" font-weight="bold" margin-left="1mm" line-height="4.5mm">DETALLE</fo:block>
                                    <fo:block   font-family="Helvetica" font-size="11pt"   text-align="center" font-weight="bold" margin-left="1mm" line-height="4.5mm">COBERTURA</fo:block>
                            </fo:table-cell>
                            <fo:table-cell >
                                    <fo:block   font-family="Helvetica" font-size="11pt"   text-align="center" font-weight="bold" margin-left="1mm" line-height="4.5mm">COMISION DE</fo:block>
                                    <fo:block   font-family="Helvetica" font-size="11pt"   text-align="center" font-weight="bold" margin-left="1mm" line-height="4.5mm">INTERMEDIACION</fo:block>
                            </fo:table-cell>
                            <fo:table-cell >
                                    <fo:block   font-family="Helvetica" font-size="11pt"   text-align="center" font-weight="bold" margin-left="1mm" line-height="4.5mm">COMISION DE</fo:block>
                                    <fo:block   font-family="Helvetica" font-size="11pt"   text-align="center" font-weight="bold" margin-left="1mm" line-height="4.5mm">RECAUDACION</fo:block>
                            </fo:table-cell>
                            <fo:table-cell >
                                    <fo:block   font-family="Helvetica" font-size="11pt"   text-align="center" font-weight="bold" margin-left="1mm" line-height="4.5mm">COMISION</fo:block>
                                    <fo:block   font-family="Helvetica" font-size="11pt"   text-align="center" font-weight="bold" margin-left="1mm" line-height="4.5mm">DE VALIJA</fo:block>
                            </fo:table-cell>
                            

                      </fo:table-row>
                </fo:table-body>
              </fo:table>

              <fo:table border-collapse="collapse" text-align="left">                  
                  <fo:table-column column-width="114,95mm" border-top="0.5pt solid black" border-left="0.5pt solid black" />                  
                  <fo:table-column column-width="33.475mm" border-top="0.5pt solid black" border-left="0.5pt solid black" />
                  <fo:table-column column-width="33.475mm" border-top="0.5pt solid black" border-left="0.5pt solid black" />
                  <fo:table-column column-width="33.475mm" border-top="0.5pt solid black" border-left="0.5pt solid black" />
                  <fo:table-column column-width="41.475mm" border-top="0.5pt solid black" border-left="0.5pt solid black" border-right="0.5pt solid black" />

                  <fo:table-body>
                      <fo:table-row>

                            <fo:table-cell >
                                    <fo:block    font-family="Helvetica" font-size="11pt"   text-align="center" margin-left="1mm" line-height="4.5mm">Desgravamen</fo:block>
                                    <fo:block    font-family="Helvetica" font-size="11pt"   text-align="center" line-height="4.5mm"></fo:block>
                            </fo:table-cell>
                            
                            <fo:table-cell >
                                    <fo:block    font-family="Helvetica" font-size="11pt"   text-align="center" margin-left="1mm" line-height="4.5mm">POL 209128</fo:block>
                                    <fo:block    font-family="Helvetica" font-size="11pt"   text-align="center" line-height="4.5mm"></fo:block>
                            </fo:table-cell>
                            
                            <fo:table-cell >
                                    <fo:block    font-family="Helvetica" font-size="11pt"   text-align="center" margin-left="1mm" line-height="4.5mm">25 %</fo:block>
                                    <fo:block    font-family="Helvetica" font-size="11pt"   text-align="center" line-height="4.5mm"></fo:block>
                            </fo:table-cell>
                            
                            <fo:table-cell >
                                    <fo:block    font-family="Helvetica" font-size="11pt"   text-align="center" margin-left="1mm" line-height="4.5mm">0,03 UF +IVA</fo:block>
                                    <fo:block    font-family="Helvetica" font-size="11pt"   text-align="center" line-height="4.5mm"></fo:block>
                            </fo:table-cell>

                            <fo:table-cell >
                                    <fo:block    font-family="Helvetica" font-size="11pt"   text-align="center" margin-left="1mm" line-height="4.5mm">$400 + IVA</fo:block>
                                    <fo:block    font-family="Helvetica" font-size="11pt"   text-align="center" line-height="4.5mm"></fo:block>
                            </fo:table-cell>
                      </fo:table-row>                     
                </fo:table-body>
              </fo:table>
              <fo:table border-collapse="collapse" text-align="left">
                 <fo:table-column column-width="120,95mm" border-top="0.5pt solid black" border-left="0.5pt solid black" />
              </fo:table>
              
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>              
              <fo:block font-family="Helvetica" line-height="5.8mm" font-size="11pt" text-align="justify"  >Todos los códigos POL y CAD son entregados por la Superintendencia de Valores y Seguros, y pueden ser consultados en www.svs.cl. El detalle de las condiciones particulares de los seguros puede ser consultado en la solicitud de incorporación adjunta, la cual forma parte también de este contrato.</fo:block>
              <fo:block font-family="Helvetica" line-height="5.8mm" font-size="11pt" text-align="justify"  >El Cliente declara estar en conocimiento que puede contratar los seguros indicados directamente y por su cuenta en cualquier entidad aseguradora y a través de cualquier corredor de seguros, por lo que su contratación tiene el carácter de voluntario. Asimismo declara que ha tomado conocimiento del derecho a decidir sobre la contratación de los seguros y a la libre elección del intermediario y de la compañía aseguradora, de conformidad a las disposiciones de la Superintendencia de Valores y Seguros. Asimismo, declara estar en conocimiento que puede obtener el crédito que el Banco por este acto le 3 otorga, con la misma tasa y demás condiciones establecidas en este instrumento, aun cuando no adquiriera tales seguros.</fo:block>
                                                    
              <fo:block font-family="Helvetica" line-height="4.5mm" font-size="11pt" text-align="center" >2</fo:block>
              
          </fo:flow>
          </fo:page-sequence>
          <!--   AQUI TERMINA LA SEGUNDA PAGINA   -->
                              
          <!--   AQUI COMIENZA LA TERCERA PAGINA  -->                  
          <fo:page-sequence master-reference="miCarta">
          <fo:flow>
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block font-family="Helvetica" line-height="5.8mm" font-size="11pt" text-align="justify"  ><fo:inline font-weight="bold">Forma de Pago: </fo:inline> Autorizo que el monto de la prima total, correspondiente al seguro contratado, sea cargado en el pago del crédito solicitado, bajo el número de operación<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="OperacionCredito/nroOperacion" /></fo:inline></fo:block>
              
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block font-family="Helvetica" line-height="5.8mm" font-size="11pt" text-align="justify"  ><fo:inline font-weight="bold">Resumen de Condiciones: </fo:inline></fo:block>
              
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block font-family="Helvetica" line-height="5.8mm" font-size="11pt" text-align="justify"  ><fo:inline font-weight="bold">DATOS DEL CRÉDITO </fo:inline></fo:block>

              <fo:table border-collapse="collapse" text-align="left">                  
                  <fo:table-column column-width="91,95mm" border-top="0.5pt solid black" border-left="0.5pt solid black" />                  
                  <fo:table-column column-width="33.475mm" border-top="0.5pt solid black" border-left="0.5pt solid black" />
                  <fo:table-column column-width="47.475mm" border-top="0.5pt solid black" border-left="0.5pt solid black" />                  
                  <fo:table-column column-width="50.475mm" border-top="0.5pt solid black" border-left="0.5pt solid black" border-right="0.5pt solid black" />

                  <fo:table-body>
                      <fo:table-row>

                            <fo:table-cell >
                                    <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                                    <fo:block   font-family="Helvetica" font-size="11pt"   text-align="left" font-weight="bold" margin-left="1mm" line-height="4.5mm">Tipo de Producto:</fo:block>
                                    <fo:block   font-family="Helvetica" font-size="11pt"   text-align="left" margin-left="1mm" line-height="4.5mm">CREDITO</fo:block>
                                    <fo:block   font-family="Helvetica" font-size="11pt"   text-align="left" margin-left="1mm" line-height="4.5mm">UNIVERSAL</fo:block>
                                    <fo:block   font-family="Helvetica" font-size="11pt"   text-align="left" margin-left="1mm" line-height="4.5mm">DE CONSUMO</fo:block>
                                    <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                            </fo:table-cell>
                            
                            <fo:table-cell >
                                    <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                                    <fo:block   font-family="Helvetica" font-size="11pt"   text-align="left" font-weight="bold" margin-left="1mm" line-height="4.5mm">Sucursal</fo:block>                                    
                                    <fo:block   font-family="Helvetica" font-size="11pt"   text-align="left" margin-left="1mm" line-height="4.5mm"><fo:inline><xsl:value-of select="OperacionCredito/sucursal" /></fo:inline></fo:block>
                                    <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>                                    
                                    
                            </fo:table-cell>
                            
                            <fo:table-cell >
                                    <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                                    <fo:block   font-family="Helvetica" font-size="11pt"   text-align="left" font-weight="bold" margin-left="1mm" line-height="4.5mm">Número de Operación</fo:block>                                                                  
                                    <fo:block   font-family="Helvetica" font-size="11pt"   text-align="left" margin-left="1mm" line-height="4.5mm"><fo:inline><xsl:value-of select="OperacionCredito/nroOperacion" /></fo:inline></fo:block>
                                    <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>                                    
                                    
                            </fo:table-cell>
                            
                            <fo:table-cell >
                                    <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                                    <fo:block   font-family="Helvetica" font-size="11pt"   text-align="left" font-weight="bold" margin-left="1mm" line-height="4.5mm">Unidad Monetaria:</fo:block>                                    
                                    <fo:block   font-family="Helvetica" font-size="11pt"   text-align="left" margin-left="1mm" line-height="4.5mm">Pesos</fo:block>
                                    <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>                                    
                            </fo:table-cell>
                      </fo:table-row>                     
                </fo:table-body>
              </fo:table>
              <fo:table border-collapse="collapse" text-align="left">                  
                  <fo:table-column column-width="80,95mm" border-top="0.5pt solid black" border-left="0.5pt solid black" />                                    
                  <fo:table-column column-width="55.475mm" border-top="0.5pt solid black" border-left="0.5pt solid black" />                  
                  <fo:table-column column-width="50.475mm" border-top="0.5pt solid black" border-left="0.5pt solid black" border-right="0.5pt solid black" />

                  <fo:table-body>
                      <fo:table-row>
                            
                            <fo:table-cell >
                                    <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                                    <fo:block   font-family="Helvetica" font-size="11pt"   text-align="left" font-weight="bold" margin-left="1mm" line-height="4.5mm">Costo Total del Crédito</fo:block>                                    
                                    <fo:block   font-family="Helvetica" font-size="11pt"   text-align="left" margin-left="1mm" line-height="4.5mm"><fo:inline >$</fo:inline><fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline><xsl:value-of select='format-number(OperacionCredito/montoTotalCredito, "###.###.##0","decimal")' /></fo:inline></fo:block>
                                    <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>                                    
                                    
                            </fo:table-cell>
                            
                            <fo:table-cell >
                                    <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                                    <fo:block   font-family="Helvetica" font-size="11pt"   text-align="left" font-weight="bold" margin-left="1mm" line-height="4.5mm">Monto del Crédito a cursar</fo:block>                                                                  
                                    <fo:block   font-family="Helvetica" font-size="11pt"   text-align="left" margin-left="1mm" line-height="4.5mm"><fo:inline >$</fo:inline><fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline><xsl:value-of select='format-number(OperacionCredito/montoCredito, "###.###.##0","decimal")' /></fo:inline></fo:block>
                                    <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>                                    
                            </fo:table-cell>
                            
                            <fo:table-cell >
                                    <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                                    <fo:block   font-family="Helvetica" font-size="11pt"   text-align="left" font-weight="bold" margin-left="1mm" line-height="4.5mm">Monto Líquido del Crédito</fo:block>                                    
                                    <fo:block   font-family="Helvetica" font-size="11pt"   text-align="left" margin-left="1mm" line-height="4.5mm"><fo:inline>$</fo:inline><fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline><xsl:value-of select='format-number(OperacionCredito/montoAbonar, "###.###.##0","decimal")' /></fo:inline></fo:block>
                                    <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>                                    
                            </fo:table-cell>
                      </fo:table-row>                     
                </fo:table-body>
              </fo:table>
              <fo:table border-collapse="collapse" text-align="left">                  
                  <fo:table-column column-width="91,95mm" border-top="0.5pt solid black" border-left="0.5pt solid black" />                  
                  <fo:table-column column-width="33.475mm" border-top="0.5pt solid black" border-left="0.5pt solid black" />
                  <fo:table-column column-width="47.475mm" border-top="0.5pt solid black" border-left="0.5pt solid black" />                  
                  <fo:table-column column-width="50.475mm" border-top="0.5pt solid black" border-left="0.5pt solid black" border-right="0.5pt solid black" />

                  <fo:table-body>
                      <fo:table-row>

                            <fo:table-cell >
                                    <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                                    <fo:block   font-family="Helvetica" font-size="11pt"   text-align="left" font-weight="bold" margin-left="1mm" line-height="4.5mm">Fecha Primer Vencimiento:</fo:block>
                                    <fo:block   font-family="Helvetica" font-size="11pt"   text-align="left" margin-left="1mm" line-height="4.5mm"><fo:inline font-weight="bold"><xsl:value-of select="OperacionCredito/fechaPrimerVctoDD" /></fo:inline>
                                    <fo:leader leader-pattern="space" leader-length="1mm"/>de<fo:leader leader-pattern="space" leader-length="1mm"/>
                                    <xsl:variable name="mes" select="OperacionCredito/fechaPrimerVctoMM" />
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
                                   <fo:leader leader-pattern="space" leader-length="1mm"/>del<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="OperacionCredito/fechaPrimerVctoYYYY" /></fo:inline></fo:block>
                                   <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>

                            </fo:table-cell>
                            
                            <fo:table-cell >
                                    <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                                    <fo:block   font-family="Helvetica" font-size="11pt"   text-align="left" font-weight="bold" margin-left="1mm" line-height="4.5mm">Tasa de Interés:</fo:block>                                    
                                    <fo:block   font-family="Helvetica" font-size="11pt"   text-align="left" margin-left="1mm" line-height="4.5mm"><fo:inline><xsl:value-of select='format-number(OperacionCredito/tasaInteres, "###,####","decimal")'/></fo:inline>% mensual</fo:block>
                                    <fo:block   font-family="Helvetica" font-size="11pt"   text-align="left" margin-left="1mm" line-height="4.5mm"><fo:inline><xsl:value-of select='format-number(OperacionCredito/tasaInteresAnual, "###,####","decimal")'/></fo:inline>% anual</fo:block>
                                    <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>                                    
                                    
                            </fo:table-cell>
                            
                            <fo:table-cell >
                                    <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                                    <fo:block   font-family="Helvetica" font-size="11pt"   text-align="left" font-weight="bold" margin-left="1mm" line-height="4.5mm">Impuesto DL 3475</fo:block>                                                                  
                                    <fo:block   font-family="Helvetica" font-size="11pt"   text-align="left" margin-left="1mm" line-height="4.5mm"><fo:inline >$</fo:inline><fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline><xsl:value-of select='format-number(OperacionCredito/impuesto, "###.###.##0","decimal")' /></fo:inline></fo:block>
                                    <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>                                    
                                    
                            </fo:table-cell>
                            
                            <fo:table-cell >
                                    <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                                    <fo:block   font-family="Helvetica" font-size="11pt"   text-align="left" font-weight="bold" margin-left="1mm" line-height="4.5mm">Plazo:</fo:block>                                    
                                    <fo:block   font-family="Helvetica" font-size="11pt"   text-align="left" margin-left="1mm" line-height="4.5mm"><fo:inline><xsl:value-of select="OperacionCredito/nroCuotas" /></fo:inline><fo:leader leader-pattern="space" leader-length="1mm"/>meses</fo:block>
                                    <fo:block   font-family="Helvetica" font-size="11pt"   text-align="left" font-weight="bold" margin-left="1mm" line-height="4.5mm">Nro. de Cuotas Mensuales</fo:block>                                    
                                    <fo:block   font-family="Helvetica" font-size="11pt"   text-align="left" margin-left="1mm" line-height="4.5mm"><fo:inline><xsl:value-of select="OperacionCredito/nroCuotas" /></fo:inline></fo:block>
                                    <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>                                
                                                                        
                            </fo:table-cell>
                      </fo:table-row>                     
                </fo:table-body>
              </fo:table>
              <fo:table border-collapse="collapse" text-align="left">                  
                  <fo:table-column column-width="76,95mm" border-top="0.5pt solid black" border-left="0.5pt solid black" />                                    
                  <fo:table-column column-width="70.475mm" border-top="0.5pt solid black" border-left="0.5pt solid black" />                  
                  <fo:table-column column-width="50.475mm" border-top="0.5pt solid black" border-left="0.5pt solid black" border-right="0.5pt solid black" />

                  <fo:table-body>
                      <fo:table-row>
                            
                            <fo:table-cell >
                                    <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                                    <fo:block   font-family="Helvetica" font-size="11pt"   text-align="left" font-weight="bold" margin-left="1mm" line-height="4.5mm">Valor Cuota:</fo:block>                                    
                                    <fo:block   font-family="Helvetica" font-size="11pt"   text-align="left" margin-left="1mm" line-height="4.5mm"><fo:inline >$</fo:inline><fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline><xsl:value-of select='format-number(OperacionCredito/montoCuota, "###.###.##0","decimal")' /></fo:inline></fo:block>
                                    <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>                                    
                                    
                            </fo:table-cell>
                            
                            <fo:table-cell >
                                    <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                                    <fo:block   font-family="Helvetica" font-size="11pt"   text-align="left" font-weight="bold" margin-left="1mm" line-height="4.5mm">Fecha de liquidación del crédito:</fo:block>                                                                  
                                    <fo:block   font-family="Helvetica" font-size="11pt"   text-align="left" margin-left="1mm" line-height="4.5mm"><fo:inline font-weight="bold"><xsl:value-of select="OperacionCredito/dia" /></fo:inline><fo:leader leader-pattern="space" leader-length="1mm"/>de<fo:leader leader-pattern="space" leader-length="1mm"/>
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
						
						            <fo:leader leader-pattern="space" leader-length="1mm"/>del<fo:leader leader-pattern="space" leader-length="1mm"/>
                                    <fo:inline font-weight="bold"><xsl:value-of select="OperacionCredito/anio" /></fo:inline></fo:block>
                                    <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>                                    
                            </fo:table-cell>
                            
                            <fo:table-cell >
                                    <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                                    <fo:block   font-family="Helvetica" font-size="11pt"   text-align="left" font-weight="bold" margin-left="1mm" line-height="4.5mm">Gastos Notario:</fo:block>                                    
                                    <fo:block   font-family="Helvetica" font-size="11pt"   text-align="left" margin-left="1mm" line-height="4.5mm"><fo:inline >$</fo:inline><fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline><xsl:value-of select='format-number(OperacionCredito/gastoNotario, "###.###.##0","decimal")' /></fo:inline></fo:block>
                                    <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>                                    
                            </fo:table-cell>
                      </fo:table-row>                     
                </fo:table-body>
              </fo:table>
              <fo:table border-collapse="collapse" text-align="left">                  
                  <fo:table-column column-width="91,95mm" border-top="0.5pt solid black" border-left="0.5pt solid black" />                                    
                  <fo:table-column column-width="55.475mm" border-top="0.5pt solid black" border-left="0.5pt solid black" />                  
                  <fo:table-column column-width="50.475mm" border-top="0.5pt solid black" border-left="0.5pt solid black" border-right="0.5pt solid black" />

                  <fo:table-body>
                      <fo:table-row>
                            
                            <fo:table-cell >
                                    <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>                                    
                                    <fo:block   font-family="Helvetica" font-size="11pt"   text-align="left" font-weight="bold" margin-left="1mm" line-height="4.5mm">Carga Anual Equivalente a</fo:block>
                                    <fo:block   font-family="Helvetica" font-size="11pt"   text-align="left" font-weight="bold" margin-left="1mm" line-height="4.5mm">la fecha de celebración del</fo:block>
                                    <fo:block   font-family="Helvetica" font-size="11pt"   text-align="left" font-weight="bold" margin-left="1mm" line-height="4.5mm">presente contrato (CAE):</fo:block>
                                    <fo:block   font-family="Helvetica" font-size="11pt"   text-align="left" margin-left="1mm" line-height="4.5mm"><fo:inline><xsl:value-of select='format-number(OperacionCredito/indicadorCAE, "###,####","decimal")'/></fo:inline><fo:leader leader-pattern="space" leader-length="1mm"/>(%)</fo:block>
                                    <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                                                                        
                            </fo:table-cell>
                            
                            <fo:table-cell >
                                    <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                                    <fo:block   font-family="Helvetica" font-size="11pt"   text-align="left" font-weight="bold" margin-left="1mm" line-height="4.5mm">Seguros Voluntarios:</fo:block>                                                                  
                                    <fo:block   font-family="Helvetica" font-size="11pt"   text-align="left" margin-left="1mm" line-height="4.5mm"><fo:inline font-weight="bold">Desgravamen</fo:inline><fo:leader leader-pattern="space" leader-length="1mm"/>Total: <fo:inline >$</fo:inline><fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline><xsl:value-of select='format-number(OperacionCredito/valorSeguro, "###.###.##0","decimal")' /></fo:inline></fo:block>
                                    <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>                                    
                            </fo:table-cell>
                            
                            <fo:table-cell >
                                    <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                                    <fo:block   font-family="Helvetica" font-size="11pt"   text-align="left" font-weight="bold" margin-left="1mm" line-height="4.5mm">Meses libres de pago:</fo:block>                                    
                                    <fo:block   font-family="Helvetica" font-size="11pt"   text-align="left" margin-left="1mm" line-height="4.5mm">Ninguno</fo:block>
                                    <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>                                    
                            </fo:table-cell>
                      </fo:table-row>                     
                </fo:table-body>
              </fo:table>
              <fo:table border-collapse="collapse" text-align="left">
                 <fo:table-column column-width="120,95mm" border-top="0.5pt solid black" border-left="0.5pt solid black" />
              </fo:table>
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              <fo:block font-family="Helvetica" line-height="5.8mm" font-size="11pt" text-align="justify"  >Para conocer más información de los créditos Universales, sírvase consultar en la página web del Banco: www.bci.cl; www.bcinova.cl; www.tbanc.cl</fo:block>
              
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block> 
              <fo:table border-collapse="collapse" text-align="left">
                <fo:table-column column-width="58mm" />
                <fo:table-column column-width="97mm"  />
                <fo:table-column column-width="10mm"  />
                <fo:table-column column-width="30mm"  />
                <fo:table-body>
                    <fo:table-row>

                          <fo:table-cell >
                                  <fo:block font-family="Helvetica" font-size="11pt"   text-align="left"  line-height="4.5mm" font-weight="bold">NOMBRE O RAZON SOCIAL</fo:block>
                          </fo:table-cell>

                          <fo:table-cell >
                                  <fo:block font-family="Helvetica" line-height="4.5mm" font-size="13pt" text-align="left" ><fo:inline><xsl:value-of select="OperacionCredito/nombreCompletoCliente" /></fo:inline></fo:block>
                          </fo:table-cell>

                          <fo:table-cell >
                                  <fo:block font-family="Helvetica" font-size="11pt"   text-align="left" margin-left="1mm" line-height="4.5mm" font-weight="bold">RUT</fo:block>
                          </fo:table-cell>

                          <fo:table-cell >
                                  <fo:block font-family="Helvetica" font-size="11pt"   text-align="left" margin-left="1mm" line-height="4.5mm"><fo:inline><xsl:value-of select='format-number(OperacionCredito/rutCliente, "###.###.##0","rut")' />-<xsl:value-of select="OperacionCredito/dvCliente" /></fo:inline></fo:block>
                          </fo:table-cell>

                    </fo:table-row>
              </fo:table-body>
              </fo:table>
              
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
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
                                  <fo:block font-family="Helvetica" font-size="11pt"   text-align="left"  line-height="4.5mm" font-weight="bold">DOMICILIO</fo:block>
                          </fo:table-cell>

                          <fo:table-cell >
                                  <fo:block font-family="Helvetica" font-size="11pt"   text-align="left" margin-left="1mm" line-height="4.5mm"><fo:inline><xsl:value-of select="substring(DireccionDeudorBci/direccion,0,32)" /></fo:inline></fo:block>
                          </fo:table-cell>

                          <fo:table-cell >
                                  <fo:block font-family="Helvetica" font-size="11pt"   text-align="left" margin-left="1mm" line-height="4.5mm" font-weight="bold">COMUNA</fo:block>
                          </fo:table-cell>

                          <fo:table-cell >
                                  <fo:block font-family="Helvetica" font-size="11pt"   text-align="left" margin-left="1mm" line-height="4.5mm"><fo:inline><xsl:value-of select="substring(DireccionDeudorBci/comuna,0,20)" /></fo:inline></fo:block>
                          </fo:table-cell>

                          <fo:table-cell >
                                  <fo:block font-family="Helvetica" font-size="11pt"   text-align="left" margin-left="1mm" line-height="4.5mm" font-weight="bold">CIUDAD</fo:block>
                          </fo:table-cell>

                          <fo:table-cell >
                                  <fo:block font-family="Helvetica" font-size="11pt"   text-align="left" margin-left="1mm" line-height="4.5mm"><fo:inline><xsl:value-of select="substring(DireccionDeudorBci/comuna,21,40)" /></fo:inline></fo:block>
                          </fo:table-cell>

                    </fo:table-row>
              </fo:table-body>
              </fo:table>

              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>              
              <fo:block font-family="Helvetica" line-height="4.5mm" font-size="11pt" text-align="center" >3</fo:block>
              

          </fo:flow>
          </fo:page-sequence>
          <!--   AQUI TERMINA LA TERCERA PAGINA  -->
       </fo:root>
    </xsl:template>
</xsl:stylesheet>
