<?xml version="1.0" encoding="iso-8859-1"?>
<xsl:stylesheet version="1.1" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format" exclude-result-prefixes="fo">
    <xsl:output method="xml" version="1.0" omit-xml-declaration="no" indent="yes"/>
    <xsl:decimal-format name="decimal" decimal-separator=',' grouping-separator='.' />
    <xsl:decimal-format name="rut" grouping-separator='.' />


    <xsl:template match="PagarePesos">
        <fo:root xmlns:fo="http://www.w3.org/1999/XSL/Format">
            <fo:layout-master-set>
                <fo:simple-page-master master-name="miCarta" page-width="215.9mm" page-height="330mm" margin-top="10mm" margin-bottom="10mm" margin-left="20mm" margin-right="20mm">
                    <fo:region-body/>
                </fo:simple-page-master>
            </fo:layout-master-set>

        <fo:page-sequence master-reference="miCarta">
           <fo:flow flow-name="xsl-region-body">

              <fo:table border-collapse="collapse">
                 <fo:table-column column-width="30mm" />
	      		 <fo:table-column column-width="127mm"/>		
                 <fo:table-body>
                    <fo:table-row>
                       <fo:table-cell >
                           <fo:block vertical-align="middle">
							     <fo:external-graphic  width="3cm"   height="1.5cm" vertical-align="middle">
                                       					 <xsl:attribute name="src">
                                       					       <xsl:value-of select="PagarePesosVO/imagePath"/>
                                       					 </xsl:attribute>
                                      			    </fo:external-graphic>                           
                            </fo:block>                                                     
                            </fo:table-cell>
                       <fo:table-cell >                           
                              <fo:block font-family="Helvetica" font-size="12pt" font-weight="bold" text-align="center" vertical-align="middle" line-height="4.5mm" padding-top="7mm">PAGARE (PESOS)</fo:block>      
                            </fo:table-cell>                            
                      </fo:table-row>           

                 </fo:table-body>
              </fo:table>
              
              <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
            
              <fo:table border-collapse="collapse">
	      	      
	      	 <fo:table-column/>
	      	 <fo:table-body>
	      	    <fo:table-row>
	      	       <fo:table-cell >      	       
<fo:block font-family="Helvetica" font-size="12pt" text-align="left" vertical-align="middle" line-height="4.5mm" >N� de Operaci�n: <xsl:value-of select="PagarePesosVO/numeroCredito"/></fo:block>
	      	       </fo:table-cell>
	            </fo:table-row>
	      	 </fo:table-body>
              </fo:table>            
              
              <fo:table border-collapse="collapse">
	      	      
	      	 <fo:table-column/>
	      	 <fo:table-body>
	      	    <fo:table-row>
	      	       <fo:table-cell >
	      	          <fo:block padding-top="2mm" font-family="Helvetica" font-size="11pt" text-align="justify" vertical-align="middle" line-height="4.5mm" >Por valor recibido, debo y pagar� a la orden del BANCO DE CREDITO E INVERSIONES, en su Oficina ubicada en El Golf 125, Las Condes, Santiago, o en cualquiera de sus sucursales, la suma de $ <xsl:value-of select="PagarePesosVO/montoPesos" />(<xsl:value-of select="PagarePesosVO/montoPesosEnLetras" /> pesos m/l)</fo:block>
	      	       </fo:table-cell>
	            </fo:table-row>
	      	 </fo:table-body>
              </fo:table>
              
             <!-- <fo:block ><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block> -->
              
              <fo:table border-collapse="collapse">
	      	      	      
	      	 <fo:table-column />
	      	 <fo:table-body>
	      	    <fo:table-row>
	      	       <fo:table-cell >
	      	      	  <fo:block padding-top="2mm" font-family="Helvetica" font-size="11pt" text-align="justify" vertical-align="middle" line-height="4.5mm" font-weight="bold"><fo:inline text-decoration="underline">TASA DE INTERES</fo:inline></fo:block>
	      	      	  <fo:block font-family="Helvetica" font-size="11pt" text-align="justify" vertical-align="middle" line-height="4.5mm" >El capital adeudado devengar� a partir de esta fecha una tasa de inter�s del <xsl:value-of select="PagarePesosVO/tasaInteres" />% anual vencido durante todo el plazo pactado</fo:block>
	      	       </fo:table-cell>
	      	    </fo:table-row>
	      	 </fo:table-body>
              </fo:table>
              
             <!-- <fo:block ><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>-->
              
              <fo:table border-collapse="collapse">
	      	      	      
	      	 <fo:table-column />
	      	 <fo:table-body>
	      	    <fo:table-row>
	      	       <fo:table-cell >
	      	      	  <fo:block padding-top="2mm" font-family="Helvetica" font-size="11pt" text-align="justify" vertical-align="middle" line-height="4.5mm" font-weight="bold"><fo:inline text-decoration="underline">AMORTIZACION DEL CAPITAL Y PAGO DE  LOS INTERESES</fo:inline></fo:block>
	      	      	  <fo:block font-family="Helvetica" font-size="11pt" text-align="justify" vertical-align="middle" line-height="4.5mm" >El capital adeudado y sus intereses se pagar�n en <xsl:value-of select="PagarePesosVO/cuotas" /> cuotas mensuales, iguales y sucesivas, de $ <xsl:value-of select="PagarePesosVO/montoCuotas" /> cada una, con vencimiento la primera de ellas el d�a <xsl:value-of select="PagarePesosVO/diaVencimiento" /> de <xsl:value-of select="PagarePesosVO/mesVencimiento" /> de <xsl:value-of select="PagarePesosVO/anyoVencimiento" /> y las restantes los d�as <xsl:value-of select="PagarePesosVO/diaMesRestante" /> de cada mes,  venciendo la �ltima de ellas el d�a <xsl:value-of select="PagarePesosVO/diaUltimoVencimiento" /> de <xsl:value-of select="PagarePesosVO/mesUltimoVencimiento" /> de <xsl:value-of select="PagarePesosVO/anyoUltimoVencimiento" /></fo:block>
	      	       </fo:table-cell>
	      	    </fo:table-row>
	      	 </fo:table-body>
              </fo:table>
              <!--<fo:block ><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>-->
              <fo:table border-collapse="collapse">
	      	      	      	      
	      	      	 <fo:table-column />
	      	      	 <fo:table-body>
	      	      	    <fo:table-row>
	      	      	       <fo:table-cell >
	      	      	      	  <fo:block padding-top="2mm" font-family="Helvetica" font-size="11pt" text-align="justify" vertical-align="middle" line-height="4.5mm" ><fo:inline font-weight="bold">Pr�rroga de plazo por d�a inh�bil.</fo:inline> Las cuotas de amortizaci�n de capital e intereses se pagar�n a su vencimiento, siempre que �ste corresponda a un d�a h�bil bancario. En caso contrario, se pagar�n el d�a h�bil bancario siguiente.</fo:block>	      	      	      	 
	      	      	       </fo:table-cell>
	      	      	    </fo:table-row>
	      	      	 </fo:table-body>
              </fo:table>
              <!--<fo:block ><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>-->
              <fo:table border-collapse="collapse">
	      	      	      	      
	      	      	 <fo:table-column />
	      	      	 <fo:table-body>
	      	      	    <fo:table-row>
	      	      	       <fo:table-cell >
	      	      	      	  <fo:block padding-top="2mm" font-family="Helvetica" font-size="11pt" text-align="justify" vertical-align="middle" line-height="4.5mm" ><fo:inline font-weight="bold">Prepagos.</fo:inline>  Si el monto de capital inicial supera el equivalente a UF 5.000, todo pago anticipado, sea total o parcial, ser� convenido libremente entre el suscriptor y el Banco. A falta de acuerdo, el suscriptor podr� en todo caso anticipar el pago, total o parcialmente, y en este �ltimo caso, siempre que el importe a pagar sea igual o superior al 25 % del capital de la obligaci�n adeudada, pagando adem�s los intereses estipulados devengados y no pagados a la fecha del prepago,  calculados sobre el saldo insoluto, m�s los intereses estipulados en este instrumento, calculados sobre el capital prepagado desde la fecha del prepago hasta el vencimiento del plazo pactado. Si el monto de capital inicial no supera el equivalente a UF 5.000, al capital prepagado deber�n sum�rsele los intereses calculados hasta la fecha del prepago y la comisi�n de prepago m�xima que el articulo 10 de la Ley 18.010 permite pactar.</fo:block>	      	      	      	 
	      	      	       </fo:table-cell>
	      	      	    </fo:table-row>
	      	      	 </fo:table-body>
              </fo:table>
              <!--<fo:block ><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>-->
              <fo:table border-collapse="collapse">
	      	      	      	      
	      	      	 <fo:table-column />
	      	      	 <fo:table-body>
	      	      	    <fo:table-row>
	      	      	       <fo:table-cell >
	      	      	      	  <fo:block padding-top="2mm" font-family="Helvetica" font-size="11pt" text-align="justify" vertical-align="middle" line-height="4.5mm" ><fo:inline font-weight="bold">Exigibilidad anticipada.</fo:inline>  El no pago oportuno de una cualquiera de las cuotas de capital y/o de inter�s comprendidos en esta obligaci�n, dar� derecho al acreedor a hacer exigible de inmediato y anticipadamente el monto total del saldo insoluto adeudado a esa fecha, el que desde esa misma fecha se considerar� de plazo vencido y devengar� en favor del acreedor o de quien sus derechos represente, el inter�s m�ximo convencional que rija durante la mora o simple retardo. </fo:block>
	      	      	      	  <fo:block font-family="Helvetica" font-size="11pt" text-align="justify" vertical-align="middle" line-height="4.5mm" >Se deja expresamente establecido que el ejercicio de este derecho constituye una sanci�n al suscriptor por el no pago de la deuda e importa una mera facultad establecida en beneficio exclusivo del acreedor, que no altera en caso alguno la fecha de vencimiento del pagar� originalmente pactada, ni a la exigibilidad de las acciones cambiarias y ejecutivas derivadas de �ste.</fo:block>
	      	      	      	  <fo:block font-family="Helvetica" font-size="11pt" text-align="justify" vertical-align="middle" line-height="4.5mm" >
