<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format">
	<!--Variables-->
	<xsl:variable name="bgcolor">#E7E5EF</xsl:variable>
	<xsl:variable name="lineas">#CCCCCC</xsl:variable>
	<xsl:variable name="txt">#000000</xsl:variable>
	<xsl:variable name="txt-azul-claro">#0061A5</xsl:variable>
	<xsl:variable name="txt-azul-oscuro">#1069B5</xsl:variable>
	<!-- Variables -->
	<xsl:template match="/">
		<fo:root xmlns:fo="http://www.w3.org/1999/XSL/Format">
			<!-- Propiedades pagina -->
			<fo:layout-master-set>
				<fo:simple-page-master master-name="pagina" page-height="28cm" page-width="23cm" margin-top="1cm" margin-bottom="1cm" margin-left="2cm" margin-right="2cm">
					<fo:region-body margin-top="2cm" margin-bottom="2.5cm" background-color="#ffffff"/>
					<fo:region-before extent="3cm"/>
					<fo:region-after extent="2cm"/>
				</fo:simple-page-master>
			</fo:layout-master-set>
			<!-- Propiedades pagina -->
			<fo:page-sequence master-reference="pagina" initial-page-number="1" language="en" country="us">
				<fo:static-content flow-name="xsl-region-before">

					<fo:block>
					<fo:table table-layout="fixed">
						<fo:table-column column-width="3cm"/>
						<fo:table-column column-width="16cm"/>
						<fo:table-body>
							<fo:table-row>								
								<fo:table-cell>
								<fo:block font-size="10pt" font-weight="bold" space-after="1mm" text-align="left" color="{$txt-azul-claro}">
									<fo:external-graphic width="55px" height="30px">
										<xsl:attribute name="src">
											<xsl:value-of select="sistemaDeAportantes/contrato/rutaImagen"/>02-logo-bci.gif</xsl:attribute>
									</fo:external-graphic>
								</fo:block>
								</fo:table-cell>
								<fo:table-cell>
								<fo:block padding-before="5mm">
									<fo:inline font-size="14pt" font-weight="normal" space-after="1mm" text-align="right" color="{$txt}">Administradora General de Fondos S.A.</fo:inline>
								</fo:block>
								</fo:table-cell>
							</fo:table-row>
						</fo:table-body>
					</fo:table>
					</fo:block>

				</fo:static-content>

				<fo:static-content flow-name="xsl-region-after">
					<!-- Separador -->
					<fo:block space-after="1mm">
						<fo:leader color="{$lineas}" leader-pattern="rule" leader-length="19cm"/>
					</fo:block>
					<!-- Separador -->
					
					<fo:block>
						<fo:inline font-size="8pt" font-weight="bold" space-after="1mm" text-align="center" color="{$txt}">Magdalena 140  Piso 11, Las Condes, Santiago, Chile - Fono: (562) 720 4756 - Email: bciagf@bci.cl</fo:inline>
					</fo:block>	
					<!--  
					<fo:block>
					<fo:table table-layout="fixed">
						<fo:table-column column-width="15cm"/>
						<fo:table-column column-width="4cm"/>
						<fo:table-body>
							<fo:table-row>								
								<fo:table-cell>
								<fo:block>
									<fo:inline font-size="10pt" font-weight="bold" space-after="1mm" text-align="left" color="{$txt}"><xsl:value-of select="sistemaDeAportantes/contrato/direccionFilial"/></fo:inline>									
									</fo:block>
								</fo:table-cell>
								<fo:table-cell>
								<fo:block>
									<fo:inline font-size="10pt" font-weight="bold" space-after="1mm" text-align="right" color="{$txt}">Fono: <xsl:value-of select="sistemaDeAportantes/contrato/fonoFilial"/></fo:inline>
								</fo:block>
								</fo:table-cell>
							</fo:table-row>
						</fo:table-body>
					</fo:table>
					</fo:block>	
					-->
									
				</fo:static-content>


				<fo:flow flow-name="xsl-region-body">
					<fo:block>
						<xsl:choose>
							<xsl:when test="count(sistemaDeAportantes/contrato/anio) > 0">
								<fo:block padding-before="5mm"/>
								<xsl:call-template name="encabezado"/>
								<fo:block padding-before="5mm"/>
								<xsl:call-template name="cuerpo"/>		
								<xsl:call-template name="textoFinal"/>					
							</xsl:when>
							<xsl:otherwise>
								<fo:block padding-top="2cm" text-align="center">No existen Datos a imprimir.</fo:block>
							</xsl:otherwise>
						</xsl:choose>
					</fo:block>
				</fo:flow>
			</fo:page-sequence>
		</fo:root>
	</xsl:template>


	<xsl:template name="encabezado">
		<fo:block font-size="14pt" text-align="center" text-decoration="underline" padding-before="1cm" font-weight="bold">
			CONTRATO DE SUSCRIPCION DE CUOTAS
		</fo:block>		
		<fo:block font-size="14pt" text-align="center" text-decoration="underline" font-weight="bold">
		BCI ADMINISTRADORA GENERAL DE FONDOS S.A.
		</fo:block>
		<fo:block font-size="14pt" text-align="center" font-weight="bold" text-decoration="underline">
		FONDO DE INVERSIÓN <xsl:value-of select="sistemaDeAportantes/contrato/fondo"/>
		</fo:block>
		<fo:block font-size="10pt" text-align="center" font-weight="bold">
		( PERSONA NATURAL )
		</fo:block>
		
	</xsl:template>


	<xsl:template name="cuerpo">
		
<fo:block text-align="justify">
		En Santiago de Chile, a <fo:inline text-decoration="underline"><xsl:value-of select="sistemaDeAportantes/contrato/fecha"/></fo:inline>, entre &#x201C;BCI Administradora General de
Fondos S.A.&#x201D; Rol Único Tributario Nº <xsl:value-of select="sistemaDeAportantes/contrato/rutFilial"/>, representada por don <xsl:value-of select="sistemaDeAportantes/contrato/nombreRep"/>, cédula nacional de identidad número <xsl:value-of select="sistemaDeAportantes/contrato/rutRep"/>, nacionalidad
<xsl:value-of select="sistemaDeAportantes/contrato/nacionalidadRep"/>, de profesión <xsl:value-of select="sistemaDeAportantes/contrato/profesionRep"/>, en adelante también como la
<fo:inline font-weight="bold">&#x201C;<xsl:value-of select="sistemaDeAportantes/contrato/nombreCortoFilial"/>&#x201D;</fo:inline>, en representación de <fo:inline font-weight="bold">&#x201C;<xsl:value-of select="sistemaDeAportantes/contrato/fondo"/>&#x201C;</fo:inline> 
ambos con domicilio en <xsl:value-of select="sistemaDeAportantes/contrato/ciudadRep"/>, <xsl:value-of select="sistemaDeAportantes/contrato/direccionRep"/>, <xsl:value-of select="sistemaDeAportantes/contrato/comunaRep"/>, por una parte, y, por la otra, 
<fo:inline text-decoration="underline"><xsl:value-of select="sistemaDeAportantes/contrato/nombreCliente"/></fo:inline>,
cédula nacional de identidad número <fo:inline text-decoration="underline"></fo:inline>, 
con domicilio para estos efectos en la ciudad de Santiago, Comuna de <xsl:value-of select="sistemaDeAportantes/contrato/comunaCliente"/>, 
dirección <xsl:value-of select="sistemaDeAportantes/contrato/calleCliente"/>, número <xsl:value-of select="sistemaDeAportantes/contrato/numCalleCliente"/>, Depto ......
en adelante también como el <fo:inline font-weight="bold">&#x201C;Aportante&#x201D;</fo:inline> se ha convenido el siguiente contrato de suscripción de cuotas, en adelante
también como el <fo:inline font-weight="bold">&#x201C;Contrato&#x201D;</fo:inline>:
</fo:block>

		<fo:block padding-before="3mm" text-align="justify">
