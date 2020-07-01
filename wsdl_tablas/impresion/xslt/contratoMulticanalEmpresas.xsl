<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format">
	<!--Variables-->
	<xsl:variable name="bgcolor">#E7E5EF</xsl:variable>
	<xsl:variable name="lineas">#CCCCCC</xsl:variable>
	<xsl:variable name="txt">#000000</xsl:variable>
	<xsl:variable name="txt-azul-claro">#0061A5</xsl:variable>
	<xsl:variable name="txt-azul-oscuro">#1069B5</xsl:variable>
	<xsl:variable name="alto-filas">5mm</xsl:variable>
	<xsl:variable name="espacio-subtitulos">2mm</xsl:variable>
	<xsl:variable name="borde-tabla">#CCCCCC</xsl:variable>
	<xsl:variable name="espacio-texto-celda-left">2mm</xsl:variable>
	<xsl:variable name="espacio-texto-celda-right">2mm</xsl:variable>
	<xsl:variable name="espacio-texto-celda-top">1mm</xsl:variable>
	<xsl:variable name="espacio-celda-top">2mm</xsl:variable>
	<xsl:variable name="size-fuente-margen">7pt</xsl:variable>
	<xsl:decimal-format name="peso" decimal-separator="." grouping-separator="."/>

	<!-- Variables -->
	<xsl:template match="/">
		<fo:root xmlns:fo="http://www.w3.org/1999/XSL/Format">
			<!-- Propiedades pagina -->
			<fo:layout-master-set>
				<fo:simple-page-master master-name="pagina"
					page-height="33cm"
					page-width="21.59cm"
					margin-top="0.7cm"
					margin-bottom="1cm"
					margin-left="1.25cm"
					margin-right="1.5cm">
					<fo:region-body margin-top="1.6cm" margin-bottom="0.5cm" background-color="#ffffff"/> 
					<fo:region-before extent="3cm"/>
					<fo:region-after extent="2cm"/>
				</fo:simple-page-master>
			</fo:layout-master-set>
			<!-- Propiedades pagina -->
			<fo:page-sequence master-reference="pagina" initial-page-number="1" language="en" country="us">
				<fo:static-content flow-name="xsl-region-before">
					<!-- linea bci -->
					<fo:block space-after="8mm" padding-top="15px">
						<fo:table table-layout="fixed">
							<fo:table-column column-width="18cm"/>
							<fo:table-body>
								<fo:table-row>
									<fo:table-cell>
										<fo:external-graphic width="3.5cm" height="55px">
											<xsl:attribute name="src">
												<xsl:value-of select="contrato-multicanal/rutaImagen"/>logo-bci-mandatos.gif
											</xsl:attribute>
										</fo:external-graphic>
									</fo:table-cell>
								</fo:table-row>
								
							</fo:table-body>
						</fo:table>
					</fo:block>
					<!-- linea bci -->
				</fo:static-content>
				<fo:static-content flow-name="xsl-region-after">
				</fo:static-content>
				<fo:flow flow-name="xsl-region-body">
					<xsl:call-template name="titulo"/>
					<fo:block padding-bottom="4mm" />
					<xsl:call-template name="clausulas"/>
					<fo:block padding-bottom="2mm" />
					<xsl:call-template name="tituloCliente"/>
					<fo:block padding-bottom="2mm" />
					<xsl:call-template name="clausulasCliente"/>
				</fo:flow>
			</fo:page-sequence> 
		</fo:root>
	</xsl:template>

	<xsl:template name="titulo">
	<fo:block text-align="justify"  padding-left="{$espacio-texto-celda-left}" padding-top="25px" padding-bottom="-10px">
		<fo:block text-align="center" font-size="12pt" font-weight="bold">
		MANDATOS PARA OPERACIONES REMOTAS Y DOCUMENTAR OBLIGACIONES
		</fo:block>	
	</fo:block>
	</xsl:template>


	<!-- CLAUSULAS -->
	<xsl:template name="clausulas">
		<fo:block>
			<fo:table table-layout="fixed">
			<fo:table-column column-width="19.2cm" />
			<fo:table-body>
				<!-- FILA 1 -->
				<fo:table-row height="{$alto-filas}">
					<fo:table-cell padding-top="{$espacio-texto-celda-top}">
						<fo:block font-size="12pt" text-align="center" color="{$txt}">
							<xsl:call-template name="col_center"/>
						</fo:block>
					</fo:table-cell>
				</fo:table-row>
				<!-- FILA 1 -->

			</fo:table-body>
			</fo:table>
		</fo:block>
	</xsl:template>

	<xsl:template name="col_center">
		<fo:block text-align="justify" padding-bottom="1mm">
				<fo:inline font-weight="bold">Uno) Antecedente. </fo:inline> 
				El Cliente individualizado al final del presente instrumento, podrá comunicarse e interconectarse con el Banco, 
				personalmente o a través de sus apoderados y/o representantes debidamente facultados, presencialmente o a través 
				de medios o canales remotos, tales como: internet, aplicaciones móviles, telefonía u otros medios electrónicos que 
				se dispongan en lo sucesivo, mediante el uso o ingreso de una clave secreta personal e intransferible que es de 
				su exclusivo conocimiento o a través de cualquier otro factor de autenticación que el Banco decida implementar. 
				
				<fo:block padding-bottom="1mm" padding-top="2mm">
				En este contexto, se entenderán convenidas las operaciones y transacciones recibidas por el Banco y que hayan sido 
				cursadas utilizando la clave secreta o factor de autenticación asignado al Cliente y/o a sus apoderados debidamente 
				facultados, según corresponda. 
				</fo:block>
		</fo:block>
		<fo:block text-align="justify" padding-bottom="1mm">
				<fo:inline font-weight="bold">Dos) Mandato. </fo:inline>
				Para documentar cualquiera de las obligaciones que el Cliente haya contraído o contraiga para con el Banco a través 
				de dichos medios o canales remotos, por  este acto el Cliente otorga mandato a BCI y/o a Servicios de Normalización y
				Cobranza - Normaliza S.A. / Normaliza, filial de BCI, a través de cualquiera de sus apoderados o en quien BCI delegue 
				para que autocontratando y autorizando las firmas ante notario, complete y suscriba pagarés, reconozca deudas en beneficio
				y a la orden de Bci, y/o suscriba y formalice los instrumentos públicos o privados que den cuenta de dichas obligaciones, 
				por los montos de capital, intereses y comisiones de las sumas adeudadas que se originen con motivo  de: /a/Créditos de 
				cualquier naturaleza contratados por medio remotos; /b/ Línea(s) y/o tarjeta(s) de crédito ; /c/ Capital, intereses y comisiones 
				de las sumas adeudadas por el uso de Líneas de Sobregiro asociadas a una cuenta corriente; /d/ Por los sobregiros en que incurra 
				el Cliente al utilizar su(s) cuenta(s) y que el Banco decida autorizar, completando en dichos títulos o instrumentos todas las
				menciones exigidas por la Ley para que el respectivo título tenga mérito ejecutivo, pudiendo en el caso de los pagarés, renunciar 
				a la acción de protesto. 
				<fo:block padding-bottom="1mm">
				A la fecha de su vencimiento los saldos adeudados, devengarán la tasa máxima convencional vigente a la fecha del incumplimiento.
				</fo:block>
		</fo:block>
		<fo:block text-align="justify" padding-bottom="1mm">
				<fo:inline font-weight="bold">Tres) Rendición de Cuentas. </fo:inline>
				El Cliente por este acto, declara conocer y aceptar que la rendición de cuentas del ejercicio del presente mandato, se verificará
				mediante el envío de los comprobantes, copias de los pagarés, títulos u otros documentos (en copia u original según corresponda) 
				que el Banco hubiere suscrito en su representación, y se remitirán al correo electrónico o, en su defecto, al domicilio registrado en el Banco. 
				
		</fo:block>
		<fo:block text-align="justify" padding-bottom="1mm">
				<fo:inline font-weight="bold">Cuatro) Reconocimiento. </fo:inline>
				Asimismo, y por este instrumento, el Cliente reconoce expresamente que el otorgamiento del presente mandato no obliga al Banco al curse del (los) 
				financiamientos, el (los) cual(es) se sujetarán a las políticas de crédito vigente de Banco de Crédito e Inversiones.
		</fo:block>
		<fo:block text-align="justify" padding-bottom="1mm">
				<fo:inline font-weight="bold">Cinco) En Caso de Convenirse Créditos con Garantía Estatal. </fo:inline>
				Para efectos de los financiamientos a convenirse con cobertura o garantía estatal, incluyendo sin limitación, el Fondo de Garantía para Pequeños 
				Empresarios (FOGAPE) o Fondo de Garantía para Inversión y Capital de Trabajo (FOGAIN), el Cliente se  obliga a destinar los recursos crediticios a 
				ser recibidos del Banco a los fines establecidos en sus respectivos programas estatales y además a facilitar al Banco y/o a la entidad estatal que 
				otorga la respectiva cobertura, el control del destino de dichos recursos en caso de que así lo estimasen conveniente. 
				<fo:block padding-bottom="1mm">
				De la misma manera y por este instrumento, autoriza al Banco a hacer entrega de todos los antecedentes necesarios a la entidad estatal que otorga la
				respectiva cobertura, para la adecuada aprobación de cada operación de crédito, y para que entregue en cuanto sea requerido, toda la información sobre 
				las operaciones de crédito en particular. 	
				</fo:block>
				<fo:block padding-bottom="1mm">
				Por último, autoriza al Banco a cobrar la respectiva comisión a favor de la entidad estatal que otorga la cobertura, en los términos indicados en los manuales 
				y reglamentos del respectivo programa estatal.  	
				</fo:block>
		</fo:block>
		<fo:block text-align="justify" padding-bottom="1mm">
				<fo:inline font-weight="bold">Seis) Seguros. </fo:inline>
				Del mismo modo y en este mismo acto, el Cliente otorga poder a Banco de Crédito e Inversiones para que en su nombre y representación, a solicitud expresa 
				del Cliente,
				<fo:block padding-bottom="1mm">
				y a través de los medios que el Banco disponga al efecto, contrate todo tipo de seguros colectivos o individuales, de prima única o recurrente, 
				específicos para cada financiamiento o colocación. 
				</fo:block>
				 
		</fo:block>
		<fo:block text-align="justify" padding-bottom="1mm">
				<fo:inline font-weight="bold">Siete) Vigencia. </fo:inline>
				Los mandatos otorgados con ocasión del presente instrumento serán revocables, una vez que estén totalmente extinguidas las obligaciones a favor de BCI.
				Con todo, su revocación 
				
		</fo:block>
		
		<fo:block padding-before="1mm" text-align="center">
			<fo:table table-layout="fixed">
							<fo:table-column column-width="19cm"/>
							<fo:table-column column-width="2cm" />
							<fo:table-body>
								<fo:table-row>
									<fo:table-cell>
										<fo:external-graphic width="19cm" height="2px">
											<xsl:attribute name="src">
												<xsl:value-of select="contrato-multicanal/rutaImagen"/>lineaColorSello.gif
											</xsl:attribute>
										</fo:external-graphic>
									</fo:table-cell>
								</fo:table-row>
									<fo:table-row>
									<fo:table-cell>
										<fo:block font-size="8pt" color="#898e8e">
											<fo:block padding-top="5px" text-align="left">Copia Banco&#0160;&#0160;&#0160;&#0160;&#0160;
											&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;
											&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;
											&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;
											&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;
											&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;
											&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;
											&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;
											&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;
											&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;
											&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;
											&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;
											&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;
											 Página 1 de 2</fo:block>
											 <fo:block font-size="8pt" color="#898e8e" text-align="left">
												05111119
											</fo:block>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
							</fo:table-body>
			</fo:table>
		</fo:block>
		
		<fo:block text-align="justify" padding-bottom="1mm" padding-top="30px">
			<fo:block  padding-bottom="1mm">
				deberá comunicarse por escrito al Banco en cualquiera de sus sucursales, y producirá sus efectos, transcurridos 15 días de haberse
				notificado la revocación al Banco.
			</fo:block>
		</fo:block>
		
		<fo:block text-align="justify" padding-bottom="1mm">
				<fo:inline font-weight="bold">Ocho) Constancia. </fo:inline>
				Estos mandatos no revocan y son complementarios de otros conferidos al Banco con anterioridad. 
		</fo:block>
		
		<fo:block text-align="left" padding-bottom="2mm">
				<fo:block text-align="justify" padding-bottom="1mm">
				<fo:inline font-weight="bold">Nueve) Costos y Gastos. </fo:inline>
				Serán de cargo del Cliente los costos de autorización notarial y protocolización de este instrumento, impuestos y demás
				gastos que se originen con ocasión de la suscripción del presente documento.
				<fo:block padding-bottom="1mm" padding-top="2mm">
				El presente instrumento se firma en dos ejemplares de idéntico tenor, quedando uno en poder de cada una de las partes.   	
				</fo:block>
				</fo:block>
				<fo:block font-size="11.5pt">
				<fo:inline>NOMBRE O RAZON SOCIAL:</fo:inline>
				</fo:block>
				<fo:block text-align="left" padding-top="1mm" font-size="11.5pt">
					<xsl:if test="contrato-multicanal/nombreCompleto !='' ">
						<fo:inline text-align="left">
							<xsl:value-of select="contrato-multicanal/nombreCompleto"/>
						</fo:inline>
					</xsl:if>
					<xsl:if test="contrato-multicanal/nombreCompleto ='' ">
						<fo:inline text-align="left">
							_______________________________________________________________________________
						</fo:inline>
						<fo:block padding-bottom="2mm" padding-top="1mm">
							<fo:inline>_______________________________________________________________________________</fo:inline>
						</fo:block>
					</xsl:if>
				</fo:block>
				
				<fo:block padding-top="1mm" font-size="11.5pt">
					<fo:inline>RUT:
						<xsl:if test="contrato-multicanal/rut !='' ">
						<fo:inline text-align="left">
							<xsl:value-of select="contrato-multicanal/rut"/>
						</fo:inline>
						</xsl:if>
						<xsl:if test="contrato-multicanal/rut ='' ">
							<fo:inline text-align="left">
								_________________
							</fo:inline>		
						</xsl:if>
					</fo:inline>
				</fo:block>
				<fo:block padding-top="1mm" font-size="11.5pt">
				<fo:inline>DOMICILIO:____________________________________________________________</fo:inline>
				</fo:block>
				<fo:block padding-top="1mm" font-size="11.5pt">
				<fo:inline>COMUNA:_______________________ CIUDAD:______________________</fo:inline>
				</fo:block>
				<fo:block padding-bottom="-1mm" padding-top="4mm" font-size="11.5pt">
				<fo:inline>REPRESENTANTE LEGAL(1):</fo:inline>
				</fo:block>
				<fo:block>
				<fo:inline>_______________________________________________________________________________</fo:inline>
				</fo:block>
				<fo:block padding-bottom="2mm" font-size="11.5pt">
				<fo:inline>RUT:_________________</fo:inline>
				</fo:block>
				
				<fo:block padding-bottom="-1mm" padding-top="4mm" font-size="11.5pt">
				<fo:inline>REPRESENTANTE LEGAL(2):</fo:inline>
				</fo:block>
				<fo:block>
				<fo:inline>_______________________________________________________________________________</fo:inline>
				</fo:block>
				<fo:block padding-bottom="2mm" font-size="11.5pt">
				<fo:inline>RUT:_________________</fo:inline>
				</fo:block>
				
				<fo:block padding-bottom="-1mm" padding-top="4mm" font-size="11.5pt">
				<fo:inline>REPRESENTANTE LEGAL(3):</fo:inline>
				</fo:block>
				<fo:block>
				<fo:inline>_______________________________________________________________________________</fo:inline>
				</fo:block>
				<fo:block padding-bottom="2mm" font-size="11.5pt">
				<fo:inline>RUT:_________________</fo:inline>
				</fo:block>
				
				<fo:block padding-bottom="-1mm" padding-top="4mm" font-size="11.5pt">
				<fo:inline>REPRESENTANTE LEGAL(4):</fo:inline>
				</fo:block>
				<fo:block>
				<fo:inline>________________________________________________________________________________</fo:inline>
				</fo:block>
				<fo:block padding-bottom="2mm" font-size="11.5pt">
				<fo:inline>RUT:_________________</fo:inline>
				</fo:block>
		</fo:block>
		<fo:block text-align="justify" padding-bottom="10mm" padding-top="5mm" font-size="11.5pt">
		En __________________, a &#0160;&#0160;&#0160;&#0160;&#0160; 
		<fo:inline color="black"><xsl:value-of select="contrato-multicanal/dia"/></fo:inline>
		&#0160;&#0160;&#0160;&#0160;&#0160;
		de &#0160;&#0160;&#0160;&#0160;&#0160;
		<fo:inline color="black"><xsl:value-of select="contrato-multicanal/mes"/></fo:inline>
		&#0160;&#0160;&#0160;&#0160;&#0160;
		de&#0160;&#0160;&#0160;&#0160;&#0160;
		<fo:inline color="black"><xsl:value-of select="contrato-multicanal/anyo"/></fo:inline>
		</fo:block>
		
		<fo:block text-align="justify" padding-bottom="2mm" padding-top="10px" font-size="11.5pt">
				<fo:inline>&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;
				&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;__________________
				&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;
				&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;
				&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;__________________</fo:inline>
				<fo:block padding-bottom="2mm" padding-top="1mm">
				<fo:inline>&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;
				&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;Firma del Suscriptor(1)
				&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;
				&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;
				&#0160;&#0160;&#0160;&#0160;Firma del Suscriptor(2)</fo:inline>
				</fo:block>
				<fo:block padding-bottom="2mm" padding-top="40px">
				<fo:inline>&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;
				&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;__________________
				&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;
				&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;
				&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;__________________</fo:inline>
				</fo:block>
				<fo:block padding-bottom="2mm" padding-top="1mm">
				<fo:inline>&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;
				&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;Firma del Suscriptor(3)
				&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;
				&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;
				&#0160;&#0160;&#0160;&#0160;Firma del Suscriptor(4)</fo:inline>
				</fo:block>
		</fo:block>
		
		<fo:block text-align="center" padding-bottom="5mm" padding-top="10mm" font-size="11.5pt">
			<fo:inline>_____________________________________________
			</fo:inline>
			<fo:block text-align="center" padding-bottom="10mm">
			<fo:inline>En señal de aceptación, firma en representación del Banco de Crédito e Inversiones
			</fo:inline>
			</fo:block>
			
			<fo:block text-align="center" padding-top="4mm" font-weight="bold">
			<fo:inline>AUTORIZACIÓN NOTARIAL
			</fo:inline>
			</fo:block>
		</fo:block>
		<fo:block padding-before="1mm" text-align="center" padding-top="20px">
			<fo:table table-layout="fixed">
							<fo:table-column column-width="19cm"/>
							<fo:table-column column-width="2cm" />
							<fo:table-body>
								<fo:table-row>
									<fo:table-cell>
										<fo:external-graphic width="19cm" height="2px">
											<xsl:attribute name="src">
												<xsl:value-of select="contrato-multicanal/rutaImagen"/>lineaColorSello.gif
											</xsl:attribute>
										</fo:external-graphic>
									</fo:table-cell>
								</fo:table-row>
									<fo:table-row>
									<fo:table-cell>
										<fo:block font-size="8pt" color="#898e8e">
											<fo:block padding-top="5px" text-align="left">Copia Banco&#0160;&#0160;&#0160;&#0160;&#0160;
											&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;
											&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;
											&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;
											&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;
											&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;
											&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;
											&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;
											&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;
											&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;
											&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;
											&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;
											&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;
											 Página 2 de 2</fo:block>
										</fo:block>
										<fo:block font-size="8pt" color="#898e8e" text-align="left">
											05111119
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
							</fo:table-body>
			</fo:table>
		</fo:block>
		
	</xsl:template>	
	<xsl:template name="tituloCliente">
	<fo:block text-align="justify"  padding-left="{$espacio-texto-celda-left}" padding-top="25px" padding-bottom="-5px">
		<fo:block text-align="center" font-size="12pt" font-weight="bold">
		MANDATOS PARA OPERACIONES REMOTAS Y DOCUMENTAR OBLIGACIONES
		</fo:block>	
	</fo:block>
	</xsl:template>
	
	<xsl:template name="clausulasCliente">
		<fo:block>
			<fo:table table-layout="fixed">
			<fo:table-column column-width="19.2cm" />
			<fo:table-body>
				<!-- FILA 1 -->
				<fo:table-row height="{$alto-filas}">
					<fo:table-cell padding-top="{$espacio-texto-celda-top}">
						<fo:block font-size="12pt" text-align="center" color="{$txt}">
							<xsl:call-template name="col_centerCliente"/>
						</fo:block>
					</fo:table-cell>
				</fo:table-row>
				<!-- FILA 1 -->

			</fo:table-body>
			</fo:table>
		</fo:block>
	</xsl:template>

	<xsl:template name="col_centerCliente">
		<fo:block text-align="justify" padding-bottom="1mm">
				<fo:inline font-weight="bold">Uno) Antecedente. </fo:inline> 
				El Cliente individualizado al final del presente instrumento, podrá comunicarse e interconectarse con el Banco, 
				personalmente o a través de sus apoderados y/o representantes debidamente facultados, presencialmente o a través 
				de medios o canales remotos, tales como: internet, aplicaciones móviles, telefonía u otros medios electrónicos que 
				se dispongan en lo sucesivo, mediante el uso o ingreso de una clave secreta personal e intransferible que es de 
				su exclusivo conocimiento o a través de cualquier otro factor de autenticación que el Banco decida implementar. 
				
				<fo:block padding-bottom="1mm" padding-top="2mm">
				En este contexto, se entenderán convenidas las operaciones y transacciones recibidas por el Banco y que hayan sido 
				cursadas utilizando la clave secreta o factor de autenticación asignado al Cliente y/o a sus apoderados debidamente 
				facultados, según corresponda. 
				</fo:block>
		</fo:block>
		<fo:block text-align="justify" padding-bottom="1mm">
				<fo:inline font-weight="bold">Dos) Mandato. </fo:inline>
				Para documentar cualquiera de las obligaciones que el Cliente haya contraído o contraiga para con el Banco a través 
				de dichos medios o canales remotos, por  este acto el Cliente otorga mandato a BCI y/o a Servicios de Normalización y
				Cobranza - Normaliza S.A. / Normaliza, filial de BCI, a través de cualquiera de sus apoderados o en quien BCI delegue 
				para que autocontratando y autorizando las firmas ante notario, complete y suscriba pagarés, reconozca deudas en beneficio
				y a la orden de Bci, y/o suscriba y formalice los instrumentos públicos o privados que den cuenta de dichas obligaciones, 
				por los montos de capital, intereses y comisiones de las sumas adeudadas que se originen con motivo  de: /a/Créditos de 
				cualquier naturaleza contratados por medio remotos; /b/ Línea(s) y/o tarjeta(s) de crédito ; /c/ Capital, intereses y comisiones 
				de las sumas adeudadas por el uso de Líneas de Sobregiro asociadas a una cuenta corriente; /d/ Por los sobregiros en que incurra 
				el Cliente al utilizar su(s) cuenta(s) y que el Banco decida autorizar, completando en dichos títulos o instrumentos todas las
				menciones exigidas por la Ley para que el respectivo título tenga mérito ejecutivo, pudiendo en el caso de los pagarés, renunciar 
				a la acción de protesto. 
				<fo:block padding-bottom="1mm">
				A la fecha de su vencimiento los saldos adeudados, devengarán la tasa máxima convencional vigente a la fecha del incumplimiento.
				</fo:block>
		</fo:block>
		<fo:block text-align="justify" padding-bottom="1mm">
				<fo:inline font-weight="bold">Tres) Rendición de Cuentas. </fo:inline>
				El Cliente por este acto, declara conocer y aceptar que la rendición de cuentas del ejercicio del presente mandato, se verificará
				mediante el envío de los comprobantes, copias de los pagarés, títulos u otros documentos (en copia u original según corresponda) 
				que el Banco hubiere suscrito en su representación, y se remitirán al correo electrónico o, en su defecto, al domicilio registrado en el Banco. 
				
		</fo:block>
		<fo:block text-align="justify" padding-bottom="1mm">
				<fo:inline font-weight="bold">Cuatro) Reconocimiento. </fo:inline>
				Asimismo, y por este instrumento, el Cliente reconoce expresamente que el otorgamiento del presente mandato no obliga al Banco al curse del (los) 
				financiamientos, el (los) cual(es) se sujetarán a las políticas de crédito vigente de Banco de Crédito e Inversiones.
		</fo:block>
		<fo:block text-align="justify" padding-bottom="1mm">
				<fo:inline font-weight="bold">Cinco) En Caso de Convenirse Créditos con Garantía Estatal. </fo:inline>
				Para efectos de los financiamientos a convenirse con cobertura o garantía estatal, incluyendo sin limitación, el Fondo de Garantía para Pequeños 
				Empresarios (FOGAPE) o Fondo de Garantía para Inversión y Capital de Trabajo (FOGAIN), el Cliente se  obliga a destinar los recursos crediticios a 
				ser recibidos del Banco a los fines establecidos en sus respectivos programas estatales y además a facilitar al Banco y/o a la entidad estatal que 
				otorga la respectiva cobertura, el control del destino de dichos recursos en caso de que así lo estimasen conveniente. 
				<fo:block padding-bottom="1mm">
				De la misma manera y por este instrumento, autoriza al Banco a hacer entrega de todos los antecedentes necesarios a la entidad estatal que otorga la
				respectiva cobertura, para la adecuada aprobación de cada operación de crédito, y para que entregue en cuanto sea requerido, toda la información sobre 
				las operaciones de crédito en particular. 	
				</fo:block>
				<fo:block padding-bottom="1mm">
				Por último, autoriza al Banco a cobrar la respectiva comisión a favor de la entidad estatal que otorga la cobertura, en los términos indicados en los manuales 
				y reglamentos del respectivo programa estatal.  	
				</fo:block>
		</fo:block>
		<fo:block text-align="justify" padding-bottom="1mm">
				<fo:inline font-weight="bold">Seis) Seguros. </fo:inline>
				Del mismo modo y en este mismo acto, el Cliente otorga poder a Banco de Crédito e Inversiones para que en su nombre y representación, a solicitud expresa 
				del Cliente,
				<fo:block padding-bottom="1mm">
				y a través de los medios que el Banco disponga al efecto, contrate todo tipo de seguros colectivos o individuales, de prima única o recurrente, 
				específicos para cada financiamiento o colocación. 
				</fo:block>
				 
		</fo:block>
		<fo:block text-align="justify" padding-bottom="1mm">
				<fo:inline font-weight="bold">Siete) Vigencia. </fo:inline>
				Los mandatos otorgados con ocasión del presente instrumento serán revocables, una vez que estén totalmente extinguidas las obligaciones a favor de BCI.
				Con todo, su revocación 
				
		</fo:block>
		
		<fo:block padding-before="1mm" text-align="center">
			<fo:table table-layout="fixed">
							<fo:table-column column-width="19cm"/>
							<fo:table-column column-width="2cm" />
							<fo:table-body>
								<fo:table-row>
									<fo:table-cell>
										<fo:external-graphic width="19cm" height="2px">
											<xsl:attribute name="src">
												<xsl:value-of select="contrato-multicanal/rutaImagen"/>lineaColorSello.gif
											</xsl:attribute>
										</fo:external-graphic>
									</fo:table-cell>
								</fo:table-row>
									<fo:table-row>
									<fo:table-cell>
										<fo:block font-size="8pt" color="#898e8e">
											<fo:block padding-top="5px" text-align="left">Copia Cliente&#0160;&#0160;&#0160;&#0160;&#0160;
											&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;
											&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;
											&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;
											&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;
											&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;
											&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;
											&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;
											&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;
											&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;
											&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;
											&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;
											&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;
											 Página 1 de 2</fo:block>
											 <fo:block font-size="8pt" color="#898e8e" text-align="left">
												05111119
											</fo:block>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
							</fo:table-body>
			</fo:table>
		</fo:block>
		
		<fo:block text-align="justify" padding-bottom="1mm" padding-top="30px">
			<fo:block  padding-bottom="1mm">
				deberá comunicarse por escrito al Banco en cualquiera de sus sucursales, y producirá sus efectos, transcurridos 15 días de haberse
				notificado la revocación al Banco.
			</fo:block>
		</fo:block>
		
		<fo:block text-align="justify" padding-bottom="1mm">
				<fo:inline font-weight="bold">Ocho) Constancia. </fo:inline>
				Estos mandatos no revocan y son complementarios de otros conferidos al Banco con anterioridad. 
		</fo:block>
		
		<fo:block text-align="left" padding-bottom="2mm">
				<fo:block text-align="justify" padding-bottom="1mm">
				<fo:inline font-weight="bold">Nueve) Costos y Gastos. </fo:inline>
				Serán de cargo del Cliente los costos de autorización notarial y protocolización de este instrumento, impuestos y demás
				gastos que se originen con ocasión de la suscripción del presente documento.
				<fo:block padding-bottom="1mm" padding-top="2mm">
				El presente instrumento se firma en dos ejemplares de idéntico tenor, quedando uno en poder de cada una de las partes.   	
				</fo:block>
				</fo:block>
				<fo:block font-size="11.5pt">
				<fo:inline>NOMBRE O RAZON SOCIAL:</fo:inline>
				</fo:block>
				<fo:block padding-top="1mm" font-size="11.5pt">
					<xsl:if test="contrato-multicanal/nombreCompleto !='' ">
						<fo:inline>
							<xsl:value-of select="contrato-multicanal/nombreCompleto"/>
						</fo:inline>
					</xsl:if>
					<xsl:if test="contrato-multicanal/nombreCompleto ='' ">
						<fo:inline text-align="left">
							_______________________________________________________________________________
						</fo:inline>
						<fo:block padding-bottom="2mm" padding-top="1mm">
							<fo:inline>_______________________________________________________________________________</fo:inline>
						</fo:block>
					</xsl:if>
				</fo:block>
				
				<fo:block padding-top="1mm" font-size="11.5pt">
					<fo:inline>RUT:
						<xsl:if test="contrato-multicanal/rut !='' ">
							<fo:inline text-align="left">
								<xsl:value-of select="contrato-multicanal/rut"/>
							</fo:inline>
						</xsl:if>
						<xsl:if test="contrato-multicanal/rut ='' ">
							<fo:inline text-align="left">
								_________________
							</fo:inline>		
						</xsl:if>		
					</fo:inline>
				</fo:block>
				<fo:block padding-top="1mm" font-size="11.5pt">
				<fo:inline>DOMICILIO:____________________________________________________________</fo:inline>
				</fo:block>
				<fo:block padding-top="1mm" font-size="11.5pt">
				<fo:inline>COMUNA:_______________________ CIUDAD:______________________</fo:inline>
				</fo:block>
				<fo:block padding-bottom="-1mm" padding-top="4mm" font-size="11.5pt">
				<fo:inline>REPRESENTANTE LEGAL(1):</fo:inline>
				</fo:block>
				<fo:block>
				<fo:inline>_______________________________________________________________________________</fo:inline>
				</fo:block>
				<fo:block padding-bottom="2mm" font-size="11.5pt">
				<fo:inline>RUT:_________________</fo:inline>
				</fo:block>
				
				<fo:block padding-bottom="-1mm" padding-top="4mm" font-size="11.5pt">
				<fo:inline>REPRESENTANTE LEGAL(2):</fo:inline>
				</fo:block>
				<fo:block>
				<fo:inline>_______________________________________________________________________________</fo:inline>
				</fo:block>
				<fo:block padding-bottom="2mm" font-size="11.5pt">
				<fo:inline>RUT:_________________</fo:inline>
				</fo:block>
				
				<fo:block padding-bottom="-1mm" padding-top="4mm" font-size="11.5pt">
				<fo:inline>REPRESENTANTE LEGAL(3):</fo:inline>
				</fo:block>
				<fo:block>
				<fo:inline>_______________________________________________________________________________</fo:inline>
				</fo:block>
				<fo:block padding-bottom="2mm" font-size="11.5pt">
				<fo:inline>RUT:_________________</fo:inline>
				</fo:block>
				
				<fo:block padding-bottom="-1mm" padding-top="4mm" font-size="11.5pt">
				<fo:inline>REPRESENTANTE LEGAL(4):</fo:inline>
				</fo:block>
				<fo:block padding-bottom="2mm">
				<fo:inline>________________________________________________________________________________</fo:inline>
				</fo:block>
				<fo:block padding-bottom="2mm" font-size="11.5pt">
				<fo:inline>RUT:_________________</fo:inline>
				</fo:block>
		</fo:block>
		<fo:block text-align="justify" padding-bottom="10mm" padding-top="5mm" font-size="11.5pt">
		En __________________, a &#0160;&#0160;&#0160;&#0160;&#0160; 
		<fo:inline color="black"><xsl:value-of select="contrato-multicanal/dia"/></fo:inline>
		&#0160;&#0160;&#0160;&#0160;&#0160;
		de &#0160;&#0160;&#0160;&#0160;&#0160;
		<fo:inline color="black"><xsl:value-of select="contrato-multicanal/mes"/></fo:inline>
		&#0160;&#0160;&#0160;&#0160;&#0160;
		de&#0160;&#0160;&#0160;&#0160;&#0160;
		<fo:inline color="black"><xsl:value-of select="contrato-multicanal/anyo"/></fo:inline>
		</fo:block>
		
		<fo:block text-align="justify" padding-bottom="2mm" padding-top="10px" font-size="11.5pt">
				<fo:inline>&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;
				&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;__________________
				&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;
				&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;
				&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;__________________</fo:inline>
				<fo:block padding-bottom="2mm" padding-top="1mm">
				<fo:inline>&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;
				&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;Firma del Suscriptor(1)
				&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;
				&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;
				&#0160;&#0160;&#0160;&#0160;Firma del Suscriptor(2)</fo:inline>
				</fo:block>
				<fo:block padding-bottom="2mm" padding-top="40px">
				<fo:inline>&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;
				&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;__________________
				&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;
				&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;
				&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;__________________</fo:inline>
				</fo:block>
				<fo:block padding-bottom="2mm" padding-top="1mm">
				<fo:inline>&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;
				&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;Firma del Suscriptor(3)
				&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;
				&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;
				&#0160;&#0160;&#0160;&#0160;Firma del Suscriptor(4)</fo:inline>
				</fo:block>
		</fo:block>
		
		<fo:block text-align="center" padding-bottom="5mm" padding-top="10mm" font-size="11.5pt">
			<fo:inline>_____________________________________________
			</fo:inline>
			<fo:block text-align="center" padding-bottom="10mm">
			<fo:inline>En señal de aceptación, firma en representación del Banco de Crédito e Inversiones
			</fo:inline>
			</fo:block>
			
			<fo:block text-align="center" padding-top="4mm" font-weight="bold">
			<fo:inline>AUTORIZACIÓN NOTARIAL
			</fo:inline>
			</fo:block>
		</fo:block>
		
		<fo:block padding-before="1mm" text-align="center" padding-top="20px">
			<fo:table table-layout="fixed">
							<fo:table-column column-width="19cm"/>
							<fo:table-column column-width="2cm" />
							<fo:table-body>
								<fo:table-row>
									<fo:table-cell>
										<fo:external-graphic width="19cm" height="2px">
											<xsl:attribute name="src">
												<xsl:value-of select="contrato-multicanal/rutaImagen"/>lineaColorSello.gif
											</xsl:attribute>
										</fo:external-graphic>
									</fo:table-cell>
								</fo:table-row>
								<fo:table-row>
									<fo:table-cell>
										<fo:block font-size="8pt" color="#898e8e">
											<fo:block padding-top="5px" text-align="left">Copia Cliente&#0160;&#0160;&#0160;&#0160;&#0160;
											&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;
											&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;
											&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;
											&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;
											&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;
											&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;
											&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;
											&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;
											&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;
											&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;
											&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;
											&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;
											 Página 2 de 2</fo:block>
										</fo:block>
										<fo:block font-size="8pt" color="#898e8e" text-align="left">
											05111119
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
							</fo:table-body>
			</fo:table>
		</fo:block>
	</xsl:template>
</xsl:stylesheet>