El Banco podr� hacer exigible de inmediato el monto total adeudado, expirando todos los plazos pendientes por el s�lo hecho de constituirse en mora o de hab�rsele protestado al deudor o al aval, por falta de pago, cualquier documento, pagar�, letra de cambio o cheque, aceptado, suscrito, girado o avalado por �l.</fo:block>
<fo:block font-family="Helvetica" font-size="11pt" text-align="justify" vertical-align="middle" line-height="4.5mm" >
Se deja expresamente establecido que corresponder� al deudor acreditar el pago de las cuotas en que se divide el presente instrumento, en caso de cobro judicial.</fo:block>
	      	      	       </fo:table-cell>
	      	      	    </fo:table-row>
	      	      	 </fo:table-body>
              </fo:table>
              <!--<fo:block ><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>-->
              <fo:table border-collapse="collapse">
	      	      	      	      
	      	      	 <fo:table-column />
	      	      	 <fo:table-body>
	      	      	    <fo:table-row>
	      	      	       <fo:table-cell >
	      	      	      	  <fo:block padding-top="2mm" font-family="Helvetica" font-size="11pt" text-align="justify" vertical-align="middle" line-height="4.5mm" ><fo:inline font-weight="bold">Indivisibilidad y solidaridad.</fo:inline> Las obligaciones que emanen de este pagar� ser�n solidarias para el suscriptor, avalista(s) y dem�s obligados al pago y ser�n indivisibles para sus herederos. Adem�s, el suscriptor  pagar� los gastos, impuestos y costas personales y procesales que correspondan.</fo:block>
	      	      	       </fo:table-cell>
	      	      	    </fo:table-row>
	      	      	 </fo:table-body>
              </fo:table>
              <!--<fo:block ><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>-->
              <fo:table border-collapse="collapse">
	      	      	      	      
	      	      	 <fo:table-column />
	      	      	 <fo:table-body>
	      	      	    <fo:table-row>
	      	      	       <fo:table-cell >
	      	      	      	  <fo:block padding-top="2mm" font-family="Helvetica" font-size="11pt" text-align="justify" vertical-align="middle" line-height="4.5mm" ><fo:inline font-weight="bold">Mandato para pr�rrogas.</fo:inline> El suscriptor faculta al Banco de Cr�dito e Inversiones para concederle bajo la firma de uno o m�s apoderados de �ste, una o m�s pr�rrogas  que se efectuar�n sin �nimo de novar, y fijar en tal caso y dentro de los l�mites legales, nuevas condiciones, tasas de inter�s y fechas de vencimiento.</fo:block>
	      	      	       </fo:table-cell>
	      	      	    </fo:table-row>
	      	      	 </fo:table-body>
              </fo:table>
              <!--<fo:block ><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>-->
              <fo:table border-collapse="collapse">
	      	      	      	      
	      	      	 <fo:table-column />
	      	      	 <fo:table-body>
	      	      	    <fo:table-row>
	      	      	       <fo:table-cell >
	      	      	      	  <fo:block padding-top="2mm" font-family="Helvetica" font-size="11pt" text-align="justify" vertical-align="middle" line-height="4.5mm" ><fo:inline font-weight="bold">Domicilio y competencia.</fo:inline> Para todos los efectos legales, judiciales o extrajudiciales derivados de este pagar�, prorrogo expresamente la competencia para los Tribunales de Justicia con asiento en la comuna y ciudad de <xsl:value-of select="PagarePesosVO/ciudadTribunal" />, pr�rroga que ser� obligatoria tanto para el suscriptor como para sus avales, endosantes u obligados por garant�a. Sin perjuicio declaro, que mi domicilio y residencia son los consignados en  este t�tulo, comprometi�ndome a dar pronto aviso por escrito al Banco, en el evento que realice cualquier cambio de domicilio en el futuro.</fo:block>
	      	      	       </fo:table-cell>
	      	      	    </fo:table-row>
	      	      	 </fo:table-body>
              </fo:table>
              <!--<fo:block ><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>-->
              <fo:table border-collapse="collapse">
	      	      	      	      
	      	      	 <fo:table-column />
	      	      	 <fo:table-body>
	      	      	    <fo:table-row>
	      	      	       <fo:table-cell >
	      	      	      	  <fo:block padding-top="2mm" font-family="Helvetica" font-size="11pt" text-align="justify" vertical-align="middle" line-height="4.5mm" ><fo:inline font-weight="bold"> Impuesto de timbres y estampillas.</fo:inline> El impuesto de timbres y estampillas que grava este documento se paga por ingresos mensuales de dinero en Tesorer�a, seg�n Decreto Ley N� 3475.</fo:block>
	      	      	       </fo:table-cell>
	      	      	    </fo:table-row>
	      	      	 </fo:table-body>
              </fo:table>
              <!--<fo:block ><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>-->
              <fo:table border-collapse="collapse">
	      	      	      	      
	      	      	 <fo:table-column />
	      	      	 <fo:table-body>
	      	      	    <fo:table-row>
	      	      	       <fo:table-cell >
	      	      	      	  <fo:block padding-top="2mm" font-family="Helvetica" font-size="11pt" text-align="justify" vertical-align="middle" line-height="4.5mm" >En <xsl:value-of select="PagarePesosVO/ciudad" />, a <xsl:value-of select="PagarePesosVO/dia" /> de <xsl:value-of select="PagarePesosVO/mes" /> de <xsl:value-of select="PagarePesosVO/anyo" />.</fo:block>
	      	      	      	  <fo:block ><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
	      	      	      	  <fo:block font-family="Helvetica" font-size="11pt" text-align="center" vertical-align="middle" line-height="4.5mm" >___________________________________</fo:block>
	      	      	       </fo:table-cell>
	      	      	    </fo:table-row>
	      	      	    <fo:table-row>
	      	      	       <fo:table-cell >
	      	      	      	  <fo:block font-family="Helvetica" font-size="11pt" text-align="center" vertical-align="middle" line-height="4.5mm" >Firma del Suscriptor</fo:block>
	      	      	       </fo:table-cell>
	      	      	    </fo:table-row>	      	      	    
	      	      	 </fo:table-body>
              </fo:table>
              
              
              
        </fo:flow>
     </fo:page-sequence> 
     
     <fo:page-sequence master-reference="miCarta">
           <fo:flow flow-name="xsl-region-body">

              <fo:table border-collapse="collapse">

                 <fo:table-column column-width="30mm" />
                 <fo:table-column column-width="115.9mm" />
                 <fo:table-column column-width="50mm"/>
                 <fo:table-body>
                    <fo:table-row>
                       <fo:table-cell >
                          <fo:block >
							     <fo:external-graphic  width="3cm"   height="1.5cm" vertical-align="middle">
                                       					 <xsl:attribute name="src">
                                       					       <xsl:value-of select="PagarePesosVO/imagePath"/>
                                       					 </xsl:attribute>
                                      			    </fo:external-graphic>
                          </fo:block>
                       </fo:table-cell>
                       <fo:table-cell >
                          <fo:block font-family="Helvetica" font-size="10pt" font-weight="bold" text-align="center" vertical-align="middle" line-height="4.5mm" >PAGARE (PESOS)</fo:block>
                       </fo:table-cell>
                       <fo:table-cell >
                          <fo:block font-family="Helvetica" font-size="10pt" font-weight="bold" text-align="center" vertical-align="middle" line-height="4.5mm" ></fo:block>
                       </fo:table-cell>
                    </fo:table-row>
                 </fo:table-body>
              </fo:table>
             
                            
              <fo:table border-collapse="collapse">
	      	      
	      	 <fo:table-column column-width="115mm" />
	      	 <fo:table-column column-width="85.9mm" />
	      	 <fo:table-body>
	      	    <fo:table-row>
	      	       <fo:table-cell >
	      	          <fo:block font-family="Helvetica" font-size="11pt" text-align="justify" vertical-align="middle" line-height="4.5mm" >NOMBRE O RAZON SOCIAL  <xsl:value-of select="PagarePesosVO/nombre" /></fo:block>
	      	          <fo:block font-family="Helvetica" font-size="11pt" text-align="justify" vertical-align="middle" line-height="4.5mm" >REPRESENTANTE LEGAL  <fo:leader leader-length="6.3cm" leader-pattern="rule" rule-style="solid" rule-thickness="0.4mm" color="black"/> </fo:block>
	      	          <fo:block font-family="Helvetica" font-size="11pt" text-align="justify" vertical-align="middle" line-height="4.5mm" >REPRESENTANTE LEGAL   <fo:leader leader-length="6.3cm" leader-pattern="rule" rule-style="solid" rule-thickness="0.4mm" color="black"/></fo:block>
	      	       </fo:table-cell>
	      	       <fo:table-cell >
	      	          <fo:block font-family="Helvetica" font-size="11pt" text-align="justify" vertical-align="middle" line-height="4.5mm" >RUT: <xsl:value-of select="PagarePesosVO/rut" /></fo:block>
	      	          <fo:block font-family="Helvetica" font-size="11pt" text-align="justify" vertical-align="middle" line-height="4.5mm" >RUT: <fo:leader leader-length="3cm" leader-pattern="rule" rule-style="solid" rule-thickness="0.4mm" color="black"/></fo:block>
	      	          <fo:block font-family="Helvetica" font-size="11pt" text-align="justify" vertical-align="middle" line-height="4.5mm" >RUT: <fo:leader leader-length="3cm" leader-pattern="rule" rule-style="solid" rule-thickness="0.4mm" color="black"/></fo:block>
	      	       </fo:table-cell>
	            </fo:table-row>
	      	 </fo:table-body>
              </fo:table>
              <fo:table border-collapse="collapse">
	      	      
	      	 <fo:table-column column-width="85.9mm" />
	      	 <fo:table-column column-width="50mm" />
	      	 <fo:table-column column-width="60mm" />
	      	 <fo:table-body>
	      	    <fo:table-row>
	      	       <fo:table-cell >
	      	          <fo:block font-family="Helvetica" font-size="11pt" text-align="justify" vertical-align="middle" line-height="4.5mm" >DOMICILIO <fo:leader leader-length="6.3cm" leader-pattern="rule" rule-style="solid" rule-thickness="0.4mm" color="black"/><!--<xsl:value-of select="PagarePesosVO/domicilio"/>--></fo:block>
	      	       </fo:table-cell>
	      	       <fo:table-cell >
	      	          <fo:block font-family="Helvetica" font-size="11pt" text-align="justify" vertical-align="middle" line-height="4.5mm" >COMUNA  <fo:leader leader-length="3cm" leader-pattern="rule" rule-style="solid" rule-thickness="0.4mm" color="black"/><!--<xsl:value-of select="PagarePesosVO/comuna"/>--></fo:block>
	      	       </fo:table-cell>
	      	       <fo:table-cell >
	      	          <fo:block font-family="Helvetica" font-size="11pt" text-align="justify" vertical-align="middle" line-height="4.5mm" >, CIUDAD <fo:leader leader-length="2cm" leader-pattern="rule" rule-style="solid" rule-thickness="0.4mm" color="black"/><!--<xsl:value-of select="PagarePesosVO/ciudad"/>--></fo:block>
	      	       </fo:table-cell>
	            </fo:table-row>
	      	 </fo:table-body>
              </fo:table>                      
              
              <fo:block ><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              
              <fo:table border-collapse="collapse">
	      	      	      
	      	 <fo:table-column />
	      	 <fo:table-body>
	      	    <fo:table-row>
	      	       <fo:table-cell >
	      	      	  <fo:block font-family="Helvetica" font-size="11pt" text-align="center" vertical-align="middle" line-height="4.5mm" font-weight="bold">POR  AVALES</fo:block>
	      	      	  <fo:block font-family="Helvetica" font-size="11pt" text-align="justify" vertical-align="middle" line-height="4.5mm" >En nuestra calidad de avalistas del presente instrumento, nos constituimos  en codeudores solidarios del suscriptor, y aceptamos, desde luego, las eventuales pr�rrogas o esperas que, con o sin protestos y con o sin abonos, pudieren convenirse entre el suscriptor  y el Banco de Cr�dito e Inversiones o quien sus derechos represente. Convenimos asimismo, en que la falta de protesto en tiempo y forma no perjudicar� nuestra calidad de avales y codeudores solidarios del suscriptor del presente documento.</fo:block>
	      	      	  <fo:block font-family="Helvetica" font-size="11pt" text-align="justify" vertical-align="middle" line-height="4.5mm" >