<fo:inline font-weight="bold" text-decoration="underline">PRIMERO:</fo:inline> BCI Administradora General de Fondos S.A., 
es una sociedad anónima, de objeto exclusivo, constituida mediante escritura pública de fecha 22 de junio de 2006, 
otorgada en la notaría de Santiago don Patricio Zaldívar Mackenna, repertorio número 10.258-2006. Su existencia fue 
autorizada por la Superintendencia de Valores y Seguros, en adelante también como la &#x201C;Superintendencia&#x201D; por Resolución N° 491, 
de fecha 19 de Octubre de 2006. Un extracto del certificado de autorización de existencia emitido por la Superintendencia 
fue inscrito a fojas 43.099 número 30.613 en el Registro de Comercio del Conservador de Bienes Raíces de Santiago y 
fue publicado en el Diario Oficial de fecha 28 de Octubre de 2006.
		</fo:block>

		<fo:block padding-before="3mm" text-align="justify">
<fo:inline font-weight="bold" text-decoration="underline">SEGUNDO:</fo:inline> La Sociedad Administradora organizó y constituyó, de acuerdo a las disposiciones de la Ley N° 18.815, 
el fondo de Inversión denominado &#x201C;Fondo de Inversión BCI Renta Activa&#x201D;, en adelante
también como el <fo:inline font-weight="bold">&#x201C;Fondo&#x201D;</fo:inline>, cuyo reglamento interno, en adelante también como el <fo:inline font-weight="bold">&#x201C;Reglamento&#x201D;</fo:inline> &#x201D; fue 
aprobado por la Superintendencia por Resolución Exenta N° 568 de fecha 04 de Septiembre de 2009.
		</fo:block>

		<fo:block padding-before="3mm" text-align="justify">
El Fondo tendrá una duración de <fo:inline font-weight="bold">10</fo:inline> años a contar del día en que la Superintendencia apruebe el Reglamento Interno del Fondo, prorrogable 
<fo:inline font-weight="bold">sucesivamente por períodos de 5 años cada uno</fo:inline> por acuerdo adoptado en Asamblea 
Extraordinaria de Aportantes. La Asamblea Extraordinaria de Aportantes que acuerde prorrogar el plazo inicial del Fondo deberá 
celebrarse con una anticipación no inferior a 2 años de la fecha de vencimiento del plazo respectivo.
		</fo:block>

		<fo:block padding-before="3mm" text-align="justify">
<fo:inline font-weight="bold" text-decoration="underline">TERCERO:</fo:inline> El Fondo es un patrimonio integrado por aportes de personas naturales o jurídicas, 
que se expresan en Cuotas de Participación, en adelante también como las <fo:inline font-weight="bold">&#x201C;Cuotas&#x201D;</fo:inline>, nominativas, unitarias, 
de igual valor y características, que no pueden ser rescatadas antes de la liquidación del Fondo.
		</fo:block>

		<fo:block padding-before="3mm" text-align="justify">
<fo:inline font-weight="bold" text-decoration="underline">CUARTO:</fo:inline> Por este acto, el Aportante suscribe la cantidad de  <fo:inline text-decoration="underline"><xsl:value-of select="sistemaDeAportantes/contrato/cantCuotas"/></fo:inline> Cuotas del Fondo, del total de
Cuotas que se acordó emitir, suscripción que es aceptada por el representante de la Sociedad Administradora.
		</fo:block>
		
		<fo:block padding-before="3mm" text-align="justify">
<fo:inline font-weight="bold" text-decoration="underline">QUINTO:</fo:inline>El valor del total de Cuotas del Fondo que 
el Aportante suscribe en este acto asciende a la cantidad de <fo:inline text-decoration="underline"><xsl:value-of select="sistemaDeAportantes/contrato/montoPalabras"/></fo:inline>
pesos, que el Aportante paga en este acto, en dinero efectivo, vale vista o cheque.
		</fo:block>

		<fo:block padding-before="3mm" text-align="justify">
<fo:inline font-weight="bold" text-decoration="underline">SEXTO:</fo:inline> El título representativo de la Cuotas que se 
suscriben mediante el presente instrumento, estará a disposición del Aportante en las oficinas de la Sociedad Administradora, 
dentro del plazo de cinco días a contar de esta fecha. En todo caso, la calidad de Aportante se adquiere desde el momento 
en que se hace efectivo el aporte del inversionista.
		</fo:block>

		<fo:block padding-before="3mm" text-align="justify">
<fo:inline font-weight="bold" text-decoration="underline">SEPTIMO:</fo:inline> El Aportante declara conocer y aceptar 
el Reglamento del Fondo, copia del cual le ha sido entregado previamente, obligándose a cumplir, en lo pertinente, 
con todas y cada una de sus disposiciones.
		</fo:block>
		
		<fo:block padding-before="3mm" text-align="justify">
El Aportante declara conocer y aceptar, especialmente, lo siguiente:
		</fo:block>
		
		<fo:block padding-before="3mm" text-align="justify">
			<fo:table table-layout="fixed">
				<fo:table-column column-width="2cm"/>
				<fo:table-column column-width="17cm"/>
				<fo:table-body>
					<fo:table-row>								
						<fo:table-cell>
						<fo:block>
							7.1.-
							</fo:block>
						</fo:table-cell>
						<fo:table-cell>
						<fo:block>
							Que la Sociedad Administradora está especialmente autorizada para invertir el aporte 
							del Aportante en aquellos valores y bienes que libremente elija, de acuerdo a la Política de 
							Inversión establecida en el Capítulo IV del Reglamento Interno del Fondo; y
						</fo:block>
						</fo:table-cell>
					</fo:table-row>
				</fo:table-body>
			</fo:table>
</fo:block>

		
		<fo:block padding-before="3mm" text-align="justify">
<fo:table table-layout="fixed">
				<fo:table-column column-width="2cm"/>
				<fo:table-column column-width="17cm"/>
				<fo:table-body>
					<fo:table-row>								
						<fo:table-cell>
						<fo:block>
							7.2.- 
							</fo:block>
						</fo:table-cell>
						<fo:table-cell>
						<fo:block>
							Que las comisiones que se establecen en los párrafos siguientes llevarán incluido el Impuesto al Valor Agregado, 
							&#x201C;IVA&#x201D;, correspondiente en conformidad a la Ley.
						</fo:block>
						</fo:table-cell>
					</fo:table-row>
				</fo:table-body>
			</fo:table>
		</fo:block>
		<fo:block padding-before="3mm" text-align="justify">
