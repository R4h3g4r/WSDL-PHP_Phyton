<?xml version="1.0" encoding="ISO-8859-1"?>
 <xsl:stylesheet version="1.0" 
 xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
 xmlns:fo="http://www.w3.org/1999/XSL/Format">

	<xsl:variable name="fo:layout-master-set">	
		<fo:layout-master-set>
			<fo:simple-page-master master-name="default-page" page-height="34cm" page-width="21.59cm" margin-left="3mm" margin-right="3mm">
				<fo:region-body />
			</fo:simple-page-master>
		</fo:layout-master-set>		
	</xsl:variable>
	<xsl:output version="1.0" encoding="ISO-8859-1" indent="no" omit-xml-declaration="no" media-type="text/html" />
	<xsl:template match="/">
		<fo:root>
			<xsl:copy-of select="$fo:layout-master-set"/>
					
		<fo:page-sequence master-reference="default-page" initial-page-number="1" format="1">
			<fo:flow flow-name="xsl-region-body">
				<fo:block font-family="Helvetica" font-size="12pt">												
					<fo:table border-collapse="collapse">
						<fo:table-column column-width="20mm" />
						<fo:table-column column-width="35mm" />
						<fo:table-column column-width="100mm" />
						<fo:table-column column-width="55mm" />
							<fo:table-body>
								<fo:table-row >
									<fo:table-cell >									
										<fo:block font-family="Helvetica" line-height="12pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always">
											<fo:external-graphic>
												<xsl:attribute name="src">
													<xsl:value-of select="/dps/rutaImagenes"/>
													<xsl:value-of select="/datos-impresiones-dPSTO/ruta-imagenes"/>logobci.jpg
												</xsl:attribute>
											</fo:external-graphic>						
										</fo:block>										
									</fo:table-cell>
									<fo:table-cell>
										<fo:block space-after="0.5cm"/>
										<fo:block font-family="Helvetica" font-size="12pt" text-align="center" vertical-align="middle" font-weight="bold">
										</fo:block>
									</fo:table-cell>
									<fo:table-cell color="#BBBBBB" >
										<fo:block space-after="0.5cm"/>
										<fo:block font-family="Helvetica" font-size="12pt" text-align="center" vertical-align="middle" font-weight="bold">
											DECLARACI�N PERSONAL DE SALUD
										</fo:block>
									</fo:table-cell>
									<fo:table-cell border-bottom="0pt">
										<fo:block font-family="Helvetica" font-size="12pt" text-align="right" vertical-align="middle" font-weight="normal"/>
									</fo:table-cell>
								</fo:table-row>
								<fo:table-row >
									<fo:table-cell border-bottom="0pt">
										<fo:block font-family="Helvetica" font-size="12pt" text-align="right" vertical-align="middle" font-weight="normal"/>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block space-after="0.5cm"/>
										<fo:block font-family="Helvetica" font-size="12pt" text-align="center" vertical-align="middle" font-weight="bold">
										</fo:block>
									</fo:table-cell>
									<fo:table-cell border-bottom="0pt">
										<fo:block font-family="Helvetica" font-size="12pt" text-align="right" vertical-align="middle" font-weight="normal"/>
									</fo:table-cell>
									<fo:table-cell  color="#BBBBBB" >
										<fo:block space-after="0.5cm"/>
										<fo:block font-family="Helvetica" font-size="12pt" text-align="center" vertical-align="middle" font-weight="bold">
											N� DPS <fo:inline text-decoration="underline">  <xsl:value-of select="/dps/numeroDPS"/><xsl:value-of select="/datos-impresiones-dPSTO/numero-dPS"/></fo:inline>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
						</fo:table-body>
					</fo:table>
				</fo:block>	
				<fo:block font-family="Helvetica" font-size="12pt">	
					<fo:table border = "solid">
					<fo:table-column column-width="210mm"/>
						<fo:table-body>
							<fo:table-row>
								<fo:table-cell border-style="solid" background-color="#BBBBBB">
									<fo:block font-family="Helvetica" line-height="12pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always">
										<fo:inline  font-weight="bold">
											DATOS ASEGURADO
										</fo:inline>
									</fo:block>
								</fo:table-cell>
							</fo:table-row>
							<fo:table-row>
								<fo:table-cell >
									<fo:block font-family="Helvetica" line-height="12pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always">
										Nombre:__________________________________________________ 
										&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;
										RUT:___________________
									</fo:block>
								</fo:table-cell>
							</fo:table-row>
							<fo:table-row>
								<fo:table-cell>
									<fo:block font-family="Helvetica" line-height="12pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always">
										Domicilio:______________________________
										Comuna:___________________
										Ciudad:______________
									</fo:block>
								</fo:table-cell>
							</fo:table-row>
							<fo:table-row>
								<fo:table-cell >
									<fo:block font-family="Helvetica" line-height="12pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always">
										Estado Civil: Soltero _______   Casado_______           
										&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;
										Tipo Deudor:       Deudor_______      Codeudor_______
									</fo:block>
								</fo:table-cell>
							</fo:table-row>
							<fo:table-row>
								<fo:table-cell border-style="solid" background-color="#BBBBBB">
									<fo:block font-family="Helvetica" line-height="12pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always">
										<fo:inline  font-weight="bold">
											DATOS ENTIDAD CONTRATANTE
										</fo:inline>
									</fo:block>
								</fo:table-cell>
							</fo:table-row>
							<fo:table-row>
								<fo:table-cell >
									<fo:block font-family="Helvetica" line-height="12pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always">
										Entidad Contratante : Banco de Cr�dito e Inversiones
										&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;
										RUT : 97.006.000-6
									</fo:block>
								</fo:table-cell>
							</fo:table-row>
							<fo:table-row>
								<fo:table-cell border-style="solid" background-color="#BBBBBB">
									<fo:block font-family="Helvetica" line-height="12pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always">
										<fo:inline  font-weight="bold">
											DATOS DEL CREDITO
										</fo:inline>
									</fo:block>
								</fo:table-cell>
							</fo:table-row>
							<fo:table-row>
								<fo:table-cell >
									<fo:block font-family="Helvetica" line-height="12pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always">
										Tipo de cr�dito : Hipotecario    
										Plazo : ____(En a�os)
										Monto de Cr�dito : _____en UF o en $ 
									</fo:block>
								</fo:table-cell>
							</fo:table-row>
							<fo:table-row>
								<fo:table-cell border-style="solid" background-color="#BBBBBB">
									<fo:block font-family="Helvetica" font-size="12pt"  text-align="center"  padding-top="2pt" padding-left="1pt">
										<fo:inline  font-weight="bold">
											CUESTIONARIO DECLARACION PERSONAL DE SALUD
										</fo:inline>
									</fo:block>
								</fo:table-cell>
							</fo:table-row>

							<fo:table-row>
								<fo:table-cell >
									<fo:block font-family="Helvetica" line-height="12pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always">
										<fo:inline font-weight="bold">  
											Peso
										</fo:inline>
										_____________ kgs 
										<fo:inline font-weight="bold">  
											/ Estatura 
										</fo:inline>
										____________cms 
										<fo:inline font-weight="bold">  
											/ Fecha de nacimiento 
										</fo:inline>
										( __/__/_____). 											
									</fo:block>
								</fo:table-cell>
							</fo:table-row>
							
							<fo:table-row>
								<fo:table-cell >
									<fo:block font-family="Helvetica" line-height="12pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always" text-align="justify">
										<fo:inline>
											�Ha padecido, se ha diagnosticado, o tiene conocimiento de sufrir alguna de las siguientes enfermedades: Diabetes, enfermedades al ri��n, enfermedades de los huesos o m�sculos, enfermedades cardiacas, bypass coronario, hipertensi�n arterial, enfermedades coronarias, soplos cardiacos, arritmias, infarto agudo al miocardio, sobrepeso u obesidad con o sin cirug�a (cualquier t�cnica),  enfermedades del sistema nervioso, c�ncer, hepatitis (excepto tipo A), enfermedades gastrointestinales como cirrosis hep�tica, ulceras g�stricas, colitis ulcerosa, enfermedades hematol�gicas como leucemia, linfoma o anemia (excepto la falta de fierro), desordenes nerviosos o mentales, sida HIV positivo, enfermedades neurol�gicas como accidente vascular cerebral, epilepsia, enfermedad de alzheimer, alcoholismo o drogadicci�n?
										</fo:inline>
									</fo:block>
								</fo:table-cell>
							</fo:table-row>
							
							<fo:table-row>
								<fo:table-cell >
									<fo:block font-family="Helvetica" line-height="12pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always">
										Responda: SI/NO _____   
										Si respuesta es afirmativa especifique:________________________________________
									</fo:block>
								</fo:table-cell>
							</fo:table-row>
							<fo:table-row>
								<fo:table-cell >
									<fo:block font-family="Helvetica" line-height="12pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always" text-align="justify">
										�Ha padecido, se le ha diagnosticado, o tiene conocimiento de sufrir alguna enfermedad no mencionada en la pregunta anterior?
									</fo:block>
								</fo:table-cell>
							</fo:table-row>
							<fo:table-row>
								<fo:table-cell >
									<fo:block font-family="Helvetica" line-height="12pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always">
										Responda: SI/NO _____ Si respuesta es afirmativa especifique:____________________________
									</fo:block>
								</fo:table-cell>
							</fo:table-row>
							<fo:table-row>
								<fo:table-cell >
									<fo:block font-family="Helvetica" line-height="12pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always">
										�Ha estado bajo alg�n tratamiento m�dico en los �ltimos 5 a�os?
									</fo:block>
								</fo:table-cell>
							</fo:table-row>
							<fo:table-row>
								<fo:table-cell >
									<fo:block font-family="Helvetica" line-height="12pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always">
										Responda: SI/NO _____ Si respuesta es afirmativa especifique:____________________________
									</fo:block>
								</fo:table-cell>
							</fo:table-row>
							<fo:table-row>
								<fo:table-cell >
									<fo:block font-family="Helvetica" line-height="12pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always">
										�Ingiere alg�n tipo de medicamento en forma habitual?
									</fo:block>
								</fo:table-cell>
							</fo:table-row>
							<fo:table-row>
								<fo:table-cell >
									<fo:block font-family="Helvetica" line-height="12pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always">
										Responda: SI/NO _____ Si respuesta es afirmativa especifique:____________________________
									</fo:block>
								</fo:table-cell>
							</fo:table-row>
						</fo:table-body>
					</fo:table>
				</fo:block>
				
				<fo:block font-family="Helvetica" font-size="12pt">	
					<fo:table border = "solid">
					<fo:table-column column-width="210mm"/>
						<fo:table-body>
							<fo:table-row>
								<fo:table-cell border-style="solid" background-color="#BBBBBB">
									<fo:block font-family="Helvetica" font-size="12pt"  text-align="center"  padding-top="2pt" padding-left="1pt">
										<fo:inline  font-weight="bold">
											DECLARACION DE DEPORTES Y ACTIVIDADES
										</fo:inline>
									</fo:block>
								</fo:table-cell>
							</fo:table-row>
							<fo:table-row>
								<fo:table-cell >
									<fo:block font-family="Helvetica" line-height="12pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always" text-align="justify">
										�Practica alguno de los siguientes deportes o actividades aunque los practiques en forma ocasional y/o espor�dica: inmersiones subacu�ticas, alas delta, paracaidismo, bengi, monta�ismo, boxeo, carreras de velocidad (auto, moto, embarcaciones acu�ticas, bicicleta, ski de nieve); esqui en helic�ptero, carrera de caballo, rodeo, bombero, piloto o pasajero en aviaci�n comercial en vuelos no regulares o de itinerarios no establecido.?
									</fo:block>
								</fo:table-cell>
							</fo:table-row>
							<fo:table-row>
								<fo:table-cell >
									<fo:block font-family="Helvetica" line-height="12pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always">
										Responda : SI/NO _____
										Si respuesta es afirmativa especifique:____________________________
									</fo:block>
								</fo:table-cell>
							</fo:table-row>
							<fo:table-row>
								<fo:table-cell >
									<fo:block font-family="Helvetica" line-height="12pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always">
										�Hace uso de motocicletas ?
									</fo:block>
								</fo:table-cell>
							</fo:table-row>
							<fo:table-row>
								<fo:table-cell >
									<fo:block font-family="Helvetica" line-height="12pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always">
										Responda : SI/NO _____ Si respuesta es afirmativa indique cilindrada:________________ 
									</fo:block>
								</fo:table-cell>
							</fo:table-row>
						</fo:table-body>
					</fo:table>
				</fo:block>
				
				<fo:block font-family="Helvetica" font-size="12pt">	
					<fo:table border = "solid">
					<fo:table-column column-width="210mm"/>
						<fo:table-body>
							<fo:table-row>
								<fo:table-cell border-style="solid" background-color="#BBBBBB">
									<fo:block font-family="Helvetica" font-size="12pt"  text-align="center"  padding-top="2pt" padding-left="1pt">
										<fo:inline  font-weight="bold">
											DECLARACI�N DE OCUPACI�N
										</fo:inline>
									</fo:block>
								</fo:table-cell>
							</fo:table-row>
							<fo:table-row>
								<fo:table-cell >
									<fo:block font-family="Helvetica" line-height="12pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always">
										�Profesi�n o actividad? _____________________________________________
									</fo:block>
								</fo:table-cell>
							</fo:table-row>
							<fo:table-row>
								<fo:table-cell >
									<fo:block font-family="Helvetica" line-height="12pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always">
										�Cargo que ocupa ? _____________________________________________
									</fo:block>
								</fo:table-cell>
							</fo:table-row>
							<fo:table-row>
								<fo:table-cell >
									<fo:block font-family="Helvetica" line-height="12pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always" text-align="justify">
										� En su actividad usted tiene que: levantar o mover objetos de gran peso, realizar trabajos bajo tierra o a gran altura, manejar sustancias: corrosivas, toxicas, �cidos, pesticidas, petr�leos; entrar en contacto con sustancias radioactivas o equipos con elementos radioactivos, trabajar con o en proximidad a materiales explosivos, realizar trabajos con elementos de mediana o alta tensi�n, manejar maquinaria o implementos de corte en general, portar armas, realizar faenas de pesca en alta mar, extinguir incendios, transportar caudales o sumas importantes de dinero, realizar viajes al extranjero a zonas en conflicto, utilizar (como piloto o pasajero ) aviones o helic�pteros privados o en vuelo no regulares o de itinerario no establecido?
									</fo:block>
								</fo:table-cell>
							</fo:table-row>
							<fo:table-row>
								<fo:table-cell >
									<fo:block font-family="Helvetica" line-height="12pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always">
										Responda : SI/NO ______ Si respuesta es afirmativa especifique:____________________________
									</fo:block>
								</fo:table-cell>
							</fo:table-row>
						</fo:table-body>
					</fo:table>
				</fo:block>
				
				<fo:block font-family="Helvetica" font-size="12pt">	
					<fo:table >
					<fo:table-column column-width="210mm"/>
						<fo:table-body>
							<fo:table-row>
								<fo:table-cell >
									<fo:block font-family="Helvetica" line-height="12pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always" text-align="justify">
										Confirmo la exactitud y sinceridad de las declaraciones arriba expresadas, que nada he ocultado, omitido o alterado y me doy por enterado que dichas declaraciones constituyen los elementos indispensables para la apreciaci�n del riesgo por parte de la Compa��a, y que una declaraci�n falsa, err�nea o reticente de mi parte libera a la compa��a del pago del seguro, todo ello de acuerdo a lo dispuesto en el c�digo de comercio.
									</fo:block>
								</fo:table-cell>
							</fo:table-row>
							<fo:table-row>
								<fo:table-cell >
									<fo:block font-family="Helvetica" line-height="12pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always">
										&#0160;
									</fo:block>
								</fo:table-cell>
							</fo:table-row>
							<fo:table-row>
								<fo:table-cell >
									<fo:block font-family="Helvetica" line-height="12pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always" text-align="justify">
										Asimismo, autorizo a  <xsl:value-of select="/dps/nombreComp"/><xsl:value-of select="/datos-impresiones-dPSTO/nombre-comp"/> a solicitar, a cualquier m�dico, instituci�n de salud p�blica y/o privada, tribunales de justicia y a cualquier otra persona natural o jur�dica, p�blica o privada que cuente con antecedentes relativos a mi salud f�sica y ps�quica a entregar dicha informaci�n o antecedente a la Compa��a cuando �sta as� lo solicite, para lo cual otorgo mi expreso consentimiento, conforme lo dispone la Ley 19.628 y el art�culo 127 del C�digo Sanitario, autorizaci�n que otorgo incluso para tener efecto despu�s de mi muerte, en los t�rminos del art�culo 2169 del C�digo Civil.
									</fo:block>
								</fo:table-cell>
							</fo:table-row>
							<fo:table-row>
								<fo:table-cell >
									<fo:block font-family="Helvetica" line-height="12pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always">
										&#0160;
									</fo:block>
								</fo:table-cell>
							</fo:table-row>
							<fo:table-row>
								<fo:table-cell >
									<fo:block font-family="Helvetica" line-height="12pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always" text-align="justify">
										Declaro recibir en este acto un duplicado del documento individualizado.
									</fo:block>
								</fo:table-cell>
							</fo:table-row>
						</fo:table-body>
					</fo:table>
				</fo:block>
				<fo:block font-family="Helvetica" space-before="1.3cm" space-after="0.5cm" font-size="11pt">
					<fo:table table-layout="center">
						<fo:table-column column-width="6cm"/>
						<fo:table-column column-width="6cm"/>
						<fo:table-column column-width="8cm"/>
						<fo:table-body>
							<fo:table-row>
								<fo:table-cell>
									<fo:block font-family="Helvetica" text-align="center" >____________________</fo:block>
								</fo:table-cell>
								<fo:table-cell>
									<fo:block font-family="Helvetica" text-align="center" >____________________</fo:block>
								</fo:table-cell>
								<fo:table-cell>
									<fo:block font-family="Helvetica" text-align="center">______________________________</fo:block>
								</fo:table-cell>
							</fo:table-row>
							<fo:table-row height="2cm">
								<fo:table-cell>
									<fo:block font-family="Helvetica" text-align="center" >Fecha </fo:block>
								</fo:table-cell>
								<fo:table-cell>
									<fo:block font-family="Helvetica" text-align="center" >Firma Asegurado</fo:block>
								</fo:table-cell>
								<fo:table-cell>
									<fo:block font-family="Helvetica" text-align="center">Nombre Completo del Asegurado</fo:block>
								</fo:table-cell>
							</fo:table-row>								
							<fo:table-row >
								<fo:table-cell> 
									<fo:block font-family="Helvetica" text-align="center">&#0160;</fo:block>
								</fo:table-cell>
								<fo:table-cell>
									<fo:block font-family="Helvetica" text-align="center" >&#0160;</fo:block>
								</fo:table-cell>
								<fo:table-cell> 
									<fo:block font-family="Helvetica" text-align="center">RUT: ________________</fo:block>
								</fo:table-cell>
							</fo:table-row>																		
						</fo:table-body>
					</fo:table>
				</fo:block>
			</fo:flow>
		</fo:page-sequence>	 

	</fo:root>
 </xsl:template>
</xsl:stylesheet>