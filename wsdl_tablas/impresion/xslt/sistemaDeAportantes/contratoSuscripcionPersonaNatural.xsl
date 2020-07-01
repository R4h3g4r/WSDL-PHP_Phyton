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
		<fo:block font-size="10pt" text-align="center" text-decoration="underline" padding-before="1cm" font-weight="bold">
			CONTRATO DE SUSCRIPCION DE CUOTAS
		</fo:block>
		<fo:block font-size="10pt" text-align="center" font-weight="bold">
		( PERSONA NATURAL )
		</fo:block>
		<fo:block font-size="10pt" text-align="center" font-weight="bold" padding-before="5mm">
		BCI ADMINISTRADORA GENERAL DE FONDOS S.A.
		</fo:block>
		<fo:block font-size="14pt" text-align="center" font-weight="bold" padding-before="1cm" text-decoration="underline">
		FONDO DE INVERSI�N <xsl:value-of select="sistemaDeAportantes/contrato/fondo"/>
		</fo:block>
		
	</xsl:template>


	<xsl:template name="cuerpo">
		
		<fo:block text-align="justify">
		En Santiago de Chile, a <fo:inline text-decoration="underline"><xsl:value-of select="sistemaDeAportantes/contrato/dia"/></fo:inline> de <fo:inline text-decoration="underline"><xsl:value-of select="sistemaDeAportantes/contrato/mes"/></fo:inline> de <xsl:value-of select="sistemaDeAportantes/contrato/anio"/>, entre &#x201C;BCI Administradora General de
Fondos S.A.&#x201D; Rol �nico Tributario n�mero <xsl:value-of select="sistemaDeAportantes/contrato/rutFilial"/>, representada por don <xsl:value-of select="sistemaDeAportantes/contrato/nombreRep"/>,
<xsl:value-of select="sistemaDeAportantes/contrato/nacionalidadRep"/>, <xsl:value-of select="sistemaDeAportantes/contrato/estadoCivilRep"/>, <xsl:value-of select="sistemaDeAportantes/contrato/profesionRep"/>,
c�dula nacional de identidad n�mero <xsl:value-of select="sistemaDeAportantes/contrato/rutRep"/>, ambos con
domicilio para estos efectos en <xsl:value-of select="sistemaDeAportantes/contrato/ciudadRep"/>, <xsl:value-of select="sistemaDeAportantes/contrato/direccionRep"/>, <xsl:value-of select="sistemaDeAportantes/contrato/comunaRep"/>, en adelante tambi�n como la
<fo:inline font-weight="bold">&#x201C;<xsl:value-of select="sistemaDeAportantes/contrato/nombreCortoFilial"/>&#x201D;</fo:inline>, por una parte, y, por la otra, don/do�a
<fo:inline text-decoration="underline"><xsl:value-of select="sistemaDeAportantes/contrato/nombreCliente"/></fo:inline>, nacionalidad <fo:inline text-decoration="underline"><xsl:value-of select="sistemaDeAportantes/contrato/nacionalidadCliente"/></fo:inline>, 
estado civil <fo:inline text-decoration="underline"><xsl:value-of select="sistemaDeAportantes/contrato/estadoCivilCliente"/></fo:inline>, profesi�n u oficio <fo:inline text-decoration="underline"><xsl:value-of select="sistemaDeAportantes/contrato/profesionCliente"/></fo:inline>, 
c�dula nacional de identidad n�mero <fo:inline text-decoration="underline"><xsl:value-of select="sistemaDeAportantes/contrato/rutCliente"/></fo:inline>, 
con domicilio para estos efectos en la ciudad de <fo:inline text-decoration="underline"><xsl:value-of select="sistemaDeAportantes/contrato/ciudadCliente"/></fo:inline>, 
comuna de <fo:inline text-decoration="underline"><xsl:value-of select="sistemaDeAportantes/contrato/comunaCliente"/></fo:inline>, 
calle <fo:inline text-decoration="underline"><xsl:value-of select="sistemaDeAportantes/contrato/calleCliente"/></fo:inline>, 
n�mero <fo:inline text-decoration="underline"><xsl:value-of select="sistemaDeAportantes/contrato/numCalleCliente"/></fo:inline>; 
en adelante tambi�n como el <fo:inline font-weight="bold">&#x201C;Aportante&#x201D;</fo:inline> se ha convenido el siguiente contrato de suscripci�n de cuotas, en adelante
tambi�n como el <fo:inline font-weight="bold">&#x201C;Contrato&#x201D;</fo:inline>:
		</fo:block>

		<fo:block padding-before="3mm" text-align="justify">