Para los efectos de lo dispuesto en el Oficio Circular N°335 emitido por la Superintendencia con fecha 10 de Marzo de 2006, 
se deja constancia que la tasa del IVA vigente a la fecha de la aprobación del Reglamento Interno del Fondo corresponde a un 19%. 
En caso de modificarse la tasa del IVA antes señalada, las comisiones a que se refiere el artículo 23 del Reglamento Interno del 
Fondo se actualizarán según la variación que experimente el IVA.
		</fo:block>
		<fo:block padding-before="3mm" text-align="justify">
		La actualización de las comisiones por cambio en la tasa del IVA, será informada a los Aportantes del Fondo mediante 
		el envío de una comunicación escrita a su domicilio, dentro de los 5 días siguientes a su actualización.
		</fo:block>
		<fo:block padding-before="3mm" text-align="justify">

<fo:table table-layout="fixed">
				<fo:table-column column-width="17cm"/>
				<fo:table-body>
					<fo:table-row>								
						<fo:table-cell>
						<fo:block>
							A) <fo:inline text-decoration="underline" font-weight="bold">Comisión Fija:</fo:inline>
						</fo:block>
						</fo:table-cell>
					</fo:table-row>
				</fo:table-body>
			</fo:table>
		</fo:block>
		
		<fo:block padding-before="3mm" text-align="justify">

<fo:table table-layout="fixed">
				<fo:table-column column-width="17cm"/>
				<fo:table-body>
					<fo:table-row>								
						<fo:table-cell>
						<fo:block>
							La Administradora tendrá derecho a percibir una Comisión Fija por la administración del Fondo, 
							la que ascenderá al <fo:inline font-weight="bold">1,19</fo:inline>% anual, IVA incluido.  La referida 
							comisión se calculará y devengará mensualmente  sobre el valor inicial del patrimonio del Fondo en 
							cada periodo mensual.
						</fo:block>						
						</fo:table-cell>
					</fo:table-row>
				</fo:table-body>
			</fo:table>
		</fo:block>
	<fo:block padding-before="3mm" text-align="justify">
		<fo:table table-layout="fixed">
				<fo:table-column column-width="17cm"/>
				<fo:table-body>
					<fo:table-row>								
						<fo:table-cell>
						<fo:block>
							La Comisión Fija se deducirá mensualmente del Fondo, correspondiendo a un doceavo de la 
							comisión indicada en  el párrafo anterior, y se pagará por períodos mensuales vencidos, 
							dentro de los cinco primeros días hábiles del mes siguiente al que corresponda dicha comisión.
						</fo:block>
						</fo:table-cell>
					</fo:table-row>
				</fo:table-body>
			</fo:table>
		</fo:block>
		<fo:block padding-before="3mm" text-align="justify">

<fo:table table-layout="fixed">
				<fo:table-column column-width="17cm"/>
				<fo:table-body>
					<fo:table-row>								
						<fo:table-cell>
						<fo:block>
							B) <fo:inline text-decoration="underline" font-weight="bold">Comisión Variable:</fo:inline>.
						</fo:block>
						</fo:table-cell>
					</fo:table-row>
				</fo:table-body>
			</fo:table>
		</fo:block>
		
		<fo:block padding-before="3mm" text-align="justify">

<fo:table table-layout="fixed">
				<fo:table-column column-width="17cm"/>
				<fo:table-body>
					<fo:table-row>								
						<fo:table-cell>
						<fo:block>
							La Administradora tendrá derecho a percibir una Comisión Variable por la administración del Fondo, 
							la que se calculará, devengará y cobrará en base a lo que se indica más adelante y en la medida que 
							la rentabilidad real anual obtenida por el Fondo, sea superior a una tasa de un 7%. 
						</fo:block>						
						</fo:table-cell>
					</fo:table-row>
				</fo:table-body>
			</fo:table>


		</fo:block>
		
		<fo:block padding-before="3mm" text-align="justify">

<fo:table table-layout="fixed">
				<fo:table-column column-width="17cm"/>
				<fo:table-body>
					<fo:table-row>								
						<fo:table-cell>
						<fo:block>
							El plazo considerado para calcular la rentabilidad real obtenida por el Fondo, será de períodos 
							anuales, por año calendario terminado. 
						</fo:block>
						</fo:table-cell>
					</fo:table-row>
				</fo:table-body>
			</fo:table>


		</fo:block>
		
		<fo:block padding-before="3mm" text-align="justify">

<fo:table table-layout="fixed">
				<fo:table-column column-width="17cm"/>
				<fo:table-body>
					<fo:table-row>					
						<fo:table-cell>
						<fo:block>
							Para determinar la Comisión Variable que la Administradora tenga derecho a percibir, dentro de los dos primeros 
							días del mes de enero de cada año se realizará la siguiente operación: 
						</fo:block>
						</fo:table-cell>
					</fo:table-row>
				</fo:table-body>
			</fo:table>
		</fo:block>
		
		<fo:block padding-before="3mm" text-align="justify">
<fo:table table-layout="fixed">
				<fo:table-column column-width="2cm"/>
				<fo:table-column column-width="15cm"/>
				<fo:table-body>
					<fo:table-row>								
						<fo:table-cell>
						<fo:block>
						1) 
							</fo:block>
						</fo:table-cell>
						<fo:table-cell>
						<fo:block>
Se tomará el valor del patrimonio del Fondo al 31 de diciembre del año respecto del cual se calcula la comisión 
(expresado en Unidades de Fomento de ese día) procediéndose con las siguientes agregaciones y deducciones: se le agregarán 
las disminuciones de capital efectuadas durante el referido año y el total de dividendos repartidos con cargo al ejercicio 
correspondiente a dicho año calendario (ambos expresados en Unidades de Fomento de la fecha acordada para el reparto) y se le 
deducirán los nuevos aportes realizados al Fondo durante dicho año calendario (expresados en Unidades de Fomento de las fechas 
en que se realicen los aportes) y el monto total pagado como Comisión Fija de conformidad con la letra (A) precedente, 
correspondiente al año en que se calcule la respectiva Comisión Variable expresado en Unidades de Fomento a la fecha de pago. 
El valor así obtenido se denominará &#x201C;Valor Final&#x201D;;
						</fo:block>
						</fo:table-cell>
					</fo:table-row>
				</fo:table-body>
			</fo:table>


</fo:block>		
<fo:block text-align="justify" padding-before="3mm">

<fo:table table-layout="fixed">
				<fo:table-column column-width="2cm"/>
				<fo:table-column column-width="15cm"/>
				<fo:table-body>
					<fo:table-row>														
						<fo:table-cell>
						<fo:block>
						2) 
							</fo:block>
						</fo:table-cell>
						<fo:table-cell>
						<fo:block>
