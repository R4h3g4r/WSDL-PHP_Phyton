<?xml version="1.0" encoding="iso-8859-1"?>
<!-- <== version: 2012/05/09 12:00 ==> -->
<xsl:stylesheet version="1.1" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format" exclude-result-prefixes="fo">
  <xsl:output method="xml" version="1.0" omit-xml-declaration="no" indent="yes"/>
  <xsl:decimal-format name="decimal" decimal-separator=',' grouping-separator='.' />
  <xsl:decimal-format name="rut"                           grouping-separator='.' />
  
<!-- VARIABLES -->
<xsl:variable name="bgcolor">#E7E5EF</xsl:variable>
<xsl:variable name="lineas">#CCCCCC</xsl:variable>
<xsl:variable name="txt">#000000</xsl:variable>
<xsl:variable name="txt-blanco">#FFFFFF</xsl:variable>
<xsl:variable name="txt-azul-claro">#0061A5</xsl:variable>
<xsl:variable name="txt-azul-oscuro">#1069B5</xsl:variable>
<xsl:variable name="negro">#000000</xsl:variable>
<xsl:variable name="azul-claro">#3366FF</xsl:variable>
<xsl:variable name="azul-oscuro">#000078</xsl:variable>
<xsl:variable name="gris-oscuro">#CCCCCC</xsl:variable>
<xsl:variable name="gris-claro">#989898</xsl:variable>
<xsl:variable name="gris-dark">#505050</xsl:variable>
<xsl:variable name="gris-suave">#F2F2F2</xsl:variable>
<xsl:variable name="amarillo">#FFFF99</xsl:variable>
<xsl:variable name="rojo-oscuro">#9E1233</xsl:variable>
<xsl:variable name="espacio-bloque">0.5mm</xsl:variable>
<xsl:variable name="miles">#.###</xsl:variable>
<xsl:variable name="size-fuente-margen">7pt</xsl:variable>
<xsl:variable name="espacio-texto-celda-left">2mm</xsl:variable>
<xsl:variable name="espacio-texto-celda-top">1mm</xsl:variable>
<xsl:decimal-format name="CL" decimal-separator="," grouping-separator="."/>
<xsl:param name="IMG_URL"/>  
  
  
  
  <xsl:template match="contratolem">
    <fo:root xmlns:fo="http://www.w3.org/1999/XSL/Format">

	<!-- page-height="330mm" -->
      <fo:layout-master-set>
        <fo:simple-page-master master-name="contrato" page-height="356.0mm" page-width="216.0mm" margin-top="10mm" margin-bottom="10mm" margin-right="15mm" margin-left="20mm" border="thick solid red">
          <fo:region-body margin-top="5mm" margin-bottom="10mm" />
          <fo:region-before extent="7mm" />
          <fo:region-after  extent="7mm" />
        </fo:simple-page-master>
      </fo:layout-master-set>

      <fo:page-sequence master-reference="contrato" font-size="9pt">

        <fo:static-content flow-name="xsl-region-before" padding="6" >    
        </fo:static-content>

        <fo:static-content flow-name="xsl-region-after">
          <fo:block text-align="center" font-size="10pt" font-family="Arial, Helvetica, sans-serif" line-height="1em + 2pt">
            <fo:inline text-align="right"><fo:page-number/></fo:inline>
          </fo:block>
        </fo:static-content>

        <fo:flow flow-name="xsl-region-body" font-family="Arial, Helvetica, sans-serif">

          <fo:block>
			<fo:external-graphic width="100px">
                <xsl:attribute name="src">
                    <xsl:value-of select='urlLogo'/>
                </xsl:attribute>
            </fo:external-graphic>
          </fo:block>

          <fo:table font-size="10pt" space-after.optimum="1mm">
            <fo:table-column column-width="176mm" />
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
                        CONTRATO DE APERTURA DE L�NEA DE CR�DITO DE 
                    </fo:inline>
                  </fo:block>
                </fo:table-cell>
              </fo:table-row>
              <fo:table-row>
                <fo:table-cell>
                  <fo:block text-align="center">
                    <fo:inline font-size="10pt" font-weight="bold">
                        EMERGENCIA
                    </fo:inline>
                  </fo:block>
                </fo:table-cell>
              </fo:table-row>
            </fo:table-body>
          </fo:table>

          <fo:table font-size="10pt" space-before.optimum="1mm" space-after.optimum="1mm">
            <fo:table-column column-width="176mm"/>
            <fo:table-body>
              <fo:table-row>
                <fo:table-cell padding="1mm" padding-before="11mm">
                  <fo:block text-align="justify" line-height="15pt">
                     Entre el <fo:inline font-weight="bold"> BANCO  DE CR�DITO E INVERSIONES </fo:inline>, en adelante "el Banco", por una parte, y el <fo:inline font-weight="bold"> "CLIENTE" </fo:inline> 
					 que se individualiza al final de este instrumento, en adelante el "Cliente", se ha acordado celebrar el presente Contrato de Apertura de L�nea de Cr�dito de Emergencia, tambi�n llamada 
					 a efectos de este contrato como "LCE" o "LEM".					 
                  </fo:block>
				  
				  <fo:block text-align="justify" line-height="15pt">
                     1.&#160;&#160;Por este acto y a trav�s de este medio, el Cliente contrata con el Banco, la apertura de una L�nea de Cr�dito de Emergencia o LCE, que tiene por objeto incrementar la disponibilidad de 
					 pago del Cliente ante eventos que superen su saldo disponible en Cuenta Corriente o en otras l�neas de cr�dito, entre �stas, la L�nea de Sobregiro que el Cliente hubiere contratado con el Banco. 			 
                  </fo:block>
				  
				  <fo:block text-align="justify" line-height="15pt">
                     2.&#160;&#160;La LCE operar� de manera autom�tica, y con cargo a ella, y no habiendo saldos disponibles en la Cuenta Corriente u otras L�neas de Cr�dito, se cubrir�n (i) los cargos que disponga el Cliente, 
					 ya sea a trav�s del giro de un cheque, de un Pago Autom�tico de Cuentas -PAC- , giro en Cajero Autom�tico o mediante cualquier otro medio, y (ii) los dem�s cargos que efect�e el Banco. Con todo, 
					 no se cargar�n a la LCE, a�n cuando exista cupo disponible, entre otros, las comisiones de mantenci�n y administraci�n de los productos.
                  </fo:block>
				  
				  <fo:block text-align="justify" line-height="15pt">
                    3.&#160;&#160;Produci�ndose una situaci�n de sobregiro por cualesquiera de las causas singularizadas precedentemente, el Banco proceder� a cargar la LCE en el orden en que se produzcan y registren 
					tales eventos.
                  </fo:block>
				  
				  <fo:block text-align="justify" line-height="15pt">
                    4.&#160;&#160;Cada vez que existan fondos disponibles en la Cuenta Corriente o L�nea de Sobregiro, si la hubiere, y la LCE registrare saldos deudores, se abonar� de manera autom�tica la citada LCE, 
					con cargo a las se�aladas disponibilidades.
                  </fo:block>
				  
				  <fo:block text-align="justify" line-height="15pt">
                    5.&#160;&#160;Sin perjuicio de lo se�alado en el numeral precedente, para el evento de que no haya fondos disponibles en la Cuenta Corriente ni en la L�nea de Sobregiro, el Cliente se obliga a 
					efectuar abonos a la LCE, con la frecuencia y por los importes que el Banco le informe. Con todo, la LCE ha de hallarse �ntegramente pagada, tanto en capital, intereses y comisiones, 
					a m�s tardar al cumplirse el per�odo de vigencia pactado.
                  </fo:block>
				  
				  <fo:block text-align="justify" line-height="15pt">
                    6.&#160;&#160;El plazo de la LCE ser� de 6 meses, plazo que se renovar� autom�ticamente, por per�odos iguales y sucesivos, salvo que cualesquiera de las partes decida ponerle t�rmino por escrito con 
					a lo menos 15 d�as de anticipaci�n. 
                  </fo:block>
				  
				  <fo:block text-align="justify" line-height="15pt">
                    7.&#160;&#160; El Banco podr� poner t�rmino a la LCE cuando se haya verificado alguna o algunas de las siguientes causales:
                  </fo:block>
				  
				  <fo:block text-align="justify" line-height="15pt" start-indent="0.4in" >
                     <fo:table font-size="10pt" space-before.optimum="1mm" >
						 <fo:table-column column-width="4mm"/> 
						 <fo:table-column column-width="17,2cm"/>
						 
						  <fo:table-body>
							  <fo:table-row>
								<fo:table-cell>
								  <fo:block >
									  a)
								  </fo:block>
								</fo:table-cell>
								
								<fo:table-cell>
								  <fo:block >
									  Cuando el Cliente hiciere un uso inadecuado del producto o servicio, tales como, sobregiros no pactados; �rdenes de no pago  y/o protesto de cheques frecuentes; atrasos en el servicio de sus deudas; no acreditaci�n del origen de los fondos depositados en sus cuentas; actividades de origen desconocido, riesgosas o contrarias a la ley, etc;
								  </fo:block>
								</fo:table-cell>
								
							  </fo:table-row>
							  
							  <fo:table-row>
								<fo:table-cell>
								  <fo:block >
									  b)
								  </fo:block>
								</fo:table-cell>
								
								<fo:table-cell>
								  <fo:block >
									  Muerte del Cliente o Disoluci�n en el caso de personas jur�dicas. En el caso de tratarse de una  cuenta corriente pluripersonal, la muerte de uno cualquiera de los titulares; 
								  </fo:block>
								</fo:table-cell>
								
							  </fo:table-row>
							  
							  <fo:table-row>
								<fo:table-cell>
								  <fo:block >
									  c)
								  </fo:block>
								</fo:table-cell>
								
								<fo:table-cell>
								  <fo:block >
									  Insolvencia, declaraci�n de interdicci�n, presentaci�n de convenios, quiebra o tener el cliente la calidad de deudor en un procedimiento concursal de liquidaci�n.
								  </fo:block>
								</fo:table-cell>
								
							  </fo:table-row>
							  
							   <fo:table-row>
								<fo:table-cell>
								  <fo:block >
									  d)
								  </fo:block>
								</fo:table-cell>
								
								<fo:table-cell>
								  <fo:block >
									  Cambios objetivos en la condici�n econ�mica, financiera o de mercado en que el Cliente opera;
								  </fo:block>
								</fo:table-cell>
								
							  </fo:table-row>
							  
							   <fo:table-row>
								<fo:table-cell>
								  <fo:block >
									  e)
								  </fo:block>
								</fo:table-cell>
								
								<fo:table-cell>
								  <fo:block >
									  Deterioro en el comportamiento de pago del Cliente, o cuando habi�ndosele solicitado, �ste no aportase al Banco los antecedentes requeridos conducentes a analizar el estado actual de su situaci�n econ�mica o financiera;
								  </fo:block>
								</fo:table-cell>
								
							  </fo:table-row>
							  
							   <fo:table-row>
								<fo:table-cell>
								  <fo:block >
									  f)
								  </fo:block>
								</fo:table-cell>
								<fo:table-cell>
								  <fo:block >
									  Mantener inactivo o sin uso, por m�s de un a�o los productos y servicios; 
								  </fo:block>
								</fo:table-cell>
							  </fo:table-row>
							  
							   <fo:table-row>
								<fo:table-cell>
								  <fo:block >
									  g)
								  </fo:block>
								</fo:table-cell>
								<fo:table-cell>
								  <fo:block >
									  Incurrir en conductas agraviantes u ofensivas en contra del personal del Banco;
								  </fo:block>
								</fo:table-cell>
							  </fo:table-row>
							  
							   <fo:table-row>
								<fo:table-cell>
								  <fo:block >
									  h)
								  </fo:block>
								</fo:table-cell>
								<fo:table-cell>
								  <fo:block >
									  Integrar el Cliente, la n�mina de personas con las cuales al Banco le est� impedido operar; y, 
								  </fo:block>
								</fo:table-cell>
							  </fo:table-row>
							  
							   <fo:table-row>
								<fo:table-cell>
								  <fo:block >
									  i)
								  </fo:block>
								</fo:table-cell>
								<fo:table-cell>
								  <fo:block >
									  La revocaci�n por parte del Cliente, de uno o m�s mandatos cuya ejecuci�n interesare al Banco o dificultare prestar los servicios contratados.
								  </fo:block>
								</fo:table-cell>
							  </fo:table-row>
				         </fo:table-body>						 	 
		            </fo:table>
					
					&#160;&#160;El Banco deber� comunicar el t�rmino del contrato por escrito al domicilio o al correo electr�nico registrado, con a lo menos 15 d�as de anticipaci�n, o con aquella que se�alen las normas legales y administrativas vigentes. El no ejercicio por parte del Banco de las facultades antes mencionadas, no supone renuncia a ejercerlas en el futuro.
					
                  </fo:block>
				  
				  <fo:block> &#160; </fo:block>

			      <fo:block text-align="justify">
					Las partes acuerdan tambi�n que, las causales antes se�aladas autorizan al Banco para proceder a la suspensi�n o bloqueo inmediato del producto o servicio de que se trate.
				  </fo:block>
				  <xsl:call-template name="saltoDePagina" />
				  
				  <fo:block text-align="justify">
					   <fo:block>
					     8.&#160;&#160;El monto de la LCE, podr� ser aumentado por el Banco previo consentimiento del Cliente, salvo en aquellos casos que correspondan a la aplicaci�n de modalidades de aumento previamente acordadas con �ste. El Cliente y el Banco acuerdan que este �ltimo pueda aumentar el monto de la LCE una vez al a�o, hasta en un 30% del monto vigente, siempre que el Cliente haya utilizado un 20% o m�s de su cupo disponible en alg�n mes del a�o. Para estos efectos, el Banco le informar� el aumento de dicha l�nea por correo electr�nico o a trav�s de cualquier otro medio de comunicaci�n. El Banco podr� rebajar el monto de la LCE con tal que a esa fecha el Cliente no se encuentre haciendo uso de la l�nea por un monto superior al nuevo l�mite. 
					   </fo:block>
					   
					   <fo:block>
					     9.&#160;&#160;En caso de t�rmino de la LCE se har� exigible el pago inmediato del saldo total adeudado a esa fecha, pudiendo el Banco cargar la Cuenta Corriente, si tuviere fondos disponibles. Las obligaciones que resulten adeudadas por este concepto, tendr�n el car�cter de indivisibles. 
					   </fo:block>
					   
					   <fo:block>
					     10.&#160;&#160;La LCE devenga intereses equivalentes a la tasa m�xima convencional vigente para operaciones no reajustables a m�s de 90 d�as. Los cr�ditos cursados al amparo de la LCE devengar�n intereses desde la fecha en que se cursen y hasta la de su pago efectivo, los que se calcular�n y aplicar�n sobre el saldo del respectivo cr�dito d�a a d�a. 
					   </fo:block>
					   
					   <fo:block>
					     11.&#160;&#160;El Cliente otorga mandato  al Banco, para que �ste, actuando en su nombre y representaci�n, autocontratando, suscriba y complete uno o m�s pagar�s, a fin de documentar eficazmente los cr�ditos que se cursen con cargo a la LCE. En el ejercicio de este mandato, el Banco podr� renunciar a la obligaci�n de protesto, facultar para hacer autorizar la firma de sus apoderados que suscriban el pagar�, ante Notario P�blico, de manera que el pagar� tenga m�rito ejecutivo para su respectiva cobranza judicial. El Cliente reconoce que el presente mandato se otorga en inter�s del Banco y subsistir� a�n despu�s del t�rmino de la presente L�nea, s�lo para el cobro del saldo deudor con el Banco. 
					   </fo:block>
					  
					  <fo:block>
					     12.&#160;&#160;El Cliente faculta expresamente al Banco para delegar el presente mandato en los mismos t�rminos, en la sociedad Servicios de Normalizaci�n y Cobranza - Normaliza S.A., filial del Banco, o en aquella otra persona natural o jur�dica que el Banco determine. Con todo, en el caso que el Cliente hubiere contratado la L�nea de Sobregiro, complementaria a la Cuenta Corriente de que sea titular, el mandato e instrucciones para completar el pagar� que con motivo de la contrataci�n de dicha L�nea hubiere otorgado e impartido al Banco, se entienden complementadas por este acto, en el sentido de considerar para los efectos del llenado del citado pagar�, las obligaciones derivadas de la utilizaci�n de la LCE objeto de este contrato.
					   </fo:block>
					   
					   <fo:block>
					     13.&#160;&#160;Todos los gastos, derechos e impuestos que se generen o a los que pudiera estar afecto este contrato o su ejecuci�n y operaci�n ser�n de cargo exclusivo del Cliente, facult�ndose al Banco para cargarlos en la respectiva cuenta corriente o tarjeta de cr�dito de que sea titular en el Banco. 
					   </fo:block>
					   
					    <fo:block>
					     14.&#160;&#160;Los mandatos que se hubieren otorgado en el Contrato ser�n revocables, una vez que est�n totalmente extinguidas las obligaciones a favor del Bci. Con todo, la revocaci�n de uno o algunos de aquellos, deber� comunicarse por escrito al Banco en cualquiera de sus sucursales, y producir� sus efectos, transcurridos 15 d�as de haberse notificado la revocaci�n al Banco. Trat�ndose de la revocaci�n del mandato para pagar autom�ticamente los cr�ditos adeudados al Banco, ella surtir� efecto a m�s tardar en el per�odo subsiguiente de pago o abono que corresponda a la obligaci�n.
					   </fo:block>
					   
					    <fo:block>
					     15.&#160;&#160;La rendici�n de cuentas del ejercicio del o los mandatos que el Cliente otorgue al Banco, se verificar� mediante el env�o a aquel de los comprobantes, cartolas u otros documentos (en copia u original seg�n corresponda) que el Banco hubiere suscrito en su representaci�n, y se remitir�n al domicilio o correo electr�nico que el Cliente haya registrado en el Banco o en su sitio privado de la p�gina web del banco.
					   </fo:block>
					   
					   <fo:block>
					     16.&#160;&#160;Para efectos de determinar las tarifas o comisiones, el Banco estar� facultado para establecer criterios objetivos de segmentaci�n de tal manera que el Cliente pueda conocer la tarifas con anticipaci�n y que le corresponde en funci�n de dicha segmentaci�n. El banco podr� efectuar una reclasificaci�n de los Clientes en atenci�n a su comportamiento u otras variables. Las tarifas estar�n disponibles en los tarifarios del banco y sitio www.bci.cl, y que el Cliente podr� consultar.
					   </fo:block>
					   
					   <fo:block>
					     17.&#160;&#160;Todos los avisos y comunicaciones que, conforme a este instrumento, el Banco deba enviar al Cliente se efectuar�n a la direcci�n de correo electr�nico que el cliente haya informado al Banco y �ste haya registrado. En su defecto, se remitir�n por escrito al �ltimo domicilio que tenga registrado, ya sea por carta o en los estados de cuenta o cartolas o por Internet.S
					   </fo:block>
					   
					   <fo:block>
					     18.&#160;&#160;El Cliente declara haber recibido el volante que contiene la informaci�n atingente a las empresas que prestan los servicios de cobranza externa y a los honorarios correspondientes, en el evento de incurrir en mora en el pago de estas obligaciones. 
					   </fo:block>
					   
					   <fo:block>
					     19.&#160;&#160;Servicio al Cliente Bci.- En caso que el Cliente quisiera formular alguna consulta o reclamo, podr� hacerlo por tel�fono; a trav�s de la p�gina web del Banco; o  personalmente en cualesquiera de sus oficinas o sucursales Bci y Bci Nova.  Mayor informaci�n podr� encontrar en www.bci.cl, www.tbanc.cl o www.bcinova.cl
					   </fo:block>
					   
					   <fo:block>
					     20.&#160;&#160;El Contrato no cuenta con Sello Sernac
					   </fo:block>
				   </fo:block>
				  				  
                </fo:table-cell>
				
              </fo:table-row>
            </fo:table-body>
          </fo:table>


		  <fo:table font-size="10pt" space-before.optimum="1pt" space-after.optimum="1pt">
		    <fo:table-column column-width="176mm" />
            <fo:table-header></fo:table-header>
			 <fo:table-body>
			     <fo:table-row>
				    <fo:table-cell>
				        <fo:block text-align="left">
							<fo:inline font-size="10pt" text-decoration="underline" >
								COMISI�N LINEA DE EMERGENCIA (LCE)
							</fo:inline>
				     </fo:block>
				    </fo:table-cell>
                 </fo:table-row>
				 <fo:table-row>
                    <fo:table-cell>			
					 <fo:block text-align="justify">
						<fo:inline color="{$negro}" font-weight="bold">Comisi�n de Renovaci�n:</fo:inline>
						   Comisi�n de cobro semestral. El primer cobro se activa con la primera utilizaci�n del producto. En dicho caso la tarifa asociada es de UF 3 en cada renovaci�n(**)
				     </fo:block>
				    </fo:table-cell>					
			    </fo:table-row>
				<fo:table-row>
                    <fo:table-cell>
				        <fo:block text-align="justify">
						  &#160;
				     </fo:block>
				    </fo:table-cell>					
			    </fo:table-row>
			 </fo:table-body>
		  </fo:table>	  
		  
		 <xsl:call-template name="saltoDePagina" />
		 
		 <!-- <fo:block space-after="1mm" break-after="page"> </fo:block>-->
		 
		<fo:table font-size="10pt" space-before.optimum="1pt" space-after.optimum="1pt" >
		   <fo:table-column column-width="3cm" />
		   <fo:table-column column-width="7cm" />
		   <fo:table-column column-width="7cm" />
		   
			  <fo:table-body >
			     
				 <fo:table-row>
				<fo:table-cell border="0.5pt solid {$lineas}"  background-color="{$gris-suave}">
						<fo:block space-after="1mm" text-align="center" font-weight="bold">
							<fo:inline color="{$negro}">Seguro </fo:inline>
						</fo:block>
				</fo:table-cell>
				
				<fo:table-cell border="0.5pt solid {$lineas}"  background-color="{$gris-suave}">
						<fo:block space-after="1mm" text-align="center" font-weight="bold">
							<fo:inline color="{$negro}"> Cobertura </fo:inline>
						</fo:block>
				</fo:table-cell>
				<fo:table-cell border="0.5pt solid {$lineas}"  background-color="{$gris-suave}">
						<fo:block space-after="1mm" text-align="center" font-weight="bold">
							<fo:inline color="{$negro}"> Prima </fo:inline>
						</fo:block>
				</fo:table-cell>
				</fo:table-row>
		
				<fo:table-row>
				<fo:table-cell border="0.5pt solid {$lineas}" >
						<fo:block text-align="justify"  padding-top="2pt" margin="4pt" font-weight="bold">
							<fo:inline color="{$negro}">Desgravamen</fo:inline>
						</fo:block>
				</fo:table-cell>
				<fo:table-cell border="0.5pt solid {$lineas}" >
						<fo:block  text-align="justify"  padding-top="2pt" margin="4pt">
							<fo:inline color="{$negro}">
							Cubre el cupo utilizado de la LCE, con un tope m�ximo correspondiente al cupo autorizado.
							</fo:inline>
						</fo:block>
				</fo:table-cell>
				<fo:table-cell border="0.5pt solid {$lineas}" >
						<fo:block text-align="justify"  padding-top="2pt" margin="4pt">
							<fo:inline color="{$negro}">
							0,324% por semestre sobre cupo aprobado, con prima m�nima de UF 0,17 y m�ximo de UF 3
							</fo:inline>
						</fo:block>
				</fo:table-cell>
				</fo:table-row>	
			  </fo:table-body>
		</fo:table>
		
		<fo:table font-size="10pt" space-after.optimum="1mm" >
            <fo:table-column column-width="176mm" />
            <fo:table-header></fo:table-header>
			   <fo:table-body>
			          <fo:table-row>
					   <fo:table-cell>
					      <fo:block text-align="justify"> 
					        &#160;&#160;
						  </fo:block> 	
					   </fo:table-cell>
					</fo:table-row>
			   
                    <fo:table-row>
					   <fo:table-cell>
					      <fo:block text-align="justify"> 
					        (*) El Cliente y el Banco acuerdan que este �ltimo podr� aumentar el monto de las l�neas una vez al a�o, hasta en un 30% del monto vigente, siempre que el Cliente haya utilizado un 20% o m�s de su cupo disponible en alg�n mes del a�o. El Banco informar� el aumento, por correo electr�nico o a trav�s de cualquier otro medio de comunicaci�n.
							
						  </fo:block> 	
					   </fo:table-cell>
					</fo:table-row>
					
					<fo:table-row>
					   <fo:table-cell>
					      <fo:block text-align="justify"> 
					        (**) Comisiones exentas de IVA
						  </fo:block> 	
					   </fo:table-cell>
					</fo:table-row>
					
					<fo:table-row>
					   <fo:table-cell>
					      <fo:block text-align="justify"> 
					        &#160;&#160;
						  </fo:block> 	
					   </fo:table-cell>
					</fo:table-row>
					
                    <fo:table-row>					
					   <fo:table-cell>
					       <fo:block text-align="justify">
								<fo:inline font-size="10pt" text-decoration="underline" > Declaraci�n del cliente: </fo:inline> Es mi voluntad que toda comunicaci�n o aviso a que el Banco se encuentre obligado con motivo de lo establecido en este contrato, sea remitido a la direcci�n de correo electr�nico, indicada al final del presente contrato. 	
						   </fo:block> 
					   </fo:table-cell>
					</fo:table-row>
					
			   </fo:table-body>
		</fo:table>
		
				
		<fo:table font-size="10pt" space-after.optimum="1mm" >
            <fo:table-column column-width="176mm" />
            <fo:table-header></fo:table-header>
			   <fo:table-body>
			          <fo:table-row>
					   <fo:table-cell>
					      <fo:block text-align="justify"> 
					        &#160;&#160;
						  </fo:block> 	
					   </fo:table-cell>
					</fo:table-row>
			   
                    <fo:table-row>
					   <fo:table-cell>
					      <fo:block text-align="justify"> 
					        Monto LCE contratada: $<fo:inline font-size="10pt" text-decoration="underline" > <xsl:value-of select="montoLCE"/>  </fo:inline>
						  </fo:block> 	
					   </fo:table-cell>
					</fo:table-row>

					<fo:table-row>
					   <fo:table-cell>
					      <fo:block text-align="justify"> 
					       N� Cuenta Corriente asociada: <fo:inline font-size="10pt" text-decoration="underline"> <xsl:value-of select="numeroCuentaCorriente"/>  </fo:inline>
						  </fo:block> 	
					   </fo:table-cell>
					</fo:table-row>
					
					<fo:table-row>
					   <fo:table-cell>
					      <fo:block text-align="justify"> 
					         &#160;&#160;
						  </fo:block> 	
					   </fo:table-cell>
					</fo:table-row>
					
					<fo:table-row>
					   <fo:table-cell>
					      <fo:block text-align="justify"> 
					          <fo:inline font-size="10pt" text-decoration="underline">
							    Individualizaci�n las partes:
							  </fo:inline>
						  </fo:block> 	
					   </fo:table-cell>
					</fo:table-row>
					
					<fo:table-row>
					   <fo:table-cell>
					      <fo:block text-align="justify">						  
						  Nombre Cliente o Titular (1): <fo:inline font-size="10pt" text-decoration="underline"> <xsl:value-of select="nombreCliente"/> </fo:inline>
						  </fo:block> 	
					   </fo:table-cell>
					</fo:table-row>
					
					<fo:table-row>
					   <fo:table-cell>
					      <fo:block text-align="justify">						  
						  C�dula de Identidad: <fo:inline font-size="10pt" text-decoration="underline"> <xsl:value-of select="cedulaCliente"/> </fo:inline>
						  </fo:block> 	
					   </fo:table-cell>
					</fo:table-row>
					
					<fo:table-row>
					   <fo:table-cell>
					      <fo:block text-align="justify">						  
						  Direcci�n Particular:  <fo:inline font-size="10pt" text-decoration="underline"> <xsl:value-of select="direccionParticularCliente"/> </fo:inline>
						  </fo:block> 	
					   </fo:table-cell>
					</fo:table-row>
					
					<fo:table-row>
					   <fo:table-cell>
					      <fo:block text-align="justify">						  
						  Comuna: 
						  </fo:block> 	
					   </fo:table-cell>
					</fo:table-row>
					
					<fo:table-row>
					   <fo:table-cell>
					      <fo:block text-align="justify">						  
						  Regi�n: 
						  </fo:block> 	
					   </fo:table-cell>
					</fo:table-row>
					
					<fo:table-row>
					   <fo:table-cell>
					      <fo:block text-align="justify">						  
						  Correo y/o Casilla Electr�nica:  
						  </fo:block> 	
					   </fo:table-cell>
					</fo:table-row>
					
					<fo:table-row>
					   <fo:table-cell>
					      <fo:block text-align="justify">						  
						  N� de Tel�fono Celular:   
						  </fo:block> 	
					   </fo:table-cell>
					</fo:table-row>
					
					<fo:table-row>
					   <fo:table-cell>
					      <fo:block text-align="justify">						  
						   &#160;&#160;
						  </fo:block> 	
					   </fo:table-cell>
					</fo:table-row>
					
					
					<xsl:if test="esCuentaBipersonal = 'S'">
						<fo:table-row>
						   <fo:table-cell>
						      <fo:block text-align="justify"> 
						          <fo:inline font-size="10pt" text-decoration="underline">
								    Individualizaci�n las partes:
								  </fo:inline>
							  </fo:block> 	
						   </fo:table-cell>
						</fo:table-row>
						
						<fo:table-row>
						   <fo:table-cell>
						      <fo:block text-align="justify">						  
							  Nombre Cliente o Titular (2): <fo:inline font-size="10pt" text-decoration="underline"> <xsl:value-of select="nombreTitular2"/> </fo:inline>
							  </fo:block> 	
						   </fo:table-cell>
						</fo:table-row>
						
						<fo:table-row>
						   <fo:table-cell>
						      <fo:block text-align="justify">						  
							  C�dula de Identidad: <fo:inline font-size="10pt" text-decoration="underline"> <xsl:value-of select="cedulaTitular2"/> </fo:inline>
							  </fo:block> 	
						   </fo:table-cell>
						</fo:table-row>
						
						<fo:table-row>
						   <fo:table-cell>
						      <fo:block text-align="justify">						  
							  Direcci�n Particular:  <fo:inline font-size="10pt" text-decoration="underline"> <xsl:value-of select="direccionParticularTitular2"/> </fo:inline>
							  </fo:block> 	
						   </fo:table-cell>
						</fo:table-row>
						
						<fo:table-row>
						   <fo:table-cell>
						      <fo:block text-align="justify">						  
							  Comuna: 
							  </fo:block> 	
						   </fo:table-cell>
						</fo:table-row>
						
						<fo:table-row>
						   <fo:table-cell>
						      <fo:block text-align="justify">						  
							  Regi�n: 
							  </fo:block> 	
						   </fo:table-cell>
						</fo:table-row>
						
						<fo:table-row>
						   <fo:table-cell>
						      <fo:block text-align="justify">						  
							  Correo y/o Casilla Electr�nica:  
							  </fo:block> 	
						   </fo:table-cell>
						</fo:table-row>
						
						<fo:table-row>
						   <fo:table-cell>
						      <fo:block text-align="justify">						  
							  N� de Tel�fono Celular:   
							  </fo:block> 	
						   </fo:table-cell>
						</fo:table-row>
					</xsl:if>
					
					<fo:table-row>
					   <fo:table-cell>
					      <fo:block text-align="justify">						  
						   &#160;&#160;
						  </fo:block> 	
					   </fo:table-cell>
					</fo:table-row>

					<fo:table-row>
					   <fo:table-cell>
					      <fo:block text-align="justify">						  
						  Banco:  
						  </fo:block> 	
					   </fo:table-cell>
					</fo:table-row>
					
					<fo:table-row>
					   <fo:table-cell>
					      <fo:block text-align="justify">						  
						  Banco de Cr�dito e Inversiones
						  </fo:block> 	
					   </fo:table-cell>
					</fo:table-row>
					
					<fo:table-row>
					   <fo:table-cell>
					      <fo:block text-align="justify">						  
						  Rut N�: 97.006.000-6 
						  </fo:block> 	
					   </fo:table-cell>
					</fo:table-row>
					
					<fo:table-row>
					   <fo:table-cell>
					      <fo:block text-align="justify">						  
						  Domicilio: Avenida El Golf 125, Las Condes, Santiago 
						  </fo:block> 	
					   </fo:table-cell>
					</fo:table-row>
					
					<fo:table-row>
					   <fo:table-cell>
					      <fo:block text-align="justify">						  
						  Representante o Apoderado: 
						  </fo:block> 	
					   </fo:table-cell>
					</fo:table-row>
			   </fo:table-body>
		</fo:table>
		
		<fo:table font-size="10pt" space-after.optimum="1mm"  >
            <fo:table-column column-width="88mm" />
			<fo:table-column column-width="88mm" />
			   <fo:table-body>
			        
					<fo:table-row height="70px" >
					   <fo:table-cell>
					      <fo:block text-align="justify"> 
					        &#160;&#160;
						  </fo:block> 	
					   </fo:table-cell>
					   <fo:table-cell>
					      <fo:block text-align="justify"> 
					        &#160;&#160;
						  </fo:block> 	
					   </fo:table-cell>
					</fo:table-row>
			   
			   
                    <fo:table-row>
					   <fo:table-cell>
							<fo:table font-size="10pt" space-after.optimum="1mm" >
							  <fo:table-column/> 
						        <fo:table-body>
								    <fo:table-row>
									   <fo:table-cell>
										  <fo:block text-align="center">						  
										  ___________________________________
										  </fo:block> 	
									   </fo:table-cell>
									</fo:table-row>
									
									 <fo:table-row>
									   <fo:table-cell>
										  <fo:block text-align="center">						  
										       Firma Titular (1)
										  </fo:block> 	
									   </fo:table-cell>
									</fo:table-row>
									
								</fo:table-body>
						    </fo:table>
						 
					   </fo:table-cell>
					   
					   <fo:table-cell>
					        <fo:table font-size="10pt" space-after.optimum="1mm" >
							  <fo:table-column/> 
						        <fo:table-body>
								    <fo:table-row>
									   <fo:table-cell>
										  <fo:block text-align="center">						  
										  ___________________________________
										  </fo:block> 	
									   </fo:table-cell>
									</fo:table-row>
									
									 <fo:table-row>
									   <fo:table-cell>
										  <fo:block text-align="center">						  
										       Firma Titular (2)
										  </fo:block> 	
									   </fo:table-cell>
									</fo:table-row>
									
								</fo:table-body>
						    </fo:table>
					   </fo:table-cell>
					   
					</fo:table-row>				 
				</fo:table-body>
        </fo:table> 
				
		 
        <fo:table font-size="10pt" space-after.optimum="1mm"  >
		  <fo:table-column column-width="176mm" />
		  <fo:table-header></fo:table-header>
            <fo:table-body>
			
				  <fo:table-row text-align="center" >
					   <fo:table-cell>
					   <fo:block text-align="center">
						     <fo:external-graphic width="197px" height="116px">
				                <xsl:attribute name="src">
				                    <xsl:value-of select='urlfirma'/>
				                </xsl:attribute>
                             </fo:external-graphic>
                             </fo:block>
							 <fo:block text-align="center"> _________________________ </fo:block> 
					   </fo:table-cell>
				   </fo:table-row>

				   <fo:table-row>
					   <fo:table-cell>
							<fo:block text-align="center"> Firma Banco </fo:block> 
					   </fo:table-cell>
					</fo:table-row>
					
					<fo:table-row height="30px" >
						<fo:table-cell>
							<fo:block text-align="justify"> 
									&#160;&#160;
							</fo:block> 	
					   </fo:table-cell>
			        </fo:table-row>
			
					
			</fo:table-body>		
		</fo:table>
		  
		<fo:table font-size="10pt" >
            <fo:table-column column-width="176mm"/>
            <fo:table-body>
              <fo:table-row>
                <fo:table-cell>
                  <fo:block font-size="12pt" font-weight="bold" text-align="left" padding-before="15pt">
					  En Santiago<fo:inline></fo:inline>, a <fo:inline><xsl:value-of select="diaFirma"/></fo:inline> de <fo:inline><xsl:value-of select="mesFirma"/></fo:inline> del a�o <fo:inline><xsl:value-of select="agnoFirma"/></fo:inline>                      
                  </fo:block>
                </fo:table-cell>
              </fo:table-row>
        		 
		   </fo:table-body>
        </fo:table>
		
		  
        </fo:flow>
      </fo:page-sequence>
    </fo:root>
  </xsl:template>
  


<!-- SALTO DE PAGINA -->
<xsl:template name="saltoDePagina">
	<fo:block space-after="1mm" break-after="page">
	</fo:block>
</xsl:template>
  
</xsl:stylesheet>
