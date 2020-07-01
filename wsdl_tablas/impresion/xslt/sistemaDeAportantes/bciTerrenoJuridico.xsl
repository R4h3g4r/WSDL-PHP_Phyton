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
		<fo:block font-size="14pt" text-align="center" font-weight="bold" text-decoration="underline">
		FONDO DE INVERSI�N <xsl:value-of select="sistemaDeAportantes/contrato/fondo"/>
		</fo:block>
		<fo:block font-size="10pt" text-align="center" font-weight="bold">
		( PERSONA JURID�CA )
		</fo:block>		
	</xsl:template>


	<xsl:template name="cuerpo">		
	<fo:block text-align="justify">
		En Santiago de Chile, a <fo:inline text-decoration="underline"><xsl:value-of select="sistemaDeAportantes/contrato/fecha"/></fo:inline>, entre &#x201C;BCI Administradora General de
Fondos S.A.&#x201D; Rol �nico Tributario N� <xsl:value-of select="sistemaDeAportantes/contrato/rutFilial"/>, representada por don <xsl:value-of select="sistemaDeAportantes/contrato/nombreRep"/>, c�dula nacional de identidad n�mero <xsl:value-of select="sistemaDeAportantes/contrato/rutRep"/>, nacionalidad
<xsl:value-of select="sistemaDeAportantes/contrato/nacionalidadRep"/>, de profesi�n <xsl:value-of select="sistemaDeAportantes/contrato/profesionRep"/>, en adelante tambi�n como la
<fo:inline font-weight="bold">&#x201C;<xsl:value-of select="sistemaDeAportantes/contrato/nombreCortoFilial"/>&#x201D;</fo:inline>, en representaci�n de <fo:inline font-weight="bold">&#x201C;<xsl:value-of select="sistemaDeAportantes/contrato/fondo"/>&#x201C;</fo:inline> 
ambos con domicilio en <xsl:value-of select="sistemaDeAportantes/contrato/ciudadRep"/>, <xsl:value-of select="sistemaDeAportantes/contrato/direccionRep"/>, <xsl:value-of select="sistemaDeAportantes/contrato/comunaRep"/>, por una parte, y, por la otra, la sociedad
<fo:inline text-decoration="underline"><xsl:value-of select="sistemaDeAportantes/contrato/nombreCliente"/></fo:inline>,
Rol �nico Tributario n�mero <fo:inline text-decoration="underline"><xsl:value-of select="sistemaDeAportantes/contrato/rutCliente"/></fo:inline>, representada por don/do�a <fo:inline text-decoration="underline"><xsl:value-of select="sistemaDeAportantes/contrato/nombreApoderado"/></fo:inline>, nacionalidad <fo:inline text-decoration="underline"><xsl:value-of select="sistemaDeAportantes/contrato/nacionalidadApoderado"/></fo:inline>, 
estado civil <fo:inline text-decoration="underline"><xsl:value-of select="sistemaDeAportantes/contrato/estadoCivilApoderado"/></fo:inline>, profesi�n u oficio <fo:inline text-decoration="underline"><xsl:value-of select="sistemaDeAportantes/contrato/profesionApoderado"/></fo:inline>, 
c�dula nacional de identidad n�mero <fo:inline text-decoration="underline"><xsl:value-of select="sistemaDeAportantes/contrato/rutApoderado"/></fo:inline>, con domicilio para estos efectos en la ciudad de <fo:inline text-decoration="underline"><xsl:value-of select="sistemaDeAportantes/contrato/ciudadApoderado"/></fo:inline>, 
comuna de <fo:inline text-decoration="underline"><xsl:value-of select="sistemaDeAportantes/contrato/comunaApoderado"/></fo:inline>, 
calle <fo:inline text-decoration="underline"><xsl:value-of select="sistemaDeAportantes/contrato/calleApoderado"/></fo:inline>, 
n�mero <fo:inline text-decoration="underline"><xsl:value-of select="sistemaDeAportantes/contrato/numCalleApoderado"/></fo:inline>; 
en adelante tambi�n como el <fo:inline font-weight="bold">&#x201C;Aportante&#x201D;</fo:inline> se ha convenido el siguiente contrato de suscripci�n de cuotas, en adelante
tambi�n como el <fo:inline font-weight="bold">&#x201C;Contrato&#x201D;</fo:inline>:
</fo:block>

		<fo:block padding-before="3mm" text-align="justify">
