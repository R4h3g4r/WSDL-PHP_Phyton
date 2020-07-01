<?xml version="1.0" encoding="iso-8859-1"?>

<!-- <== version: 2006/08/23 12:15 ==> -->

<xsl:stylesheet version="1.1" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format" exclude-result-prefixes="fo">
    <xsl:output method="xml" version="1.0" omit-xml-declaration="no" indent="yes"/>
    <xsl:decimal-format name="decimal" decimal-separator=',' grouping-separator='.' />
    <xsl:decimal-format name="rut" grouping-separator='.' />
    <xsl:param name="IMG_URL"/>

    <xsl:template match="Contrato_Multicredito">
        <fo:root xmlns:fo="http://www.w3.org/1999/XSL/Format">
            <fo:layout-master-set>
                <fo:simple-page-master master-name="miCarta" page-width="215.9mm" page-height="330mm" margin-top="10mm" margin-bottom="30mm" margin-left="10mm" margin-right="10mm">
                    <fo:region-body/>
                </fo:simple-page-master>
            </fo:layout-master-set>

            <fo:page-sequence master-reference="miCarta">
                  <fo:flow flow-name="xsl-region-body">
                    <fo:block font-family="Helvetica" font-size="12pt" font-weight="bold" text-align="center" >CONTRATO BCI MULTICREDITO</fo:block>
                    <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                    <fo:block font-family="Helvetica" font-size="12pt" text-align="justify" >En<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="OperacionCredito/ciudadContrato" /></fo:inline>,<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="OperacionCredito/dia" /></fo:inline><fo:leader leader-pattern="space" leader-length="1mm"/>de


                    <fo:leader leader-pattern="space" leader-length="1mm"/>
                    <fo:leader leader-pattern="space" leader-length="1mm"/><fo:leader leader-pattern="space" leader-length="1mm"/>
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


                    <fo:leader leader-pattern="space" leader-length="1mm"/>de<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="OperacionCredito/anio" /></fo:inline></fo:block>
                    <fo:block font-family="Helvetica" font-size="12pt" text-align="justify" >entre don<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="OperacionCredito/nombreCompletoCliente" /></fo:inline></fo:block>
                    <fo:block font-family="Helvetica" font-size="12pt" text-align="left" >C�dula de Identidad N�<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select='format-number(OperacionCredito/rutCliente, "###.###.###","rut")' />-<xsl:value-of select="OperacionCredito/dvCliente" /></fo:inline><fo:leader leader-pattern="space" leader-length="1mm"/>domiciliado en<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="DireccionDeudorBci/direccion" /></fo:inline><!--<fo:leader leader-length="7.47cm" leader-pattern="rule" rule-style="solid" rule-thickness="0.1mm" color="black"/>--></fo:block>
                    <fo:block font-family="Helvetica" font-size="12pt" text-align="justify" ><!--<fo:leader leader-length="7cm" leader-pattern="rule" rule-style="solid" rule-thickness="0.1mm" color="black"/><fo:leader leader-pattern="space" leader-length="1mm"/>-->Comuna:<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="substring(DireccionDeudorBci/comuna,0,20)" /></fo:inline><!--<fo:leader leader-length="10.52cm" leader-pattern="rule" rule-style="solid" rule-thickness="0.1mm" color="black"/>--></fo:block>


              <fo:table border-collapse="collapse" text-align="justify">
                  <fo:table-column column-width="138.57mm"/>
                 <!-- <fo:table-column column-width="57.33mm" />-->
                  <fo:table-body>
                      <fo:table-row>
                            <fo:table-cell >
                                  <fo:block font-family="Helvetica" font-size="12pt" text-align="justify" >Ciudad:<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="substring(DireccionDeudorBci/comuna,21,40)" /></fo:inline><!--<fo:leader leader-length="12cm" leader-pattern="rule" rule-style="solid" rule-thickness="0.1mm" color="black"/>-->,en adelante el &quot;CLIENTE&quot; y</fo:block>
                            </fo:table-cell>

                          <!--  <fo:table-cell >
                                  <fo:block font-family="Helvetica" font-size="12pt" text-align="justify" ><fo:leader leader-pattern="space" leader-length="1mm"/>en adelante el &quot;CLIENTE&quot; y</fo:block>
                            </fo:table-cell>-->

                      </fo:table-row>
                </fo:table-body>
                </fo:table>


                    <fo:block font-family="Helvetica" font-size="12pt" text-align="justify" >don<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="OperacionCredito/nombreRepresentanteLegalBanco" /></fo:inline><!--<fo:leader leader-length="18.61cm" leader-pattern="rule" rule-style="solid" rule-thickness="0.1mm" color="black"/>--></fo:block>
                    <fo:block font-family="Helvetica" font-size="12pt" text-align="left" line-height="4.5mm" >domiciliado en<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="OperacionCredito/domicilioRepresentanteLegalBanco" /></fo:inline><!--<fo:leader leader-length="16.57cm" leader-pattern="rule" rule-style="solid" rule-thickness="0.1mm" color="black"/>--></fo:block>
                    <fo:block font-family="Helvetica" font-size="12pt" text-align="justify" line-height="4.5mm" >C�dula de Identidad N�<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select='format-number(OperacionCredito/rutRepresentanteLegalBanco, "###.###.###","rut")' />-<xsl:value-of select="OperacionCredito/dvRepresentanteLegalBanco" /><!--<xsl:value-of select="OperacionCredito/rutRepresentanteLegal" />--></fo:inline><!--<fo:leader leader-length="5cm" leader-pattern="rule" rule-style="solid" rule-thickness="0.1mm" color="black"/>--><fo:leader leader-pattern="space" leader-length="1mm"/>en representaci�n del BANCO DE CREDITO E INVERSIONES, en adelante el &quot;BANCO&quot;, se ha convenido celebrar el siguiente Contrato:</fo:block>
                    <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                    <fo:block font-family="Helvetica" font-size="12pt" text-align="justify" line-height="4.5mm"><fo:inline font-weight="bold">PRIMERO:</fo:inline> Por este instrumento el Banco otorga al Cliente un Bci Multicr�dito, el cual permite al Cliente realizar avances de dinero en efectivo contra aquel, con abono en cuenta corriente o cuenta vista asociada al CLIENTE y que �ste defina a dicho prop�sito. El pago de cada avance, se concretar� a trav�s de un cr�dito en cuotas fijas, cuyo n�mero de cuotas fijar� el Cliente. El Cupo disponible para avances, variar� seg�n la aprobaci�n vigente en el &quot;Margen de Endeudamiento Global&quot; que se otorgue al Cliente, el cual crear�, renovar� y/o modificar� el BANCO sin previo aviso al Cliente, como asimismo la acci�n que corresponda al cierre del Bci Multicr�dito.</fo:block>
                    <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                    <fo:block font-family="Helvetica" font-size="12pt" text-align="justify" line-height="4.5mm"><fo:inline font-weight="bold">SEGUNDO:</fo:inline> Los curses de Avances, que corresponden a un Cr�dito de consumo cuota fija- tasa fija, ser�n abonados en la <fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="OperacionCredito/tipoCargo" /></fo:inline><fo:leader leader-pattern="space" leader-length="1mm"/><!--cuenta corriente / cuenta vista -->del CLIENTE N�<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="OperacionCredito/nroCuentaCliente" /></fo:inline><!--<fo:leader leader-length="5.5cm" leader-pattern="rule" rule-style="solid" rule-thickness="0.1mm" color="black"/>-->,<fo:leader leader-pattern="space" leader-length="1mm"/>y el pago de las cuotas, ser�n cargadas a la <!--cuenta corriente / cuenta vista / tarjeta de cr�dito--><fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="OperacionCredito/tipoCargo" /></fo:inline><!--<fo:leader leader-length="4.5cm" leader-pattern="rule" rule-style="solid" rule-thickness="0.1mm" color="black"/>--><fo:leader leader-pattern="space" leader-length="1mm"/>N�<fo:leader leader-pattern="space" leader-length="1mm"/><xsl:value-of select="OperacionCredito/nroCuentaCargo" /><!--<fo:leader leader-length="7.5cm" leader-pattern="rule" rule-style="solid" rule-thickness="0.1mm" color="black"/>--><fo:leader leader-pattern="space" leader-length="1mm"/>El n�mero de cuotas y d�as de cargo de las cuotas, los determinar� el Cliente al momento de solicitar el avance. Los impuestos, derechos o gastos que se devenguen con ocasi�n de cada avance generado, ser�n de cargo exclusivo del CLIENTE y formar�n parte del cr�dito, el cual ser� distribuido dentro de las cuotas determinadas por el CLIENTE. El CLIENTE fija como d�a de cargo de las cuotas el d�a<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="OperacionCredito/diaCuentaCargo" /></fo:inline><fo:leader leader-pattern="space" leader-length="1mm"/>de cada mes, pudiendo redefinir el d�a de cargo al momento de solicitar el avance.</fo:block>
                    <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                    <fo:block font-family="Helvetica" font-size="12pt" text-align="justify" line-height="4.5mm"><fo:inline font-weight="bold">TERCERO:</fo:inline> En el caso de no estar vigente la cuenta o tarjeta de cr�dito de cargo, al momento del pago de la cuota de un avance, el CLIENTE deber� solicitar a la Sucursal una cuponera de cr�dito, para el pago de las cuotas pendientes.</fo:block>
                    <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                    <fo:block font-family="Helvetica" font-size="12pt" text-align="justify" line-height="4.5mm"><fo:inline font-weight="bold">CUARTO:</fo:inline> El CLIENTE podr� solicitar el curse de avances a trav�s de la p�gina Web del BANCO, canal de atenci�n telef�nica, sucursal o cualquier otro canal que en el futuro disponga el BANCO para el uso de este producto. El CLIENTE libera de toda responsabilidad al BANCO en el caso que no se encuentre disponible u operativo alguno de estos canales.</fo:block>
                    <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                    <fo:block font-family="Helvetica" font-size="12pt" text-align="justify" line-height="4.5mm"><fo:inline font-weight="bold">QUINTO:</fo:inline> El CLIENTE otorga mandato al BANCO o a quien �ste �ltimo delegue, a fin de que a su nombre y representaci�n, acepte letras de cambio, suscriba y/o complete pagar�s, y reconozca deudas a beneficio del BANCO, por los montos en capital, intereses, costas, comisiones y dem�s gastos que se originen con motivo del o de los cr�ditos que sean concedidos por el BANCO con ocasi�n de los curses de avances realizados a trav�s del Bci Multicr�dito. Este mandato tendr� plena aplicaci�n a�n el caso que el Bci Multicr�dito ya no se encuentre vigente, pero exista saldo deudor con el BANCO por tal concepto. EL CLIENTE adem�s, libera al BANCO de la obligaci�n de rendir cuenta de su gesti�n. Declara el CLIENTE estar en conocimiento que no le es permitido revocar el presente mandato mercantil, por interesar su ejecuci�n al BANCO mandatario. El presente mandato, en particular en lo concerniente a la facultad para suscribir y completar el pagar�, est� concebido adem�s, para ejecutarse despu�s de la muerte del mandante con arreglo a lo previsto en el art�culo 2.169 del C�digo Civil.</fo:block>
                    <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                    <fo:block font-family="Helvetica" font-size="12pt" text-align="right" >CONTINUA EN P�GINA SIGUIENTE</fo:block>
                  </fo:flow>
            </fo:page-sequence>

            <fo:page-sequence master-reference="miCarta">
                  <fo:flow flow-name="xsl-region-body">
                    <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                    <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                    <fo:block font-family="Helvetica" font-size="12pt" text-align="justify" line-height="4.5mm"><fo:inline font-weight="bold">SEXTO:</fo:inline> El CLIENTE declara conocer y aceptar que existen recargos por concepto de la cobranza extrajudicial de cr�ditos impagos, incluyendo honorarios a partir de la fecha que se indica m�s adelante, los cuales ser�n cobrados por la &quot;Compa��a de Normalizaci�n de Cr�ditos-Normaliza S.A.&quot; o por aquella que el BANCO designare en su oportunidad, la que actuar� en nombre y en representaci�n e inter�s del BANCO en las gestiones de cobranza extrajudicial.</fo:block>
                    <fo:block font-family="Helvetica" font-size="12pt" text-align="justify" line-height="4.5mm">La cobranza extrajudicial se efectuar� en horario de 8:00 a 20:00 horas.</fo:block>
                    <fo:block font-family="Helvetica" font-size="12pt" text-align="justify" line-height="4.5mm">Declaro conocer, y desde luego acepto, que para que la Empresa designada al efecto pueda realizar la cobranza extrajudicial es imprescindible que el BANCO suministre a dicha empresa, antecedentes tanto respecto de los cr�ditos morosos de sus deudores y otros que no estando en dicha condici�n est�n asociados a �stos, como de los antecedentes comerciales de los deudores, tales como, nombres y apellidos, c�dula nacional de identidad, rol �nico tributario, domicilios, direcciones y tel�fonos, etc�tera.</fo:block>
                    <fo:block font-family="Helvetica" font-size="12pt" text-align="justify" line-height="4.5mm">Los honorarios y gastos por las gestiones de cobranza ascender�n a los porcentajes que seguidamente se indican, aplicados sobre el total de la deuda o la cuota vencida seg�n el caso, conforme a la siguiente escala progresiva: Obligaciones hasta 10 unidades de fomento, 9%, por la parte que exceda de 10 unidades de fomento y hasta 50 unidades de fomento, 6% y por la parte que exceda de 50 unidades de fomento, 3%. Los porcentajes indicados se aplicar�n una vez transcurridos los primeros quince d�as de atraso.</fo:block>
                    <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                    <fo:block font-family="Helvetica" font-size="12pt" text-align="justify" line-height="4.5mm">Las tarifas anteriores podr�n ser modificadas, siempre que tales cambios se avisen con una anticipaci�n m�nima de dos per�odos de pago. Formalizo el presente instrumento considerando que las tarifas indicadas se basan en la fiel interpretaci�n de la reglamentaci�n legal vigente y en cumplimiento a lo dispuesto en la Ley 19.659 y dem�s normativa aplicable.</fo:block>
                    <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                    <fo:block font-family="Helvetica" font-size="12pt" text-align="justify" line-height="4.5mm"><fo:inline font-weight="bold">SEPTIMO:</fo:inline> El deudor podr� anticipar el pago de las obligaciones contra�das con arreglo al presente contrato, en forma total o parcial, debiendo pagar el capital m�s los intereses estipulados, hasta el vencimiento del plazo pactado a menos que el Banco renuncie parcial o totalmente a este plazo. Con todo, trat�ndose de una obligaci�n cuyo importe en capital a la fecha de emisi�n del presente instrumento, fuere igual o inferior al equivalente en pesos moneda nacional de UF 5.000, el deudor deber� pagar el capital reajustado o no, seg�n se hubiere pactado reajustabilidad m�s los intereses calculados hasta la fecha de pago efectivo y una comisi�n de prepago que ascender� al valor de un mes de intereses (en operaciones no reajustables) o de un mes y medio de intereses (en operaciones reajustables), seg�n la tasa de inter�s pactada, calculada sobre el capital que se prepaga en conformidad a lo establecido en el art�culo 10 de la ley 18.010.</fo:block>
                    <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                    <fo:block font-family="Helvetica" font-size="12pt" text-align="justify" line-height="4.5mm">EL CLIENTE declara aceptar todas las condiciones y par�metros definidos en este contrato.</fo:block>
                    <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                    <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                    <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                    <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                    <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                    <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                    <fo:table border-collapse="collapse">
                        <fo:table-column />
                        <fo:table-column />
                        <fo:table-body>
                            <fo:table-row>

                                  <fo:table-cell >
                                          <fo:block text-align="center"><fo:leader leader-length="7cm" leader-pattern="rule" rule-style="solid" rule-thickness="0.1mm" color="black"/></fo:block>
                                          <fo:block font-family="Helbetica" font-size="12pt"   text-align="center" vertical-align="middle" >FIRMA CLIENTE</fo:block>
                                  </fo:table-cell>

                                  <fo:table-cell >
                                          <fo:block text-align="left"><fo:leader leader-length="10.4cm" leader-pattern="rule" rule-style="solid" rule-thickness="0.1mm" color="black"/></fo:block>
                                          <fo:block font-family="Helbetica" font-size="12pt"   text-align="center" vertical-align="middle" >P.P. BANCO DE CREDITO E INVERSIONES</fo:block>
                                  </fo:table-cell>

                            </fo:table-row>
                      </fo:table-body>
                      </fo:table>

                    <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                    <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                    <fo:block font-family="Helvetica" font-size="12pt" text-align="justify" line-height="4.5mm">Autorizo la firma estampada en este instrumento, como deudor:</fo:block>
                    <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                    <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                    <fo:block font-family="Helvetica" font-size="12pt" text-align="justify" line-height="4.5mm" >Don:<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="OperacionCredito/nombreCompletoCliente" /></fo:inline><!--<fo:leader leader-length="11.5cm" leader-pattern="rule" rule-style="solid" rule-thickness="0.1mm" color="black"/>--><fo:leader leader-pattern="space" leader-length="1mm"/>RUT<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select='format-number(OperacionCredito/rutCliente, "###.###.###","rut")' />-<xsl:value-of select="OperacionCredito/dvCliente" /><!--<xsl:value-of select="OperacionCredito/rutDeudor" />--></fo:inline><!--<fo:leader leader-length="5cm" leader-pattern="rule" rule-style="solid" rule-thickness="0.1mm" color="black"/>--></fo:block>
                    <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                    <fo:block font-family="Helvetica" font-size="12pt" text-align="justify" line-height="4.5mm">En<fo:leader leader-pattern="space" leader-length="1mm"/><xsl:value-of select="substring(DireccionDeudorBci/comuna,0,20)" /><!--<fo:leader leader-length="6cm" leader-pattern="rule" rule-style="solid" rule-thickness="0.1mm" color="black"/>-->,<fo:leader leader-pattern="space" leader-length="1mm"/>a<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="OperacionCredito/dia" /></fo:inline><!--<fo:leader leader-length="2cm" leader-pattern="rule" rule-style="solid" rule-thickness="0.1mm" color="black"/>--><fo:leader leader-pattern="space" leader-length="1mm"/>de<fo:leader leader-pattern="space" leader-length="1mm"/>




                    <!--<fo:leader leader-pattern="space" leader-length="1mm"/><fo:leader leader-pattern="space" leader-length="1mm"/>
                    <fo:inline font-weight="bold"><xsl:value-of select="OperacionCredito/mes" /></fo:inline>-->
                    <fo:leader leader-pattern="space" leader-length="1mm"/><fo:leader leader-pattern="space" leader-length="1mm"/>
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







                    <!--<fo:leader leader-length="4.5cm" leader-pattern="rule" rule-style="solid" rule-thickness="0.1mm" color="black"/>--><fo:leader leader-pattern="space" leader-length="1mm"/>de<fo:leader leader-pattern="space" leader-length="1mm"/><fo:inline font-weight="bold"><xsl:value-of select="OperacionCredito/anio" /></fo:inline><!--<fo:leader leader-length="2cm" leader-pattern="rule" rule-style="solid" rule-thickness="0.1mm" color="black"/>--></fo:block>
                    <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                    <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                    <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                    <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                    <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                    <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>

                    <fo:table border-collapse="collapse">
                        <fo:table-column />
                        <fo:table-body>
                            <fo:table-row>

                                  <fo:table-cell >
                                          <fo:block text-align="left" margin-left="2mm"><fo:leader leader-length="6.5cm" leader-pattern="rule" rule-style="solid" rule-thickness="0.1mm" color="black"/></fo:block>
                                          <fo:block font-family="Helbetica" font-size="12pt"   text-align="left" margin-left="2mm" vertical-align="middle" >NOTARIO</fo:block>
                                          <fo:block font-family="Helbetica" font-size="12pt"   text-align="left" margin-left="2mm" vertical-align="middle" >&quot;Este documento consta de 1 hoja&quot;</fo:block>
                                  </fo:table-cell>

                            </fo:table-row>
                      </fo:table-body>
                      </fo:table>
                  </fo:flow>
            </fo:page-sequence>

        </fo:root>
    </xsl:template>
</xsl:stylesheet>
