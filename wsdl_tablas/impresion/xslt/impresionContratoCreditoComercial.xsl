<?xml version="1.0" encoding="iso-8859-1"?>
<!-- <== version: 2012/05/09 12:00 ==> -->
<xsl:stylesheet version="1.1" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format" exclude-result-prefixes="fo">
  <xsl:output method="xml" version="1.0" omit-xml-declaration="no" indent="yes"/>
  <xsl:decimal-format name="decimal" decimal-separator=',' grouping-separator='.' />
  <xsl:decimal-format name="rut"                           grouping-separator='.' />
  <xsl:template match="impresionContratoCreditoComercial">
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
                        CREDITO COMERCIAL
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
                      Entre <fo:inline font-weight="bold">Banco de Cr�dito e Inversiones</fo:inline>, en adelante el <fo:inline font-weight="bold">"Banco"</fo:inline> o el <fo:inline font-weight="bold">"Acreedor"</fo:inline>,  debidamente 
                      representado, seg�n se dir�, y el <fo:inline font-weight="bold">"Cliente"</fo:inline> o el <fo:inline font-weight="bold">"Deudor"</fo:inline> que se individualiza al final, se celebra el siguiente 
                      Contrato de Cr�dito Comercial:
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
                      PRIMERO: Monto del cr�dito otorgado con esta fecha.
                  </fo:block>
                </fo:table-cell>
              </fo:table-row>
              <fo:table-row>
                <fo:table-cell padding="1mm">
                  <fo:block text-align="justify" line-height="15pt" padding-after="5mm">
                      Por este acto, Banco de Cr�dito e Inversiones otorga y da en pr�stamo al Cliente, quien declara aceptar y
                      recibir a su entera conformidad, la suma de <fo:inline><xsl:apply-templates select="glsMonCreAbr" /></fo:inline> <fo:inline><xsl:apply-templates select="montoCredito" /></fo:inline>
                      (<fo:inline><xsl:apply-templates select="montoCreditoLetras" /></fo:inline> <fo:inline><xsl:apply-templates select="glsMonCreLga" /></fo:inline>)<fo:inline><xsl:apply-templates select="montoCredEnUfEnPesos" /></fo:inline>, en adelante el 
                      "Cr�dito". 
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
                      SEGUNDO: Amortizaci�n de Capital e Intereses.
                  </fo:block>
                </fo:table-cell>
              </fo:table-row>
              <fo:table-row>
                <fo:table-cell padding="1mm">
                  <fo:block text-align="justify" line-height="15pt" padding-after="5mm">
                      El Cliente se obliga a pagar al Banco en cualquiera de sus sucursales, BCI o BCI Nova, seg�n donde se haya 
                      otorgado este cr�dito, la suma indicada en la cl�usula precedente, en las cuotas, por los montos y en las fechas 
                      que se indican a continuaci�n:  
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
                                Cuota N�
                            </fo:block>
                          </fo:table-cell>
                          <fo:table-cell border="solid 1pt gray">
                            <fo:block font-weight="bold" text-align="center">
                                Fecha de vencimiento
                            </fo:block>
                          </fo:table-cell>
                          <fo:table-cell border="solid 1pt gray">
                            <fo:block font-weight="bold" text-align="center">
                                Amortizaci�n de capital
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
                      El Cr�dito devengar� una tasa de inter�s fija del <fo:inline><xsl:apply-templates select="tasaInteres" /></fo:inline>% <fo:inline><xsl:apply-templates select="glsPeriodoBaseTasa" /></fo:inline>, la que se devengar� a partir de esta 
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
                      TERCERO: Pr�rroga de plazo por d�a inh�bil. 
                  </fo:block>
                </fo:table-cell>
              </fo:table-row>
              <fo:table-row>
                <fo:table-cell padding="1mm">
                  <fo:block text-align="justify" line-height="15pt">
                      Las cuotas de amortizaci�n de capital e intereses se pagar�n a su vencimiento, siempre que �ste corresponda a un d�a
                      h�bil bancario. En caso contrario, se pagar�n el d�a h�bil bancario siguiente.
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
                      CUARTO: Duraci�n del Contrato. T�rmino anticipado por parte del cliente. Prepagos. Causales de t�rmino
                      anticipado por parte del Banco. Exigibilidad anticipada de la Obligaci�n.
                  </fo:block>
                </fo:table-cell>
              </fo:table-row>
              <fo:table-row>
                <fo:table-cell padding="1mm">
                  <fo:block text-align="justify" line-height="15pt">
                      4.1. Duraci�n del Contrato: El presente contrato estar� vigente hasta  el pago integro del Cr�dito.
                  </fo:block>
                </fo:table-cell>
              </fo:table-row>
              <fo:table-row>
                <fo:table-cell padding="1mm">
                  <fo:block text-align="justify" line-height="15pt">
                      4.2. T�rmino anticipado por parte del Cliente.
                  </fo:block>
                  <fo:block text-align="justify" line-height="15pt">
                      El Consumidor tendr� derecho a poner t�rmino anticipado al Cr�dito  por su sola voluntad y siempre que extinga totalmente las obligaciones que contrae para con el Banco en virtud del presente instrumento y, en su caso, las obligaciones de los Productos o Servicios Asociados espec�ficos que decida terminar.
                  </fo:block>
                </fo:table-cell>
              </fo:table-row>
              <fo:table-row>
                <fo:table-cell padding="1mm" padding-before="11pt">
                  <fo:block text-align="justify" line-height="15pt" padding-after="2mm">
                      4.3. Prepagos. Si el monto de capital inicial supera el equivalente a UF 5.000, todo pago anticipado, sea total o parcial, ser� convenido libremente entre el Cliente y el Banco a la fecha del prepago o pago anticipado. A falta de acuerdo, el Cliente podr� en todo caso anticipar el pago, total o parcialmente, y en este �ltimo caso, siempre que el importe a pagar sea igual o superior al 20% del capital de la obligaci�n adeudada, pagando adem�s los intereses estipulados devengados y no pagados a la fecha del prepago,  calculados sobre el saldo insoluto, m�s los intereses estipulados en este instrumento, calculados sobre el capital prepagado desde la fecha del prepago hasta el vencimiento del plazo pactado.
                  </fo:block>
                  <fo:block text-align="justify" line-height="15pt">
                      Si el monto de capital inicial no supera el equivalente a UF 5.000, al capital prepagado deber�n sum�rsele los intereses calculados hasta la fecha del prepago y la comisi�n de prepago m�xima que el art�culo 10 de la Ley 18.010 permite pactar.
                  </fo:block>
                  <fo:block text-align="justify" line-height="15pt">
                      En caso de prepago del cr�dito, el asegurado tiene la opci�n de que la compa��a le devuelva el pago de la prima del seguro, o bien puede solicitar de forma expresa continuar con el seguro contratado.
                  </fo:block>                  
                </fo:table-cell>
              </fo:table-row>
              <fo:table-row>
                <fo:table-cell padding="1mm">
                  <fo:block text-align="justify" line-height="15pt">
                      4.4. Causales de t�rmino anticipado por parte del Banco. Exigibilidad anticipada del Cr�dito.
                  </fo:block>
                  <fo:block text-align="justify" line-height="15pt">
                  </fo:block>
                  <fo:block text-align="justify" line-height="15pt">
                      El Banco podr� poner t�rmino anticipado al presente contrato y hacer exigible en forma inmediata y anticipadamente el monto total del saldo insoluto adeudado, el que desde esa misma fecha se considerar� de plazo vencido y devengar� en favor del Banco o de quien sus derechos represente, el inter�s m�ximo convencional que rija durante la mora o simple retardo, en caso de verificarse,  una cualquiera de las siguientes circunstancias:
                  </fo:block>
                  <fo:block text-align="justify" line-height="15pt">
                  </fo:block>
                  <fo:block text-align="justify" line-height="15pt">
                      a) El no pago oportuno de una cualquiera de las cuotas de capital y/o de inter�s del Cr�dito. Corresponder� al Cliente acreditar el pago de las cuotas en que se divide el Cr�dito.
                  </fo:block>
                  <fo:block text-align="justify" line-height="15pt">
                      b) El hecho de constituirse el Deudor en mora o de hab�rsele protestado, por falta de pago, cualquier documento, pagar�, letra de cambio o cheque, aceptado, suscrito o girado por �l a favor del Banco.
                  </fo:block>
                  <fo:block text-align="justify" line-height="15pt">
                      c) Insolvencia, declaraci�n de interdicci�n, presentaci�n de convenios, quiebra; o tener el cliente la calidad de deudor en un procedimiento concursal de liquidaci�n.
                  </fo:block>
                  <fo:block text-align="justify" line-height="15pt">
                      d) Deterioro en el comportamiento de pago, o cuando habi�ndosele solicitado, no aportare al Banco los antecedentes requeridos conducentes a analizar el estado actual de su situaci�n econ�mica o financiera;
                  </fo:block>
                  <fo:block text-align="justify" line-height="15pt">
                      e)  La revocaci�n por parte del Cliente de uno o m�s mandatos cuya ejecuci�n interesare, adem�s, al Banco, especialmente el otorgado a este �ltimo para documentar la deuda u obligaci�n que deriva del presente contrato.
                  </fo:block>
                  <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                  <fo:block>
                      Sin embargo, en operaciones de cr�dito de dinero cuyo capital sea igual o inferior a doscientas unidades de fomento no podr� hacerse exigible la obligaci�n en forma anticipada, si no una vez cumplidos sesenta d�as corridos desde que el deudor incurra en mora o simple retardo en el pago.
                  </fo:block>                  
                </fo:table-cell>
              </fo:table-row>
              <fo:table-row>
                <fo:table-cell padding="1mm">
                  <fo:block text-align="justify" line-height="15pt" padding-after="2mm">
                      4.5. Intereses Moratorios, En caso de retardo o mora en el cumplimiento de esta obligaci�n, �sta devengar� desde la fecha del retardo y a favor del acreedor, el inter�s m�ximo convencional que rija durante la mora. 
                  </fo:block>
                </fo:table-cell>
              </fo:table-row>
              <fo:table-row>
                <fo:table-cell padding="1mm">
                  <fo:block text-align="justify" line-height="15pt" padding-after="2mm">
                      El Banco deber� comunicar el t�rmino del contrato, por escrito al domicilio o al correo electr�nico registrado por el Cliente en el Banco, con a lo menos 15 d�as de anticipaci�n, o con aquella que se�alen las normas legales y administrativas vigentes, a la fecha en que se har� efectivo dicho t�rmino, salvo que se hubiere declarado la quiebra del Deudor.
                  </fo:block>
                  <fo:block text-align="justify" line-height="15pt" padding-after="2mm">
                      Con todo, trat�ndose de operaciones de menos de doscientas unidades de fomento el t�rmino del contrato no podr� verificarse antes del plazo de 60 d�as corridos desde que el deudor incurra en mora o simple retardo en el pago.
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
                      QUINTO: Servicio de Atenci�n a Clientes.
                  </fo:block>
                </fo:table-cell>
              </fo:table-row>
              <fo:table-row>
                <fo:table-cell padding="1mm">
                  <fo:block text-align="justify" line-height="15pt">
                      Si ante alguna consulta o reclamo el Cliente quedare insatisfecho con la respuesta brindada por su ejecutivo, podr� acudir al Servicio de Atenci�n al Cliente de Bci, cuyo objeto es atender  tales consultas y reclamos. Se podr� acudir a dicho Servicio a trav�s de los siguientes canales: (a) tel�fono N� 6928000; (b) p�gina web www.bci.cl (c) personalmente en cualesquiera de las oficinas del Banco.
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
                      El Cliente declara conocer y aceptar que existen recargos por la cobranza extrajudicial de cr�ditos impagos, incluyendo honorarios, a partir de la fecha que se indica, los cuales ser�n cobrados por la sociedad "Servicios de Normalizaci�n y Cobranza -Normaliza S.A." o por aquella que el Banco designare en su oportunidad, la que actuar� en representaci�n del Banco. La cobranza se efectuar� entre 8:00 y 20:00 horas. Declara asimismo conocer y aceptar, que para que la Empresa designada pueda realizar la cobranza es imprescindible que el Banco le suministre antecedentes de los cr�ditos morosos y otros asociados a �stos, como de sus antecedentes comerciales y personales.
                  </fo:block>
                  <fo:block text-align="justify" line-height="15pt" padding-after="10pt">
                      Los honorarios y gastos por las gestiones ser�n los siguientes, aplicados sobre el total de la deuda o cuota vencida: obligaciones hasta 10 unidades de fomento -UF--  9%; por la parte que exceda de 10 UF y hasta 50 UF, 6% y por la parte que exceda de 50 UF, 3%. Dichos porcentajes se aplicar�n una vez transcurridos los primeros 15 d�as de atraso y podr�n ser modificados anualmente en caso de cr�ditos de consumo cuyo plazo de pago exceda de 1 a�o, siempre que tales cambios se avisen con una anticipaci�n m�nima de 2 per�odos de pago.
                  </fo:block>
                  <fo:block text-align="justify" line-height="15pt" padding-after="10pt">
                      Las tarifas indicadas se basan en la reglamentaci�n vigente y la Ley N� 19.659 y dem�s normativa aplicable. Si se modificaren las tarifas y modalidades de cobranza, el Banco podr� tambi�n modificarlas, dando previo aviso al Cliente.
                  </fo:block>
                  <fo:block text-align="justify" line-height="15pt" padding-after="10pt">
                      El Cliente declara haber recibido el volante que contiene la tabla de los honorarios antes indicadas, el per�odo de vigencia de ellos y el n�mero de d�as en que el pr�stamo o la cuota permanecer� impaga en la instituci�n antes de ser enviado a cobranza externa.
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
                      En el evento que el Cliente contrate el servicio de pago autom�tico de cuentas o transferencia electr�nica de fondos con cargo a cuentas de otros bancos y decidiere, con previo acuerdo del BCI, postergar el pago de todo o parte de una o m�s cuotas del cr�dito de que da cuenta este contrato, tal decisi�n la comunicar� al Banco, al menos, con dos d�as h�biles bancarios de anticipaci�n a la fecha de vencimiento de la respectiva cuota. Lo anterior, con el prop�sito de que el Banco alcance a avisar dicha postergaci�n al banco debitador.
                      El Cliente declara conocer que la obligaci�n de mantener fondos disponibles suficientes en la cuenta de cargo correspondiente, ha de permitir que la cuota respectiva quede saldada, hasta las 14:00 horas del mismo d�a del vencimiento. Todo pago efectuado despu�s de dicha hora, se considerar� efectuado fuera plazo.
                  </fo:block>
                  <fo:block text-align="justify" line-height="15pt" padding-after="10pt">
                      Mandato Pago Autom�tico: El Cliente, autoriza al Banco para que �ste proceda a cargar o debitar en su Cuenta Corriente o Cuenta de Dep�sito a la Vista, el monto de toda obligaci�n exigible que adeude actualmente o llegare a adeudar en el futuro al se�alado Banco, con motivo de los productos o servicios contratados con este �ltimo.
                  </fo:block>
                  <fo:block font-size="12pt" font-weight="bold">
                      Dos) Mandato para conceder Pr�rrogas o esperas:
                  </fo:block>
                  <fo:block text-align="justify" line-height="15pt" padding-after="10pt">
                      El Cliente faculta al Banco para conceder una o m�s pr�rrogas, en el bien entendido que no se incremente la tasa de inter�s pactada en el presente instrumento, respecto del Cr�dito de Consumo objeto del presente instrumento.
                  </fo:block>
                  <fo:block font-size="12pt" font-weight="bold">
                      Tres) Mandatos para la contrataci�n de seguros:
                  </fo:block>
                  <fo:block text-align="justify" line-height="15pt" padding-after="10pt">
                      En el evento que el cliente contrate seguros voluntarios asociados al Cr�dito de Consumo de que da cuenta el presente instrumento,  otorga los siguientes mandatos:
                  </fo:block>
                  <fo:block text-align="justify" line-height="15pt" padding-after="10pt">
                      a) Mandato e instrucci�n al Banco para que contrate por su cuenta los seguros y/o coberturas que indique en la propuesta de seguros que deba suscribir con esta misma fecha, con arreglo a las condiciones generales y particulares de las p�lizas emitidas por las Compa��as de Seguros que en cada caso se se�alan en dicha propuesta.
                  </fo:block>
                  <fo:block text-align="justify" line-height="15pt" padding-after="10pt">
                      b) Mandato al Banco para descontar del monto del cr�dito que ha solicitado, o adicionar a �ste, seg�n corresponda, el valor de la(s) respectiva(s) prima(s) de cada cobertura o, en su caso, cargar los montos que procedan por tal concepto a su tarjeta de cr�dito, l�nea de cr�dito, cuenta corriente, cuenta vista o cualquiera otra acreencia que el cliente mantenga en el Banco. El valor de la(s) prima(s) se determina en funci�n del monto y plazo del cr�dito, seg�n lo expresado en este instrumento. Las primas aplicables con motivo de la(s) cobertura(s) contratada(s) son de pago �nico y anticipado en relaci�n al plazo total del pr�stamo.
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
                      OCTAVO: Revocaci�n de mandatos
                  </fo:block>
                </fo:table-cell>
              </fo:table-row>
              <fo:table-row>
                <fo:table-cell padding="1mm">
                  <fo:block text-align="justify" line-height="15pt" padding-after="10pt">
                      La revocaci�n de mandatos, deber� comunicarse por escrito en  cualquiera de sus sucursales, BCI o BCI Nova, seg�n donde se haya otorgado este cr�dito y producir� sus efectos luego de transcurridos 10 d�as de notificado el Banco.
                  </fo:block>
                  <fo:block text-align="justify" line-height="15pt" padding-after="10pt">
                      La revocaci�n del mandato para pagar autom�ticamente el cr�dito  surtir� efecto a contar del per�odo subsiguiente de pago o abono que corresponda a la obligaci�n. La rendici�n de cuentas del ejercicio del mandato, se verificar� mediante la entrega al Cliente de los comprobantes, cartolas u otros documentos, seg�n fuere el caso, generados en la respectiva operaci�n.
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
                      Desglose pormenorizado de todas las sumas de dinero que explican el valor efectivo del Cr�dito de Consumo contratado.
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
                                N�mero de Cr�dito
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
                                           UF equivalente en pesos al d�a de hoy a $ <xsl:value-of select="montoCredEnUf"/>
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
                                Monto Bruto del Cr�dito
                            </fo:block>
                            <fo:block font-weight="bold" text-align="left">
                              <fo:inline>
                                <xsl:value-of select="montoBruto"/>
                              </fo:inline>
                            </fo:block>
                          </fo:table-cell>
                          <fo:table-cell border="solid 1pt gray" >
                            <fo:block font-weight="bold" text-align="left">
                                 Monto L�quido del Cr�dito
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
                                Costo Total del Cr�dito
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
                                Plazo del Cr�dito.
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
                                D�a de Vencimiento
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
                                Tasa de Inter�s:
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
                                Valor de la Cuota B�sica de Referencia
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
                                Gastos o Cargos Propios del Cr�dito
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
                                Carga Anual Equivalente (CAE) a <fo:inline><xsl:apply-templates select="diafirma" /></fo:inline> de <fo:inline><xsl:apply-templates select="mesFirma" /></fo:inline> del a�o <fo:inline><xsl:apply-templates select="annoFirma" /></fo:inline>:
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
                                Nombre o Raz�n Social Cliente o Deudor 
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
                                RUT o C�dula de identidad N� 
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
                                Banco de Cr�dito e Inversiones
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
                                Avenida El Golf N� 125, Las Condes, Santiago. <xsl:value-of select="dirBco"/>
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
                      En &#x00A0;&#x00A0;&#x00A0;&#x00A0;&#x00A0;&#x00A0;&#x00A0;&#x00A0;&#x00A0;&#x00A0;&#x00A0;&#x00A0;&#x00A0;&#x00A0;&#x00A0;&#x00A0;&#x00A0;&#x00A0;&#x00A0;<fo:inline><xsl:apply-templates select="cuidadFirma" /></fo:inline>, a <fo:inline><xsl:apply-templates select="diafirma" /></fo:inline> de <fo:inline><xsl:apply-templates select="mesFirma" /></fo:inline> del a�o <fo:inline><xsl:apply-templates select="annoFirma" /></fo:inline>
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
                      p.p. Banco de Cr�dito e Inversiones
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
                      Contrataci�n de Seguros.
                  </fo:block>
                </fo:table-cell>
              </fo:table-row>
              <fo:table-row>
                <fo:table-cell padding="1mm">
                  <fo:block text-align="justify" line-height="15pt" padding-after="10pt">
                      Uno) El cliente por el presente instrumento declara su voluntad de contratar los seguros que se indican a continuaci�n:
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
                      Dos) Por este acto el Cliente se incorpora como asegurado a una p�liza o contrato de seguro, cuyas condiciones han sido convenidas por Banco de Cr�dito e Inversiones, directamente con la compa��a de seguros.
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
                      Tres) El Cliente declara estar en conocimiento que puede contratar los seguros indicados directamente y por su cuenta en cualquier entidad aseguradora y a trav�s de cualquier corredor de seguros, por lo que su contrataci�n tiene el car�cter de voluntario. Asimismo declara que ha tomado conocimiento del derecho a decidir sobre la contrataci�n de los seguros y a la libre elecci�n del intermediario y de la compa��a aseguradora, de conformidad a las disposiciones de la Superintendencia de Valores y Seguros.  Asimismo, declara estar en conocimiento que puede obtener el cr�dito que el Banco por este acto le otorga, con la misma tasa y dem�s condiciones establecidas en este instrumento, aun cuando no adquiriera tales seguros.
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
                      Cuatro) El cliente solicita e instruye al BCI para que contrate por su cuenta los seguros y/o coberturas que indica en la propuesta que suscribe con esta misma fecha, con arreglo a las condiciones generales y particulares de las p�lizas emitidas por las Compa��as de Seguros que en cada caso se se�alan, informaci�n que declara conocer por haberla recibido previamente y a su entera satisfacci�n.
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
                      Cinco) El Cliente faculta al Banco para descontar del monto del cr�dito que ha solicitado, o adicionar a �ste, seg�n corresponda, el valor de la(s) respectiva(s) prima(s) de cada cobertura o, en su caso, cargar los montos que procedan por tal concepto a su tarjeta de cr�dito, l�nea de cr�dito, cuenta corriente, cuenta vista o cualquiera otra acreencia que el cliente mantenga en el Banco. El valor de la(s) prima(s) se determina en funci�n del monto y plazo del cr�dito, seg�n lo informado en este instrumento, lo cual el cliente acepta desde ya. Las primas aplicables con motivo de la(s) cobertura(s) contratada(s) son de pago �nico y anticipado en relaci�n al plazo total del pr�stamo.
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
                      Seis) Vigencia de la cobertura: La cobertura comenzar� a regir �nicamente a partir del momento en que la propuesta de seguros sea aceptada por el asegurador y se inicie la vigencia de la p�liza.  Desde que el cliente hace entrega de todos los ex�menes m�dicos solicitados a la compa��a de seguros, esta tiene un plazo de 5 d�as h�biles para aceptar o rechazar el seguro; en caso de aceptar, comienza la cobertura del seguro. A su vez, esta se extiende hasta el vencimiento del cr�dito de acuerdo a la tabla de desarrollo original, o en caso de prepago del cr�dito, el cliente puede elegir manifestando expresamente su voluntad de continuar con el seguro.
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
                      Siete) El asegurado tiene derecho a retractarse del contrato de seguro celebrado a distancia, en el plazo de 10 d�as contados desde que reciba la p�liza, sin expresi�n de causa ni cargo alguno, teniendo derecho a la devoluci�n de la prima que hubiere pagado de acuerdo a la ley 20.667, pero no podr� ejercer ese derecho si se hubiere verificado un siniestro.
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
                      Ocho) El asegurado podr� poner t�rmino anticipado al contrato de seguro comunic�ndolo al asegurador, en la forma que se establezca en la p�liza respectiva.
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
                      Todos los c�digos POL y CAD se encuentran depositados en la Superintendencia de Valores y Seguros, y pueden ser consultados en www.svs.cl
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
                      <fo:inline font-size="10pt" font-weight="bold">Forma de Pago: </fo:inline> Autorizo que el monto de las primas totales correspondientes a los seguros contratados sean cargados y recaudados a trav�s de mi: <fo:inline font-size="10pt" font-weight="bold">______________________</fo:inline>
                  </fo:block>
                  <fo:block text-align="justify">
                  </fo:block>
                  <fo:block text-align="justify">
                      <fo:inline font-size="10pt" font-weight="bold">Tipo de Producto: </fo:inline> CREDITO DE CONSUMO <fo:inline font-size="10pt" font-weight="bold">N�mero de Cr�dito: <xsl:value-of select="numeroOperacion"/></fo:inline>
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
                      Pago Autom�tico del Cr�dito 
                  </fo:block>
                </fo:table-cell>
              </fo:table-row>
              <fo:table-row>
                <fo:table-cell padding="1mm">
                  <fo:block text-align="justify" line-height="15pt" padding-after="10pt">
                      <fo:inline font-size="10pt" font-weight="bold">Uno) </fo:inline> El Cliente otorga  mandato al Banco de Cr�dito e Inversiones para que �ste proceda a cargar en la
                      cuenta individualizada al final de este instrumento, el monto de las cuotas del cr�dito contratado. El Cliente 
                      asume la obligaci�n de mantener fondos disponibles y suficientes en su cuenta, para cubrir los cargos. En 
                      caso contrario, el Cliente se obliga a pagar al Banco el importe de cada cuota adeudada hasta la total 
                      extinci�n de las obligaciones contra�das.
                  </fo:block>

                  <fo:block text-align="justify" line-height="15pt" padding-after="10pt">
                       En el ejercicio de este mandato, el cliente faculta al Banco de Cr�dito e Inversiones
                       para efectuar los cargos por los conceptos referidos en su cuenta, en el d�a de la fecha de vencimiento de la o las obligaciones respectivas.
                        En el evento que el cliente sea beneficiario de un Convenio de Pago de Remuneraciones a trav�s de su cuenta, el cliente faculta al 
                        Banco de Cr�dito e Inversiones para cargar la cuenta por los conceptos referidos , en el d�a de pago de sus remuneraciones, a�n cuando este d�a
                         sea anterior a la fecha de vencimiento de la o las obligaciones respectivas.
                  </fo:block>                  

                  <fo:block text-align="justify" line-height="15pt" padding-after="10pt">
                      <fo:inline font-size="10pt" font-weight="bold">Dos) </fo:inline> Asimismo, en caso de mora o simple retardo, otorga mandato al Banco para cargar en cualquiera de las cuentas corriente, a la vista, de ahorro y/o en sus tarjetas de cr�dito, las cuotas de la(s) operaci�n(es) de cr�dito de este instrumento, ya provengan del capital de cr�ditos, comisiones, intereses y/o costas.
                  </fo:block>
                  <fo:block text-align="justify" line-height="15pt" padding-after="10pt">
                      <fo:inline font-size="10pt" font-weight="bold">Tres) </fo:inline> La revocaci�n del mandato para pagar autom�ticamente el cr�dito  surtir� efecto a contar del per�odo subsiguiente de pago o abono que corresponda a la obligaci�n. La rendici�n de cuentas del ejercicio del mandato, se verificar� mediante la entrega al Cliente de los comprobantes, cartolas u otros documentos, seg�n fuere el caso, generados en la respectiva operaci�n. Igualmente, el mandato terminar� en el caso de cierre de la cuenta del mandante, cualquiera sea la causa o motivo.
                  </fo:block>
                </fo:table-cell>
              </fo:table-row>
            </fo:table-body>
          </fo:table>          

          <fo:table font-size="10pt" font-family="Arial, Helvetica, sans-serif" space-before.optimum="1pt" space-after.optimum="1pt">
            <fo:table-column column-width="40.656mm"/>
            <fo:table-column column-width="2.64mm"/>
            <fo:table-column column-width="50mm"/>
            <fo:table-column column-width="20mm"/>
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
                      N� Cuenta    
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

          <fo:table font-size="11pt" font-family="Arial, Helvetica, sans-serif" space-before.optimum="1pt" space-after.optimum="1pt">
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

          <fo:table font-size="11pt" font-family="Arial, Helvetica, sans-serif" space-before.optimum="1pt" space-after.optimum="1pt">
            <fo:table-column column-width="100%"/>
            <fo:table-body>
              <fo:table-row>
                <fo:table-cell>
                  <fo:block font-size="11pt" text-align="left" padding-before="15pt">
                      En &#x00A0;&#x00A0;&#x00A0;&#x00A0;&#x00A0;&#x00A0;&#x00A0;&#x00A0;&#x00A0;&#x00A0;&#x00A0;&#x00A0;&#x00A0;&#x00A0;&#x00A0;&#x00A0;&#x00A0;&#x00A0;&#x00A0;<fo:inline><xsl:apply-templates select="cuidadFirma" /></fo:inline>, a <fo:inline><xsl:apply-templates select="diafirma" /></fo:inline> de <fo:inline><xsl:apply-templates select="mesFirma" /></fo:inline> del a�o <fo:inline><xsl:apply-templates select="annoFirma" /></fo:inline>.
                  </fo:block>
                </fo:table-cell>
              </fo:table-row>
            </fo:table-body>
          </fo:table>

          <fo:table font-size="11pt" font-family="Arial, Helvetica, sans-serif" space-before.optimum="1pt" space-after.optimum="1pt">
            <fo:table-column column-width="100%"/>
            <fo:table-body>
              <fo:table-row>
                <fo:table-cell padding="1mm">
                  <fo:block text-align="left" padding-before="11pt">
                      El presente Anexo es parte integrante del Contrato de Cr�dito Comercial celebrado con esta misma fecha entre Banco de Cr�dito e Inversiones y don(�a) <fo:inline font-size="10pt" font-weight="bold"><xsl:value-of select="nombreCliente"/> </fo:inline>
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
                      p.p. Banco de Cr�dito e Inversiones
                  </fo:block>
                </fo:table-cell>
              </fo:table-row>
            </fo:table-body>
          </fo:table>

        </fo:flow>

  </xsl:template>
</xsl:stylesheet>