<fo:inline font-weight="bold" text-decoration="underline">PRIMERO:</fo:inline> BCI Administradora General de Fondos S.A., es una sociedad an�nima, de objeto exclusivo,
constituida mediante escritura p�blica de fecha 22 de junio de 2006, otorgada en la notar�a de Santiago
don Patricio Zald�var Mackenna, repertorio n�mero 10.258-2006. Su existencia fue autorizada por la
Superintendencia de Valores y Seguros, en adelante tambi�n como la &#x201D;Superintendencia&#x201D; por Resoluci�n
N� 491, de fecha 19 de Octubre de 2006. Un extracto del certificado de autorizaci�n de existencia emitido
por la Superintendencia fue inscrito a fojas 43099, n�mero 30613 en el Registro de Comercio del
Conservador de Bienes Ra�ces de Santiago correspondiente al a�o 2006 y fue publicado en el Diario
Oficial de fecha 23 de Octubre del mismo a�o.
		</fo:block>

		<fo:block padding-before="3mm" text-align="justify">
<fo:inline font-weight="bold" text-decoration="underline">SEGUNDO:</fo:inline> La Sociedad Administradora organiz� y constituy�, de acuerdo a las disposiciones de la Ley
N� 18.815, el fondo de Inversi�n denominado &#x201C;Fondo de Inversi�n BCI Desarrollo Inmobiliario&#x201D;, en adelante
tambi�n como el &#x201C;Fondo&#x201D;, cuyo reglamento interno, en adelante tambi�n como el &#x201C;Reglamento&#x201D; fue
aprobado por la Superintendencia por Resoluci�n Exenta N� 515 de fecha 6 de Noviembre de 2006.
		</fo:block>

		<fo:block padding-before="3mm" text-align="justify">
La duraci�n del Fondo ser� hasta el <xsl:value-of select="sistemaDeAportantes/contrato/duracionFondo"/>.
		</fo:block>

		<fo:block padding-before="3mm" text-align="justify">
<fo:inline font-weight="bold" text-decoration="underline">TERCERO:</fo:inline> El Fondo es un patrimonio integrado por aportes de personas naturales o jur�dicas, que se
expresan en Cuotas de Participaci�n, en adelante tambi�n como las &#x201C;Cuotas&#x201D;, nominativas, unitarias, de
igual valor y caracter�sticas, que no pueden ser rescatadas antes de la liquidaci�n del Fondo.
		</fo:block>

		<fo:block padding-before="3mm" text-align="justify">
<fo:inline font-weight="bold" text-decoration="underline">CUARTO:</fo:inline> Por este acto, el Aportante suscribe la cantidad de <fo:inline text-decoration="underline"><xsl:value-of select="sistemaDeAportantes/contrato/cantCuotas"/></fo:inline> Cuotas del Fondo, del total de
Cuotas que se acord� emitir, suscripci�n que es aceptada por el representante de la Sociedad
Administradora.
		</fo:block>
		
		<fo:block padding-before="3mm" text-align="justify">
<fo:inline font-weight="bold" text-decoration="underline">QUINTO:</fo:inline> El valor del total de Cuotas del Fondo que el Aportante suscribe en este acto asciende a la
cantidad de <fo:inline text-decoration="underline"><xsl:value-of select="sistemaDeAportantes/contrato/montoPalabras"/></fo:inline>
pesos, que el aportante paga en este acto, en dinero efectivo, vale vista o cheque.
		</fo:block>

		<fo:block padding-before="3mm" text-align="justify">
<fo:inline font-weight="bold" text-decoration="underline">SEXTO:</fo:inline> El t�tulo representativo de la Cuotas que se suscriben mediante el presente instrumento, estar� a
disposici�n del Aportante en las oficinas de la Sociedad Administradora, dentro del plazo de quince d�as a
contar de esta fecha. En todo caso, la calidad de aportante se adquiere desde el momento en que se hace
efectivo el aporte del inversionista.
		</fo:block>

		<fo:block padding-before="3mm" text-align="justify">