Se tomará el valor del patrimonio del Fondo al primer día del año respecto del cual se calcula la comisión 
(expresado en Unidades de Fomento de ese día), obteniéndose lo que se denominará  &#x201C;Valor Inicial&#x201D;;
						</fo:block>
						</fo:table-cell>
					</fo:table-row>
				</fo:table-body>
			</fo:table>

</fo:block>		
<fo:block padding-before="3mm" text-align="justify">

<fo:table table-layout="fixed">
				<fo:table-column column-width="2cm"/>
				<fo:table-column column-width="15cm"/>
				<fo:table-body>
					<fo:table-row>															
						<fo:table-cell>
						<fo:block>
						3)
						</fo:block>
						</fo:table-cell>
						<fo:table-cell>
						<fo:block>
Se restará del Valor Final el Valor Inicial, obteniéndose lo que se denominará &#x201C;Utilidad
Obtenida&#x201D; por el Fondo;
						</fo:block>
						</fo:table-cell>
					</fo:table-row>
				</fo:table-body>
			</fo:table>

</fo:block>		
<fo:block padding-before="3mm" text-align="justify">

<fo:table table-layout="fixed">
				<fo:table-column column-width="2cm"/>
				<fo:table-column column-width="15cm"/>
				<fo:table-body>
					<fo:table-row>															
						<fo:table-cell>
						<fo:block>
						4)
						</fo:block>
						</fo:table-cell>
						<fo:table-cell>
						<fo:block>
Se dividirá la Utilidad Obtenida por el Valor Inicial y éste cuociente se multiplicará por 100, 
obteniéndose así la &#x201C;Rentabilidad Obtenida&#x201D; por el fondo;
						</fo:block>
						</fo:table-cell>
					</fo:table-row>
				</fo:table-body>
			</fo:table>

</fo:block>		
<fo:block padding-before="3mm" text-align="justify">
<fo:table table-layout="fixed">
				<fo:table-column column-width="2cm"/>
				<fo:table-column column-width="15cm"/>
				<fo:table-body>
					<fo:table-row>											
						<fo:table-cell>
						<fo:block>
						5) 
						</fo:block>
						</fo:table-cell>
						<fo:table-cell>
						<fo:block>
En la medida que la Rentabilidad Obtenida exceda del 7% (dicho exceso en adelante el&#x201C;Exceso de Rentabilidad&#x201D;),
la Administradora tendrá derecho a percibir esta Comisión Variable, cuyo monto ascenderá a un 23,8% del Exceso de Rentabilidad, 
IVA incluido. El Exceso de Rentabilidad correspondiente deberá ser multiplicado por el Valor Inicial referido en el punto 2 anterior, 
debiendo aplicarse al resultado de dicha multiplicación el 23,8% antes señalado. El monto resultante de esta operación es el que en 
definitiva deberá pagarse por concepto de Comisión Variable.
						</fo:block>
						</fo:table-cell>
					</fo:table-row>
				</fo:table-body>
			</fo:table>
</fo:block>		
	<fo:block padding-before="3mm" text-align="justify">
		<fo:table table-layout="fixed">
				<fo:table-column column-width="15cm"/>
				<fo:table-body>
					<fo:table-row>					
						<fo:table-cell>
						<fo:block>
El Fondo pagará a la Administradora la Comisión Variable así calculada dentro de los cinco primeros días del mes 
siguiente a su cálculo. Si a la fecha de pago de la Comisión Variable correspondiente, el Fondo no contare con recursos 
líquidos suficientes para efectos de proceder con su pago, dicha comisión se devengará de todas formas a favor de la Administradora y 
deberá ser pagada tan pronto el Fondo cuente con recursos líquidos suficientes para ello. 
						</fo:block>
						</fo:table-cell>
					</fo:table-row>
				</fo:table-body>
			</fo:table>
		</fo:block>
	<fo:block padding-before="3mm" text-align="justify">		
		<fo:table table-layout="fixed">
				<fo:table-column column-width="17cm"/>
				<fo:table-body>
					<fo:table-row>								
						<fo:table-cell>
						<fo:block>
							C) <fo:inline text-decoration="underline" font-weight="bold">Comisión de Estructuración:</fo:inline>.
						</fo:block>
						</fo:table-cell>
					</fo:table-row>
				</fo:table-body>
			</fo:table>
		</fo:block>