Por otra parte, en nuestra condici�n de c�nyuges de los  avalistas que a continuaci�n se indican, y para los efectos de lo dispuesto en el art�culo 1.749 del C�digo Civil, en los casos que corresponda, y con el objeto de que queden obligados los bienes sociales de la sociedad conyugal, autorizo expresamente a mi c�nyuge, debidamente individualizado, para que act�e como aval y codeudor solidario de <fo:leader leader-length="6cm" leader-pattern="rule" rule-style="solid" rule-thickness="0.4mm" color="black"/> <fo:leader leader-pattern="space" leader-length="1mm"/> RUT <fo:leader leader-length="3cm" leader-pattern="rule" rule-style="solid" rule-thickness="0.4mm" color="black"/>, por la obligaci�n de que da cuenta este instrumento. La presente autorizaci�n se confiere en los mismos t�rminos en que mi c�nyuge presta su aval; por lo tanto, incluye las eventuales pr�rrogas, renegociaciones, reprogramaciones y repactaciones de cualquier naturaleza, que con o sin protesto y esperas, con o sin abonos, pudieren convenirse entre el suscriptor y el Banco de Cr�dito e Inversiones  o quien sus derechos represente.
</fo:block>
	      	       </fo:table-cell>
	      	    </fo:table-row>
	      	    
	      	    
                      <fo:table-row>
                            <fo:table-cell >                      
                                <fo:block>
									  <fo:table border-collapse="collapse" text-align="left">
										  <fo:table-column column-width="50mm"  />
										  <fo:table-column column-width="70mm"/>
										  <fo:table-column column-width="15mm" />
										  <fo:table-column column-width="32mm"/>
						
										  <fo:table-body>
											  <fo:table-row>
						
													<fo:table-cell >
															<fo:block   font-family="Helvetica" font-size="10pt"   text-align="left" margin-left="1mm" line-height="4.5mm" >NOMBRE O RAZON SOCIAL</fo:block>
															<fo:block   font-family="Helvetica" font-size="10pt"   text-align="left" margin-left="1mm" line-height="4.5mm" >REPRESENTANTE LEGAL</fo:block>
															<fo:block   font-family="Helvetica" font-size="10pt"   text-align="left" margin-left="1mm" line-height="4.5mm">REPRESENTANTE LEGAL</fo:block>                                    
													</fo:table-cell>
													<fo:table-cell >
															<fo:block  font-family="Helvetica" font-size="12pt"  text-align="left" line-height="4.5mm"  ><xsl:value-of select="nombre"/><fo:leader leader-length="6.5cm" leader-pattern="rule" rule-style="solid" rule-thickness="0.4mm" color="black"/></fo:block>
															<fo:block  font-family="Helvetica" font-size="12pt" text-align="left" line-height="4.5mm"  ><fo:leader leader-length="6.5cm" leader-pattern="rule" rule-style="solid" rule-thickness="0.4mm" color="black"/></fo:block>
															<fo:block font-family="Helvetica" font-size="12pt" text-align="left"  line-height="4.5mm"  ><fo:leader leader-length="6.5cm" leader-pattern="rule" rule-style="solid" rule-thickness="0.4mm" color="black"/><fo:leader leader-pattern="space" leader-length="2mm"/></fo:block>
													</fo:table-cell>
													<fo:table-cell >
															<fo:block   font-family="Helvetica"  font-size="12pt"   text-align="center" margin-left="1mm" line-height="4.5mm" >RUT</fo:block>
														  <fo:block   font-family="Helvetica"  font-size="12pt"   text-align="center" margin-left="1mm" line-height="4.5mm" >RUT</fo:block>
														  <fo:block   font-family="Helvetica"  font-size="12pt"   text-align="center" margin-left="1mm" line-height="4.5mm" >RUT</fo:block>                                  
													</fo:table-cell>
													<fo:table-cell >
															<fo:block   font-family="Helvetica"  font-size="12pt"   text-align="center" margin-left="1mm" line-height="4.5mm"><fo:leader leader-length="6.5cm" leader-pattern="rule" rule-style="solid" rule-thickness="0.4mm" color="black"/></fo:block>
															<fo:block   font-family="Helvetica"  font-size="12pt"   text-align="center" margin-left="1mm" line-height="4.5mm"><fo:leader leader-length="6.5cm" leader-pattern="rule" rule-style="solid" rule-thickness="0.4mm" color="black"/></fo:block>
															<fo:block   font-family="Helvetica"  font-size="12pt"   text-align="center" margin-left="1mm" line-height="4.5mm"><fo:leader leader-length="6.5cm" leader-pattern="rule" rule-style="solid" rule-thickness="0.4mm" color="black"/></fo:block>                                                                   
													</fo:table-cell>
											  </fo:table-row>
										</fo:table-body>
									  </fo:table>
                                
                                </fo:block>							
                            </fo:table-cell>
                      </fo:table-row>
                      <fo:table-row>
                            <fo:table-cell >                      
                                <fo:block>
									  <fo:table border-collapse="collapse" text-align="left">
										  <fo:table-column column-width="30mm"  />
										  <fo:table-column column-width="50mm"/>
										  <fo:table-column column-width="22mm" />
										  <fo:table-column column-width="25mm"/>
										  <fo:table-column column-width="22mm" />
										  <fo:table-column column-width="20mm"/>						
										  <fo:table-body>
											  <fo:table-row>
						
													<fo:table-cell >
															<fo:block   font-family="Helvetica" font-size="10pt"   text-align="left" margin-left="1mm" line-height="4.5mm">DOMICILIO</fo:block>                                 
													</fo:table-cell>
													<fo:table-cell >
															<fo:block  font-family="Helvetica" font-size="12pt"  text-align="left" line-height="4.5mm"  ><xsl:value-of select="direccion"/><fo:leader leader-length="6.5cm" leader-pattern="rule" rule-style="solid" rule-thickness="0.4mm" color="black"/></fo:block>
													</fo:table-cell>													
													<fo:table-cell >
															<fo:block   font-family="Helvetica"  font-size="12pt"   text-align="left" margin-left="1mm" line-height="4.5mm">COMUNA</fo:block>                               
													</fo:table-cell>
													<fo:table-cell >
															<fo:block   font-family="Helvetica"  font-size="12pt"   text-align="center" margin-left="1mm" line-height="4.5mm"><fo:leader leader-length="6.5cm" leader-pattern="rule" rule-style="solid" rule-thickness="0.4mm" color="black"/></fo:block>
                                                                   
													</fo:table-cell>
													<fo:table-cell >
															<fo:block   font-family="Helvetica"  font-size="12pt"   text-align="left" margin-left="1mm" line-height="4.5mm" >CIUDAD</fo:block>                               
													</fo:table-cell>
													<fo:table-cell >
															<fo:block   font-family="Helvetica"  font-size="12pt"   text-align="center" margin-left="1mm" line-height="4.5mm"><fo:leader leader-length="6.5cm" leader-pattern="rule" rule-style="solid" rule-thickness="0.4mm" color="black"/></fo:block>
                                                                   
													</fo:table-cell>													
											  </fo:table-row>
										</fo:table-body>
									  </fo:table>
                                
                                </fo:block>							
                            </fo:table-cell>
                      </fo:table-row>


                      <fo:table-row>
                            <fo:table-cell >                    
								<fo:block >
