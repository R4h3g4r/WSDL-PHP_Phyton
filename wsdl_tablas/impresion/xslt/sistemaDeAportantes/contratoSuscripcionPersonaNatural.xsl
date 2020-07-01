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
		FONDO DE INVERSIÓN <xsl:value-of select="sistemaDeAportantes/contrato/fondo"/>
		</fo:block>
		
	</xsl:template>


	<xsl:template name="cuerpo">
		
		<fo:block text-align="justify">
		En Santiago de Chile, a <fo:inline text-decoration="underline"><xsl:value-of select="sistemaDeAportantes/contrato/dia"/></fo:inline> de <fo:inline text-decoration="underline"><xsl:value-of select="sistemaDeAportantes/contrato/mes"/></fo:inline> de <xsl:value-of select="sistemaDeAportantes/contrato/anio"/>, entre &#x201C;BCI Administradora General de
Fondos S.A.&#x201D; Rol Único Tributario número <xsl:value-of select="sistemaDeAportantes/contrato/rutFilial"/>, representada por don <xsl:value-of select="sistemaDeAportantes/contrato/nombreRep"/>,
<xsl:value-of select="sistemaDeAportantes/contrato/nacionalidadRep"/>, <xsl:value-of select="sistemaDeAportantes/contrato/estadoCivilRep"/>, <xsl:value-of select="sistemaDeAportantes/contrato/profesionRep"/>,
cédula nacional de identidad número <xsl:value-of select="sistemaDeAportantes/contrato/rutRep"/>, ambos con
domicilio para estos efectos en <xsl:value-of select="sistemaDeAportantes/contrato/ciudadRep"/>, <xsl:value-of select="sistemaDeAportantes/contrato/direccionRep"/>, <xsl:value-of select="sistemaDeAportantes/contrato/comunaRep"/>, en adelante también como la
<fo:inline font-weight="bold">&#x201C;<xsl:value-of select="sistemaDeAportantes/contrato/nombreCortoFilial"/>&#x201D;</fo:inline>, por una parte, y, por la otra, don/doña
<fo:inline text-decoration="underline"><xsl:value-of select="sistemaDeAportantes/contrato/nombreCliente"/></fo:inline>, nacionalidad <fo:inline text-decoration="underline"><xsl:value-of select="sistemaDeAportantes/contrato/nacionalidadCliente"/></fo:inline>, 
estado civil <fo:inline text-decoration="underline"><xsl:value-of select="sistemaDeAportantes/contrato/estadoCivilCliente"/></fo:inline>, profesión u oficio <fo:inline text-decoration="underline"><xsl:value-of select="sistemaDeAportantes/contrato/profesionCliente"/></fo:inline>, 
cédula nacional de identidad número <fo:inline text-decoration="underline"><xsl:value-of select="sistemaDeAportantes/contrato/rutCliente"/></fo:inline>, 
con domicilio para estos efectos en la ciudad de <fo:inline text-decoration="underline"><xsl:value-of select="sistemaDeAportantes/contrato/ciudadCliente"/></fo:inline>, 
comuna de <fo:inline text-decoration="underline"><xsl:value-of select="sistemaDeAportantes/contrato/comunaCliente"/></fo:inline>, 
calle <fo:inline text-decoration="underline"><xsl:value-of select="sistemaDeAportantes/contrato/calleCliente"/></fo:inline>, 
número <fo:inline text-decoration="underline"><xsl:value-of select="sistemaDeAportantes/contrato/numCalleCliente"/></fo:inline>; 
en adelante también como el <fo:inline font-weight="bold">&#x201C;Aportante&#x201D;</fo:inline> se ha convenido el siguiente contrato de suscripción de cuotas, en adelante
también como el <fo:inline font-weight="bold">&#x201C;Contrato&#x201D;</fo:inline>:
		</fo:block>

		<fo:block padding-before="3mm" text-align="justify">