<fo:inline font-weight="bold" text-decoration="underline">SEPTIMO:</fo:inline> El Aportante declara conocer y aceptar el Reglamento del Fondo, copia del cual le ha sido
entregado previamente, oblig�ndose a cumplir, en lo pertinente, con todas y cada una de sus
disposiciones.
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
							Que la Sociedad Administradora est� especialmente autorizada para invertir el aporte del
Aportante en aquellos valores y bienes que libremente elija, de acuerdo a la Pol�tica de Inversi�n
establecida en el Cap�tulo III del Reglamento Interno del Fondo; y
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
							Que la Sociedad Administradora tendr� derecho a cobrar una &#x201C;Comisi�n de Administraci�n del
Fondo&#x201D;, la que estar� compuesta por una remuneraci�n fija y una variable, de acuerdo a lo que se
expone a continuaci�n:
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
							</fo:block>
						</fo:table-cell>
						<fo:table-cell>
						<fo:block>
							A) Remuneraci�n Fija.
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
							</fo:block>
						</fo:table-cell>
						<fo:table-cell>
						<fo:block>
							Se devengar� al cierre de cada per�odo mensual una remuneraci�n mensual del 0,17255% IVA
incluido, sobre el patrimonio inicial de cada per�odo mensual. �sta podr� ser cobrada por la
Sociedad Administradora dentro de los cinco primeros d�as del per�odo mensual siguiente.
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
							</fo:block>
						</fo:table-cell>
						<fo:table-cell>
						<fo:block>
							B) Remuneraci�n Variable.
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
							</fo:block>
						</fo:table-cell>
						<fo:table-cell>
						<fo:block>
							La Remuneraci�n Variable ser� de un 29,75% IVA incluido, y se cobrar� anualmente sobre la
base de lo que se indica m�s adelante y en la medida que la rentabilidad real anual obtenida por el
Patrimonio Administrado del Fondo, sea superior a la tasa impl�cita de un BCU a cinco a�os + un
2%.
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
							</fo:block>
						</fo:table-cell>
						<fo:table-cell>
						<fo:block>
Se entender� como tasa impl�cita de un BCU (Bono Banco Central en UF) a cinco a�os, como la
media aritm�tica de las dos �ltimas licitaciones mensuales informadas por el Banco Central de
Chile, considerando una base de trescientos sesenta y cinco d�as. En caso de que se dejase de
emitir este tipo de instrumentos, se considerar� la media aritm�tica del �ltimo d�a de transacciones
de dicho papel a trav�s de los remates electr�nicos realizados en la Bolsa de Comercio de
santiago. Los papeles en cuesti�n deben tener una duraci�n de cinco a�os.
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
							</fo:block>
						</fo:table-cell>
						<fo:table-cell>
						<fo:block>
El plazo considerado para calcular la rentabilidad real obtenida por el Patrimonio del Fondo ser�
de per�odos anuales, por un a�o de calendario terminado. Para determinar la Remuneraci�n
Variable que la Sociedad Administradora tenga derecho a cobrar, al t�rmino de cada per�odo se
realizar� la siguiente operaci�n:
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
						(i) 
							</fo:block>
						</fo:table-cell>
						<fo:table-cell>
						<fo:block>
Se tomar� el valor del patrimonio del Fondo, antes de deducir la Remuneraci�n Variable,
que se encuentre vigente al �ltimo d�a calendario del per�odo correspondiente (expresado
en Unidades de Fomento de ese d�a), se le agregar�n el total de dividendos repartidos
con cargo al ejercicio vigente (expresados en Unidades de Fomento de la fecha acordada
para el reparto). El valor obtenido se denominar� &#x201C;Valor Final&#x201D;;
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
						(ii) 
							</fo:block>
						</fo:table-cell>
						<fo:table-cell>
						<fo:block>