<fo:table border-collapse="collapse">
	     	<fo:table-column column-width="48,9mm" />
	     	<fo:table-column column-width="20mm" />
	     	<fo:table-column column-width="42mm" />
	     	<fo:table-column column-width="" />
	     	<fo:table-body>
	     	   <fo:table-row>
	     	      <fo:table-cell >
	     	      	 <fo:block font-family="Helvetica" font-size="10pt" text-align="justify" vertical-align="middle" line-height="4.5mm" margin-left="1mm" >En <fo:leader leader-length="4.5cm" leader-pattern="rule" rule-style="solid" rule-thickness="0.4mm" color="black"/></fo:block>
	     	      </fo:table-cell>
	     	      <fo:table-cell >
	     	      	 <fo:block font-family="Helvetica" font-size="10pt" text-align="justify" vertical-align="middle" line-height="4.5mm" >, a <fo:leader leader-length="1cm" leader-pattern="rule" rule-style="solid" rule-thickness="0.4mm" color="black"/><fo:inline font-weight="bold"></fo:inline>
	     	      	 </fo:block>
	     	      </fo:table-cell>
	     	      <fo:table-cell >
	     	      	 <fo:block font-family="Helvetica" font-size="10pt" text-align="justify" vertical-align="middle" line-height="4.5mm" >de <fo:leader leader-length="3cm" leader-pattern="rule" rule-style="solid" rule-thickness="0.4mm" color="black"/>
	                 <fo:inline font-weight="bold">
	                 </fo:inline>
	                 </fo:block>
	              </fo:table-cell>
	     	      <fo:table-cell >
	     	      	 <fo:block font-family="Helvetica" font-size="10pt" text-align="justify" vertical-align="middle" line-height="4.5mm" >de <fo:leader leader-length="2cm" leader-pattern="rule" rule-style="solid" rule-thickness="0.4mm" color="black"/><fo:inline font-weight="bold"></fo:inline>
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
             
              
              <fo:table border-collapse="collapse" >
                 <fo:table-column />
                 <fo:table-column />

                 <fo:table-body>
                    <fo:table-row>
                       <fo:table-cell >
                         <fo:block space-before="0.5em" space-after="0.5em"></fo:block>
                         <fo:block space-before="0.5em" space-after="0.5em"></fo:block>
                         <fo:block line-height="4.5mm" text-align="left"><fo:leader leader-length="6cm" leader-pattern="rule" rule-style="solid" rule-thickness="0.1mm" color="black"/></fo:block>
                         <fo:block font-family="Helvetica" font-size="11pt" text-align="left" line-height="4.5mm" margin-left="1cm">Firma del Avalista</fo:block>
                      </fo:table-cell>
                      <fo:table-cell >
                         <fo:block space-before="0.5em" space-after="0.5em"></fo:block>
                         <fo:block space-before="0.5em" space-after="0.5em"></fo:block>
                        <fo:block line-height="4.5mm" text-align="center"><fo:leader leader-length="6cm" leader-pattern="rule" rule-style="solid" rule-thickness="0.1mm" color="black"/></fo:block>
                         <fo:block font-family="Helvetica" font-size="11pt" text-align="center" line-height="4.5mm" >Firma C�nyuge del Aval</fo:block>

                      </fo:table-cell>
                   </fo:table-row>
                </fo:table-body>
              </fo:table>
              
              <fo:block ><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
              
              <fo:table border-collapse="collapse">
                 <fo:table-column/>
					 <fo:table-body>


                      <fo:table-row>
                            <fo:table-cell >                        
                                <fo:block>
									  <fo:table border-collapse="collapse" text-align="left">
										  <fo:table-column column-width="50mm"  />
										  <fo:table-column column-width="70mm"/>
										  <fo:table-column column-width="15mm" />
										  <fo:table-column column-width="32mm"/>
						
										  <fo:table-body>
											  <fo:table-row>
						
													<fo:table-cell >
															<fo:block   font-family="Helvetica" font-size="10pt"   text-align="left" margin-left="1mm" line-height="4.5mm" >NOMBRE O RAZON SOCIAL</fo:block>
													</fo:table-cell>
													<fo:table-cell >
															<fo:block  font-family="Helvetica" font-size="12pt"  text-align="left" line-height="4.5mm"  ><xsl:value-of select="nombre"/><fo:leader leader-length="6.5cm" leader-pattern="rule" rule-style="solid" rule-thickness="0.4mm" color="black"/></fo:block>
													</fo:table-cell>
													<fo:table-cell >
															<fo:block   font-family="Helvetica"  font-size="12pt"   text-align="center" margin-left="1mm" line-height="4.5mm" >RUT</fo:block>
													</fo:table-cell>
													<fo:table-cell >
															<fo:block   font-family="Helvetica"  font-size="12pt"   text-align="center" margin-left="1mm" line-height="4.5mm"><fo:leader leader-length="6.5cm" leader-pattern="rule" rule-style="solid" rule-thickness="0.4mm" color="black"/></fo:block>
													</fo:table-cell>
											  </fo:table-row>
										</fo:table-body>
									  </fo:table>
                                
                                </fo:block>							
                            </fo:table-cell>
                      </fo:table-row>
                                          
                      <fo:table-row>
                            <fo:table-cell >                      
                                <fo:block>
									  <fo:table border-collapse="collapse" text-align="left">
										  <fo:table-column column-width="30mm"  />
										  <fo:table-column column-width="50mm"/>
										  <fo:table-column column-width="22mm" />
										  <fo:table-column column-width="25mm"/>
										  <fo:table-column column-width="22mm" />
										  <fo:table-column column-width="20mm"/>						
										  <fo:table-body>
											  <fo:table-row>
						
													<fo:table-cell >
															<fo:block   font-family="Helvetica" font-size="10pt"   text-align="left" margin-left="1mm" line-height="4.5mm" >DOMICILIO</fo:block>                                 
													</fo:table-cell>
													<fo:table-cell >
															<fo:block  font-family="Helvetica" font-size="12pt"  text-align="left" line-height="4.5mm"  ><xsl:value-of select="direccion"/><fo:leader leader-length="6.5cm" leader-pattern="rule" rule-style="solid" rule-thickness="0.4mm" color="black"/></fo:block>
													</fo:table-cell>													
													<fo:table-cell >
															<fo:block   font-family="Helvetica"  font-size="12pt"   text-align="left" margin-left="1mm" line-height="4.5mm" >COMUNA</fo:block>                               
													</fo:table-cell>
													<fo:table-cell >
															<fo:block   font-family="Helvetica"  font-size="12pt"   text-align="center" margin-left="1mm" line-height="4.5mm"><fo:leader leader-length="6.5cm" leader-pattern="rule" rule-style="solid" rule-thickness="0.4mm" color="black"/></fo:block>
                                                                   
													</fo:table-cell>
													<fo:table-cell >
															<fo:block   font-family="Helvetica"  font-size="12pt"   text-align="left" margin-left="1mm" line-height="4.5mm" >CIUDAD</fo:block>                               
													</fo:table-cell>
													<fo:table-cell >
															<fo:block   font-family="Helvetica"  font-size="12pt"   text-align="center" margin-left="1mm" line-height="4.5mm"><fo:leader leader-length="6.5cm" leader-pattern="rule" rule-style="solid" rule-thickness="0.4mm" color="black"/></fo:block>
                                                                   
													</fo:table-cell>													
											  </fo:table-row>
										</fo:table-body>
									  </fo:table>
                                
                                </fo:block>							
                            </fo:table-cell>
                      </fo:table-row>					 
					 
                      <fo:table-row>
                            <fo:table-cell >                        
                                <fo:block>
									  <fo:table border-collapse="collapse" text-align="left">
										  <fo:table-column column-width="50mm"  />
										  <fo:table-column column-width="70mm"/>
										  <fo:table-column column-width="15mm" />
										  <fo:table-column column-width="32mm"/>
						
										  <fo:table-body>
											  <fo:table-row>
						
													<fo:table-cell >
															<fo:block   font-family="Helvetica" font-size="10pt"   text-align="left" margin-left="1mm" line-height="4.5mm">NOMBRE CONYUGE</fo:block>                               
													</fo:table-cell>
													<fo:table-cell >
															<fo:block  font-family="Helvetica" font-size="12pt"  text-align="left" line-height="4.5mm"  ><xsl:value-of select="nombre"/><fo:leader leader-length="6.5cm" leader-pattern="rule" rule-style="solid" rule-thickness="0.4mm" color="black"/></fo:block>
													</fo:table-cell>
													<fo:table-cell >
															<fo:block   font-family="Helvetica"  font-size="12pt"   text-align="center" margin-left="1mm" line-height="4.5mm" >RUT</fo:block>                             
													</fo:table-cell>
													<fo:table-cell >
															<fo:block   font-family="Helvetica"  font-size="12pt"   text-align="center" margin-left="1mm" line-height="4.5mm"><fo:leader leader-length="6.5cm" leader-pattern="rule" rule-style="solid" rule-thickness="0.4mm" color="black"/></fo:block>                                                           
													</fo:table-cell>
											  </fo:table-row>
										</fo:table-body>
									  </fo:table>
                                
                                </fo:block>							
                            </fo:table-cell>
                      </fo:table-row>
                      
                      <fo:table-row>
                            <fo:table-cell >                      
                                <fo:block>
									  <fo:table border-collapse="collapse" text-align="left">
										  <fo:table-column column-width="30mm"  />
										  <fo:table-column column-width="50mm"/>
										  <fo:table-column column-width="22mm" />
										  <fo:table-column column-width="25mm"/>
										  <fo:table-column column-width="22mm" />
										  <fo:table-column column-width="20mm"/>						
										  <fo:table-body>
											  <fo:table-row>
						
													<fo:table-cell >
															<fo:block   font-family="Helvetica" font-size="10pt"   text-align="left" margin-left="1mm" line-height="4.5mm" >DOMICILIO</fo:block>                                 
													</fo:table-cell>
													<fo:table-cell >
															<fo:block  font-family="Helvetica" font-size="12pt"  text-align="left" line-height="4.5mm"  ><xsl:value-of select="direccion"/><fo:leader leader-length="6.5cm" leader-pattern="rule" rule-style="solid" rule-thickness="0.4mm" color="black"/></fo:block>
													</fo:table-cell>													
													<fo:table-cell >
															<fo:block   font-family="Helvetica"  font-size="12pt"   text-align="left" margin-left="1mm" line-height="4.5mm">COMUNA</fo:block>                               
													</fo:table-cell>
													<fo:table-cell >
															<fo:block   font-family="Helvetica"  font-size="12pt"   text-align="center" margin-left="1mm" line-height="4.5mm"><fo:leader leader-length="6.5cm" leader-pattern="rule" rule-style="solid" rule-thickness="0.4mm" color="black"/></fo:block>
                                                                   
													</fo:table-cell>
													<fo:table-cell >
															<fo:block   font-family="Helvetica"  font-size="12pt"   text-align="left" margin-left="1mm" line-height="4.5mm" >CIUDAD</fo:block>                               
													</fo:table-cell>
													<fo:table-cell >
															<fo:block   font-family="Helvetica"  font-size="12pt"   text-align="center" margin-left="1mm" line-height="4.5mm"><fo:leader leader-length="6.5cm" leader-pattern="rule" rule-style="solid" rule-thickness="0.4mm" color="black"/></fo:block>
                                                                   
													</fo:table-cell>													
											  </fo:table-row>
										</fo:table-body>
									  </fo:table>
                                
                                </fo:block>							
                            </fo:table-cell>
                      </fo:table-row>


                      <fo:table-row>
                            <fo:table-cell >                    
								<fo:block >