<fo:inline font-weight="bold" text-decoration="underline">PRIMERO:</fo:inline> BCI Administradora General de Fondos S.A., es una sociedad anónima, de objeto exclusivo,
constituida mediante escritura pública de fecha 22 de junio de 2006, otorgada en la notaría de Santiago
don Patricio Zaldívar Mackenna, repertorio número 10.258-2006. Su existencia fue autorizada por la
Superintendencia de Valores y Seguros, en adelante también como la &#x201D;Superintendencia&#x201D; por Resolución
N° 491, de fecha 19 de Octubre de 2006. Un extracto del certificado de autorización de existencia emitido
por la Superintendencia fue inscrito a fojas 43099, número 30613 en el Registro de Comercio del
Conservador de Bienes Raíces de Santiago correspondiente al año 2006 y fue publicado en el Diario
Oficial de fecha 23 de Octubre del mismo año.
		</fo:block>

		<fo:block padding-before="3mm" text-align="justify">
<fo:inline font-weight="bold" text-decoration="underline">SEGUNDO:</fo:inline> La Sociedad Administradora organizó y constituyó, de acuerdo a las disposiciones de la Ley
N° 18.815, el fondo de Inversión denominado &#x201C;Fondo de Inversión BCI Desarrollo Inmobiliario&#x201D;, en adelante
también como el &#x201C;Fondo&#x201D;, cuyo reglamento interno, en adelante también como el &#x201C;Reglamento&#x201D; fue
aprobado por la Superintendencia por Resolución Exenta Nº 515 de fecha 6 de Noviembre de 2006.
		</fo:block>

		<fo:block padding-before="3mm" text-align="justify">
La duración del Fondo será hasta el <xsl:value-of select="sistemaDeAportantes/contrato/duracionFondo"/>.
		</fo:block>

		<fo:block padding-before="3mm" text-align="justify">
<fo:inline font-weight="bold" text-decoration="underline">TERCERO:</fo:inline> El Fondo es un patrimonio integrado por aportes de personas naturales o jurídicas, que se
expresan en Cuotas de Participación, en adelante también como las &#x201C;Cuotas&#x201D;, nominativas, unitarias, de
igual valor y características, que no pueden ser rescatadas antes de la liquidación del Fondo.
		</fo:block>

		<fo:block padding-before="3mm" text-align="justify">
<fo:inline font-weight="bold" text-decoration="underline">CUARTO:</fo:inline> Por este acto, el Aportante suscribe la cantidad de <fo:inline text-decoration="underline"><xsl:value-of select="sistemaDeAportantes/contrato/cantCuotas"/></fo:inline> Cuotas del Fondo, del total de
Cuotas que se acordó emitir, suscripción que es aceptada por el representante de la Sociedad
Administradora.
		</fo:block>
		
		<fo:block padding-before="3mm" text-align="justify">
<fo:inline font-weight="bold" text-decoration="underline">QUINTO:</fo:inline> El valor del total de Cuotas del Fondo que el Aportante suscribe en este acto asciende a la
cantidad de <fo:inline text-decoration="underline"><xsl:value-of select="sistemaDeAportantes/contrato/montoPalabras"/></fo:inline>
pesos, que el aportante paga en este acto, en dinero efectivo, vale vista o cheque.
		</fo:block>

		<fo:block padding-before="3mm" text-align="justify">
<fo:inline font-weight="bold" text-decoration="underline">SEXTO:</fo:inline> El título representativo de la Cuotas que se suscriben mediante el presente instrumento, estará a
disposición del Aportante en las oficinas de la Sociedad Administradora, dentro del plazo de quince días a
contar de esta fecha. En todo caso, la calidad de aportante se adquiere desde el momento en que se hace
efectivo el aporte del inversionista.
		</fo:block>

		<fo:block padding-before="3mm" text-align="justify">
<fo:inline font-weight="bold" text-decoration="underline">SEPTIMO:</fo:inline> El Aportante declara conocer y aceptar el Reglamento del Fondo, copia del cual le ha sido
entregado previamente, obligándose a cumplir, en lo pertinente, con todas y cada una de sus
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
							Que la Sociedad Administradora está especialmente autorizada para invertir el aporte del