En forma paralela a la operaci�n realizada en la letra a) precedente, se tomar� el Valor del
Patrimonio al primer d�a del inicio del per�odo (expresados en Unidades de Fomento de
ese d�a, al que se le restar�n los dividendos por repartir correspondientes al per�odo o
ejercicio anterior (expresados en Unidades de Fomento del �ltimo d�a del ejercicio
anterior), obteni�ndose lo que se llamar� &#x201C;Valor Inicial&#x201D;;
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
						(iii) 

							</fo:block>
						</fo:table-cell>
						<fo:table-cell>
						<fo:block>
Se restar� del &#x201C;Valor Final&#x201D; el &#x201C;Valor Inicial&#x201D; obteni�ndose lo que se llamar� &#x201C;Utilidad
Obtenida&#x201D; por el Fondo;
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
Se calcular� el promedio aritm�tico diario del Patrimonio del Fondo, sin incluir la utilidad
diaria obtenida en el per�odo correspondiente, obteni�ndose lo que se llamar� &#x201C;Valor
Promedio del Patrimonio del Fondo&#x201D;;
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
						(v) 
							</fo:block>
						</fo:table-cell>
						<fo:table-cell>
						<fo:block>
Se dividir� la &#x201C;Utilidad Obtenida&#x201D; por el &#x201C;Valor Promedio del Patrimonio del Fondo&#x201D;,
obteni�ndose lo que se llamar� la &#x201C;Rentabilidad Obtenida por el Fondo (ROF)&#x201D;; y
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
						(vi) 
							</fo:block>
						</fo:table-cell>
						<fo:table-cell>
						<fo:block>
En la medida que la &#x201C;Rentabilidad Obtenida por el Fondo&#x201D; supere la tasa impl�cita de un
BCU a cinco a�os + 2%, se aplicar� el porcentaje de 29,75% IVA incluido sobre todo el
exceso de rentabilidad.
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
							Que los siguientes gastos son y ser�n de cargo del Fondo:
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
							</fo:block>
						</fo:table-cell>
						<fo:table-cell>
						<fo:block>
							A) Gastos Ordinarios:
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
							</fo:block>
						</fo:table-cell>
						<fo:table-cell>
						<fo:block>
							Ser�n de cargo del Fondo los gastos ordinarios que se se�ala a continuaci�n:
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
						(i) 

							</fo:block>
						</fo:table-cell>
						<fo:table-cell>
						<fo:block>
Derechos de intermediaci�n que cobran las Bolsas de Valores autorizadas y sus
impuestos;
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
						(ii)  

							</fo:block>
						</fo:table-cell>
						<fo:table-cell>
						<fo:block>
Comisi�n de los Corredores de Bolsa y sus impuestos;
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
						(iii)  

							</fo:block>
						</fo:table-cell>
						<fo:table-cell>
						<fo:block>
Comisi�n de corretaje e impuestos que se originen por la inversi�n en bienes ra�ces
ubicados en Chile, cuya renta provenga de su explotaci�n como negocio inmobiliario;
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
Impuestos territoriales de los bienes ra�ces que posea el Fondo y cualquier otro impuesto
fiscal;
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
						(v)    

							</fo:block>
						</fo:table-cell>
						<fo:table-cell>
						<fo:block>
Gastos de reparaci�n, mantenci�n y mejoramiento de los bienes ra�ces del Fondo, ya sea
que tiendan a la conservaci�n o valorizaci�n de los mismos. Se entender�n incluidos en
esta categor�a, los gastos comunes correspondientes a bienes de propiedad del Fondo,
cuando corresponda;
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
						(vi)   

							</fo:block>
						</fo:table-cell>
						<fo:table-cell>
						<fo:block>
Gastos notariales relacionados con transacciones del Fondo;
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
						(vii)   

							</fo:block>
						</fo:table-cell>
						<fo:table-cell>
						<fo:block>
Gastos del Conservador de Bienes Ra�ces;
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
						(viii)    

							</fo:block>
						</fo:table-cell>
						<fo:table-cell>
						<fo:block>
Seguros de los Bienes Ra�ces;
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
						(ix)     

							</fo:block>
						</fo:table-cell>
						<fo:table-cell>
						<fo:block>
Gastos financieros relacionados con los pasivos del Fondo;
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
						(x)      

							</fo:block>
						</fo:table-cell>
						<fo:table-cell>
						<fo:block>
Honorarios referentes a informes periciales y de tasaci�n, de abogados, ingenieros,
economistas, auditores, contadores, empresas consultoras, de auditoria y otras empresas
o personas que presten servicios especializados, cuya contrataci�n sea necesaria pactar
para las operaciones del Fondo, ya sea para inversiones materializadas o en proceso de
negociaci�n;
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
						(xi)      

							</fo:block>
						</fo:table-cell>
						<fo:table-cell>
						<fo:block>