<fo:inline font-weight="bold" text-decoration="underline">PRIMERO:</fo:inline> La Administradora se constituy� por escritura 
p�blica otorgada en la Notar�a de Santiago de don Patricio Zald�var Mackenna con fecha 22 de junio de 2006, repertorio n�mero 
10.258-2006. Por resoluci�n N� 491 de fecha 19 de Octubre de 2006, la Superintendencia de Valores y Seguros, autoriz� la 
existencia de la sociedad. El extracto contenido en dicha resoluci�n de autorizaci�n de existencia fue inscrito en el Registro 
de Comercio del Conservador de Bienes Ra�ces de Santiago a fojas 43.099 N� 30.613 y fue publicado en el Diario Oficial de 
fecha 28 de Octubre de 2006 Oficial de fecha 23 de Octubre del mismo a�o.
		</fo:block>

		<fo:block padding-before="3mm" text-align="justify">
<fo:inline font-weight="bold" text-decoration="underline">SEGUNDO:</fo:inline> La Administradora organiz� y constituy�, de acuerdo 
a las disposiciones del T�tulo VII de la Ley N� 18.815, el fondo de inversi�n privado denominado
 &#x201C;BCI Terrenos Fondo de Inversi�n Privado&#x201D;, en adelante
tambi�n como el <fo:inline font-weight="bold">&#x201C;Fondo&#x201D;</fo:inline>, cuyo reglamento interno se protocoliz� en 
la Notar�a de Santiago de don Ra�l Undurraga Laso con fecha 9 de Marzo del a�o 2009.
		</fo:block>		
		
		<fo:block padding-before="3mm" text-align="justify">
<fo:inline font-weight="bold" text-decoration="underline">TERCERO:</fo:inline> El plazo de duraci�n del Fondo ser� de 
3 a�os contados desde la fecha de protocolizaci�n Reglamento Interno del Fondo. Dicho plazo podr� ser prorrogado 
por acuerdo adoptado por dos tercios de las cuotas suscritas y pagadas del Fondo reunidas en Asamblea Extraordinaria de Aportantes.
		</fo:block>

		<fo:block padding-before="3mm" text-align="justify">