<fo:block padding-before="3mm" text-align="justify">
		<fo:table table-layout="fixed">
				<fo:table-column column-width="17cm"/>
				<fo:table-body>
					<fo:table-row>								
						<fo:table-cell>
						<fo:block>
							La Administradora tendrá derecho a percibir una comisión de estructuración única y por una sola vez, 
							a fin de compensarla por los gastos, honorarios profesionales, y tasas e impuestos en que ésta ha 
							incurrido en la formación del Fondo, la que ascenderá a UF 3.570 IVA incluido. Esta comisión se pagará 
							una vez que el Fondo supere el patrimonio mínimo establecido en el artículo 18 de la ley 18.815, 
							debiendo distribuirse su monto proporcionalmente entre la totalidad de las cuotas pagadas, en la 
							forma que determine la Administradora.
						</fo:block>
						</fo:table-cell>
					</fo:table-row>
				</fo:table-body>
			</fo:table>
		</fo:block>
		
		<fo:block padding-before="3mm" text-align="justify">
				<fo:table table-layout="fixed">
				<fo:table-column column-width="2cm"/>
				<fo:table-column column-width="17cm"/>
				<fo:table-body>
					<fo:table-row>								
						<fo:table-cell>
						<fo:block>
							7.3.-
							</fo:block>
						</fo:table-cell>
						<fo:table-cell>
						<fo:block>
							Que los siguientes gastos son y serán de cargo del Fondo: 
						</fo:block>
						</fo:table-cell>
					</fo:table-row>
				</fo:table-body>
			</fo:table> 
		</fo:block>
	<fo:block padding-before="3mm" text-align="justify">
		<fo:table table-layout="fixed">
				<fo:table-column column-width="17cm"/>
				<fo:table-body>
					<fo:table-row>								
						<fo:table-cell>
						<fo:block>
							Sin perjuicio de las comisiones a que se refiere el Capítulo VIII del Reglamento Interno del Fondo, 
							serán también de cargo del Fondo los siguientes gastos y costos de administración:
						</fo:block>
						</fo:table-cell>
					</fo:table-row>
				</fo:table-body>
			</fo:table>
		</fo:block>
			
		<fo:block padding-before="3mm" text-align="justify">
			<fo:table table-layout="fixed">
				<fo:table-column column-width="17cm"/>
				<fo:table-body>
					<fo:table-row>								
						<fo:table-cell>
						<fo:block>
							a) Derechos de intermediación que cobran las Bolsas de Valores autorizadas y sus impuestos;
						</fo:block>
						</fo:table-cell>
					</fo:table-row>
				</fo:table-body>
			</fo:table>
		</fo:block>
		
		<fo:block padding-before="3mm" text-align="justify">
			<fo:table table-layout="fixed">
				<fo:table-column column-width="17cm"/>
				<fo:table-body>
					<fo:table-row>								
						<fo:table-cell>
						<fo:block>
							b) Comisión de los Corredores de Bolsa y sus impuestos;
						</fo:block>
						</fo:table-cell>
					</fo:table-row>
				</fo:table-body>
			</fo:table>
		</fo:block>
		<fo:block padding-before="3mm" text-align="justify">
			<fo:table table-layout="fixed">
				<fo:table-column column-width="17cm"/>
				<fo:table-body>
					<fo:table-row>								
						<fo:table-cell>
						<fo:block>
							c) Comisión de corretaje que se originen por la inversión y desinversión en bienes raíces ubicados en 
							Chile y en el extranjero, cuya renta provenga de su explotación como negocio inmobiliario;
						</fo:block>
						</fo:table-cell>
					</fo:table-row>
				</fo:table-body>
			</fo:table>
		</fo:block>
		<fo:block padding-before="3mm" text-align="justify">
			<fo:table table-layout="fixed">
				<fo:table-column column-width="17cm"/>
				<fo:table-body>
					<fo:table-row>								
						<fo:table-cell>
						<fo:block>
							d) Gastos de reparación, mantención y mejoramiento de los bienes raíces del Fondo, 
							ya sea que tiendan a la conservación o valorización de los mismos. Se entenderán incluidos en 
							esta categoría, los gastos comunes correspondientes a bienes de propiedad del Fondo, cuando corresponda;
						</fo:block>
						</fo:table-cell>
					</fo:table-row>
				</fo:table-body>
			</fo:table>
		</fo:block>
		<fo:block padding-before="3mm" text-align="justify">
			<fo:table table-layout="fixed">
				<fo:table-column column-width="17cm"/>
				<fo:table-body>
					<fo:table-row>								
						<fo:table-cell>
						<fo:block>
							e) Gastos notariales relacionados con transacciones del Fondo;
						</fo:block>
						</fo:table-cell>
					</fo:table-row>
				</fo:table-body>
			</fo:table>
		</fo:block>
		<fo:block padding-before="3mm" text-align="justify">
			<fo:table table-layout="fixed">
				<fo:table-column column-width="17cm"/>
				<fo:table-body>
					<fo:table-row>								
						<fo:table-cell>
						<fo:block>
							f) Gastos del Conservador de Bienes Raíces;
						</fo:block>
						</fo:table-cell>
					</fo:table-row>
				</fo:table-body>
			</fo:table>
		</fo:block>
		<fo:block padding-before="3mm" text-align="justify">
			<fo:table table-layout="fixed">
				<fo:table-column column-width="17cm"/>
				<fo:table-body>
					<fo:table-row>								
						<fo:table-cell>
						<fo:block>
							g) Seguros generales de los bienes raíces de propiedad del Fondo, y demás medidas de 
							seguridad que deben adoptarse en conformidad a la Ley, o demás normas aplicables a los fondos 
							de inversión, para el cuidado y conservación de los títulos y bienes que integren el activo del fondo, 
							incluida la comisión y gastos derivados de la custodia de títulos y bienes;
						</fo:block>
						</fo:table-cell>
					</fo:table-row>
				</fo:table-body>
			</fo:table>
		</fo:block>

	<fo:block padding-before="3mm" text-align="justify">
			<fo:table table-layout="fixed">
				<fo:table-column column-width="17cm"/>
				<fo:table-body>
					<fo:table-row>								
						<fo:table-cell>
						<fo:block>
							h) Honorarios referentes a informes periciales y de tasación, de abogados, ingenieros, economistas, 
							auditores, contadores, empresas consultoras, de auditoria y otras empresas o personas que presten 
							servicios especializados, cuya contratación sea necesaria pactar para las operaciones del Fondo, 
							ya sea para inversiones materializadas o en proceso de estudio y negociación;
						</fo:block>
						</fo:table-cell>
					</fo:table-row>
				</fo:table-body>
			</fo:table>
		</fo:block>

		<fo:block padding-before="3mm" text-align="justify">
			<fo:table table-layout="fixed">
				<fo:table-column column-width="17cm"/>
				<fo:table-body>
					<fo:table-row>								
						<fo:table-cell>
						<fo:block>
							i) Gastos originados por la participación del Fondo en inversiones o licitaciones públicas o privadas, tales como:
						</fo:block>
						</fo:table-cell>
					</fo:table-row>
				</fo:table-body>
			</fo:table>
		</fo:block>
			
		<fo:block padding-before="3mm" text-align="justify">

		<fo:table table-layout="fixed">
				<fo:table-column column-width="2cm"/>
				<fo:table-column column-width="2cm"/>
				<fo:table-column column-width="15cm"/>
				<fo:table-body>
					<fo:table-row>															
						<fo:table-cell>
						<fo:block>
						</fo:block>
						</fo:table-cell>
						<fo:table-cell>
						<fo:block>
						i.
						</fo:block>
						</fo:table-cell>
						<fo:table-cell>
						<fo:block>
Honorarios por asesorías legales, financieras, contables, tributarias y auditorias;
						</fo:block>
						</fo:table-cell>
					</fo:table-row>
				</fo:table-body>
			</fo:table>

</fo:block>		
<fo:block text-align="justify">

<fo:table table-layout="fixed">
				<fo:table-column column-width="2cm"/>
				<fo:table-column column-width="2cm"/>
				<fo:table-column column-width="15cm"/>
				<fo:table-body>
					<fo:table-row>
						<fo:table-cell>
						<fo:block>
						</fo:block>
						</fo:table-cell>															
						<fo:table-cell>
						<fo:block>
						ii.
						</fo:block>
						</fo:table-cell>
						<fo:table-cell>
						<fo:block>
Gastos por compras de bases de licitación;
						</fo:block>
						</fo:table-cell>
					</fo:table-row>
				</fo:table-body>
			</fo:table>

</fo:block>		
<fo:block text-align="justify">

<fo:table table-layout="fixed">
				<fo:table-column column-width="2cm"/>
				<fo:table-column column-width="2cm"/>
				<fo:table-column column-width="15cm"/>
				<fo:table-body>
					<fo:table-row>								
						<fo:table-cell>
							<fo:block>
							</fo:block>
						</fo:table-cell>							
						<fo:table-cell>
						<fo:block>
						iii.
						</fo:block>
						</fo:table-cell>
						<fo:table-cell>
						<fo:block>
Copias de planos, fotocopias, encuadernaciones, traducciones, correos; y
						</fo:block>
						</fo:table-cell>
					</fo:table-row>
				</fo:table-body>
			</fo:table>

</fo:block>		
<fo:block text-align="justify">

<fo:table table-layout="fixed">
				<fo:table-column column-width="2cm"/>
				<fo:table-column column-width="2cm"/>
				<fo:table-column column-width="15cm"/>
				<fo:table-body>
					<fo:table-row>								
						<fo:table-cell>
							<fo:block>
							</fo:block>
						</fo:table-cell>							
						<fo:table-cell>
						<fo:block>
						(iv)   

							</fo:block>
						</fo:table-cell>
						<fo:table-cell>
						<fo:block>
Gastos de viaje, traslados y estadías y consumo, tanto dentro del país como en el  extranjero, si fuere necesario.
						</fo:block>
						</fo:table-cell>
					</fo:table-row>
				</fo:table-body>
			</fo:table>