Gastos originados por la participaci�n del Fondo en inversiones o licitaciones p�blicas o
privadas, tales como:
(a) Honorarios por asesor�as legales, financieras, contables, tributarias y auditorias;
(b) Gastos por compras de bases de licitaci�n;
(c) Copias de planos, fotocopias, encuadernaciones, traducciones, correos; y
(d) Gastos de viaje, traslados y estad�as y consumo, tanto dentro del pa�s como en el
extranjero, si fuere necesario.
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
						(xii)      

							</fo:block>
						</fo:table-cell>
						<fo:table-cell>
						<fo:block>
Gastos por concepto de pago de intereses, comisiones o impuestos derivados de cr�ditos
por cuenta del Fondo, as� como los mismos derivados del manejo y administraci�n de sus
cuentas corrientes bancarias.
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
						(xiii)       

							</fo:block>
						</fo:table-cell>
						<fo:table-cell>
						<fo:block>
Otros gastos directos relacionados con los bienes del Fondo y su normal explotaci�n tales
como asesor�as inmobiliarias, asesor�as financieras, gastos por contrataci�n de
clasificadoras de riesgo y, publicaciones relativas a los intereses del Fondo.
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
						(xiv)       

							</fo:block>
						</fo:table-cell>
						<fo:table-cell>
						<fo:block>
Gastos relacionados con las Asambleas de Aportantes como gastos notariales,
publicaciones, arriendo de salas y equipos para su celebraci�n, como tambi�n, todos los
gastos relacionados con la ejecuci�n de los acuerdos de las mismas.
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
						(xv)       

							</fo:block>
						</fo:table-cell>
						<fo:table-cell>
						<fo:block>
Gastos originados con motivo del funcionamiento del Comit� de Vigilancia de que trata el
Cap�tulo XIII de este Reglamento Interno.
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
							</fo:block>
						</fo:table-cell>
						<fo:table-cell>
						<fo:block>
En todo caso, los gastos ordinarios solventados con recursos del Fondo no podr�n exceder
anualmente del 2,5% del valor del Fondo, con la excepci�n de los gastos indicados en la letra ix)
anterior, los que adicionalmente podr�n llegar a un m�ximo de un 5,0% del valor promedio del
patrimonio del Fondo. El exceso de gastos sobre estos porcentajes deber� ser de cargo de la
Sociedad Administradora.
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
							</fo:block>
						</fo:table-cell>
						<fo:table-cell>
						<fo:block>
Sin embargo, en el evento de existir variaciones que incrementen el costo de los impuestos que
afecten a los bienes ra�ces con posterioridad al inicio de las operaciones del Fondo el porcentaje
del 2,5% del valor del Fondo antes se�alado, podr� aumentarse en la misma proporci�n a la
variaci�n que experimenten los citados tributos.
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
							</fo:block>
						</fo:table-cell>
						<fo:table-cell>
						<fo:block>
B) Gastos Extraordinarios:
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
							</fo:block>
						</fo:table-cell>
						<fo:table-cell>
						<fo:block>
Ser�n de cargo del Fondo los gastos extraordinarios que se indican a continuaci�n:
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
						(i)        

							</fo:block>
						</fo:table-cell>
						<fo:table-cell>
						<fo:block>
Litis expensas, costas, honorarios profesionales, y otros gastos que se generen en
cualquier tipo de procedimiento judicial, administrativo u otro, en que se incurra con
ocasi�n de la representaci�n de los intereses del Fondo, incluidos aquellos de car�cter
extrajudicial que tengan por objeto precaver o poner t�rmino a litigios;
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
						(ii)        

							</fo:block>
						</fo:table-cell>
						<fo:table-cell>
						<fo:block>
Los gastos extraordinarios se�alados en el p�rrafo precedente no exceder�n anualmente
de un uno por ciento del valor del Fondo;
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
						(iii)        

							</fo:block>
						</fo:table-cell>
						<fo:table-cell>
						<fo:block>