<fo:table border-collapse="collapse">
	     	<fo:table-column column-width="48,9mm" />
	     	<fo:table-column column-width="20mm" />
	     	<fo:table-column column-width="42mm" />
	     	<fo:table-column column-width="" />
	     	<fo:table-body>
	     	   <fo:table-row>
	     	      <fo:table-cell >
	     	      	 <fo:block font-family="Helvetica" font-size="10pt" text-align="justify" vertical-align="middle" line-height="4.5mm" margin-left="1mm" >En <fo:leader leader-length="4.5cm" leader-pattern="rule" rule-style="solid" rule-thickness="0.4mm" color="black"/></fo:block>
	     	      </fo:table-cell>
	     	      <fo:table-cell >
	     	      	 <fo:block font-family="Helvetica" font-size="10pt" text-align="justify" vertical-align="middle" line-height="4.5mm" >, a <fo:leader leader-length="1cm" leader-pattern="rule" rule-style="solid" rule-thickness="0.4mm" color="black"/><fo:inline font-weight="bold"></fo:inline>
	     	      	 </fo:block>
	     	      </fo:table-cell>
	     	      <fo:table-cell >
	     	      	 <fo:block font-family="Helvetica" font-size="10pt" text-align="justify" vertical-align="middle" line-height="4.5mm" >de <fo:leader leader-length="3cm" leader-pattern="rule" rule-style="solid" rule-thickness="0.4mm" color="black"/>
	                 <fo:inline font-weight="bold">
	                 </fo:inline>
	                 </fo:block>
	              </fo:table-cell>
	     	      <fo:table-cell >
	     	      	 <fo:block font-family="Helvetica" font-size="10pt" text-align="justify" vertical-align="middle" line-height="4.5mm" >de <fo:leader leader-length="2cm" leader-pattern="rule" rule-style="solid" rule-thickness="0.4mm" color="black"/><fo:inline font-weight="bold"></fo:inline>
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
              
             
             <fo:block ><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
             
             <fo:table border-collapse="collapse">
             <fo:table-column />
             <fo:table-column />
             <fo:table-body>
                    <fo:table-row>
                       <fo:table-cell >
                         <fo:block space-before="0.5em" space-after="0.5em"></fo:block>
                         <fo:block space-before="0.5em" space-after="0.5em"></fo:block>
                         <fo:block line-height="4.5mm" text-align="left"><fo:leader leader-length="6cm" leader-pattern="rule" rule-style="solid" rule-thickness="0.1mm" color="black"/></fo:block>
                         <fo:block font-family="Helvetica" font-size="11pt" text-align="left" line-height="4.5mm" margin-left="1cm">Firma del Avalista</fo:block>
                      </fo:table-cell>
                      <fo:table-cell >
                         <fo:block space-before="0.5em" space-after="0.5em"></fo:block>
                         <fo:block space-before="0.5em" space-after="0.5em"></fo:block>
                        <fo:block line-height="4.5mm" text-align="center"><fo:leader leader-length="6cm" leader-pattern="rule" rule-style="solid" rule-thickness="0.1mm" color="black"/></fo:block>
                         <fo:block font-family="Helvetica" font-size="11pt" text-align="center" line-height="4.5mm" >Firma C�nyuge del Aval</fo:block>

                      </fo:table-cell>
                   </fo:table-row>
                </fo:table-body>
              </fo:table>
              
              <fo:table border-collapse="collapse">
              <fo:table-column />
                 <fo:table-body>
                    <fo:table-row>
					   <fo:table-cell >
						  <fo:block ><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>                            
							  <fo:block font-family="Helvetica" font-size="11pt" text-align="justify" margin-right="2mm" line-height="6.5mm" font-weight="bold">Autorizo las firmas estampadas en este instrumento, como suscriptor:</fo:block>				
					   </fo:table-cell>
					</fo:table-row>

                      <fo:table-row>
                      
                            <fo:table-cell >                     
                                <fo:block>
									  <fo:table border-collapse="collapse" text-align="left">
										  <fo:table-column column-width="20mm"  />
										  <fo:table-column column-width="100mm"/>
										  <fo:table-column column-width="15mm" />
										  <fo:table-column column-width="32mm"/>						
										  <fo:table-body>
											  <fo:table-row>						
													<fo:table-cell >
															<fo:block   font-family="Helvetica" font-size="10pt"   text-align="left" margin-left="1mm" line-height="4.5mm">Don:</fo:block>            
															<fo:block   font-family="Helvetica" font-size="10pt"   text-align="left" margin-left="1mm" line-height="4.5mm">Don:</fo:block>      															                   
													</fo:table-cell>
													<fo:table-cell >
															<fo:block  font-family="Helvetica" font-size="12pt"  text-align="left" line-height="4.5mm"  ><xsl:value-of select="nombre"/><fo:leader leader-length="10cm" leader-pattern="rule" rule-style="solid" rule-thickness="0.4mm" color="black"/></fo:block>
															<fo:block  font-family="Helvetica" font-size="12pt"  text-align="left" line-height="4.5mm"  ><xsl:value-of select="nombre"/><fo:leader leader-length="10cm" leader-pattern="rule" rule-style="solid" rule-thickness="0.4mm" color="black"/></fo:block>
													</fo:table-cell>													
													<fo:table-cell >
															<fo:block   font-family="Helvetica" font-size="10pt"   text-align="left" margin-left="1mm" line-height="4.5mm" >RUT:</fo:block>    
															<fo:block   font-family="Helvetica" font-size="10pt"   text-align="left" margin-left="1mm" line-height="4.5mm">RUT:</fo:block>    															
													</fo:table-cell>	   
													<fo:table-cell >
															<fo:block  font-family="Helvetica" font-size="12pt"  text-align="left" line-height="4.5mm"  ><xsl:value-of select="rut"/><fo:leader leader-length="6.5cm" leader-pattern="rule" rule-style="solid" rule-thickness="0.4mm" color="black"/></fo:block>  
															<fo:block  font-family="Helvetica" font-size="12pt"  text-align="left" line-height="4.5mm"  ><xsl:value-of select="rut"/><fo:leader leader-length="6.5cm" leader-pattern="rule" rule-style="solid" rule-thickness="0.4mm" color="black"/></fo:block>  
													</fo:table-cell>
											  </fo:table-row>
										</fo:table-body>
									  </fo:table>
                                
                                </fo:block>							
                            </fo:table-cell>
                      </fo:table-row>
	            <fo:table-row>
	               <fo:table-cell >
	                  <fo:block font-family="Helvetica" font-size="12pt" text-align="justify" margin-right="2mm" line-height="6.5mm" >quienes lo hacen en representaci�n de <fo:leader leader-length="8.5cm" leader-pattern="rule" rule-style="solid" rule-thickness="0.4mm" color="black"/></fo:block>				
	               </fo:table-cell>	            
	            </fo:table-row>
	            
	            <fo:table-row>            
	               <fo:table-cell >
	                  <fo:block font-family="Helvetica" font-size="12pt" text-align="justify" margin-right="2mm" line-height="6.5mm" font-weight="bold">Como Avalistas:</fo:block>				
	               </fo:table-cell>
	            </fo:table-row>	            

                      <fo:table-row>
                            <fo:table-cell >                     
                                <fo:block>
									  <fo:table border-collapse="collapse" text-align="left">
										  <fo:table-column column-width="20mm"  />
										  <fo:table-column column-width="100mm"/>
										  <fo:table-column column-width="15mm" />
										  <fo:table-column column-width="32mm"/>						
										  <fo:table-body>
											  <fo:table-row>						
													<fo:table-cell >
															<fo:block   font-family="Helvetica" font-size="10pt"   text-align="left" margin-left="1mm" line-height="4.5mm">Don:</fo:block>            
															<fo:block   font-family="Helvetica" font-size="10pt"   text-align="left" margin-left="1mm" line-height="4.5mm">Don:</fo:block>      															                   
													</fo:table-cell>
													<fo:table-cell >
															<fo:block  font-family="Helvetica" font-size="12pt"  text-align="left" line-height="4.5mm"  ><xsl:value-of select="nombre"/><fo:leader leader-length="10cm" leader-pattern="rule" rule-style="solid" rule-thickness="0.4mm" color="black"/></fo:block>
															<fo:block  font-family="Helvetica" font-size="12pt"  text-align="left" line-height="4.5mm"  ><xsl:value-of select="nombre"/><fo:leader leader-length="10cm" leader-pattern="rule" rule-style="solid" rule-thickness="0.4mm" color="black"/></fo:block>
													</fo:table-cell>													
													<fo:table-cell >
															<fo:block   font-family="Helvetica" font-size="10pt"   text-align="left" margin-left="1mm" line-height="4.5mm">RUT:</fo:block>    
															<fo:block   font-family="Helvetica" font-size="10pt"   text-align="left" margin-left="1mm" line-height="4.5mm">RUT:</fo:block>    															
													</fo:table-cell>	   
													<fo:table-cell >
															<fo:block  font-family="Helvetica" font-size="12pt"  text-align="left" line-height="4.5mm"  ><xsl:value-of select="rut"/><fo:leader leader-length="6.5cm" leader-pattern="rule" rule-style="solid" rule-thickness="0.4mm" color="black"/></fo:block>  
															<fo:block  font-family="Helvetica" font-size="12pt"  text-align="left" line-height="4.5mm"  ><xsl:value-of select="rut"/><fo:leader leader-length="6.5cm" leader-pattern="rule" rule-style="solid" rule-thickness="0.4mm" color="black"/></fo:block>  
													</fo:table-cell>
											  </fo:table-row>
										</fo:table-body>
									  </fo:table>
                                
                                </fo:block>							
                            </fo:table-cell>
                      </fo:table-row>



	           <fo:table-row>
	              <fo:table-cell >
	                 <fo:block font-family="Helvetica" font-size="11pt" text-align="justify" margin-right="2mm" line-height="6.5mm" font-weight="bold">Como c�nyuge de los avalistas, respectivamente, en los casos que corresponda:</fo:block>				
	              </fo:table-cell>
	           </fo:table-row>

                      <fo:table-row>
                            <fo:table-cell >                     
                                <fo:block>
									  <fo:table border-collapse="collapse" text-align="left">
										  <fo:table-column column-width="20mm"  />
										  <fo:table-column column-width="100mm"/>
										  <fo:table-column column-width="15mm" />
										  <fo:table-column column-width="32mm"/>						
										  <fo:table-body>
											  <fo:table-row>						
													<fo:table-cell >
															<fo:block   font-family="Helvetica" font-size="10pt"   text-align="left" margin-left="1mm" line-height="4.5mm">Don:</fo:block>            
															<fo:block   font-family="Helvetica" font-size="10pt"   text-align="left" margin-left="1mm" line-height="4.5mm">Don:</fo:block>      															                   
													</fo:table-cell>
													<fo:table-cell >
															<fo:block  font-family="Helvetica" font-size="12pt"  text-align="left" line-height="4.5mm"  ><xsl:value-of select="nombre"/><fo:leader leader-length="10cm" leader-pattern="rule" rule-style="solid" rule-thickness="0.4mm" color="black"/></fo:block>
															<fo:block  font-family="Helvetica" font-size="12pt"  text-align="left" line-height="4.5mm"  ><xsl:value-of select="nombre"/><fo:leader leader-length="10cm" leader-pattern="rule" rule-style="solid" rule-thickness="0.4mm" color="black"/></fo:block>
													</fo:table-cell>													
													<fo:table-cell >
															<fo:block   font-family="Helvetica" font-size="10pt"   text-align="left" margin-left="1mm" line-height="4.5mm">RUT:</fo:block>    
															<fo:block   font-family="Helvetica" font-size="10pt"   text-align="left" margin-left="1mm" line-height="4.5mm">RUT:</fo:block>    															
													</fo:table-cell>	   
													<fo:table-cell >
															<fo:block  font-family="Helvetica" font-size="12pt"  text-align="left" line-height="4.5mm"  ><xsl:value-of select="rut"/><fo:leader leader-length="6.5cm" leader-pattern="rule" rule-style="solid" rule-thickness="0.4mm" color="black"/></fo:block>  
															<fo:block  font-family="Helvetica" font-size="12pt"  text-align="left" line-height="4.5mm"  ><xsl:value-of select="rut"/><fo:leader leader-length="6.5cm" leader-pattern="rule" rule-style="solid" rule-thickness="0.4mm" color="black"/></fo:block>  
													</fo:table-cell>
											  </fo:table-row>
										</fo:table-body>
									  </fo:table>
                                
                                </fo:block>							
                            </fo:table-cell>
                      </fo:table-row>


                      <fo:table-row>
                            <fo:table-cell >                     
								<fo:block >
