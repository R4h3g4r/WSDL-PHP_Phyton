<?xml version="1.0" encoding="iso-8859-1"?>
<!-- <== version: 2012/05/09 12:00 ==> -->
<xsl:stylesheet version="1.1" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format" exclude-result-prefixes="fo">
  <xsl:output method="xml" version="1.0" omit-xml-declaration="no" indent="yes"/>
  <xsl:decimal-format name="decimal" decimal-separator=',' grouping-separator='.' />
  <xsl:decimal-format name="rut"                           grouping-separator='.' />
  <xsl:template match="impresionContratoCreditoConsumo">
    <fo:root xmlns:fo="http://www.w3.org/1999/XSL/Format">

      <fo:layout-master-set>
        <fo:simple-page-master master-name="contratoBco" page-height="330mm" page-width="215.9mm" margin-top="10mm" margin-bottom="20mm" margin-right="10mm" margin-left="10mm">            
          <fo:region-body margin-top="5mm" margin-bottom="10mm" />
          <fo:region-before extent="7mm" />
          <fo:region-after  extent="7mm" />
        </fo:simple-page-master>
      </fo:layout-master-set>
   
      <fo:page-sequence master-reference="contratoBco" font-size="9pt" font-family="Arial, Helvetica, sans-serif" force-page-count="no-force" initial-page-number="1">

        <fo:static-content flow-name="xsl-region-before" padding="6" >    
        </fo:static-content>

        <fo:static-content flow-name="xsl-region-after">
          <fo:block font-size="10pt" font-family="Arial, Helvetica, sans-serif" line-height="1em + 2pt">
            <fo:table table-layout="fixed" display-align="center">
              <fo:table-column column-width="59mm"/>
              <fo:table-column column-width="59mm"/>
              <fo:table-column column-width="58mm"/>
              <fo:table-body>
                <fo:table-row>
                  <fo:table-cell>
                    <fo:block font-weight="bold" text-align="left">
                        Copia Banco
                    </fo:block>
                  </fo:table-cell>
                  <fo:table-cell>
                    <fo:block font-weight="bold" text-align="center">
                        <fo:inline text-align="right"><fo:page-number/></fo:inline>
                    </fo:block>
                  </fo:table-cell>
                  <fo:table-cell>
                    <fo:block font-weight="bold" text-align="right">

                    </fo:block>
                  </fo:table-cell>
                </fo:table-row>
              </fo:table-body>
            </fo:table>
          </fo:block>
        </fo:static-content>
        
        
        <xsl:call-template name="bodyContrato"/>
        
      </fo:page-sequence>

      <fo:page-sequence master-reference="contratoBco" font-size="9pt" font-family="Arial, Helvetica, sans-serif" force-page-count="no-force" initial-page-number="1">

        <fo:static-content flow-name="xsl-region-before" padding="6" >    
        </fo:static-content>

        <fo:static-content flow-name="xsl-region-after">
          <fo:block font-size="10pt" font-family="Arial, Helvetica, sans-serif" line-height="1em + 2pt">
            <fo:table table-layout="fixed" display-align="center">
              <fo:table-column column-width="59mm"/>
              <fo:table-column column-width="59mm"/>
              <fo:table-column column-width="58mm"/>
              <fo:table-body>
                <fo:table-row>
                  <fo:table-cell>
                    <fo:block font-weight="bold" text-align="left">
                        Copia Cliente
                    </fo:block>
                  </fo:table-cell>
                  <fo:table-cell>
                    <fo:block font-weight="bold" text-align="center">
                        <fo:inline text-align="right"><fo:page-number/></fo:inline>
                    </fo:block>
                  </fo:table-cell>
                  <fo:table-cell>
                    <fo:block font-weight="bold" text-align="right">

                    </fo:block>
                  </fo:table-cell>
                </fo:table-row>
              </fo:table-body>
            </fo:table>
          </fo:block>
        </fo:static-content>
        
        
        <xsl:call-template name="bodyContrato"/>
        
      </fo:page-sequence>
        

    </fo:root>
  </xsl:template>
  
  <xsl:template name="bodyContrato">

        <fo:flow flow-name="xsl-region-body">
        
          <fo:block>
            <fo:external-graphic vertical-align="middle" height="15mm" width="30mm">
              <xsl:attribute name="src">
                  <xsl:value-of select="rutaImagen"/>
              </xsl:attribute>
            </fo:external-graphic> 
          </fo:block>

          <fo:table font-size="10pt" font-family="Arial, Helvetica, sans-serif" space-after.optimum="1mm">
            <fo:table-column column-width="100%" />
            <fo:table-header></fo:table-header>
            <fo:table-body>
              <fo:table-row>
                <fo:table-cell border-style="solid" border-width=".05pt" border-color="white" padding="1mm">
                  <fo:block></fo:block>
                </fo:table-cell>
              </fo:table-row>
              <fo:table-row>
                <fo:table-cell padding="1mm" padding-before="5mm">
                  <fo:block text-align="center">
                    <fo:inline font-size="10pt" font-weight="bold">
                        CONTRATO
                    </fo:inline>
                  </fo:block>
                </fo:table-cell>
              </fo:table-row>
              <fo:table-row>
                <fo:table-cell>
                  <fo:block text-align="center">
                    <fo:inline font-size="10pt" font-weight="bold">
                        CREDITO DE CONSUMO 
                    </fo:inline>
                  </fo:block>
                </fo:table-cell>
              </fo:table-row>
            </fo:table-body>
          </fo:table>

          <fo:table font-size="10pt" font-family="Arial, Helvetica, sans-serif" space-before.optimum="1mm" space-after.optimum="1mm">
            <fo:table-column column-width="100%"/>
            <fo:table-body>
              <fo:table-row>
                <fo:table-cell padding="1mm" padding-before="5mm">
                  <fo:block text-align="justify" line-height="15pt">
                      Entre <fo:inline font-weight="bold">Banco de Crédito e Inversiones</fo:inline>, en adelante el <fo:inline font-weight="bold">"Banco"</fo:inline> o el <fo:inline font-weight="bold">"Acreedor"</fo:inline>,  debidamente 
                      representado, según se dirá, y el <fo:inline font-weight="bold">"Cliente"</fo:inline> o el <fo:inline font-weight="bold">"Deudor"</fo:inline> que se individualiza al final, se celebra el siguiente 
                      Contrato de Crédito de Consumo:
                  </fo:block>
                </fo:table-cell>
              </fo:table-row>
            </fo:table-body>
          </fo:table>

          <fo:table font-size="10pt" font-family="Arial, Helvetica, sans-serif" space-before.optimum="1pt" space-after.optimum="1pt">
            <fo:table-column column-width="100%"/>
            <fo:table-body>
              <fo:table-row>
                <fo:table-cell  padding-before="5mm">
                  <fo:block font-size="12pt" font-weight="bold">
                      PRIMERO: Monto del crédito otorgado con esta fecha.
                  </fo:block>
                </fo:table-cell>
              </fo:table-row>
              <fo:table-row>
                <fo:table-cell padding="1mm">
                  <fo:block text-align="justify" line-height="15pt" padding-after="5mm">
                      Por este acto, Banco de Crédito e Inversiones otorga y da en préstamo al Cliente, quien declara aceptar y
                      recibir a su entera conformidad, la suma de <fo:inline><xsl:apply-templates select="glsMonCreAbr" /></fo:inline> <fo:inline><xsl:apply-templates select="montoCredito" /></fo:inline>
                      (<fo:inline><xsl:apply-templates select="montoCreditoLetras" /></fo:inline> <fo:inline><xsl:apply-templates select="glsMonCreLga" /></fo:inline>)<fo:inline><xsl:apply-templates select="montoCredEnUfEnPesos" /></fo:inline>, en adelante el 
                      "Crédito". 
                  </fo:block>
                </fo:table-cell>
              </fo:table-row>
            </fo:table-body>
          </fo:table>

          <fo:table font-size="10pt" font-family="Arial, Helvetica, sans-serif" space-before.optimum="1pt" space-after.optimum="1pt" display-align="center">
            <fo:table-column column-width="100%"/>
            <fo:table-body>
              <fo:table-row>
                <fo:table-cell>
                  <fo:block font-size="12pt" font-weight="bold" padding-before="5mm">
                      SEGUNDO: Amortización de Capital e Intereses.
                  </fo:block>
                </fo:table-cell>
              </fo:table-row>
              <fo:table-row>
                <fo:table-cell padding="1mm">
                  <fo:block text-align="justify" line-height="15pt" padding-after="5mm">
                      El Cliente se obliga a pagar al Banco en cualquiera de sus sucursales, BCI o BCI Nova, según donde se haya 
                      otorgado este crédito, la suma indicada en la cláusula precedente, en las cuotas, por los montos y en las fechas 
                      que se indican a continuación:  
                  </fo:block>

                  <fo:block font-size="10pt" space-after="3mm" display-align="center">
                    <fo:table table-layout="fixed" display-align="center">
                      <fo:table-column column-width="30mm"/>
                      <fo:table-column column-width="30mm"/>
                      <fo:table-column column-width="32mm"/>
                      <fo:table-column column-width="32mm"/>
                      <fo:table-column column-width="32mm"/>
                      <fo:table-body>
                        <fo:table-row>
                          <fo:table-cell border="solid 1pt gray">
                            <fo:block font-weight="bold" text-align="center">
                                Cuota N°
                            </fo:block>
                          </fo:table-cell>
                          <fo:table-cell border="solid 1pt gray">
                            <fo:block font-weight="bold" text-align="center">
                                Fecha de vencimiento
                            </fo:block>
                          </fo:table-cell>
                          <fo:table-cell border="solid 1pt gray">
                            <fo:block font-weight="bold" text-align="center">
                                Amortización de capital
                            </fo:block>
                            <fo:block font-weight="bold" text-align="center">
                                <fo:inline><xsl:apply-templates select="glsMonCreAbr" /></fo:inline>
                            </fo:block>
                          </fo:table-cell>
                          <fo:table-cell border="solid 1pt gray">
                            <fo:block font-weight="bold" text-align="center">
                                Intereses
                            </fo:block>
                            <fo:block font-weight="bold" text-align="center">
                                <fo:inline><xsl:apply-templates select="glsMonCreAbr" /></fo:inline>
                            </fo:block>
                          </fo:table-cell>
                          <fo:table-cell border="solid 1pt gray">
                            <fo:block font-weight="bold" text-align="center">
                                Monto de la cuota
                            </fo:block>
                            <fo:block font-weight="bold" text-align="center">
                                <fo:inline><xsl:apply-templates select="glsMonCreAbr" /></fo:inline>
                            </fo:block>
                          </fo:table-cell>
                        </fo:table-row>

                        <xsl:for-each select="calendario/element">
                          <fo:table-row>
                            <fo:table-cell border="solid 1pt gray">
                              <fo:block text-align="center">
                                &#x00A0;<xsl:value-of select="cuota"/>
                              </fo:block>
                            </fo:table-cell>
                            <fo:table-cell border="solid 1pt gray">
                              <fo:block text-align="center">
                                &#x00A0;<xsl:value-of select="fechaVenc"/>
                              </fo:block>
                            </fo:table-cell>
                            <fo:table-cell border="solid 1pt gray">
                              <fo:block text-align="center">
                                &#x00A0;<xsl:value-of select="capital"/>
                              </fo:block>
                            </fo:table-cell>
                            <fo:table-cell border="solid 1pt gray">
                              <fo:block text-align="center">
                                &#x00A0;<xsl:value-of select="intereses"/>
                              </fo:block>
                            </fo:table-cell>
                            <fo:table-cell border="solid 1pt gray">
                              <fo:block text-align="center">
                                &#x00A0;<xsl:value-of select="montoCuota"/>
                              </fo:block>
                            </fo:table-cell>
                          </fo:table-row>
                        </xsl:for-each>    
                      </fo:table-body>
                    </fo:table>
                  </fo:block>

                  <fo:block text-align="justify" line-height="15pt" padding-after="5mm">
                      <xsl:value-of select="calendario/msjeCuoton"/>
                  </fo:block>

                  <fo:block text-align="justify" line-height="15pt" padding-after="5mm">
                      El Crédito devengará una tasa de interés fija del <fo:inline><xsl:apply-templates select="tasaInteres" /></fo:inline>% <fo:inline><xsl:apply-templates select="glsPeriodoBaseTasa" /></fo:inline>, la que se devengará a partir de esta 
                      fecha y durante todo el plazo pactado.
                  </fo:block>

                </fo:table-cell>
              </fo:table-row>
            </fo:table-body>
          </fo:table>

          <fo:table font-size="10pt" font-family="Arial, Helvetica, sans-serif" space-before.optimum="1pt" space-after.optimum="1pt">
            <fo:table-column column-width="100%"/>
            <fo:table-body>
              <fo:table-row>
                <fo:table-cell>
                  <fo:block font-size="12pt" font-weight="bold">
                      TERCERO: Prórroga de plazo por día inhábil. 
                  </fo:block>
                </fo:table-cell>
              </fo:table-row>
              <fo:table-row>
                <fo:table-cell padding="1mm">
                  <fo:block text-align="justify" line-height="15pt">
                      Las cuotas de amortización de capital e intereses se pagarán a su vencimiento, siempre que éste corresponda a un día
                      hábil bancario. En caso contrario, se pagarán el día hábil bancario siguiente.
                  </fo:block>
                </fo:table-cell>
              </fo:table-row>
            </fo:table-body>
          </fo:table>

          <fo:table font-size="10pt" font-family="Arial, Helvetica, sans-serif" space-before.optimum="1pt" space-after.optimum="1pt">
            <fo:table-column column-width="100%"/>
            <fo:table-body>
              <fo:table-row>
                <fo:table-cell>
                  <fo:block font-size="12pt" font-weight="bold">
                      CUARTO: Duración del Contrato. Término anticipado por parte del cliente. Prepagos. Causales de término
                      anticipado por parte del Banco. Exigibilidad anticipada de la Obligación.
                  </fo:block>
                </fo:table-cell>
              </fo:table-row>
              <fo:table-row>
                <fo:table-cell padding="1mm">
                  <fo:block text-align="justify" line-height="15pt">
                      4.1. Duración del Contrato: El presente contrato estará vigente hasta  el pago integro del Crédito.
                  </fo:block>
                </fo:table-cell>
              </fo:table-row>
              <fo:table-row>
                <fo:table-cell padding="1mm">
                  <fo:block text-align="justify" line-height="15pt">
                      4.2. Término anticipado por parte del Cliente.
                  </fo:block>
                  <fo:block text-align="justify" line-height="15pt">
                      El Consumidor tendrá derecho a poner término anticipado al Crédito  por su sola voluntad y siempre que extinga totalmente las obligaciones que contrae para con el Banco en virtud del presente instrumento y, en su caso, las obligaciones de los Productos o Servicios Asociados específicos que decida terminar.
                  </fo:block>
                </fo:table-cell>
              </fo:table-row>
              <fo:table-row>
                <fo:table-cell padding="1mm" padding-before="11pt">
                  <fo:block text-align="justify" line-height="15pt" padding-after="2mm">
                      4.3. Prepagos. Si el monto de capital inicial supera el equivalente a UF 5.000, todo pago anticipado, sea total o parcial, será convenido libremente entre el Cliente y el Banco a la fecha del prepago o pago anticipado. A falta de acuerdo, el Cliente podrá en todo caso anticipar el pago, total o parcialmente, y en este último caso, siempre que el importe a pagar sea igual o superior al 20% del capital de la obligación adeudada, pagando además los intereses estipulados devengados y no pagados a la fecha del prepago,  calculados sobre el saldo insoluto, más los intereses estipulados en este instrumento, calculados sobre el capital prepagado desde la fecha del prepago hasta el vencimiento del plazo pactado.
                  </fo:block>
                  <fo:block text-align="justify" line-height="15pt">
                      Si el monto de capital inicial no supera el equivalente a UF 5.000, al capital prepagado deberán sumársele los intereses calculados hasta la fecha del prepago y la comisión de prepago máxima que el artículo 10 de la Ley 18.010 permite pactar.
                  </fo:block>
                  <fo:block text-align="justify" line-height="15pt">
                      En caso de prepago del crédito, el asegurado tiene la opción de que la compañía le devuelva el pago de la prima del seguro, o bien puede solicitar de forma expresa continuar con el seguro contratado.
                  </fo:block>                  
                </fo:table-cell>
              </fo:table-row>
              <fo:table-row>
                <fo:table-cell padding="1mm">
                  <fo:block text-align="justify" line-height="15pt">
                      4.4. Causales de término anticipado por parte del Banco. Exigibilidad anticipada del Crédito.
                  </fo:block>
                  <fo:block text-align="justify" line-height="15pt">
                  </fo:block>
                  <fo:block text-align="justify" line-height="15pt">
                      El Banco podrá poner término anticipado al presente contrato y hacer exigible en forma inmediata y anticipadamente el monto total del saldo insoluto adeudado, el que desde esa misma fecha se considerará de plazo vencido y devengará en favor del Banco o de quien sus derechos represente, el interés máximo convencional que rija durante la mora o simple retardo, en caso de verificarse,  una cualquiera de las siguientes circunstancias:
                  </fo:block>
                  <fo:block text-align="justify" line-height="15pt">
                  </fo:block>
                  <fo:block text-align="justify" line-height="15pt">
                      a) El no pago oportuno de una cualquiera de las cuotas de capital y/o de interés del Crédito. Corresponderá al Cliente acreditar el pago de las cuotas en que se divide el Crédito.
                  </fo:block>
                  <fo:block text-align="justify" line-height="15pt">
                      b) El hecho de constituirse el Deudor en mora o de habérsele protestado, por falta de pago, cualquier documento, pagaré, letra de cambio o cheque, aceptado, suscrito o girado por él a favor del Banco.
                  </fo:block>
                  <fo:block text-align="justify" line-height="15pt">
                      c) Insolvencia, declaración de interdicción, presentación de convenios, quiebra; o tener el cliente la calidad de deudor en un procedimiento concursal de liquidación.
                  </fo:block>
                  <fo:block text-align="justify" line-height="15pt">
                      d) Deterioro en el comportamiento de pago, o cuando habiéndosele solicitado, no aportare al Banco los antecedentes requeridos conducentes a analizar el estado actual de su situación económica o financiera;
                  </fo:block>
                  <fo:block text-align="justify" line-height="15pt">
                      e)  La revocación por parte del Cliente de uno o más mandatos cuya ejecución interesare, además, al Banco, especialmente el otorgado a este último para documentar la deuda u obligación que deriva del presente contrato.
                  </fo:block>
                  <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                  <fo:block>
                      Sin embargo, en operaciones de crédito de dinero cuyo capital sea igual o inferior a doscientas unidades de fomento no podrá hacerse exigible la obligación en forma anticipada, si no una vez cumplidos sesenta días corridos desde que el deudor incurra en mora o simple retardo en el pago.
                  </fo:block>
                </fo:table-cell>
              </fo:table-row>
              <fo:table-row>
                <fo:table-cell padding="1mm">
                  <fo:block text-align="justify" line-height="15pt" padding-after="2mm">
                      4.5. Intereses Moratorios, En caso de retardo o mora en el cumplimiento de esta obligación, ésta devengará desde la fecha del retardo y a favor del acreedor, el interés máximo convencional que rija durante la mora. 
                  </fo:block>
                </fo:table-cell>
              </fo:table-row>
              <fo:table-row>
                <fo:table-cell padding="1mm">
                  <fo:block text-align="justify" line-height="15pt" padding-after="2mm">
                      El Banco deberá comunicar el término del contrato, por escrito al domicilio o al correo electrónico registrado por el Cliente en el Banco, con a lo menos 15 días de anticipación, o con aquella que señalen las normas legales y administrativas vigentes, a la fecha en que se hará efectivo dicho término, salvo que se hubiere declarado la quiebra del Deudor.
                  </fo:block>
                  <fo:block text-align="justify" line-height="15pt" padding-after="2mm">
                      Con todo, tratándose de operaciones de menos de doscientas unidades de fomento el término del contrato no podrá verificarse antes del plazo de 60 días corridos desde que el deudor incurra en mora o simple retardo en el pago.
                  </fo:block>                  
                </fo:table-cell>
              </fo:table-row>
            </fo:table-body>
          </fo:table>

          <fo:table font-size="10pt" font-family="Arial, Helvetica, sans-serif" space-before.optimum="1pt" space-after.optimum="1pt">
            <fo:table-column column-width="100%"/>
            <fo:table-body>
              <fo:table-row>
                <fo:table-cell>
                  <fo:block font-size="12pt" font-weight="bold" padding-before="5mm">
                      QUINTO: Servicio de Atención a Clientes.
                  </fo:block>
                </fo:table-cell>
              </fo:table-row>
              <fo:table-row>
                <fo:table-cell padding="1mm">
                  <fo:block text-align="justify" line-height="15pt">
                      Si ante alguna consulta o reclamo el Cliente quedare insatisfecho con la respuesta brindada por su ejecutivo, podrá acudir al Servicio de Atención al Cliente de Bci, cuyo objeto es atender  tales consultas y reclamos. Se podrá acudir a dicho Servicio a través de los siguientes canales: (a) teléfono N° 6928000; (b) página web www.bci.cl (c) personalmente en cualesquiera de las oficinas del Banco.
                  </fo:block>
                </fo:table-cell>
              </fo:table-row>
            </fo:table-body>
          </fo:table>

          <fo:table font-size="10pt" font-family="Arial, Helvetica, sans-serif" space-before.optimum="1pt" space-after.optimum="1pt">
            <fo:table-column column-width="100%"/>
            <fo:table-body>
              <fo:table-row>
                <fo:table-cell>
                  <fo:block font-size="12pt" font-weight="bold" padding-before="5mm">
                      SEXTO: Empresas encargadas de la cobranza extrajudicial y honorarios de cobranza.
                  </fo:block>
                </fo:table-cell>
              </fo:table-row>
              <fo:table-row>
                <fo:table-cell padding="1mm">
                  <fo:block text-align="justify" line-height="15pt" padding-after="10pt">
                      El Cliente declara conocer y aceptar que existen recargos por la cobranza extrajudicial de créditos impagos, incluyendo honorarios, a partir de la fecha que se indica, los cuales serán cobrados por la sociedad "Servicios de Normalización y Cobranza -Normaliza S.A." o por aquella que el Banco designare en su oportunidad, la que actuará en representación del Banco. La cobranza se efectuará entre 8:00 y 20:00 horas. Declara asimismo conocer y aceptar, que para que la Empresa designada pueda realizar la cobranza es imprescindible que el Banco le suministre antecedentes de los créditos morosos y otros asociados a éstos, como de sus antecedentes comerciales y personales.
                  </fo:block>
                  <fo:block text-align="justify" line-height="15pt" padding-after="10pt">
                      Los honorarios y gastos por las gestiones serán los siguientes, aplicados sobre el total de la deuda o cuota vencida: obligaciones hasta 10 unidades de fomento -UF--  9%; por la parte que exceda de 10 UF y hasta 50 UF, 6% y por la parte que exceda de 50 UF, 3%. Dichos porcentajes se aplicarán una vez transcurridos los primeros 20 días de atraso y podrán ser modificados anualmente en caso de créditos de consumo cuyo plazo de pago exceda de 1 año, siempre que tales cambios se avisen con una anticipación mínima de 2 períodos de pago.
                  </fo:block>
                  <fo:block text-align="justify" line-height="15pt" padding-after="10pt">
                      Las tarifas indicadas se basan en la reglamentación vigente y la Ley N° 19.659 y demás normativa aplicable. Si se modificaren las tarifas y modalidades de cobranza, el Banco podrá también modificarlas, dando previo aviso al Cliente.
                  </fo:block>
                  <fo:block text-align="justify" line-height="15pt" padding-after="10pt">
                      El Cliente declara haber recibido el volante que contiene la tabla de los honorarios antes indicadas, el período de vigencia de ellos y el número de días en que el préstamo o la cuota permanecerá impaga en la institución antes de ser enviado a cobranza externa.
                </fo:block>
                </fo:table-cell>
              </fo:table-row>
            </fo:table-body>
          </fo:table>

          <fo:table font-size="10pt" font-family="Arial, Helvetica, sans-serif" space-before.optimum="1pt" space-after.optimum="1pt">
            <fo:table-column column-width="100%"/>
            <fo:table-body>
              <fo:table-row>
                <fo:table-cell>
                  <fo:block font-size="12pt" font-weight="bold" padding-before="5mm">
                      SEPTIMO: Mandatos
                  </fo:block>
                </fo:table-cell>
              </fo:table-row>
              <fo:table-row>
                <fo:table-cell padding="1mm" padding-before="11pt">
                  <fo:block font-size="12pt" font-weight="bold">
                      Uno) Mandato para el Pago de Productos o Servicios
                  </fo:block>
                  <fo:block text-align="justify" line-height="15pt" padding-after="10pt">
                      En el evento que el Cliente contrate el servicio de pago automático de cuentas o transferencia electrónica de fondos con cargo a cuentas de otros bancos y decidiere, con previo acuerdo del BCI, postergar el pago de todo o parte de una o más cuotas del crédito de que da cuenta este contrato, tal decisión la comunicará al Banco, al menos, con dos días hábiles bancarios de anticipación a la fecha de vencimiento de la respectiva cuota. Lo anterior, con el propósito de que el Banco alcance a avisar dicha postergación al banco debitador.
                      El Cliente declara conocer que la obligación de mantener fondos disponibles suficientes en la cuenta de cargo correspondiente, ha de permitir que la cuota respectiva quede saldada, hasta las 14:00 horas del mismo día del vencimiento. Todo pago efectuado después de dicha hora, se considerará efectuado fuera plazo.
                  </fo:block>
                  <fo:block text-align="justify" line-height="15pt" padding-after="10pt">
                      Mandato Pago Automático: El Cliente, autoriza al Banco para que éste proceda a cargar o debitar en su Cuenta Corriente o Cuenta de Depósito a la Vista, el monto de toda obligación exigible que adeude actualmente o llegare a adeudar en el futuro al señalado Banco, con motivo de los productos o servicios contratados con este último.
                  </fo:block>
                  <fo:block font-size="12pt" font-weight="bold">
                      Dos) Mandato para conceder Prórrogas o esperas:
                  </fo:block>
                  <fo:block text-align="justify" line-height="15pt" padding-after="10pt">
                      El Cliente faculta al Banco para conceder una o más prórrogas, en el bien entendido que no se incremente la tasa de interés pactada en el presente instrumento, respecto del Crédito de Consumo objeto del presente instrumento.
                  </fo:block>
                  <fo:block font-size="12pt" font-weight="bold">
                      Tres) Mandatos para la contratación de seguros:
                  </fo:block>
                  <fo:block text-align="justify" line-height="15pt" padding-after="10pt">
                      En el evento que el cliente contrate seguros voluntarios asociados al Crédito de Consumo de que da cuenta el presente instrumento,  otorga los siguientes mandatos:
                  </fo:block>
                  <fo:block text-align="justify" line-height="15pt" padding-after="10pt">
                      a) Mandato e instrucción al Banco para que contrate por su cuenta los seguros y/o coberturas que indique en la propuesta de seguros que deba suscribir con esta misma fecha, con arreglo a las condiciones generales y particulares de las pólizas emitidas por las Compañías de Seguros que en cada caso se señalan en dicha propuesta.
                  </fo:block>
                  <fo:block text-align="justify" line-height="15pt" padding-after="10pt">
                      b) Mandato al Banco para descontar del monto del crédito que ha solicitado, o adicionar a éste, según corresponda, el valor de la(s) respectiva(s) prima(s) de cada cobertura o, en su caso, cargar los montos que procedan por tal concepto a su tarjeta de crédito, línea de crédito, cuenta corriente, cuenta vista o cualquiera otra acreencia que el cliente mantenga en el Banco. El valor de la(s) prima(s) se determina en función del monto y plazo del crédito, según lo expresado en este instrumento. Las primas aplicables con motivo de la(s) cobertura(s) contratada(s) son de pago único y anticipado en relación al plazo total del préstamo.
                  </fo:block>
                </fo:table-cell>
              </fo:table-row>
            </fo:table-body>
          </fo:table>

          <fo:table font-size="10pt" font-family="Arial, Helvetica, sans-serif" space-before.optimum="1pt" space-after.optimum="1pt">
            <fo:table-column column-width="100%"/>
            <fo:table-body>
              <fo:table-row>
                <fo:table-cell>
                  <fo:block font-size="12pt" font-weight="bold" padding-before="5mm">
                      OCTAVO: Revocación de mandatos
                  </fo:block>
                </fo:table-cell>
              </fo:table-row>
              <fo:table-row>
                <fo:table-cell padding="1mm">
                  <fo:block text-align="justify" line-height="15pt" padding-after="10pt">
                      La revocación de mandatos, deberá comunicarse por escrito en  cualquiera de sus sucursales, BCI o BCI Nova, según donde se haya otorgado este crédito y producirá sus efectos luego de transcurridos 10 días de notificado el Banco.
                  </fo:block>
                  <fo:block text-align="justify" line-height="15pt" padding-after="10pt">
                      La revocación del mandato para pagar automáticamente el crédito  surtirá efecto a contar del período subsiguiente de pago o abono que corresponda a la obligación. La rendición de cuentas del ejercicio del mandato, se verificará mediante la entrega al Cliente de los comprobantes, cartolas u otros documentos, según fuere el caso, generados en la respectiva operación.
                  </fo:block>
                </fo:table-cell>
              </fo:table-row>
            </fo:table-body>
          </fo:table>

          <fo:table font-size="10pt" font-family="Arial, Helvetica, sans-serif" space-before.optimum="1pt" space-after.optimum="1pt">
            <fo:table-column column-width="100%"/>
            <fo:table-body>
              <fo:table-row>
                <fo:table-cell>
                  <fo:block font-size="12pt" font-weight="bold" padding-before="5mm">
                      NOVENO: Sello Sernac.
                  </fo:block>
                </fo:table-cell>
              </fo:table-row>
              <fo:table-row>
                <fo:table-cell padding="1mm">
                  <fo:block text-align="justify" line-height="15pt" padding-after="10pt">
                      El contrato no cuenta con sello Sernac
                  </fo:block>
                </fo:table-cell>
              </fo:table-row>
            </fo:table-body>
          </fo:table>

          <fo:table font-size="10pt" font-family="Arial, Helvetica, sans-serif" space-before.optimum="1pt" space-after.optimum="1pt">
            <fo:table-column column-width="100%"/>
            <fo:table-body>
              <fo:table-row>
                <fo:table-cell>
                  <fo:block font-size="12pt" font-weight="bold">
                      DECIMO
                  </fo:block>
                </fo:table-cell>
              </fo:table-row>
              <fo:table-row>
                <fo:table-cell>
                  <fo:block font-size="12pt" font-weight="bold" padding-before="5mm">
                      Desglose pormenorizado de todas las sumas de dinero que explican el valor efectivo del Crédito de Consumo contratado.
                  </fo:block>
                </fo:table-cell>
              </fo:table-row>
              <fo:table-row>
                <fo:table-cell padding="1mm">
                  <fo:block font-size="10pt" space-after="10mm" padding-before="11pt">
                    <fo:table table-layout="fixed">
                      <fo:table-column column-width="35.2mm"/>
                      <fo:table-column column-width="35.2mm"/>
                      <fo:table-column column-width="35.2mm"/>
                      <fo:table-column column-width="35.2mm"/>
                      <fo:table-column column-width="35.2mm"/>
                      <fo:table-body>
                        <fo:table-row>
                          <fo:table-cell number-columns-spanned="2" border="solid 1pt gray" >
                            <fo:block font-weight="bold" text-align="left">
                                   &#160;
                            </fo:block>
                            <fo:block font-weight="bold" text-align="left" start-indent="0.1in">
                                Número de Crédito
                            </fo:block>
                            <fo:block font-weight="bold" text-align="left" start-indent="0.1in">
                              <fo:inline>
                                <xsl:value-of select="numeroOperacion"/>
                              </fo:inline>
                            </fo:block>
                          </fo:table-cell>
                          <fo:table-cell number-columns-spanned="3" border="solid 1pt gray" >
                            <fo:block font-weight="bold" text-align="left">
                                Unidad Monetaria:
                            </fo:block>
                            <fo:block font-weight="bold" text-align="left">

                              <fo:table>
                                <fo:table-column column-width="7mm"/>
                                <fo:table-column column-width="2mm"/>
                                <fo:table-column column-width="96.6mm"  />
                                <fo:table-body>
                                  <fo:table-row display-align="after">
                                    <fo:table-cell>
                                      <fo:block>
                                        <fo:table font-size="10pt" font-family="Arial, Helvetica, sans-serif" space-before.optimum="1pt" space-after.optimum="1pt">
                                          <fo:table-column />
                                          <fo:table-body>
                                            <fo:table-row display-align="center">
                                              <fo:table-cell border="solid 1pt gray" padding-before="3pt">
                                                <fo:block text-align="center" line-height="5pt" padding-after="5pt">
                                                  <fo:inline>
                                                    <xsl:value-of select="uniMonedaenPesos"/>
                                                  </fo:inline>
                                                </fo:block>
                                              </fo:table-cell>
                                            </fo:table-row>
                                          </fo:table-body>
                                        </fo:table>
                                      </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                      <fo:block>
                                      </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                      <fo:block text-align="justify" line-height="15pt" padding-after="3pt">
                                          Pesos
                                      </fo:block>
                                    </fo:table-cell>
                                  </fo:table-row>
                                  <fo:table-row display-align="after">
                                    <fo:table-cell>
                                      <fo:block>
                                        <fo:table font-size="10pt" font-family="Arial, Helvetica, sans-serif" space-before.optimum="1pt" space-after.optimum="1pt">
                                          <fo:table-column />
                                          <fo:table-body>
                                            <fo:table-row display-align="center">
                                              <fo:table-cell border="solid 1pt gray" padding-before="5pt">
                                                <fo:block text-align="center" line-height="5pt" padding-after="5pt">
                                                  <fo:inline>
                                                    <xsl:value-of select="uniMonedaenUf"/>
                                                  </fo:inline>
                                                </fo:block>
                                              </fo:table-cell>
                                            </fo:table-row>
                                          </fo:table-body>
                                        </fo:table>
                                      </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                      <fo:block>
                                      </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                      <fo:block text-align="justify" line-height="15pt" padding-after="3pt">
                                           UF equivalente en pesos al día de hoy a $ <xsl:value-of select="montoCredEnUf"/>
                                      </fo:block>
                                    </fo:table-cell>
                                  </fo:table-row>
                                </fo:table-body>
                              </fo:table>
                            </fo:block>
                          </fo:table-cell>
                        </fo:table-row>
                        
                        <fo:table-row>
                          <fo:table-cell border="solid 1pt gray" >
                            <fo:block font-weight="bold" text-align="left">
                                Monto Bruto del Crédito
                            </fo:block>
                            <fo:block font-weight="bold" text-align="left">
                              <fo:inline>
                                <xsl:value-of select="montoBruto"/>
                              </fo:inline>
                            </fo:block>
                          </fo:table-cell>
                          <fo:table-cell border="solid 1pt gray" >
                            <fo:block font-weight="bold" text-align="left">
                                 Monto Líquido del Crédito
                            </fo:block>
                            <fo:block font-weight="bold" text-align="left">
                              $
                              <fo:inline>
                                <xsl:value-of select="montoLiquidoCredito"/>
                              </fo:inline>
                            </fo:block>
                          </fo:table-cell>
                          <fo:table-cell border="solid 1pt gray" >
                            <fo:block font-weight="bold" text-align="left">
                                Costo Total del Crédito
                            </fo:block>
                            <fo:block font-weight="bold" text-align="left">
                              $
                              <fo:inline>
                                <xsl:value-of select="costoTotalDelCredito"/>
                              </fo:inline>
                            </fo:block>
                          </fo:table-cell>
                          <fo:table-cell border="solid 1pt gray" >
                            <fo:block font-weight="bold" text-align="left">
                                Plazo del Crédito.
                            </fo:block>
                            <fo:block font-weight="bold" text-align="left">
                              <fo:inline>
                                <xsl:value-of select="plazoDelCredito"/>
                              </fo:inline> 
                              meses
                            </fo:block>
                          </fo:table-cell>
                          <fo:table-cell border="solid 1pt gray" >
                            <fo:block font-weight="bold" text-align="left">
                                Día de Vencimiento
                            </fo:block>
                            <fo:block font-weight="bold" text-align="left">
                              <fo:inline>
                                <xsl:value-of select="diaVencimiento"/>
                              </fo:inline> 
                              de cada mes.
                            </fo:block>
                          </fo:table-cell>
                        </fo:table-row>
                        
                        <fo:table-row>
                          <fo:table-cell border="solid 1pt gray" >
                            <fo:block font-weight="bold" text-align="left">
                                Fecha Primer Vencimiento
                            </fo:block>
                            <fo:block font-weight="bold" text-align="left">
                              <fo:inline>
                                <xsl:value-of select="fecha1erVenc"/>
                              </fo:inline> 
                            </fo:block>
                          </fo:table-cell>
                          <fo:table-cell border="solid 1pt gray" >
                            <fo:block font-weight="bold" text-align="left">
                                Tasa de Interés:
                            </fo:block>
                            <fo:block font-weight="bold" text-align="left">
                              <fo:inline>
                                <xsl:value-of select="tasaInteresMensual"/>
                              </fo:inline> 
                              % mensual
                            </fo:block>
                            <fo:block font-weight="bold" text-align="left">
                              <fo:inline>
                                <xsl:value-of select="tasaInteresAnual"/>
                              </fo:inline> 
                              % anual
                            </fo:block>
                          </fo:table-cell>
                          <fo:table-cell border="solid 1pt gray" >
                            <fo:block font-weight="bold" text-align="left">
                                Valor de la Cuota
                            </fo:block>
                            <fo:block font-weight="bold" text-align="left">
                              <fo:inline>
                                <xsl:value-of select="valorCuota"/>
                              </fo:inline> 
                            </fo:block>
                          </fo:table-cell>
                          <fo:table-cell number-columns-spanned="2" border="solid 1pt gray" >
                            <fo:block font-weight="bold" text-align="left">
                                Valor de la Cuota Básica de Referencia
                            </fo:block>
                            <fo:block font-weight="bold" text-align="left">
                              <fo:inline>
                                <xsl:value-of select="valorCuotaReferencia"/>
                              </fo:inline> 
                            </fo:block>
                          </fo:table-cell>
                        </fo:table-row>
                        
                        <fo:table-row>
                          <fo:table-cell border="solid 1pt gray" >
                            <fo:block font-weight="bold" text-align="left">
                                Meses libres de pago:
                            </fo:block>
                          </fo:table-cell>
                          <fo:table-cell number-columns-spanned="2" border="solid 1pt gray" >
                            <fo:block font-weight="bold" text-align="center">
                              <xsl:if test="mesNoPago1 != ''">
                                Meses de No pago : 
                                <fo:inline>
                                  <xsl:value-of select="mesNoPago1"/>
                                  <xsl:if test="mesNoPago2 != ''">
                                    , <xsl:value-of select="mesNoPago2"/>
                                  </xsl:if>
                                </fo:inline> 
                              </xsl:if>
                            </fo:block>
                          </fo:table-cell>
                          <fo:table-cell number-columns-spanned="2" border="solid 1pt gray" >
                            <fo:block font-weight="bold" text-align="center">
                              <xsl:if test="mesesDeGracia != ''">
                                Meses de gracia : 
                                <fo:inline>
                                  <xsl:value-of select="mesesDeGracia"/>
                                </fo:inline>
                              </xsl:if>
                            </fo:block>
                          </fo:table-cell>
                        </fo:table-row>
                      </fo:table-body>
                    </fo:table>
                  </fo:block>
                </fo:table-cell>
              </fo:table-row>
            </fo:table-body>
          </fo:table>

          <fo:table font-size="10pt" font-family="Arial, Helvetica, sans-serif" space-before.optimum="1pt" space-after.optimum="1pt">
            <fo:table-column column-width="100%"/>
            <fo:table-body>
              <fo:table-row>
                <fo:table-cell padding="1mm">
                  <fo:block font-size="10pt">
                    <fo:table table-layout="fixed">
                      <fo:table-column column-width="88mm"/>
                      <fo:table-column column-width="88mm"/>
                      <fo:table-body>
                        <fo:table-row>
                          <fo:table-cell border="solid 1pt gray" >
                            <fo:block font-weight="bold" text-align="left">
                                Gastos o Cargos Propios del Crédito
                            </fo:block>
                            <fo:block font-weight="bold" text-align="left" start-indent="0.2in">
                                &#8226;   Impuesto de Timbres y Estampillas:
                            </fo:block>
                            <fo:block text-align="left" start-indent="0.3in">
                              $
                              <fo:inline>
                                <xsl:value-of select="impuestoTimEstamp"/>
                              </fo:inline>
                            </fo:block>
                            <fo:block font-weight="bold" text-align="left" start-indent="0.2in">
                                &#8226;   Gastos Notario:
                            </fo:block>
                            <fo:block text-align="left" start-indent="0.3in">
                              $
                              <fo:inline>
                                <xsl:value-of select="gastosNotario"/>
                              </fo:inline>
                            </fo:block>
                          </fo:table-cell>
                          <fo:table-cell border="solid 1pt gray" >
                            <fo:block font-weight="bold" text-align="left">
                                Gastos o Cargos por Productos o Servicios Voluntariamente contratados.
                            </fo:block>
                            <xsl:if test="count(seguros/glosavalor) > 0">
                            <fo:block font-weight="bold" text-align="left">
                                Seguros Voluntarios:
                            </fo:block>
                            <fo:table table-layout="fixed">
                                <fo:table-column column-width="55mm"/>
                                <fo:table-column column-width="25mm"/>
                                <fo:table-body>
                                    <fo:table-row>
                                        <fo:table-cell border="solid 1pt gray" >
                                            <fo:block font-weight="bold" text-align="left">
                                                Tipo de Seguro
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell border="solid 1pt gray" >
                                            <fo:block font-weight="bold" text-align="left">
                                                Prima
                                            </fo:block>
                                        </fo:table-cell>
                                    </fo:table-row>
                                    <xsl:for-each select="seguros/glosavalor">
	                                    <fo:table-row>
	                                        <fo:table-cell border="solid 1pt gray" >
	                                            <fo:block font-weight="bold" text-align="left">
	                                                <xsl:value-of select="glosaTipoSeguro"/>
	                                            </fo:block>
	                                        </fo:table-cell>
	                                        <fo:table-cell border="solid 1pt gray" >
                                                <fo:block font-weight="bold" text-align="left">
                                                    <xsl:value-of select="tasaMontoFinal"/>
                                                </fo:block>
                                            </fo:table-cell>
	                                    </fo:table-row>
                                    </xsl:for-each>
                                 </fo:table-body>
                            </fo:table>
                            </xsl:if>
                            <xsl:if test="count(seguros/glosavalor) = 0">
                                <fo:block font-weight="bold" text-align="left" start-indent="0.2in">
	                                Sin seguros contratados.
	                            </fo:block>
                            </xsl:if>    
                          </fo:table-cell>
                        </fo:table-row>
                      </fo:table-body>
                    </fo:table>
                  </fo:block>
                </fo:table-cell>
              </fo:table-row>
            </fo:table-body>
          </fo:table>

          <fo:table font-size="10pt" font-family="Arial, Helvetica, sans-serif" space-before.optimum="1pt" space-after.optimum="1pt">
            <fo:table-column column-width="176mm"/>
            <fo:table-body>
              <fo:table-row>
                <fo:table-cell padding="1mm">
                  <fo:block font-size="10pt" padding-before="11pt" padding-after="10pt">
                    <fo:table table-layout="fixed">
                      <fo:table-column column-width="100%"/>
                      <fo:table-body>
                        <fo:table-row>
                          <fo:table-cell border="solid 1pt gray" >
                            <fo:block font-weight="bold" text-align="left">
                                Carga Anual Equivalente (CAE) a <fo:inline><xsl:apply-templates select="diafirma" /></fo:inline> de <fo:inline><xsl:apply-templates select="mesFirma" /></fo:inline> del año <fo:inline><xsl:apply-templates select="annoFirma" /></fo:inline>:
                            </fo:block>
                            <fo:block font-weight="bold" text-align="left">
                              <fo:inline>
                                <xsl:value-of select='format-number(cargaAnualEquivalente, "###.###.##0,00","decimal")'/>
                              </fo:inline>
                            </fo:block>
                          </fo:table-cell>
                        </fo:table-row>
                      </fo:table-body>
                    </fo:table>
                  </fo:block>
                </fo:table-cell>
              </fo:table-row>
            </fo:table-body>
          </fo:table>

          <fo:table space-before.optimum="1pt" space-after.optimum="1pt">
            <fo:table-column column-width="176mm"/>
            <fo:table-body>
              <fo:table-row>
                <fo:table-cell border="solid 1pt gray">
                  <fo:block text-align="center" padding-before="11pt">
                    INDIVIDUALIZACION DE LAS PARTES
                  </fo:block>
                </fo:table-cell>
              </fo:table-row>
            </fo:table-body>
          </fo:table>

          <fo:table font-size="10pt" font-family="Arial, Helvetica, sans-serif" space-before.optimum="1pt" space-after.optimum="1pt">
            <fo:table-column column-width="100%"/>
            <fo:table-body>
              <fo:table-row>
                <fo:table-cell padding="1mm">
                  <fo:block font-size="10pt" space-after="10mm" padding-before="11pt">
                    <fo:table table-layout="fixed">
                      <fo:table-column column-width="44mm"/>
                      <fo:table-column column-width="44mm"/>
                      <fo:table-column column-width="44mm"/>
                      <fo:table-column column-width="44mm"/>
                      <fo:table-body>
                        <fo:table-row>
                          <fo:table-cell border="solid 1pt gray" >
                            <fo:block font-weight="bold" text-align="left">
                                Nombre o Razón Social Cliente o Deudor 
                            </fo:block>
                          </fo:table-cell>
                          <fo:table-cell number-columns-spanned="3" border="solid 1pt gray" >
                            <fo:block font-weight="bold" text-align="left">
                              <fo:inline>
                                <xsl:value-of select="nombreCliente"/>
                              </fo:inline> 
                            </fo:block>
                          </fo:table-cell>
                        </fo:table-row>

                        <fo:table-row>
                          <fo:table-cell border="solid 1pt gray" >
                            <fo:block font-weight="bold" text-align="left">
                                RUT o Cédula de identidad N° 
                            </fo:block>
                          </fo:table-cell>
                          <fo:table-cell number-columns-spanned="3" border="solid 1pt gray" >
                            <fo:block font-weight="bold" text-align="left">
                              <fo:inline>
                                <xsl:value-of select="rutCliente"/> - <xsl:value-of select="digVerifCliente"/>
                              </fo:inline> 
                            </fo:block>
                          </fo:table-cell>
                        </fo:table-row>

                        <fo:table-row>
                          <fo:table-cell border="solid 1pt gray" >
                            <fo:block font-weight="bold" text-align="left">
                                Nombre Apoderado
                            </fo:block>
                          </fo:table-cell>
                          <fo:table-cell number-columns-spanned="3" border="solid 1pt gray" >
                            <fo:block font-weight="bold" text-align="left">
                              <fo:inline>
                                <xsl:value-of select="enRepresentacionDe"/>
                              </fo:inline> 
                            </fo:block>
                          </fo:table-cell>
                        </fo:table-row>

                        <fo:table-row>
                          <fo:table-cell border="solid 1pt gray" >
                            <fo:block font-weight="bold" text-align="left">
                                Domicilio 
                            </fo:block>
                          </fo:table-cell>
                          <fo:table-cell border="solid 1pt gray" >
                            <fo:block font-weight="bold" text-align="left">
                              <fo:inline>
                                Calle: <xsl:value-of select="dirCliente"/>
                              </fo:inline> 
                            </fo:block>
                          </fo:table-cell>
                          <fo:table-cell border="solid 1pt gray" >
                            <fo:block font-weight="bold" text-align="left">
                              <fo:inline>
                                Comuna: <xsl:value-of select="comCliente"/>
                              </fo:inline> 
                            </fo:block>
                          </fo:table-cell>
                          <fo:table-cell border="solid 1pt gray" >
                            <fo:block font-weight="bold" text-align="left">
                              <fo:inline>
                                Ciudad: <xsl:value-of select="cuiCliente"/>
                              </fo:inline> 
                            </fo:block>
                          </fo:table-cell>
                        </fo:table-row>

                        <fo:table-row>
                          <fo:table-cell border="solid 1pt gray" >
                            <fo:block font-weight="bold" text-align="left">
                                Banco de Crédito e Inversiones
                            </fo:block>
                          </fo:table-cell>
                          <fo:table-cell number-columns-spanned="3" border="solid 1pt gray" >
                            <fo:block font-weight="bold" text-align="left">
                              <fo:inline>
                                RUT. 97.006.000 - 6
                              </fo:inline> 
                            </fo:block>
                          </fo:table-cell>
                        </fo:table-row>

                        <fo:table-row>
                          <fo:table-cell border="solid 1pt gray" >
                            <fo:block font-weight="bold" text-align="left">
                                Nombre Apoderado Banco
                            </fo:block>
                          </fo:table-cell>
                          <fo:table-cell number-columns-spanned="3" border="solid 1pt gray" >
                            <fo:block font-weight="bold" text-align="left">
                              <fo:inline>
                                <xsl:value-of select="nombreApoderadoBco"/>
                              </fo:inline> 
                            </fo:block>
                          </fo:table-cell>
                        </fo:table-row>

                        <fo:table-row>
                          <fo:table-cell border="solid 1pt gray" >
                            <fo:block font-weight="bold" text-align="left">
                                Domicilio
                            </fo:block>
                          </fo:table-cell>
                          <fo:table-cell number-columns-spanned="3" border="solid 1pt gray" >
                            <fo:block font-weight="bold" text-align="left">
                              <fo:inline>
                                Avenida El Golf N° 125, Las Condes, Santiago. <xsl:value-of select="dirBco"/>
                              </fo:inline> 
                            </fo:block>
                          </fo:table-cell>
                        </fo:table-row>

                      </fo:table-body>
                    </fo:table>
                  </fo:block>
                </fo:table-cell>
              </fo:table-row>
            </fo:table-body>
          </fo:table>

          <fo:table font-size="10pt" font-family="Arial, Helvetica, sans-serif" space-before.optimum="1pt" space-after.optimum="1pt">
            <fo:table-column column-width="100%"/>
            <fo:table-body>
              <fo:table-row>
                <fo:table-cell>
                  <fo:block font-size="12pt" font-weight="bold" text-align="right" padding-before="15pt">
                      En &#x00A0;&#x00A0;&#x00A0;&#x00A0;&#x00A0;&#x00A0;&#x00A0;&#x00A0;&#x00A0;&#x00A0;&#x00A0;&#x00A0;&#x00A0;&#x00A0;&#x00A0;&#x00A0;&#x00A0;&#x00A0;&#x00A0;<fo:inline><xsl:apply-templates select="cuidadFirma" /></fo:inline>, a <fo:inline><xsl:apply-templates select="diafirma" /></fo:inline> de <fo:inline><xsl:apply-templates select="mesFirma" /></fo:inline> del año <fo:inline><xsl:apply-templates select="annoFirma" /></fo:inline>
                  </fo:block>
                </fo:table-cell>
              </fo:table-row>
            </fo:table-body>
          </fo:table>

          <fo:table font-size="10pt" font-family="Arial, Helvetica, sans-serif" space-before.optimum="1pt" space-after.optimum="1pt">
            <fo:table-column column-width="88mm"/>
            <fo:table-column column-width="88mm"/>
            <fo:table-body>
              <fo:table-row>
                <fo:table-cell>
                  <fo:block font-size="12pt" font-weight="bold" text-align="center" padding-before="50pt">
                  </fo:block>
                </fo:table-cell>   
                <fo:table-cell>
                  <fo:block font-size="12pt" font-weight="bold" text-align="center" padding-before="50pt">
                    <fo:external-graphic vertical-align="middle" height="40mm" width="50mm">
                      <xsl:attribute name="src">
                          <xsl:value-of select="rutaFirma"/>
                      </xsl:attribute>
                    </fo:external-graphic>
                  </fo:block>
                </fo:table-cell>   
              </fo:table-row>
              <fo:table-row keep-with-previous="always">
                <fo:table-cell>
                  <fo:block font-size="12pt" font-weight="bold" text-align="center" padding-before="2pt">
                      ___________________________________
                  </fo:block>
                  <fo:block font-size="12pt" font-weight="bold" text-align="center" padding-before="2pt">
                      Firma de Cliente
                  </fo:block>
                </fo:table-cell>
                <fo:table-cell>
                  <fo:block font-size="12pt" font-weight="bold" text-align="center" padding-before="2pt">
                      ___________________________________
                  </fo:block>
                  <fo:block font-size="12pt" font-weight="bold" text-align="center" padding-before="2pt">
                      p.p. Banco de Crédito e Inversiones
                  </fo:block>
                </fo:table-cell>
              </fo:table-row>
            </fo:table-body>
          </fo:table>


          <fo:table break-before="page" font-size="10pt" font-family="Arial, Helvetica, sans-serif" space-before.optimum="50pt" space-after.optimum="1pt">
            <fo:table-column column-width="100%" />
            <fo:table-body>
              <fo:table-row>
                <fo:table-cell padding="1mm">
                  <fo:block text-align="center" padding-before="5pt">
                    <fo:inline font-size="10pt" font-weight="bold">
                        ANEXO DE PRODUCTOS O SERVICIOS ASOCIADOS
                    </fo:inline>
                  </fo:block>
                </fo:table-cell>
              </fo:table-row>
            </fo:table-body>
          </fo:table>

          <fo:table font-size="10pt" font-family="Arial, Helvetica, sans-serif" space-before.optimum="1pt" space-after.optimum="1pt">
            <fo:table-column column-width="100%"/>
            <fo:table-body>
              <fo:table-row>
                <fo:table-cell>
                  <fo:block font-size="12pt" font-weight="bold" padding-before="15pt">
                      Contratación de Seguros.
                  </fo:block>
                </fo:table-cell>
              </fo:table-row>
              <fo:table-row>
                <fo:table-cell padding="1mm">
                  <fo:block text-align="justify" line-height="15pt" padding-after="10pt">
                      Uno) El cliente por el presente instrumento declara su voluntad de contratar los seguros que se indican a continuación:
                  </fo:block>
                </fo:table-cell>
              </fo:table-row>
            </fo:table-body>
          </fo:table>

          <fo:table font-size="10pt" font-family="Arial, Helvetica, sans-serif" space-before.optimum="1pt" space-after.optimum="1pt">
            <fo:table-column column-width="100%"/>
            <fo:table-body>
              <fo:table-row>
                <fo:table-cell padding="1mm">
                  <fo:block font-size="10pt" space-after="1mm">
                    <fo:table table-layout="fixed">
                      <fo:table-column column-width="proportional-column-width(75)"/>
                      <fo:table-column column-width="proportional-column-width(25)"/>
                      <fo:table-body>
                        <fo:table-row>
                          <fo:table-cell border="solid 1pt gray">
                            <fo:block font-weight="bold" text-align="center">
                                SEGUROS CONTRATADOS TITULAR
                            </fo:block>
                          </fo:table-cell>
                          <fo:table-cell border="solid 1pt gray" >
                            <fo:block font-weight="bold" text-align="center">
                                PRIMA BRUTA
                            </fo:block>
                          </fo:table-cell>
                        </fo:table-row>                        
                        
                        <xsl:if test="count(seguros/seguroTitular) > 0">
                        <xsl:for-each select="seguros/seguroTitular">
                          <fo:table-row>
                            <fo:table-cell border="solid 1pt gray" >
                              <fo:block text-align="left">
                                <fo:inline>
                                    &#x00A0;<xsl:value-of select="descripcion"/>
                                </fo:inline>
                              </fo:block>
                            </fo:table-cell>
                            <fo:table-cell border="solid 1pt gray" >
                              <fo:block text-align="left">
                                <fo:inline>
                                    &#x00A0;<xsl:value-of select="montoPrima"/>
                                </fo:inline>
                              </fo:block>
                            </fo:table-cell>
                          </fo:table-row>
                        </xsl:for-each>
                        </xsl:if>
                        
                        <xsl:if test="count(seguros/seguroTitular) = 0">
                          <fo:table-row>
                            <fo:table-cell border="solid 1pt gray" >
                              <fo:block text-align="center">
                                Sin seguros contratados Titular.
                              </fo:block>
                            </fo:table-cell>
                            <fo:table-cell border="solid 1pt gray" >
                              <fo:block text-align="left">
                                <fo:inline>
                                    &#x00A0;
                                </fo:inline>
                              </fo:block>
                            </fo:table-cell>
                          </fo:table-row>
                        </xsl:if>
                                                
                      </fo:table-body>
                    </fo:table>
                  </fo:block>
                </fo:table-cell>
              </fo:table-row>
                
              <fo:table-row>
                <fo:table-cell padding="1mm">
                  <fo:block font-size="10pt" space-after="1mm">
                    <fo:table table-layout="fixed">
                      <fo:table-column column-width="proportional-column-width(75)"/>
                      <fo:table-column column-width="proportional-column-width(25)"/>
                      <fo:table-body>
                        <fo:table-row>
                          <fo:table-cell border="solid 1pt gray">
                            <fo:block font-weight="bold" text-align="center">
                                SEGUROS CONTRATADOS AVAL
                            </fo:block>
                          </fo:table-cell>
                          <fo:table-cell border="solid 1pt gray" >
                            <fo:block font-weight="bold" text-align="center">
                                PRIMA BRUTA
                            </fo:block>
                          </fo:table-cell>
                        </fo:table-row> 
                                               
                        <xsl:if test="count(seguros/seguroAval) > 0">
                        <xsl:for-each select="seguros/seguroAval">
                          <fo:table-row>
                            <fo:table-cell border="solid 1pt gray" >
                              <fo:block text-align="left">
                                <fo:inline>
                                    &#x00A0;<xsl:value-of select="descripcion"/>
                                </fo:inline>
                              </fo:block>
                            </fo:table-cell>
                            <fo:table-cell border="solid 1pt gray" >
                              <fo:block text-align="left">
                                <fo:inline>
                                    &#x00A0;<xsl:value-of select="montoPrima"/>
                                </fo:inline>
                              </fo:block>
                            </fo:table-cell>
                          </fo:table-row>
                        </xsl:for-each> 
                        </xsl:if>
                        
                        <xsl:if test="count(seguros/seguroAval) = 0">
                          <fo:table-row>
                            <fo:table-cell border="solid 1pt gray" >
                              <fo:block text-align="center">
                                Sin seguros contratados Aval.
                              </fo:block>
                            </fo:table-cell>
                            <fo:table-cell border="solid 1pt gray" >
                              <fo:block text-align="left">
                                <fo:inline>
                                    &#x00A0;
                                </fo:inline>
                              </fo:block>
                            </fo:table-cell>
                          </fo:table-row>
                        </xsl:if>
                           
                      </fo:table-body>
                    </fo:table>
                  </fo:block>
                </fo:table-cell>                
                
              </fo:table-row>
            </fo:table-body>
          </fo:table>

          <fo:table font-size="10pt" font-family="Arial, Helvetica, sans-serif" space-before.optimum="1pt" space-after.optimum="1pt">
            <fo:table-column column-width="100%"/>
            <fo:table-body>
              <fo:table-row>
                <fo:table-cell>
                  <fo:block text-align="justify" line-height="15pt">
                      Prima Total en pesos =   <xsl:value-of select="totalTasaMontoFinal"/>
                  </fo:block>
                </fo:table-cell>
              </fo:table-row>
            </fo:table-body>
          </fo:table>

          <fo:table font-size="10pt" font-family="Arial, Helvetica, sans-serif" space-before.optimum="1pt" space-after.optimum="1pt">
            <fo:table-column column-width="100%"/>
            <fo:table-body>
              <fo:table-row>
                <fo:table-cell padding="1mm" >
                  <fo:block text-align="justify" line-height="15pt" padding-after="2mm">
                      Dos) Por este acto el Cliente se incorpora como asegurado a una póliza o contrato de seguro, cuyas condiciones han sido convenidas por Banco de Crédito e Inversiones, directamente con la compañía de seguros.
                  </fo:block>
                </fo:table-cell>
              </fo:table-row>
            </fo:table-body>
          </fo:table>

          <fo:table font-size="10pt" font-family="Arial, Helvetica, sans-serif" space-before.optimum="1pt" space-after.optimum="1pt">
            <fo:table-column column-width="100%"/>
            <fo:table-body>
              <fo:table-row>
                <fo:table-cell padding="1mm" >
                  <fo:block text-align="justify" line-height="15pt" padding-after="2mm">
                      Tres) El Cliente declara estar en conocimiento que puede contratar los seguros indicados directamente y por su cuenta en cualquier entidad aseguradora y a través de cualquier corredor de seguros, por lo que su contratación tiene el carácter de voluntario. Asimismo declara que ha tomado conocimiento del derecho a decidir sobre la contratación de los seguros y a la libre elección del intermediario y de la compañía aseguradora, de conformidad a las disposiciones de la Superintendencia de Valores y Seguros.  Asimismo, declara estar en conocimiento que puede obtener el crédito que el Banco por este acto le otorga, con la misma tasa y demás condiciones establecidas en este instrumento, aun cuando no adquiriera tales seguros.
                  </fo:block>
                </fo:table-cell>
              </fo:table-row>
            </fo:table-body>
          </fo:table>

          <fo:table font-size="10pt" font-family="Arial, Helvetica, sans-serif" space-before.optimum="1pt" space-after.optimum="1pt">
            <fo:table-column column-width="100%"/>
            <fo:table-body>
              <fo:table-row>
                <fo:table-cell padding="1mm" >
                  <fo:block text-align="justify" line-height="15pt" padding-after="2mm">
                      Cuatro) El cliente solicita e instruye al BCI para que contrate por su cuenta los seguros y/o coberturas que indica en la propuesta que suscribe con esta misma fecha, con arreglo a las condiciones generales y particulares de las pólizas emitidas por las Compañías de Seguros que en cada caso se señalan, información que declara conocer por haberla recibido previamente y a su entera satisfacción.
                  </fo:block>
                </fo:table-cell>
              </fo:table-row>
            </fo:table-body>
          </fo:table>

          <fo:table font-size="10pt" font-family="Arial, Helvetica, sans-serif" space-before.optimum="1pt" space-after.optimum="1pt">
            <fo:table-column column-width="100%"/>
            <fo:table-body>
              <fo:table-row>
                <fo:table-cell padding="1mm" >
                  <fo:block text-align="justify" line-height="15pt" padding-after="2mm">
                      Cinco) El Cliente faculta al Banco para descontar del monto del crédito que ha solicitado, o adicionar a éste, según corresponda, el valor de la(s) respectiva(s) prima(s) de cada cobertura o, en su caso, cargar los montos que procedan por tal concepto a su tarjeta de crédito, línea de crédito, cuenta corriente, cuenta vista o cualquiera otra acreencia que el cliente mantenga en el Banco. El valor de la(s) prima(s) se determina en función del monto y plazo del crédito, según lo informado en este instrumento, lo cual el cliente acepta desde ya. Las primas aplicables con motivo de la(s) cobertura(s) contratada(s) son de pago único y anticipado en relación al plazo total del préstamo.
                  </fo:block>
                </fo:table-cell>
              </fo:table-row>
            </fo:table-body>
          </fo:table>

          <fo:table font-size="10pt" font-family="Arial, Helvetica, sans-serif" space-before.optimum="1pt" space-after.optimum="1pt">
            <fo:table-column column-width="100%"/>
            <fo:table-body>
              <fo:table-row>
                <fo:table-cell padding="1mm" >
                  <fo:block text-align="justify" line-height="15pt">
                      Seis) Vigencia de la cobertura: La cobertura comenzará a regir únicamente a partir del momento en que la propuesta de seguros sea aceptada por el asegurador y se inicie la vigencia de la póliza.  Desde que el cliente hace entrega de todos los exámenes médicos solicitados a la compañía de seguros, esta tiene un plazo de 5 días hábiles para aceptar o rechazar el seguro; en caso de aceptar, comienza la cobertura del seguro. A su vez, esta se extiende hasta el vencimiento del crédito de acuerdo a la tabla de desarrollo original, o en caso de prepago del crédito, el cliente puede elegir manifestando expresamente su voluntad de continuar con el seguro.
                  </fo:block>
                </fo:table-cell>
              </fo:table-row>
            </fo:table-body>
          </fo:table>

          <fo:table font-size="10pt" font-family="Arial, Helvetica, sans-serif" space-before.optimum="1pt" space-after.optimum="1pt">
            <fo:table-column column-width="100%"/>
            <fo:table-body>
              <fo:table-row>
                <fo:table-cell padding="1mm" >
                  <fo:block text-align="justify" line-height="15pt">
                      Siete) El asegurado tiene derecho a retractarse del contrato de seguro celebrado a distancia, en el plazo de 10 días contados desde que reciba la póliza, sin expresión de causa ni cargo alguno, teniendo derecho a la devolución de la prima que hubiere pagado de acuerdo a la ley 20.667, pero no podrá ejercer ese derecho si se hubiere verificado un siniestro.
                  </fo:block>
                </fo:table-cell>
              </fo:table-row>
            </fo:table-body>
          </fo:table>

          <fo:table font-size="10pt" font-family="Arial, Helvetica, sans-serif" space-before.optimum="1pt" space-after.optimum="1pt">
            <fo:table-column column-width="100%"/>
            <fo:table-body>
              <fo:table-row>
                <fo:table-cell padding="1mm">
                  <fo:block text-align="justify" line-height="15pt">
                      Ocho) El asegurado podrá poner término anticipado al contrato de seguro comunicándolo al asegurador, en la forma que se establezca en la póliza respectiva.
                  </fo:block>
                </fo:table-cell>
              </fo:table-row>
            </fo:table-body>
          </fo:table>

          <fo:table font-size="10pt" font-family="Arial, Helvetica, sans-serif" space-before.optimum="1pt" space-after.optimum="1pt">
            <fo:table-column column-width="100%"/>
            <fo:table-body>
              <fo:table-row>
                <fo:table-cell padding="1mm">
                  <fo:block text-align="justify" line-height="15pt" padding-before="15pt" padding-after="10pt">
                      Todos los códigos POL y CAD se encuentran depositados en la Superintendencia de Valores y Seguros, y pueden ser consultados en www.svs.cl
                  </fo:block>
                </fo:table-cell>
              </fo:table-row>
            </fo:table-body>
          </fo:table>

          <fo:table font-size="10pt" font-family="Arial, Helvetica, sans-serif" space-before.optimum="1pt" space-after.optimum="1pt">
            <fo:table-column column-width="100%"/>
            <fo:table-body>
              <fo:table-row>
                <fo:table-cell border="solid 1pt gray" padding="1mm" padding-before="11pt">
                  <fo:block text-align="justify">
                      <fo:inline font-size="10pt" font-weight="bold">Forma de Pago: </fo:inline> Autorizo que el monto de las primas totales correspondientes a los seguros contratados sean cargados y recaudados a través de mi: <fo:inline font-size="10pt" font-weight="bold">______________________</fo:inline>
                  </fo:block>
                  <fo:block text-align="justify">
                  </fo:block>
                  <fo:block text-align="justify">
                      <fo:inline font-size="10pt" font-weight="bold">Tipo de Producto: </fo:inline> CREDITO DE CONSUMO <fo:inline font-size="10pt" font-weight="bold">Número de Crédito: <xsl:value-of select="numeroOperacion"/></fo:inline>
                  </fo:block>
                </fo:table-cell>
              </fo:table-row>
            </fo:table-body>
          </fo:table>

          <xsl:if test="tipoCargo = 'AUT'">
          <fo:table font-size="10pt" font-family="Arial, Helvetica, sans-serif" space-before.optimum="1pt" space-after.optimum="1pt">
            <fo:table-column column-width="100%"/>
            <fo:table-body>
              <fo:table-row>
                <fo:table-cell>
                  <fo:block font-size="12pt" font-weight="bold" padding-before="15pt">
                      Mandato para Pago Automático del Crédito. 
                  </fo:block>
                </fo:table-cell>
              </fo:table-row>
              <fo:table-row>
                <fo:table-cell padding="1mm">
                  <fo:block text-align="justify" line-height="15pt" padding-after="10pt">
                      <fo:inline font-size="10pt" font-weight="bold">Uno) </fo:inline> El Cliente otorga mandato al Banco para que éste proceda a cargar en la cuenta individualizada al final de este instrumento, el monto de las cuotas del crédito contratado.
                  </fo:block>

                  <fo:block text-align="justify" line-height="15pt" padding-after="10pt">
                       En el ejercicio de este mandato, el cliente faculta al Banco,
                       para efectuar los cargos por los conceptos referidos en su "Cuenta", en el día de la fecha de vencimiento de la o las cuotas respectivas.
                  </fo:block>  
                  <fo:block text-align="justify" line-height="15pt" padding-after="10pt">
                       En el evento que el Cliente sea beneficiario de un Convenio de Pago de Remuneraciones, esto es, que su empleador le deposita su remuneración en su cuenta corriente/vista Bci,
					   faculta al Banco para cargar en dicha cuenta o en cualquiera otra que en el futuro tenga por objeto la misma finalidad, el monto de las cuotas del crédito contratado,
					   en el día de pago de sus remuneraciones aún cuando este día sea anterior a la fecha de vencimiento de la o las respectivas cuotas (PAC Previo).
                  </fo:block>                  

                  <fo:block text-align="justify" line-height="15pt" padding-after="10pt">
                      <fo:inline font-size="10pt" font-weight="bold">Dos) </fo:inline> Asimismo, en caso de mora o simple retardo, otorga mandato al Banco para cargar en cualquiera de las cuentas corriente, a la vista y/o en sus tarjetas de crédito, las cuotas de la(s) operación(es) de crédito de este instrumento, ya provengan del capital de créditos, comisiones, intereses y/o costas.
                  </fo:block>
				  <fo:block text-align="justify" line-height="15pt" padding-after="10pt">
                       Para los efectos indicados en los numerales Uno) y Dos) anteriores, el Cliente asume la obligación de mantener fondos disponibles y suficientes en su(s) cuenta(s),
					   para cubrir los cargos indicados. En caso contrario, el Banco podrá cargar otras cuentas corrientes/vistas vigentes de que sea titular el Cliente en Bci hasta completar el monto total de la cuota respectiva.
					   De no existir fondos en alguna cuenta, el Cliente se obliga a pagar al Banco el importe de cada cuota adeudada en su respectiva fecha de vencimiento, hasta la total extinción de las obligaciones contraídas.
                  </fo:block>
                  <fo:block text-align="justify" line-height="15pt" padding-after="10pt">
                      <fo:inline font-size="10pt" font-weight="bold">Tres) </fo:inline> La revocación del mandato para pagar automáticamente el crédito  surtirá efecto a contar del período subsiguiente de pago o abono que corresponda a la obligación. La rendición de cuentas del ejercicio del mandato, se verificará mediante la entrega al Cliente de los comprobantes, cartolas u otros documentos, según fuere el caso, generados en la respectiva operación. Igualmente, el mandato terminará en el caso de cierre de la cuenta del mandante, cualquiera sea la causa o motivo.
                  </fo:block>
                </fo:table-cell>
              </fo:table-row>
            </fo:table-body>
          </fo:table>          

          <fo:table font-size="10pt" font-family="Arial, Helvetica, sans-serif" space-before.optimum="1pt" space-after.optimum="1pt">
            <fo:table-column column-width="40.656mm"/>
            <fo:table-column column-width="2.64mm"/>
            <fo:table-column column-width="50mm"/>
            <fo:table-column column-width="40mm"/>
            <fo:table-body>
              <fo:table-row>
                <fo:table-cell>
                  <fo:block font-size="12pt" font-weight="bold">
                      Firma (s) 
                  </fo:block>
                </fo:table-cell>
                <fo:table-cell>
                  <fo:block font-size="12pt" font-weight="bold">
                      :  
                  </fo:block>
                </fo:table-cell>
                <fo:table-cell number-columns-spanned="2">
                  <fo:block font-size="12pt" font-weight="bold">
                      ________________________________ 
                  </fo:block>
                </fo:table-cell>
              </fo:table-row>
              <fo:table-row>
                <fo:table-cell>
                  <fo:block font-size="12pt" font-weight="bold">
                      Nombre (s)    
                  </fo:block>
                </fo:table-cell>
                <fo:table-cell>
                  <fo:block font-size="12pt" font-weight="bold">
                      :  
                  </fo:block>
                </fo:table-cell>                
                <fo:table-cell number-columns-spanned="2">
                  <fo:block font-size="12pt" font-weight="bold">
                      <xsl:value-of select="nombreCliente"/>  
                  </fo:block>
                </fo:table-cell>
              </fo:table-row>
              <fo:table-row>
                <fo:table-cell>
                  <fo:block font-size="12pt" font-weight="bold">
                      Rut (s).          
                  </fo:block>
                </fo:table-cell>
                <fo:table-cell>
                  <fo:block font-size="12pt" font-weight="bold">
                      :  
                  </fo:block>
                </fo:table-cell>                
                <fo:table-cell number-columns-spanned="2">
                  <fo:block font-size="12pt" font-weight="bold">
                      <xsl:value-of select="rutCliente"/>   
                  </fo:block>
                </fo:table-cell>
              </fo:table-row>
              <fo:table-row>
                <fo:table-cell>
                  <fo:block font-size="12pt" font-weight="bold">
                      Tipo             
                  </fo:block>
                </fo:table-cell>
                <fo:table-cell>
                  <fo:block font-size="12pt" font-weight="bold">
                      :  
                  </fo:block>
                </fo:table-cell>
                <fo:table-cell>
                  <xsl:if test="tipoCuenta = 'CCT'">
                    <fo:block font-size="12pt" font-weight="bold">
                         &#160;&#160;&#160;&#160;X 1. Corriente
                    </fo:block>
                  </xsl:if>
                  <xsl:if test="tipoCuenta != 'CCT'">  
                  <fo:block font-size="12pt" font-weight="bold">
                       &#160;&#160;&#160;&#160;__1. Corriente
                  </fo:block>
                  </xsl:if>                  
                </fo:table-cell>
                <fo:table-cell>
                  <xsl:if test="tipoCuenta = 'CPR'">
                    <fo:block font-size="12pt" font-weight="bold">
                         X 2.Vista 
                    </fo:block>
                  </xsl:if>
                  <xsl:if test="tipoCuenta != 'CPR'">
                    <fo:block font-size="12pt" font-weight="bold">
                         __2.Vista 
                    </fo:block>
                  </xsl:if>               
                </fo:table-cell>
              </fo:table-row>
              <fo:table-row>
                <fo:table-cell>
                  <fo:block font-size="12pt" font-weight="bold">
                      Nº Cuenta    
                  </fo:block>
                </fo:table-cell>
                <fo:table-cell>
                  <fo:block font-size="12pt" font-weight="bold">
                      :  
                  </fo:block>
                </fo:table-cell>
                <fo:table-cell number-columns-spanned="2">
                  <fo:block font-size="12pt" font-weight="bold">
                      <xsl:value-of select="numCtaCargo"/>  
                  </fo:block>
                </fo:table-cell>
              </fo:table-row>
              
              <fo:table-row>
                <fo:table-cell>
                  <fo:block font-size="12pt" font-weight="bold">
                      Tipo de Recaudación             
                  </fo:block>
                </fo:table-cell>
                <fo:table-cell>
                  <fo:block font-size="12pt" font-weight="bold">
                      :  
                  </fo:block>
                </fo:table-cell>
                <fo:table-cell>
                <xsl:if test="isTipoPacBci = 'false'">
                  <fo:block font-size="12pt" font-weight="bold">
                       &#160;&#160;&#160;&#160;__1. PAC BCI
                  </fo:block>
                </xsl:if>
                <xsl:if test="isTipoPacBci = 'true'">
                  <fo:block font-size="12pt" font-weight="bold">
                       &#160;&#160;&#160;&#160;X 1. PAC BCI
                  </fo:block>
                </xsl:if>
                </fo:table-cell>
                <fo:table-cell>
                <xsl:if test="isTipoPacPrevio = 'false'">
                    <fo:block font-size="12pt" font-weight="bold">
                         __2. PAC Previo 
                    </fo:block>  
                </xsl:if>
                <xsl:if test="isTipoPacPrevio = 'true'">
                    <fo:block font-size="12pt" font-weight="bold">
                         X 2. PAC Previo 
                    </fo:block>  
                </xsl:if>                 
                </fo:table-cell>
              </fo:table-row>              
              
              <fo:table-row>
                <fo:table-cell>
                  <fo:block font-size="12pt" font-weight="bold">
                      Fecha        
                  </fo:block>
                </fo:table-cell>
                <fo:table-cell>
                  <fo:block font-size="12pt" font-weight="bold">
                      :  
                  </fo:block>
                </fo:table-cell>
                <fo:table-cell number-columns-spanned="2">
                  <fo:block font-size="12pt" font-weight="bold">
                      <xsl:value-of select="fechaCurse"/>  
                  </fo:block>
                </fo:table-cell>
              </fo:table-row>
            </fo:table-body>
          </fo:table>
          </xsl:if>

          <fo:table font-size="11pt" font-family="Arial, Helvetica, sans-serif"  space-after.optimum="1pt">
            <fo:table-column column-width="100%"/>
            <fo:table-body>
              <fo:table-row>
                <fo:table-cell>
                  <fo:block font-weight="bold" text-align="left" padding-before="15pt">
                      Ninguno de los productos indicados en este anexo son obligatorios por ley.
                  </fo:block>
                </fo:table-cell>
              </fo:table-row>
            </fo:table-body>
          </fo:table>

          <fo:table font-size="11pt" font-family="Arial, Helvetica, sans-serif"  space-after.optimum="1pt">
            <fo:table-column column-width="100%"/>
            <fo:table-body>
              <fo:table-row>
                <fo:table-cell>
                  <fo:block font-size="11pt" text-align="left" padding-before="15pt">
                      En &#x00A0;&#x00A0;&#x00A0;&#x00A0;&#x00A0;&#x00A0;&#x00A0;&#x00A0;&#x00A0;&#x00A0;&#x00A0;&#x00A0;&#x00A0;&#x00A0;&#x00A0;&#x00A0;&#x00A0;&#x00A0;&#x00A0;<fo:inline><xsl:apply-templates select="cuidadFirma" /></fo:inline>, a <fo:inline><xsl:apply-templates select="diafirma" /></fo:inline> de <fo:inline><xsl:apply-templates select="mesFirma" /></fo:inline> del año <fo:inline><xsl:apply-templates select="annoFirma" /></fo:inline>.
                  </fo:block>
                </fo:table-cell>
              </fo:table-row>
            </fo:table-body>
          </fo:table>

          <fo:table font-size="11pt" font-family="Arial, Helvetica, sans-serif"  space-after.optimum="1pt">
            <fo:table-column column-width="100%"/>
            <fo:table-body>
              <fo:table-row>
                <fo:table-cell padding="1mm">
                  <fo:block text-align="left" padding-before="11pt">
                      El presente Anexo es parte integrante del Contrato de Crédito de Consumo celebrado con esta misma fecha entre Banco de Crédito e Inversiones y don(ña) <fo:inline font-size="10pt" font-weight="bold"><xsl:value-of select="nombreCliente"/> </fo:inline>
                  </fo:block>
                </fo:table-cell>
              </fo:table-row>
            </fo:table-body>
          </fo:table>

          <fo:table font-size="10pt" font-family="Arial, Helvetica, sans-serif"  space-after.optimum="1pt">
            <fo:table-column column-width="88mm"/>
            <fo:table-column column-width="88mm"/>
            <fo:table-body>
              <fo:table-row>
                <fo:table-cell>
                  <fo:block font-size="12pt" font-weight="bold" text-align="center" padding-before="20pt">
                  </fo:block>
                </fo:table-cell>   
                <fo:table-cell>
                  <fo:block font-size="12pt" font-weight="bold" text-align="center" padding-before="20pt">
                    <fo:external-graphic vertical-align="middle" height="40mm" width="50mm">
                      <xsl:attribute name="src">
                          <xsl:value-of select="rutaFirma"/>
                      </xsl:attribute>
                    </fo:external-graphic>
                  </fo:block>
                </fo:table-cell>   
              </fo:table-row>            
              <fo:table-row keep-with-previous="always">
                <fo:table-cell>
                  <fo:block font-size="12pt" font-weight="bold" text-align="center" padding-before="1pt">
                      ___________________________________
                  </fo:block>
                  <fo:block font-size="12pt" font-weight="bold" text-align="center" padding-before="1pt">
                      Firma de Cliente
                  </fo:block>
                </fo:table-cell>
                <fo:table-cell>
                  <fo:block font-size="12pt" font-weight="bold" text-align="center" padding-before="1pt">
                      ___________________________________
                  </fo:block>
                  <fo:block font-size="12pt" font-weight="bold" text-align="center" padding-before="1pt">
                      p.p. Banco de Crédito e Inversiones
                  </fo:block>
                </fo:table-cell>
              </fo:table-row>
            </fo:table-body>
          </fo:table>

        </fo:flow>

  </xsl:template>
</xsl:stylesheet>