Tambi�n constituir�n gastos extraordinarios de cargo del Fondo, los costos que implique
el cumplimiento de las resoluciones judiciales, arbitrales y administrativas, el pago de
indemnizaciones, multas y compensaciones decretadas en cualquier tipo de
procedimiento judicial, arbitral, administrativo u otro, en que se incurra con ocasi�n de la
representaci�n de los intereses del Fondo y en contra de aqu�l, y, el cumplimiento de los
acuerdos extrajudiciales que tengan por objeto precaver o poner t�rmino a litigios, todo
ello sin perjuicio de la responsabilidad que le quepa a la Sociedad Administradora por los
perjuicios que le fueren imputables.
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
							</fo:block>
						</fo:table-cell>
						<fo:table-cell>
						<fo:block>
Los gastos se�alados en este literal estar�n limitados al cien por ciento del valor del Fondo. En la
medida que �stos representen m�s de un 2,5 por ciento del valor del Fondo, para concurrir a ellos,
la Sociedad Administradora deber� previamente citar a Asamblea Extraordinaria de Aportantes
dentro de los 60 d�as contados desde la fecha en que tom� conocimiento del suceso que hace
exigible el gasto;
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
							</fo:block>
						</fo:table-cell>
						<fo:table-cell>
						<fo:block>
C) Gastos de liquidaci�n del Fondo, incluida la remuneraci�n del liquidador.
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
							</fo:block>
						</fo:table-cell>
						<fo:table-cell>
						<fo:block>
En todo caso, los gastos de este literal C) deber�n ser determinados y aprobados por la respectiva
Asamblea Extraordinaria de Aportantes.
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
							</fo:block>
						</fo:table-cell>
						<fo:table-cell>
						<fo:block>
La suma de los gastos mencionados en este n�mero, contemplados los impuestos eventuales, los
costos de liquidaci�n del fondo y aquellos derivados del cumplimiento de resoluciones judiciales y
similares, en su conjunto, estar�n limitados al cien por ciento del valor del Fondo.
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
							</fo:block>
						</fo:table-cell>
						<fo:table-cell>
						<fo:block>
En el informe anual a los Aportantes se entregar� una informaci�n completa de cada uno de estos
gastos solventados con recursos del Fondo.
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
							7.4.- 
							</fo:block>
						</fo:table-cell>
						<fo:table-cell>
						<fo:block>
Que el Fondo distribuir� anualmente como dividendo en dinero efectivo un m�nimo equivalente al
30% de los beneficios netos y susceptibles de ser distribuidos, percibidos durante el ejercicio, en
los t�rminos contemplados en el art�culo 31 del Reglamento de la Ley 18.815.
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
							</fo:block>
						</fo:table-cell>
						<fo:table-cell>
						<fo:block>
Para estos efectos, se entender� por beneficios netos percibidos, la cantidad que resulte de restar
a la suma de utilidades, intereses, dividendos y ganancias de capital efectivamente percibidas, el
total de p�rdida y gastos devengados en el per�odo.
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
							</fo:block>
						</fo:table-cell>
						<fo:table-cell>
						<fo:block>
No obstante lo dispuesto en los incisos anteriores, si el Fondo tuviere p�rdidas acumuladas, los
beneficios se destinar�n primeramente a absorberlas, de conformidad a las normas que dicte la
Superintendencia. Por otra parte, en caso que hubiere p�rdidas en un ejercicio, �stas ser�n
absorbidas con utilidades retenidas.
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
							</fo:block>
						</fo:table-cell>
						<fo:table-cell>
						<fo:block>
El reparto de beneficios deber� hacerse dentro de los 30 d�as siguientes de celebrada la
Asamblea Ordinaria de Aportantes que apruebe los estados financieros anuales, sin perjuicio de
que la Sociedad Administradora efect�e pagos provisorios con cargo a dichos resultados. Los
beneficios devengados que la Sociedad Administradora no hubiere pagado o puesto a disposici�n
de los Aportantes, dentro del plazo antes indicado, se reajustar�n de acuerdo a la variaci�n que
experimente la unidad de fomento entre la fecha en que �stos se hicieron exigibles y la de su pago
efectivo y devengar� intereses corrientes para operaciones reajustables por el mismo per�odo.
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
						7.5.- 
							</fo:block>
						</fo:table-cell>
						<fo:table-cell>
						<fo:block>