<fo:table border-collapse="collapse">
	     	<fo:table-column column-width="48,9mm" />
	     	<fo:table-column column-width="20mm" />
	     	<fo:table-column column-width="42mm" />
	     	<fo:table-column column-width="" />
	     	<fo:table-body>
	     	   <fo:table-row>
	     	      <fo:table-cell >
	     	      	 <fo:block font-family="Helvetica" font-size="10pt" text-align="justify" vertical-align="middle" line-height="4.5mm" margin-left="1mm" >En <fo:leader leader-length="4.5cm" leader-pattern="rule" rule-style="solid" rule-thickness="0.4mm" color="black"/></fo:block>
	     	      </fo:table-cell>
	     	      <fo:table-cell >
	     	      	 <fo:block font-family="Helvetica" font-size="10pt" text-align="justify" vertical-align="middle" line-height="4.5mm" >, a <fo:leader leader-length="1cm" leader-pattern="rule" rule-style="solid" rule-thickness="0.4mm" color="black"/><fo:inline font-weight="bold"></fo:inline>
	     	      	 </fo:block>
	     	      </fo:table-cell>
	     	      <fo:table-cell >
	     	      	 <fo:block font-family="Helvetica" font-size="10pt" text-align="justify" vertical-align="middle" line-height="4.5mm" >de <fo:leader leader-length="3cm" leader-pattern="rule" rule-style="solid" rule-thickness="0.4mm" color="black"/>
	                 <fo:inline font-weight="bold">
	                 </fo:inline>
	                 </fo:block>
	              </fo:table-cell>
	     	      <fo:table-cell >
	     	      	 <fo:block font-family="Helvetica" font-size="10pt" text-align="justify" vertical-align="middle" line-height="4.5mm" >de <fo:leader leader-length="2cm" leader-pattern="rule" rule-style="solid" rule-thickness="0.4mm" color="black"/><fo:inline font-weight="bold"></fo:inline>
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
	     
	                    
	     <fo:table border-collapse="collapse" text-align="left">
	        <fo:table-column height="30mm"/>             
	        <fo:table-body>
	      	   <fo:table-row height="30mm">
	      	      <fo:table-cell display-align="center">
	      		 <fo:block text-align="center"></fo:block>
	      	      </fo:table-cell>
	      	   </fo:table-row>				          
	        </fo:table-body>
	     </fo:table>   
	        
	     <fo:table border-collapse="collapse" text-align="left">
	        <fo:table-column column-width="60mm"/>
	        <fo:table-column column-width="70mm"/>
	        <fo:table-column column-width="60mm"/>                  
	        <fo:table-body>
	           <fo:table-row>
	              <fo:table-cell >
	                 <fo:block font-family="Helvetica" font-size="12pt" text-align="left" font-weight="bold" line-height="4.5mm" ></fo:block>                                    
	              </fo:table-cell>
	              <fo:table-cell >
	                 <fo:block border-top="1pt solid black"  padding-top="3mm"  font-family="Helvetica" font-size="11pt"   text-align="center" margin-left="1mm" line-height="4.5mm">NOTARIO</fo:block>                                    
	              </fo:table-cell>
	              <fo:table-cell >
	                 <fo:block   font-family="Helvetica" font-size="12pt"   text-align="center" margin-left="1mm" line-height="4.5mm"></fo:block>                                    
	              </fo:table-cell>                            
	           </fo:table-row>
	        </fo:table-body>
             </fo:table>
              
        </fo:flow>
     </fo:page-sequence>  

        </fo:root>
    </xsl:template>
</xsl:stylesheet>