</fo:block>

	<fo:block padding-before="3mm" text-align="justify">
			<fo:table table-layout="fixed">
				<fo:table-column column-width="17cm"/>
				<fo:table-body>
					<fo:table-row>								
						<fo:table-cell>
						<fo:block>
							j) 	Otros gastos directos relacionados con los bienes del Fondo y su normal explotación tales 
							como asesorías inmobiliarias, asesorías financieras, gastos por contratación de clasificadoras de 
							riesgo y, publicaciones relativas a los intereses del Fondo
						</fo:block>
						</fo:table-cell>
					</fo:table-row>
				</fo:table-body>
			</fo:table>
		</fo:block>	
		
		<fo:block padding-before="3mm" text-align="justify">
			<fo:table table-layout="fixed">
				<fo:table-column column-width="17cm"/>
				<fo:table-body>
					<fo:table-row>								
						<fo:table-cell>
						<fo:block>
							k) 	Gastos relacionados con las Asambleas de Aportantes como gastos notariales, 
							publicaciones, arriendo de salas y equipos para su celebración, como también, 
							todos los gastos relacionados con la ejecución de los acuerdos de las mismas;
						</fo:block>
						</fo:table-cell>
					</fo:table-row>
				</fo:table-body>
			</fo:table>
		</fo:block>		
		
		<fo:block padding-before="3mm" text-align="justify">
			<fo:table table-layout="fixed">
				<fo:table-column column-width="17cm"/>
				<fo:table-body>
					<fo:table-row>								
						<fo:table-cell>
						<fo:block>
							l) 	Gastos de publicaciones, informes y documentos que deban realizarse en conformidad a la ley, 
							su Reglamento, el Reglamento Interno del Fondo, o las normas que al efecto imparta la Superintendencia;
						</fo:block>
						</fo:table-cell>
					</fo:table-row>
				</fo:table-body>
			</fo:table>
		</fo:block>		
		
		<fo:block padding-before="3mm" text-align="justify">
			<fo:table table-layout="fixed">
				<fo:table-column column-width="17cm"/>
				<fo:table-body>
					<fo:table-row>								
						<fo:table-cell>
						<fo:block>
							m) 	Gastos de liquidación del Fondo, incluida la remuneración u honorarios del liquidador; y
						</fo:block>
						</fo:table-cell>
					</fo:table-row>
				</fo:table-body>
			</fo:table>
		</fo:block>		
		
		<fo:block padding-before="3mm" text-align="justify">
			<fo:table table-layout="fixed">
				<fo:table-column column-width="17cm"/>
				<fo:table-body>
					<fo:table-row>								
						<fo:table-cell>
						<fo:block>
							n) 	Gastos y honorarios profesionales derivados de la inscripción y registro de las Cuotas del 
							Fondo en el Registro de Valores u otros registros correspondientes, tales como el DCV, en las bolsas de 
							valores u otras entidades y, en general, todo gasto derivado de la colocación de las referidas Cuotas
						</fo:block>
						</fo:table-cell>
					</fo:table-row>
				</fo:table-body>
			</fo:table>
		</fo:block>			
			
		<fo:block padding-before="3mm" text-align="justify">

		<fo:table table-layout="fixed">
				<fo:table-column column-width="17cm"/>
				<fo:table-body>
					<fo:table-row>								
						<fo:table-cell>
						<fo:block>
En el informe anual a los Aportantes se entregará una información completa de cada uno de estos gastos solventados con recursos del Fondo.
						</fo:block>
						</fo:table-cell>
					</fo:table-row>
				</fo:table-body>
			</fo:table>

		</fo:block>
			
		<fo:block padding-before="3mm" text-align="justify">

		<fo:table table-layout="fixed">
				<fo:table-column column-width="17cm"/>
				<fo:table-body>
					<fo:table-row>								
						<fo:table-cell>
						<fo:block>
El porcentaje máximo anual de los gastos y costos de administración de cargo del Fondo a que se refieren los párrafos precedentes 
será de un 2,5% del valor que el Fondo haya tenido durante el respectivo período. 					
						</fo:block>
						</fo:table-cell>
					</fo:table-row>
				</fo:table-body>
			</fo:table>

		</fo:block>
			
		<fo:block padding-before="3mm" text-align="justify">

		<fo:table table-layout="fixed">
				<fo:table-column column-width="17cm"/>
				<fo:table-body>
					<fo:table-row>								
						<fo:table-cell>
						<fo:block>
Además de los gastos a que se refiere el artículo 24º del Reglamento Interno del Fondo, serán de cargo del Fondo los siguientes gastos:
						</fo:block>
						</fo:table-cell>
					</fo:table-row>
				</fo:table-body>
			</fo:table>

		</fo:block>
			
		<fo:block padding-before="3mm" text-align="justify">
		<fo:table table-layout="fixed">
				<fo:table-column column-width="2cm"/>
				<fo:table-column column-width="15cm"/>
				<fo:table-body>
					<fo:table-row>														
						<fo:table-cell>
						<fo:block>
						1.        

							</fo:block>
						</fo:table-cell>
						<fo:table-cell>
						<fo:block>
Gastos correspondientes a intereses y demás gastos financieros derivados de créditos contratados por cuenta del 
Fondo, así como los intereses de toda otra obligación del Fondo.
						</fo:block>
						</fo:table-cell>
					</fo:table-row>
				</fo:table-body>
			</fo:table>
</fo:block>
	<fo:block padding-before="3mm" text-align="justify">
		<fo:table table-layout="fixed">
				<fo:table-column column-width="2cm"/>
				<fo:table-column column-width="15cm"/>
				<fo:table-body>
					<fo:table-row>														
						<fo:table-cell>
						<fo:block>
						</fo:block>
						</fo:table-cell>
						<fo:table-cell>
						<fo:block>
El porcentaje máximo de estos gastos no podrá exceder, en cada ejercicio, de un 10 % del valor que el Fondo haya tenido durante el respectivo período
						</fo:block>
						</fo:table-cell>
					</fo:table-row>
				</fo:table-body>
			</fo:table>

</fo:block>		
<fo:block padding-before="3mm" text-align="justify">
		<fo:table table-layout="fixed">
				<fo:table-column column-width="2cm"/>
				<fo:table-column column-width="15cm"/>
				<fo:table-body>
					<fo:table-row>											
						<fo:table-cell>
						<fo:block>
						2.        

							</fo:block>
						</fo:table-cell>
						<fo:table-cell>
						<fo:block>
Litis expensas, costas, honorarios profesionales y otros gastos de orden judicial en que se incurra con ocasión de la 
representación judicial de los intereses del Fondo, así como las indemnizaciones que éste se vea obligado a pagar, 
incluidos aquellos gastos de carácter extrajudicial que tengan por objeto precaver o poner término a litigios, 
siempre y cuando dichos gastos no se produjeren por dolo o culpa grave de la Administradora. 
						</fo:block>
						</fo:table-cell>
					</fo:table-row>
				</fo:table-body>
			</fo:table>