Que la calidad de Aportante o suscriptor de cuotas se adquiere en el momento en que la Sociedad
Administradora recibe el aporte del inversionista, en efectivo o vale vista bancario, o lo perciba del
banco librado en caso de pago con cheque o se curse el traspaso correspondiente trat�ndose de
transacciones en el mercado secundario.
</fo:block>
<fo:block>
Los aportes quedaran expresados en cuotas del fondo, nominativas, unitarias, de igual valor y
caracter�sticas, las que no podr�n rescatarse antes de la liquidaci�n del Fondo.
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
						7.6.- 
							</fo:block>
						</fo:table-cell>
						<fo:table-cell>
						<fo:block>
Las diferencias que ocurran entre los aportantes en su calidad de tales, o entre estos y la sociedad
administradora o de sus administradores, sea durante la vigencia del fondo respectivo o durante
su liquidaci�n, ser�n sometidas a arbitraje. El �rbitro que conozca el litigio, el cual ser� designado
de com�n acuerdo por las partes, tendr� la calidad de �rbitro mixto, el que actuar� como arbitrador
en el procedimiento y que deber� fallar conforme a derecho.
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
							</fo:block>
						</fo:table-cell>
						<fo:table-cell>
						<fo:block>
A falta de acuerdo, las partes confieren mandato especial irrevocable a la C�mara de Comercio de
Santiago A.G. para que proceda a designar al �rbitro de entre los integrantes de la lista del cuerpo
arbitral del Centro de Arbitrajes de dicha c�mara. Una vez aceptado y constituido el compromiso,
el arbitraje estar� permanentemente abierto, de manera tal que el arbitro podr� ejercer el cargo
cuantas veces fuera necesario y tendr� en cada caso un t�rmino de seis meses para cumplir su
cometido. El �rbitro estar� siempre facultado, a falta de acuerdo entre las partes sobre el
procedimiento, para fijarlo con entera libertad, incluso en lo concerniente al sistema de
notificaciones, pero la primera de ellas deber� siempre efectuarse en conformidad a las reglas del
t�tulo VI del Libro Primero del C�digo de Procedimiento Civil. El arbitraje tendr� lugar en la ciudad
de Santiago.
						</fo:block>
						</fo:table-cell>
					</fo:table-row>
				</fo:table-body>
			</fo:table>

		</fo:block>
		
		<fo:block padding-before="3mm" text-align="justify">
<fo:inline font-weight="bold" text-decoration="underline">OCTAVO:</fo:inline> La personer�a de los representantes de BCI ADMINISTRADORA GENERAL DE FONDOS S.A.
para comparecer en su representaci�n consta de escritura p�blica de fecha 30 de Noviembre de 2006 en
la d�cimo octava notar�a de Santiago de don Patricio Zald�var Mackenna.
		</fo:block>
		
		<fo:block padding-before="3mm" text-align="justify">
<fo:inline font-weight="bold" text-decoration="underline">NOVENO:</fo:inline> El presente contrato se otorga en tres ejemplares, quedando dos en poder de la Sociedad
Administradora y uno en poder del Aportante.
		</fo:block>
		
		
	
	
	</xsl:template>


	<xsl:template name="textoFinal">
		<fo:block padding-before="2cm" text-align="justify"  font-weight="bold" break-before="page">
BCI Administradora General de Fondos S.A.
		</fo:block>
		
		<fo:block padding-before="1cm" text-align="left">

			<fo:table table-layout="fixed">
				<fo:table-column column-width="3cm"/>
				<fo:table-column column-width="16cm"/>
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
					</fo:table-row>
					<fo:table-row>								
						<fo:table-cell>
							<fo:block padding-before="5mm">
						Tel�fono
							</fo:block>
						</fo:table-cell>
						<fo:table-cell>
							<fo:block padding-before="5mm">
						: <xsl:value-of select="sistemaDeAportantes/contrato/fonoFilial"/>
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
					</fo:table-row>
				</fo:table-body>
			</fo:table>

		</fo:block>
		
		<fo:block padding-before="1cm" text-align="center">

		<fo:table table-layout="fixed">
				<fo:table-column column-width="12cm"/>
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
						
					</fo:table-row>
				</fo:table-body>
			</fo:table>

		</fo:block>
		
		<fo:block padding-before="1.5cm" text-align="justify"  font-weight="bold">
Aportante
</fo:block>
		
		<fo:block padding-before="5mm" text-align="left">