<fo:inline font-weight="bold" text-decoration="underline">CUARTO:</fo:inline> El Fondo es un patrimonio integrado por aportes de personas naturales o jur�dicas, que se
expresan en Cuotas de Participaci�n, (las <fo:inline font-weight="bold">&#x201C;Cuotas&#x201D;</fo:inline>), todas las cuales 
ser�n nominativas, unitarias, de igual valor y no podr�n ser rescatadas antes de la liquidaci�n del Fondo.
		</fo:block>

		<fo:block padding-before="3mm" text-align="justify">
<fo:inline font-weight="bold" text-decoration="underline">QUINTO:</fo:inline> El directorio de la Administradora, en sesi�n de fecha 
9 de Marzo de 2009, acord� emitir 500.000 Cuotas, a un precio de colocaci�n de 1 Unidad de Fomento cada una de ellas, 
a fin de ser colocadas directamente por la Administradora en las condiciones fijadas por el directorio
		</fo:block>

		<fo:block padding-before="3mm" text-align="justify">
<fo:inline font-weight="bold" text-decoration="underline">SEXTO:</fo:inline> Por el presente instrumento, el Aportante, debidamente representado en la forma que se indica en la comparecencia, suscribe 
<fo:inline text-decoration="underline"><xsl:value-of select="sistemaDeAportantes/contrato/cantCuotas"/></fo:inline> Cuotas del Fondo, suscripci�n que aceptan en este mismo acto los representantes de la 
Administradora para BCI Terrenos Fondo de Inversi�n Privado.
		</fo:block>
		
		<fo:block padding-before="3mm" text-align="justify">
<fo:inline font-weight="bold" text-decoration="underline">SEPTIMO:</fo:inline> El valor del total de Cuotas del Fondo que el Aportante suscribe en este acto asciende a la cantidad de 
<fo:inline text-decoration="underline"><xsl:value-of select="sistemaDeAportantes/contrato/montoPalabras"/></fo:inline> 
Unidades de Fomento, que el Aportante paga en este acto, en dinero efectivo o vale vista bancario.
		</fo:block>

		<fo:block padding-before="3mm" text-align="justify">
<fo:inline font-weight="bold" text-decoration="underline">OCTAVO:</fo:inline> El t�tulo representativo 
de las Cuotas que se suscriben mediante el presente instrumento, estar� a disposici�n del Aportante en las 
oficinas de la Sociedad Administradora, dentro del plazo de quince d�as a contar de esta fecha. En todo caso, la 
calidad de aportante se adquiere desde el momento en que se hace efectivo el aporte del inversionista.
		</fo:block>

		<fo:block padding-before="3mm" text-align="justify">
<fo:inline font-weight="bold" text-decoration="underline">NOVENO:</fo:inline> El Aportante declara conocer y aceptar:
		</fo:block>
		
		<fo:block padding-before="3mm" text-align="justify">
			<fo:table table-layout="fixed">
				<fo:table-column column-width="2cm"/>
				<fo:table-column column-width="17cm"/>
				<fo:table-body>
					<fo:table-row>								
						<fo:table-cell>
						<fo:block>
							(a)
							</fo:block>
						</fo:table-cell>
						<fo:table-cell>
						<fo:block>
							Que las Cuotas del Fondo no son instrumentos de oferta p�blica;
						</fo:block>
						</fo:table-cell>
					</fo:table-row>
				</fo:table-body>
				<fo:table-body>
					<fo:table-row>								
						<fo:table-cell>
						<fo:block>
							(b)
							</fo:block>
						</fo:table-cell>
						<fo:table-cell>
						<fo:block>
							Que el Fondo no se encuentra sujeto a la fiscalizaci�n de la Superintendencia de Valores y Seguros;
						</fo:block>
						</fo:table-cell>
					</fo:table-row>
				</fo:table-body>
				<fo:table-body>
					<fo:table-row>								
						<fo:table-cell>
						<fo:block>
							(c)
							</fo:block>
						</fo:table-cell>
						<fo:table-cell>
						<fo:block>
							Que conoce y ha dado �ntegra lectura al Reglamento Interno del Fondo, copia del cual le ha sido entregada en este acto.
						</fo:block>
						</fo:table-cell>
					</fo:table-row>
				</fo:table-body>
			</fo:table>
</fo:block>		
		
		<fo:block padding-before="3mm" text-align="justify">
<fo:inline font-weight="bold" text-decoration="underline">DECIMO:</fo:inline> Para todos los efectos derivados del presente contrato, 
las partes fijan su domicilio en la ciudad de Santiago. 
		</fo:block>
		
		<fo:block padding-before="3mm" text-align="justify">
<fo:inline font-weight="bold" text-decoration="underline">DECIMO PRIMERO:</fo:inline> Cualquier duda o dificultad que surja 
entre los Aportantes en su calidad de tales, o entre �stos y la Administradora o sus administradores, sea durante la vigencia 
del Fondo o durante su liquidaci�n, se resolver� mediante arbitraje, conforme al Reglamento Procesal del Centro de Arbitrajes 
de la C�mara de Comercio de Santiago A.G., cuyas disposiciones constan en la escritura p�blica de fecha 10 de diciembre de 1992, 
otorgada en la Notar�a de Santiago de don Sergio Rodr�guez Garc�s, las cuales forman parte integrante de este art�culo.
		</fo:block>
		
		<fo:block padding-before="3mm" text-align="justify">
Las partes confieren mandato especial irrevocable a la C�mara de Comercio de Santiago A.G. para que, a solicitud escrita 
de cualquiera de los Aportantes o de la Administradora, designe el �rbitro arbitrador de entre los integrantes del cuerpo 
arbitral del Centro de Arbitrajes de esa C�mara. En contra de las resoluciones del arbitrador no proceder� recurso alguno, 
por lo cual las partes renuncian expresamente a ellos. El �rbitro queda especialmente facultado para resolver todo asunto 
relacionado con su competencia y jurisdicci�n. En el evento que el Centro de Arbitrajes de la C�mara de Comercio de Santiago 
deje de funcionar o no exista a la �poca en que deba designarse al �rbitro, �ste ser� designado, en calidad de �rbitro mixto 
por la justicia Ordinaria, debiendo recaer el nombramiento en un abogado que sea o haya sido decano o director de la Facultad 
de Ciencias Jur�dicas y Sociales de la Universidad de Chile o Universidad Cat�lica de Chile, ambas de Santiago, o profesor titular, 
ordinario o extraordinario, de derecho civil, comercial o procesal, que haya desempe�ado dichos cargos o c�tedras en las referidas 
universidades, a lo menos, durante cinco a�os. El Arbitraje tendr� lugar en Santiago de Chile.</fo:block>
	
	<fo:block padding-before="3mm" text-align="justify" break-before="page">
<fo:inline font-weight="bold" text-decoration="underline">DECIMO SEGUNDO:</fo:inline> El presente contrato se otorga en dos 
ejemplares de un mismo tenor y fecha, quedando uno en poder de la Administradora y uno en poder del Aportante.
	</fo:block>
</xsl:template>

	<xsl:template name="textoFinal">
		<fo:block padding-before="1cm" text-align="justify">
p.p. <fo:inline font-weight="bold">BCI Administradora General de Fondos S.A.</fo:inline>
		</fo:block>
		
		<fo:block padding-before="0.5cm" text-align="left">

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
		
		<fo:block padding-before="1cm" text-align="justify">
p.p. <fo:inline font-weight="bold" text-decoration="underline"><xsl:value-of select="sistemaDeAportantes/contrato/nombreCliente"/></fo:inline>
</fo:block>
		
		<fo:block padding-before="5mm" text-align="left">
<fo:table table-layout="fixed">
				<fo:table-column column-width="2cm"/>
				<fo:table-column column-width="8.5cm"/>
				<fo:table-column column-width="2cm"/>
				<fo:table-column column-width="8.5cm"/>
				<fo:table-body>					
					<fo:table-row>								
						<fo:table-cell>
							<fo:block text-align="left" padding-before="5mm">
							Nombre
							</fo:block>
						</fo:table-cell>
						<fo:table-cell>
							<fo:block text-align="left" padding-before="5mm">
							: <fo:inline text-decoration="underline"><xsl:value-of select="sistemaDeAportantes/contrato/nombreApoderado"/></fo:inline>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell>
							<fo:block text-align="left" padding-before="5mm">
							Nombre
							</fo:block>
						</fo:table-cell>
						<fo:table-cell>							 
							<fo:block text-align="left" padding-before="5mm">
							: <fo:inline text-decoration="underline"><xsl:value-of select="sistemaDeAportantes/contrato/nombreApoderado2"/></fo:inline>
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
							: <fo:inline text-decoration="underline"><xsl:value-of select="sistemaDeAportantes/contrato/calleApoderado"/> - <xsl:value-of select="sistemaDeAportantes/contrato/numCalleCliente"/></fo:inline>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell>
						<fo:block text-align="left" padding-before="5mm">
							Domicilio
							</fo:block>
						</fo:table-cell>
						<fo:table-cell>
							<fo:block text-align="left" padding-before="5mm">
							: <fo:inline text-decoration="underline"><xsl:value-of select="sistemaDeAportantes/contrato/calleApoderado2"/> - <xsl:value-of select="sistemaDeAportantes/contrato/numCalleCliente"/></fo:inline>
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
							: <fo:inline text-decoration="underline"><xsl:value-of select="sistemaDeAportantes/contrato/comunaApoderado"/></fo:inline>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell>
						<fo:block padding-before="5mm">
							Comuna
							</fo:block>
						</fo:table-cell>
						<fo:table-cell>
							<fo:block text-align="left" padding-before="5mm">
							: <fo:inline text-decoration="underline"><xsl:value-of select="sistemaDeAportantes/contrato/comunaApoderado2"/></fo:inline>
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
							: <fo:inline text-decoration="underline"><xsl:value-of select="sistemaDeAportantes/contrato/ciudadApoderado"/></fo:inline>
							</fo:block>
						</fo:table-cell>						
						<fo:table-cell>
						<fo:block padding-before="5mm">
							Ciudad
							</fo:block>
						</fo:table-cell>
						<fo:table-cell>
							<fo:block text-align="left" padding-before="5mm">
							: <fo:inline text-decoration="underline"><xsl:value-of select="sistemaDeAportantes/contrato/ciudadApoderado2"/></fo:inline>
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
							: <fo:inline text-decoration="underline"><xsl:value-of select="sistemaDeAportantes/contrato/fonoApoderado"/></fo:inline>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell>
						<fo:block padding-before="5mm">
							Tel�fono
							</fo:block>
						</fo:table-cell>
						<fo:table-cell>
							<fo:block text-align="left" padding-before="5mm">
							: <fo:inline text-decoration="underline"><xsl:value-of select="sistemaDeAportantes/contrato/fonoApoderado2"/></fo:inline>
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
							: <fo:inline text-decoration="underline"><xsl:value-of select="sistemaDeAportantes/contrato/rutApoderado"/></fo:inline>
							</fo:block>
						</fo:table-cell>						
						<fo:table-cell>
						<fo:block padding-before="5mm">
							Rut
							</fo:block>
						</fo:table-cell>
						<fo:table-cell>
							<fo:block text-align="left" padding-before="5mm">
							: <fo:inline text-decoration="underline"><xsl:value-of select="sistemaDeAportantes/contrato/rutApoderado2"/></fo:inline>
							</fo:block>
						</fo:table-cell>				
					</fo:table-row>					
				</fo:table-body>
			</fo:table>
</fo:block>
		
		<fo:block padding-before="1cm" text-align="center">
		<fo:table table-layout="fixed">
				<fo:table-column column-width="10cm"/>
				<fo:table-column column-width="10cm"/>
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