</fo:block>
<fo:block padding-before="3mm" text-align="justify">
			<fo:table table-layout="fixed">
				<fo:table-column column-width="2cm"/>
				<fo:table-column column-width="15cm"/>
				<fo:table-body>
					<fo:table-row>											
						<fo:table-cell>
						<fo:block>
						</fo:block>
						</fo:table-cell>
						<fo:table-cell>
						<fo:block>
El porcentaje máximo de estos gastos no podrá exceder, en cada ejercicio, de un 2,5 % del valor que el Fondo haya tenido durante el respectivo período.
						</fo:block>
						</fo:table-cell>
					</fo:table-row>
				</fo:table-body>
			</fo:table>
</fo:block>
		
<fo:block padding-before="3mm" text-align="justify">
	<fo:table table-layout="fixed">
				<fo:table-column column-width="2cm"/>
				<fo:table-column column-width="15cm"/>
				<fo:table-body>
					<fo:table-row>														
						<fo:table-cell>
						<fo:block>
						3.        

							</fo:block>
						</fo:table-cell>
						<fo:table-cell>
						<fo:block>
Gastos del Comité de Vigilancia. El porcentaje máximo de estos gastos no podrá exceder, en cada ejercicio, de un 0,2 % del 
valor que el Fondo haya tenido durante el respectivo período. Los gastos del Comité de Vigilancia serán fijados anualmente 
por la Asamblea Ordinaria de Aportantes, mediante la respectiva aprobación de su presupuesto de gastos e ingresos.
						</fo:block>
						</fo:table-cell>
					</fo:table-row>
				</fo:table-body>
			</fo:table>
		</fo:block>

<fo:block padding-before="3mm" text-align="justify">
		<fo:table table-layout="fixed">
				<fo:table-column column-width="2cm"/>
				<fo:table-column column-width="15cm"/>
				<fo:table-body>
					<fo:table-row>														
						<fo:table-cell>
						<fo:block>
						4.        

							</fo:block>
						</fo:table-cell>
						<fo:table-cell>
						<fo:block>
Todo impuesto, tasa, derecho, tributo, retención o encaje de cualquier clase y jurisdicción que grave o afecte de cualquier forma a 
los bienes y valores que integren o en que invierta el Fondo, o a los actos, instrumentos o convenciones que se celebren o 
ejecuten con ocasión de la inversión, rescate, reinversión o transferencia de los recursos del Fondo, así como también de su 
internación o repatriación hacia o desde cualquier jurisdicción.
						</fo:block>
						</fo:table-cell>
					</fo:table-row>
				</fo:table-body>
			</fo:table>
		</fo:block>

<fo:block padding-before="3mm" text-align="justify">
		<fo:table table-layout="fixed">
				<fo:table-column column-width="2cm"/>
				<fo:table-column column-width="15cm"/>
				<fo:table-body>
					<fo:table-row>														
						<fo:table-cell>
						<fo:block>
						</fo:block>
						</fo:table-cell>
						<fo:table-cell>
						<fo:block>
El porcentaje máximo de estos gastos no podrá exceder, en cada ejercicio, de un 2,5 % del valor  que el Fondo haya tenido 
durante el respectivo período.
						</fo:block>
						</fo:table-cell>
					</fo:table-row>
				</fo:table-body>
			</fo:table>
		</fo:block>
		
		<fo:block padding-before="3mm" text-align="justify">
		<fo:table table-layout="fixed">
				<fo:table-column column-width="17cm"/>
				<fo:table-body>
					<fo:table-row>								
						<fo:table-cell>
						<fo:block>
El porcentaje máximo de los gastos indicados en los párrafos precedentes no podrá exceder, en cada ejercicio, de un  3,5 % 
del valor  que el Fondo haya tenido durante el respectivo período, a excepción de los gastos indicados en el número 1, 
anterior los que no podrán exceder de un 10% respecto del mismo monto indicado precedentemente.
						</fo:block>
						</fo:table-cell>
					</fo:table-row>
				</fo:table-body>
			</fo:table>
		</fo:block>		
		
		<fo:block padding-before="3mm" text-align="justify">
<fo:inline font-weight="bold" text-decoration="underline">OCTAVO:</fo:inline> Cualquier duda o dificultad que surja entre el 
Aportante y los demás aportantes del Fondo o la Administradora, se resolverá de conformidad con la cláusula de arbitraje 
establecida en el artículo 49º del Reglamento Interno del Fondo.
		</fo:block>
		
		<fo:block padding-before="3mm" text-align="justify">