<fo:table table-layout="fixed">
				<fo:table-column column-width="2cm"/>
				<fo:table-column column-width="17cm"/>
				<fo:table-body>					
					<fo:table-row>								
						<fo:table-cell>
							<fo:block text-align="left" padding-before="5mm">
							Nombre
							</fo:block>
						</fo:table-cell>
						<fo:table-cell>
							<fo:block text-align="left" padding-before="5mm">
							: <fo:inline text-decoration="underline"><xsl:value-of select="sistemaDeAportantes/contrato/nombreCliente"/></fo:inline>
							</fo:block>
						</fo:table-cell>						
					</fo:table-row>
					<fo:table-row>
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
							<fo:block text-align="left" padding-before="5mm">
							: <fo:inline text-decoration="underline"><xsl:value-of select="sistemaDeAportantes/contrato/ciudadCliente"/></fo:inline>
							</fo:block>
						</fo:table-cell>											
					</fo:table-row>
					<fo:table-row>
						<fo:table-cell>
						<fo:block padding-before="5mm">
							Tel�fono
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
				<fo:table-column column-width="12cm"/>
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
						
					</fo:table-row>
				</fo:table-body>
			</fo:table>
		</fo:block>
		


	</xsl:template>


		
</xsl:stylesheet><!-- Stylus Studio meta-information - (c) 2004-2006. Progress Software Corporation. All rights reserved.
<metaInformation>
<scenarios ><scenario default="yes" name="Scenario1" userelativepaths="yes" externalpreview="no" url="contratoSuscripcion.xml" htmlbaseurl="" outputurl="" processortype="saxon8" useresolver="yes" profilemode="0" profiledepth="" profilelength="" urlprofilexml="" commandline="" additionalpath="" additionalclasspath="" postprocessortype="fop" postprocesscommandline="" postprocessadditionalpath="" postprocessgeneratedext="" validateoutput="no" validator="internal" customvalidator="" ><advancedProp name="sInitialMode" value=""/><advancedProp name="bXsltOneIsOkay" value="true"/><advancedProp name="bSchemaAware" value="true"/><advancedProp name="bXml11" value="false"/><advancedProp name="iValidation" value="0"/><advancedProp name="bExtensions" value="true"/><advancedProp name="iWhitespace" value="0"/><advancedProp name="sInitialTemplate" value=""/><advancedProp name="bTinyTree" value="true"/><advancedProp name="bWarnings" value="true"/><advancedProp name="bUseDTD" value="false"/><advancedProp name="iErrorHandling" value="fatal"/></scenario><scenario default="no" name="Scenario2" userelativepaths="yes" externalpreview="no" url="..\xsl" htmlbaseurl="" outputurl="" processortype="saxon8" useresolver="yes" profilemode="0" profiledepth="" profilelength="" urlprofilexml="" commandline="" additionalpath="" additionalclasspath="" postprocessortype="none" postprocesscommandline="" postprocessadditionalpath="" postprocessgeneratedext="" validateoutput="no" validator="internal" customvalidator="" ><advancedProp name="sInitialMode" value=""/><advancedProp name="bSchemaAware" value="true"/><advancedProp name="bXsltOneIsOkay" value="true"/><advancedProp name="bXml11" value="false"/><advancedProp name="iValidation" value="0"/><advancedProp name="bExtensions" value="true"/><advancedProp name="iWhitespace" value="0"/><advancedProp name="sInitialTemplate" value=""/><advancedProp name="bTinyTree" value="true"/><advancedProp name="bUseDTD" value="false"/><advancedProp name="bWarnings" value="true"/><advancedProp name="iErrorHandling" value="fatal"/></scenario></scenarios><MapperMetaTag><MapperInfo srcSchemaPathIsRelative="yes" srcSchemaInterpretAsXML="no" destSchemaPath="" destSchemaRoot="" destSchemaPathIsRelative="yes" destSchemaInterpretAsXML="no" ><SourceSchema srcSchemaPath="contratoSuscripcion.xml" srcSchemaRoot="sistemaDeAportantes" AssociatedInstance="" loaderFunction="document" loaderFunctionUsesURI="no"/></MapperInfo><MapperBlockPosition><template match="datos"><block path="" x="137" y="0"/></template><template match="/"></template><template name="cuerpo"></template></MapperBlockPosition><TemplateContext></TemplateContext><MapperFilter side="source"></MapperFilter></MapperMetaTag>
</metaInformation>
-->