Aportante en aquellos valores y bienes que libremente elija, de acuerdo a la Política de Inversión
establecida en el Capítulo III del Reglamento Interno del Fondo; y
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
							Que la Sociedad Administradora tendrá derecho a cobrar una &#x201C;Comisión de Administración del
Fondo&#x201D;, la que estará compuesta por una remuneración fija y una variable, de acuerdo a lo que se
expone a continuación:
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
							A) Remuneración Fija.
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
							Se devengará al cierre de cada período mensual una remuneración mensual del 0,17255% IVA
incluido, sobre el patrimonio inicial de cada período mensual. Ésta podrá ser cobrada por la
Sociedad Administradora dentro de los cinco primeros días del período mensual siguiente.
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
							B) Remuneración Variable.
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
							La Remuneración Variable será de un 29,75% IVA incluido, y se cobrará anualmente sobre la
base de lo que se indica más adelante y en la medida que la rentabilidad real anual obtenida por el
Patrimonio Administrado del Fondo, sea superior a la tasa implícita de un BCU a cinco años + un
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
Se entenderá como tasa implícita de un BCU (Bono Banco Central en UF) a cinco años, como la
media aritmética de las dos últimas licitaciones mensuales informadas por el Banco Central de
Chile, considerando una base de trescientos sesenta y cinco días. En caso de que se dejase de
emitir este tipo de instrumentos, se considerará la media aritmética del último día de transacciones
de dicho papel a través de los remates electrónicos realizados en la Bolsa de Comercio de
santiago. Los papeles en cuestión deben tener una duración de cinco años.
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
El plazo considerado para calcular la rentabilidad real obtenida por el Patrimonio del Fondo será
de períodos anuales, por un año de calendario terminado. Para determinar la Remuneración
Variable que la Sociedad Administradora tenga derecho a cobrar, al término de cada período se
realizará la siguiente operación:
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
Se tomará el valor del patrimonio del Fondo, antes de deducir la Remuneración Variable,
que se encuentre vigente al último día calendario del período correspondiente (expresado
en Unidades de Fomento de ese día), se le agregarán el total de dividendos repartidos
con cargo al ejercicio vigente (expresados en Unidades de Fomento de la fecha acordada
para el reparto). El valor obtenido se denominará &#x201C;Valor Final&#x201D;;
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
En forma paralela a la operación realizada en la letra a) precedente, se tomará el Valor del
Patrimonio al primer día del inicio del período (expresados en Unidades de Fomento de
ese día, al que se le restarán los dividendos por repartir correspondientes al período o
ejercicio anterior (expresados en Unidades de Fomento del último día del ejercicio
anterior), obteniéndose lo que se llamará &#x201C;Valor Inicial&#x201D;;
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
Se restará del &#x201C;Valor Final&#x201D; el &#x201C;Valor Inicial&#x201D; obteniéndose lo que se llamará &#x201C;Utilidad
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
Se calculará el promedio aritmético diario del Patrimonio del Fondo, sin incluir la utilidad
diaria obtenida en el período correspondiente, obteniéndose lo que se llamará &#x201C;Valor
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
Se dividirá la &#x201C;Utilidad Obtenida&#x201D; por el &#x201C;Valor Promedio del Patrimonio del Fondo&#x201D;,
obteniéndose lo que se llamará la &#x201C;Rentabilidad Obtenida por el Fondo (ROF)&#x201D;; y
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
En la medida que la &#x201C;Rentabilidad Obtenida por el Fondo&#x201D; supere la tasa implícita de un
BCU a cinco años + 2%, se aplicará el porcentaje de 29,75% IVA incluido sobre todo el
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
							Que los siguientes gastos son y serán de cargo del Fondo:
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
							Serán de cargo del Fondo los gastos ordinarios que se señala a continuación:
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
Derechos de intermediación que cobran las Bolsas de Valores autorizadas y sus
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
Comisión de los Corredores de Bolsa y sus impuestos;
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
Comisión de corretaje e impuestos que se originen por la inversión en bienes raíces
ubicados en Chile, cuya renta provenga de su explotación como negocio inmobiliario;
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
Impuestos territoriales de los bienes raíces que posea el Fondo y cualquier otro impuesto
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
Gastos de reparación, mantención y mejoramiento de los bienes raíces del Fondo, ya sea
que tiendan a la conservación o valorización de los mismos. Se entenderán incluidos en
esta categoría, los gastos comunes correspondientes a bienes de propiedad del Fondo,
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
Gastos del Conservador de Bienes Raíces;
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
Seguros de los Bienes Raíces;
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
Honorarios referentes a informes periciales y de tasación, de abogados, ingenieros,
economistas, auditores, contadores, empresas consultoras, de auditoria y otras empresas
o personas que presten servicios especializados, cuya contratación sea necesaria pactar
para las operaciones del Fondo, ya sea para inversiones materializadas o en proceso de
negociación;
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
Gastos originados por la participación del Fondo en inversiones o licitaciones públicas o
privadas, tales como:
(a) Honorarios por asesorías legales, financieras, contables, tributarias y auditorias;
(b) Gastos por compras de bases de licitación;
(c) Copias de planos, fotocopias, encuadernaciones, traducciones, correos; y
(d) Gastos de viaje, traslados y estadías y consumo, tanto dentro del país como en el
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
Gastos por concepto de pago de intereses, comisiones o impuestos derivados de créditos
por cuenta del Fondo, así como los mismos derivados del manejo y administración de sus
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
Otros gastos directos relacionados con los bienes del Fondo y su normal explotación tales
como asesorías inmobiliarias, asesorías financieras, gastos por contratación de
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
publicaciones, arriendo de salas y equipos para su celebración, como también, todos los
gastos relacionados con la ejecución de los acuerdos de las mismas.
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
Gastos originados con motivo del funcionamiento del Comité de Vigilancia de que trata el
Capítulo XIII de este Reglamento Interno.
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
En todo caso, los gastos ordinarios solventados con recursos del Fondo no podrán exceder
anualmente del 2,5% del valor del Fondo, con la excepción de los gastos indicados en la letra ix)
anterior, los que adicionalmente podrán llegar a un máximo de un 5,0% del valor promedio del
patrimonio del Fondo. El exceso de gastos sobre estos porcentajes deberá ser de cargo de la
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
afecten a los bienes raíces con posterioridad al inicio de las operaciones del Fondo el porcentaje
del 2,5% del valor del Fondo antes señalado, podrá aumentarse en la misma proporción a la
variación que experimenten los citados tributos.
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
Serán de cargo del Fondo los gastos extraordinarios que se indican a continuación:
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
ocasión de la representación de los intereses del Fondo, incluidos aquellos de carácter
extrajudicial que tengan por objeto precaver o poner término a litigios;
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
Los gastos extraordinarios señalados en el párrafo precedente no excederán anualmente
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
También constituirán gastos extraordinarios de cargo del Fondo, los costos que implique
el cumplimiento de las resoluciones judiciales, arbitrales y administrativas, el pago de
indemnizaciones, multas y compensaciones decretadas en cualquier tipo de
procedimiento judicial, arbitral, administrativo u otro, en que se incurra con ocasión de la
representación de los intereses del Fondo y en contra de aquél, y, el cumplimiento de los
acuerdos extrajudiciales que tengan por objeto precaver o poner término a litigios, todo
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
Los gastos señalados en este literal estarán limitados al cien por ciento del valor del Fondo. En la
medida que éstos representen más de un 2,5 por ciento del valor del Fondo, para concurrir a ellos,
la Sociedad Administradora deberá previamente citar a Asamblea Extraordinaria de Aportantes
dentro de los 60 días contados desde la fecha en que tomó conocimiento del suceso que hace
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
C) Gastos de liquidación del Fondo, incluida la remuneración del liquidador.
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
En todo caso, los gastos de este literal C) deberán ser determinados y aprobados por la respectiva
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
La suma de los gastos mencionados en este número, contemplados los impuestos eventuales, los
costos de liquidación del fondo y aquellos derivados del cumplimiento de resoluciones judiciales y
similares, en su conjunto, estarán limitados al cien por ciento del valor del Fondo.
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
En el informe anual a los Aportantes se entregará una información completa de cada uno de estos
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
Que el Fondo distribuirá anualmente como dividendo en dinero efectivo un mínimo equivalente al
30% de los beneficios netos y susceptibles de ser distribuidos, percibidos durante el ejercicio, en
los términos contemplados en el artículo 31 del Reglamento de la Ley 18.815.
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
Para estos efectos, se entenderá por beneficios netos percibidos, la cantidad que resulte de restar
a la suma de utilidades, intereses, dividendos y ganancias de capital efectivamente percibidas, el
total de pérdida y gastos devengados en el período.
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
No obstante lo dispuesto en los incisos anteriores, si el Fondo tuviere pérdidas acumuladas, los
beneficios se destinarán primeramente a absorberlas, de conformidad a las normas que dicte la
Superintendencia. Por otra parte, en caso que hubiere pérdidas en un ejercicio, éstas serán
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
El reparto de beneficios deberá hacerse dentro de los 30 días siguientes de celebrada la
Asamblea Ordinaria de Aportantes que apruebe los estados financieros anuales, sin perjuicio de
que la Sociedad Administradora efectúe pagos provisorios con cargo a dichos resultados. Los
beneficios devengados que la Sociedad Administradora no hubiere pagado o puesto a disposición
de los Aportantes, dentro del plazo antes indicado, se reajustarán de acuerdo a la variación que
experimente la unidad de fomento entre la fecha en que éstos se hicieron exigibles y la de su pago
efectivo y devengará intereses corrientes para operaciones reajustables por el mismo período.
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
banco librado en caso de pago con cheque o se curse el traspaso correspondiente tratándose de
transacciones en el mercado secundario.
</fo:block>
<fo:block>
Los aportes quedaran expresados en cuotas del fondo, nominativas, unitarias, de igual valor y
características, las que no podrán rescatarse antes de la liquidación del Fondo.
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
su liquidación, serán sometidas a arbitraje. El árbitro que conozca el litigio, el cual será designado
de común acuerdo por las partes, tendrá la calidad de árbitro mixto, el que actuará como arbitrador
en el procedimiento y que deberá fallar conforme a derecho.
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
A falta de acuerdo, las partes confieren mandato especial irrevocable a la Cámara de Comercio de
Santiago A.G. para que proceda a designar al árbitro de entre los integrantes de la lista del cuerpo
arbitral del Centro de Arbitrajes de dicha cámara. Una vez aceptado y constituido el compromiso,
el arbitraje estará permanentemente abierto, de manera tal que el arbitro podrá ejercer el cargo
cuantas veces fuera necesario y tendrá en cada caso un término de seis meses para cumplir su
cometido. El árbitro estará siempre facultado, a falta de acuerdo entre las partes sobre el
procedimiento, para fijarlo con entera libertad, incluso en lo concerniente al sistema de
notificaciones, pero la primera de ellas deberá siempre efectuarse en conformidad a las reglas del
título VI del Libro Primero del Código de Procedimiento Civil. El arbitraje tendrá lugar en la ciudad
de Santiago.
						</fo:block>
						</fo:table-cell>
					</fo:table-row>
				</fo:table-body>
			</fo:table>

		</fo:block>
		
		<fo:block padding-before="3mm" text-align="justify">
<fo:inline font-weight="bold" text-decoration="underline">OCTAVO:</fo:inline> La personería de los representantes de BCI ADMINISTRADORA GENERAL DE FONDOS S.A.
para comparecer en su representación consta de escritura pública de fecha 30 de Noviembre de 2006 en
la décimo octava notaría de Santiago de don Patricio Zaldívar Mackenna.
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
						Teléfono
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