<fo:inline font-weight="bold" text-decoration="underline">NOVENO:</fo:inline> El presente contrato se otorga en dos 
ejemplares de un mismo tenor y fecha, quedando uno en poder de la Administradora y uno en poder del Aportante.
		</fo:block>
					
	</xsl:template>


	<xsl:template name="textoFinal">
		<fo:block padding-before="1cm" text-align="justify" break-before="page">
			<fo:table table-layout="fixed">
				<fo:table-column column-width="10cm"/>
				<fo:table-column column-width="8cm"/>
					<fo:table-body>
						<fo:table-row>								
							<fo:table-cell>
								<fo:block>
									p.p. <fo:inline font-weight="bold">BCI Administradora General de Fondos S.A.</fo:inline>
								</fo:block>
							</fo:table-cell>
							<fo:table-cell>
								<fo:block text-align="center">
									<fo:inline font-weight="bold">Aportante</fo:inline>
								</fo:block>
							</fo:table-cell>
						</fo:table-row>
					</fo:table-body>
				</fo:table>
			</fo:block>
		
		<fo:block padding-before="0.5cm" text-align="left">
			<fo:table table-layout="fixed">
				<fo:table-column column-width="3cm"/>
				<fo:table-column column-width="8cm"/>
				<fo:table-column column-width="3cm"/>
				<fo:table-column column-width="8cm"/>
				<fo:table-body>
					<fo:table-row>								
						<fo:table-cell>
							<fo:block>
						Nombre
							</fo:block>
						</fo:table-cell>
						<fo:table-cell>
							<fo:block>
						: <xsl:value-of select="sistemaDeAportantes/contrato/nombreRep"/>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell>
							<fo:block text-align="left">
							Nombre
							</fo:block>
						</fo:table-cell>
						<fo:table-cell>
							<fo:block text-align="left">
							: <fo:inline text-decoration="underline"><xsl:value-of select="sistemaDeAportantes/contrato/nombreCliente"/></fo:inline>
							</fo:block>
						</fo:table-cell>				
					</fo:table-row>
					<fo:table-row>								
						<fo:table-cell>
							<fo:block padding-before="5mm">
						Domicilio
							</fo:block>
						</fo:table-cell>
						<fo:table-cell>
							<fo:block padding-before="5mm">
						: <xsl:value-of select="sistemaDeAportantes/contrato/direccionRep"/>
							</fo:block>
							</fo:table-cell>
							<fo:table-cell>
						<fo:block text-align="left" padding-before="5mm">
							Domicilio
							</fo:block>
						</fo:table-cell>
						<fo:table-cell>
							<fo:block text-align="left" padding-before="5mm">
							: <fo:inline text-decoration="underline"><xsl:value-of select="sistemaDeAportantes/contrato/calleCliente"/> - <xsl:value-of select="sistemaDeAportantes/contrato/numCalleCliente"/></fo:inline>
							</fo:block>
						</fo:table-cell>					
					</fo:table-row>
					<fo:table-row>								
						<fo:table-cell>
							<fo:block padding-before="5mm">
						Comuna
							</fo:block>
						</fo:table-cell>
						<fo:table-cell>
							<fo:block padding-before="5mm">
						: <xsl:value-of select="sistemaDeAportantes/contrato/comunaRep"/>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell>
						<fo:block padding-before="5mm">
							Comuna
							</fo:block>
						</fo:table-cell>
						<fo:table-cell>
							<fo:block text-align="left" padding-before="5mm">
							: <fo:inline text-decoration="underline"><xsl:value-of select="sistemaDeAportantes/contrato/comunaCliente"/></fo:inline>
							</fo:block>
						</fo:table-cell>					
					</fo:table-row>
					<fo:table-row>								
						<fo:table-cell>
							<fo:block padding-before="5mm">
						Ciudad
							</fo:block>
						</fo:table-cell>
						<fo:table-cell>
							<fo:block padding-before="5mm">
						: <xsl:value-of select="sistemaDeAportantes/contrato/ciudadRep"/>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell>
						<fo:block padding-before="5mm">
							Ciudad
							</fo:block>
						</fo:table-cell>
						<fo:table-cell>
							<fo:block text-align="left" padding-before="5mm">
							: <fo:inline text-decoration="underline"><xsl:value-of select="sistemaDeAportantes/contrato/ciudadCliente"/></fo:inline>
							</fo:block>
						</fo:table-cell>					
					</fo:table-row>
					<fo:table-row>								
						<fo:table-cell>
							<fo:block padding-before="5mm">
						Teléfono
							</fo:block>
						</fo:table-cell>
						<fo:table-cell>
							<fo:block padding-before="5mm">
						: <xsl:value-of select="sistemaDeAportantes/contrato/fonoFilial"/>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell>
						<fo:block padding-before="5mm">
							Teléfono
							</fo:block>
						</fo:table-cell>
						<fo:table-cell>
							<fo:block text-align="left" padding-before="5mm">
							: <fo:inline text-decoration="underline"><xsl:value-of select="sistemaDeAportantes/contrato/fonoCliente"/></fo:inline>
							</fo:block>
						</fo:table-cell>					
					</fo:table-row>
					<fo:table-row>								
						<fo:table-cell>
							<fo:block padding-before="5mm">
						Rut
							</fo:block>
						</fo:table-cell>
						<fo:table-cell>
							<fo:block padding-before="5mm">
						: <xsl:value-of select="sistemaDeAportantes/contrato/rutRep"/>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell>
						<fo:block padding-before="5mm">
							Rut
							</fo:block>
						</fo:table-cell>
						<fo:table-cell>
							<fo:block text-align="left" padding-before="5mm">
							: <fo:inline text-decoration="underline"><xsl:value-of select="sistemaDeAportantes/contrato/rutCliente"/></fo:inline>
							</fo:block>
						</fo:table-cell>					
					</fo:table-row>
				</fo:table-body>
			</fo:table>

		</fo:block>
		
		<fo:block padding-before="1cm" text-align="center">

		<fo:table table-layout="fixed">
				<fo:table-column column-width="11cm"/>
				<fo:table-column column-width="8cm"/>
				<fo:table-body>
					<fo:table-row>								
						<fo:table-cell>
						<fo:block>
						________________________________
							</fo:block>
							<fo:block>
									Firma
							</fo:block>
						</fo:table-cell>
						<fo:table-cell>
						<fo:block>
						________________________________
							</fo:block>
							<fo:block>
									Firma
							</fo:block>
						</fo:table-cell>
						
					</fo:table-row>
				</fo:table-body>
			</fo:table>
		</fo:block>
		
	</xsl:template>		


		
</xsl:stylesheet><!-- Stylus Studio meta-information - (c) 2004-2006. Progress Software Corporation. All rights reserved.
<metaInformation>
<scenarios ><scenario default="yes" name="Scenario1" userelativepaths="yes" externalpreview="no" url="contratoSuscripcion.xml" htmlbaseurl="" outputurl="" processortype="saxon8" useresolver="yes" profilemode="0" profiledepth="" profilelength="" urlprofilexml="" commandline="" additionalpath="" additionalclasspath="" postprocessortype="fop" postprocesscommandline="" postprocessadditionalpath="" postprocessgeneratedext="" validateoutput="no" validator="internal" customvalidator="" ><advancedProp name="sInitialMode" value=""/><advancedProp name="bSchemaAware" value="true"/><advancedProp name="bXsltOneIsOkay" value="true"/><advancedProp name="bXml11" value="false"/><advancedProp name="iValidation" value="0"/><advancedProp name="bExtensions" value="true"/><advancedProp name="iWhitespace" value="0"/><advancedProp name="sInitialTemplate" value=""/><advancedProp name="bTinyTree" value="true"/><advancedProp name="bUseDTD" value="false"/><advancedProp name="bWarnings" value="true"/><advancedProp name="iErrorHandling" value="fatal"/></scenario><scenario default="no" name="Scenario2" userelativepaths="yes" externalpreview="no" url="..\xsl" htmlbaseurl="" outputurl="" processortype="saxon8" useresolver="yes" profilemode="0" profiledepth="" profilelength="" urlprofilexml="" commandline="" additionalpath="" additionalclasspath="" postprocessortype="none" postprocesscommandline="" postprocessadditionalpath="" postprocessgeneratedext="" validateoutput="no" validator="internal" customvalidator="" ><advancedProp name="sInitialMode" value=""/><advancedProp name="bXsltOneIsOkay" value="true"/><advancedProp name="bSchemaAware" value="true"/><advancedProp name="bXml11" value="false"/><advancedProp name="iValidation" value="0"/><advancedProp name="bExtensions" value="true"/><advancedProp name="iWhitespace" value="0"/><advancedProp name="sInitialTemplate" value=""/><advancedProp name="bTinyTree" value="true"/><advancedProp name="bWarnings" value="true"/><advancedProp name="bUseDTD" value="false"/><advancedProp name="iErrorHandling" value="fatal"/></scenario></scenarios><MapperMetaTag><MapperInfo srcSchemaPathIsRelative="yes" srcSchemaInterpretAsXML="no" destSchemaPath="" destSchemaRoot="" destSchemaPathIsRelative="yes" destSchemaInterpretAsXML="no" ><SourceSchema srcSchemaPath="contratoSuscripcion.xml" srcSchemaRoot="sistemaDeAportantes" AssociatedInstance="" loaderFunction="document" loaderFunctionUsesURI="no"/></MapperInfo><MapperBlockPosition><template match="datos"><block path="" x="137" y="0"/></template><template match="/"></template><template name="cuerpo"></template></MapperBlockPosition><TemplateContext></TemplateContext><MapperFilter side="source"></MapperFilter></MapperMetaTag>
</metaInformation>
-->