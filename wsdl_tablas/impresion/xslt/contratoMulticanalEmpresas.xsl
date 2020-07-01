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
				El Cliente individualizado al final del presente instrumento, podr� comunicarse e interconectarse con el Banco, 
				personalmente o a trav�s de sus apoderados y/o representantes debidamente facultados, presencialmente o a trav�s 
				de medios o canales remotos, tales como: internet, aplicaciones m�viles, telefon�a u otros medios electr�nicos que 
				se dispongan en lo sucesivo, mediante el uso o ingreso de una clave secreta personal e intransferible que es de 
				su exclusivo conocimiento o a trav�s de cualquier otro factor de autenticaci�n que el Banco decida implementar. 
				
				<fo:block padding-bottom="1mm" padding-top="2mm">
				En este contexto, se entender�n convenidas las operaciones y transacciones recibidas por el Banco y que hayan sido 
				cursadas utilizando la clave secreta o factor de autenticaci�n asignado al Cliente y/o a sus apoderados debidamente 
				facultados, seg�n corresponda. 
				</fo:block>
		</fo:block>
		<fo:block text-align="justify" padding-bottom="1mm">
				<fo:inline font-weight="bold">Dos) Mandato. </fo:inline>
				Para documentar cualquiera de las obligaciones que el Cliente haya contra�do o contraiga para con el Banco a trav�s 
				de dichos medios o canales remotos, por  este acto el Cliente otorga mandato a BCI y/o a Servicios de Normalizaci�n y
				Cobranza - Normaliza S.A. / Normaliza, filial de BCI, a trav�s de cualquiera de sus apoderados o en quien BCI delegue 
				para que autocontratando y autorizando las firmas ante notario, complete y suscriba pagar�s, reconozca deudas en beneficio
				y a la orden de Bci, y/o suscriba y formalice los instrumentos p�blicos o privados que den cuenta de dichas obligaciones, 
				por los montos de capital, intereses y comisiones de las sumas adeudadas que se originen con motivo  de: /a/Cr�ditos de 
				cualquier naturaleza contratados por medio remotos; /b/ L�nea(s) y/o tarjeta(s) de cr�dito ; /c/ Capital, intereses y comisiones 
				de las sumas adeudadas por el uso de L�neas de Sobregiro asociadas a una cuenta corriente; /d/ Por los sobregiros en que incurra 
				el Cliente al utilizar su(s) cuenta(s) y que el Banco decida autorizar, completando en dichos t�tulos o instrumentos todas las
				menciones exigidas por la Ley para que el respectivo t�tulo tenga m�rito ejecutivo, pudiendo en el caso de los pagar�s, renunciar 
				a la acci�n de protesto. 
				<fo:block padding-bottom="1mm">
				A la fecha de su vencimiento los saldos adeudados, devengar�n la tasa m�xima convencional vigente a la fecha del incumplimiento.
				</fo:block>
		</fo:block>
		<fo:block text-align="justify" padding-bottom="1mm">
				<fo:inline font-weight="bold">Tres) Rendici�n de Cuentas. </fo:inline>
				El Cliente por este acto, declara conocer y aceptar que la rendici�n de cuentas del ejercicio del presente mandato, se verificar�
				mediante el env�o de los comprobantes, copias de los pagar�s, t�tulos u otros documentos (en copia u original seg�n corresponda) 
				que el Banco hubiere suscrito en su representaci�n, y se remitir�n al correo electr�nico o, en su defecto, al domicilio registrado en el Banco. 
				
		</fo:block>
		<fo:block text-align="justify" padding-bottom="1mm">
				<fo:inline font-weight="bold">Cuatro) Reconocimiento. </fo:inline>
				Asimismo, y por este instrumento, el Cliente reconoce expresamente que el otorgamiento del presente mandato no obliga al Banco al curse del (los) 
				financiamientos, el (los) cual(es) se sujetar�n a las pol�ticas de cr�dito vigente de Banco de Cr�dito e Inversiones.
		</fo:block>
		<fo:block text-align="justify" padding-bottom="1mm">
				<fo:inline font-weight="bold">Cinco) En Caso de Convenirse Cr�ditos con Garant�a Estatal. </fo:inline>
				Para efectos de los financiamientos a convenirse con cobertura o garant�a estatal, incluyendo sin limitaci�n, el Fondo de Garant�a para Peque�os 
				Empresarios (FOGAPE) o Fondo de Garant�a para Inversi�n y Capital de Trabajo (FOGAIN), el Cliente se  obliga a destinar los recursos crediticios a 
				ser recibidos del Banco a los fines establecidos en sus respectivos programas estatales y adem�s a facilitar al Banco y/o a la entidad estatal que 
				otorga la respectiva cobertura, el control del destino de dichos recursos en caso de que as� lo estimasen conveniente. 
				<fo:block padding-bottom="1mm">
				De la misma manera y por este instrumento, autoriza al Banco a hacer entrega de todos los antecedentes necesarios a la entidad estatal que otorga la
				respectiva cobertura, para la adecuada aprobaci�n de cada operaci�n de cr�dito, y para que entregue en cuanto sea requerido, toda la informaci�n sobre 
				las operaciones de cr�dito en particular. 	
				</fo:block>
				<fo:block padding-bottom="1mm">
				Por �ltimo, autoriza al Banco a cobrar la respectiva comisi�n a favor de la entidad estatal que otorga la cobertura, en los t�rminos indicados en los manuales 
				y reglamentos del respectivo programa estatal.  	
				</fo:block>
		</fo:block>
		<fo:block text-align="justify" padding-bottom="1mm">
				<fo:inline font-weight="bold">Seis) Seguros. </fo:inline>
				Del mismo modo y en este mismo acto, el Cliente otorga poder a Banco de Cr�dito e Inversiones para que en su nombre y representaci�n, a solicitud expresa 
				del Cliente,
				<fo:block padding-bottom="1mm">
				y a trav�s de los medios que el Banco disponga al efecto, contrate todo tipo de seguros colectivos o individuales, de prima �nica o recurrente, 
				espec�ficos para cada financiamiento o colocaci�n. 
				</fo:block>
				 
		</fo:block>
		<fo:block text-align="justify" padding-bottom="1mm">
				<fo:inline font-weight="bold">Siete) Vigencia. </fo:inline>
				Los mandatos otorgados con ocasi�n del presente instrumento ser�n revocables, una vez que est�n totalmente extinguidas las obligaciones a favor de BCI.
				Con todo, su revocaci�n 
				
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
											 P�gina 1 de 2</fo:block>
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
				deber� comunicarse por escrito al Banco en cualquiera de sus sucursales, y producir� sus efectos, transcurridos 15 d�as de haberse
				notificado la revocaci�n al Banco.
			</fo:block>
		</fo:block>
		
		<fo:block text-align="justify" padding-bottom="1mm">
				<fo:inline font-weight="bold">Ocho) Constancia. </fo:inline>
				Estos mandatos no revocan y son complementarios de otros conferidos al Banco con anterioridad. 
		</fo:block>
		
		<fo:block text-align="left" padding-bottom="2mm">
				<fo:block text-align="justify" padding-bottom="1mm">
				<fo:inline font-weight="bold">Nueve) Costos y Gastos. </fo:inline>
				Ser�n de cargo del Cliente los costos de autorizaci�n notarial y protocolizaci�n de este instrumento, impuestos y dem�s
				gastos que se originen con ocasi�n de la suscripci�n del presente documento.
				<fo:block padding-bottom="1mm" padding-top="2mm">
				El presente instrumento se firma en dos ejemplares de id�ntico tenor, quedando uno en poder de cada una de las partes.   	
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
			<fo:inline>En se�al de aceptaci�n, firma en representaci�n del Banco de Cr�dito e Inversiones
			</fo:inline>
			</fo:block>
			
			<fo:block text-align="center" padding-top="4mm" font-weight="bold">
			<fo:inline>AUTORIZACI�N NOTARIAL
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
											 P�gina 2 de 2</fo:block>
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
				El Cliente individualizado al final del presente instrumento, podr� comunicarse e interconectarse con el Banco, 
				personalmente o a trav�s de sus apoderados y/o representantes debidamente facultados, presencialmente o a trav�s 
				de medios o canales remotos, tales como: internet, aplicaciones m�viles, telefon�a u otros medios electr�nicos que 
				se dispongan en lo sucesivo, mediante el uso o ingreso de una clave secreta personal e intransferible que es de 
				su exclusivo conocimiento o a trav�s de cualquier otro factor de autenticaci�n que el Banco decida implementar. 
				
				<fo:block padding-bottom="1mm" padding-top="2mm">
				En este contexto, se entender�n convenidas las operaciones y transacciones recibidas por el Banco y que hayan sido 
				cursadas utilizando la clave secreta o factor de autenticaci�n asignado al Cliente y/o a sus apoderados debidamente 
				facultados, seg�n corresponda. 
				</fo:block>
		</fo:block>
		<fo:block text-align="justify" padding-bottom="1mm">
				<fo:inline font-weight="bold">Dos) Mandato. </fo:inline>
				Para documentar cualquiera de las obligaciones que el Cliente haya contra�do o contraiga para con el Banco a trav�s 
				de dichos medios o canales remotos, por  este acto el Cliente otorga mandato a BCI y/o a Servicios de Normalizaci�n y
				Cobranza - Normaliza S.A. / Normaliza, filial de BCI, a trav�s de cualquiera de sus apoderados o en quien BCI delegue 
				para que autocontratando y autorizando las firmas ante notario, complete y suscriba pagar�s, reconozca deudas en beneficio
				y a la orden de Bci, y/o suscriba y formalice los instrumentos p�blicos o privados que den cuenta de dichas obligaciones, 
				por los montos de capital, intereses y comisiones de las sumas adeudadas que se originen con motivo  de: /a/Cr�ditos de 
				cualquier naturaleza contratados por medio remotos; /b/ L�nea(s) y/o tarjeta(s) de cr�dito ; /c/ Capital, intereses y comisiones 
				de las sumas adeudadas por el uso de L�neas de Sobregiro asociadas a una cuenta corriente; /d/ Por los sobregiros en que incurra 
				el Cliente al utilizar su(s) cuenta(s) y que el Banco decida autorizar, completando en dichos t�tulos o instrumentos todas las
				menciones exigidas por la Ley para que el respectivo t�tulo tenga m�rito ejecutivo, pudiendo en el caso de los pagar�s, renunciar 
				a la acci�n de protesto. 
				<fo:block padding-bottom="1mm">
				A la fecha de su vencimiento los saldos adeudados, devengar�n la tasa m�xima convencional vigente a la fecha del incumplimiento.
				</fo:block>
		</fo:block>
		<fo:block text-align="justify" padding-bottom="1mm">
				<fo:inline font-weight="bold">Tres) Rendici�n de Cuentas. </fo:inline>
				El Cliente por este acto, declara conocer y aceptar que la rendici�n de cuentas del ejercicio del presente mandato, se verificar�
				mediante el env�o de los comprobantes, copias de los pagar�s, t�tulos u otros documentos (en copia u original seg�n corresponda) 
				que el Banco hubiere suscrito en su representaci�n, y se remitir�n al correo electr�nico o, en su defecto, al domicilio registrado en el Banco. 
				
		</fo:block>
		<fo:block text-align="justify" padding-bottom="1mm">
				<fo:inline font-weight="bold">Cuatro) Reconocimiento. </fo:inline>
				Asimismo, y por este instrumento, el Cliente reconoce expresamente que el otorgamiento del presente mandato no obliga al Banco al curse del (los) 
				financiamientos, el (los) cual(es) se sujetar�n a las pol�ticas de cr�dito vigente de Banco de Cr�dito e Inversiones.
		</fo:block>
		<fo:block text-align="justify" padding-bottom="1mm">
				<fo:inline font-weight="bold">Cinco) En Caso de Convenirse Cr�ditos con Garant�a Estatal. </fo:inline>
				Para efectos de los financiamientos a convenirse con cobertura o garant�a estatal, incluyendo sin limitaci�n, el Fondo de Garant�a para Peque�os 
				Empresarios (FOGAPE) o Fondo de Garant�a para Inversi�n y Capital de Trabajo (FOGAIN), el Cliente se  obliga a destinar los recursos crediticios a 
				ser recibidos del Banco a los fines establecidos en sus respectivos programas estatales y adem�s a facilitar al Banco y/o a la entidad estatal que 
				otorga la respectiva cobertura, el control del destino de dichos recursos en caso de que as� lo estimasen conveniente. 
				<fo:block padding-bottom="1mm">
				De la misma manera y por este instrumento, autoriza al Banco a hacer entrega de todos los antecedentes necesarios a la entidad estatal que otorga la
				respectiva cobertura, para la adecuada aprobaci�n de cada operaci�n de cr�dito, y para que entregue en cuanto sea requerido, toda la informaci�n sobre 
				las operaciones de cr�dito en particular. 	
				</fo:block>
				<fo:block padding-bottom="1mm">
				Por �ltimo, autoriza al Banco a cobrar la respectiva comisi�n a favor de la entidad estatal que otorga la cobertura, en los t�rminos indicados en los manuales 
				y reglamentos del respectivo programa estatal.  	
				</fo:block>
		</fo:block>
		<fo:block text-align="justify" padding-bottom="1mm">
				<fo:inline font-weight="bold">Seis) Seguros. </fo:inline>
				Del mismo modo y en este mismo acto, el Cliente otorga poder a Banco de Cr�dito e Inversiones para que en su nombre y representaci�n, a solicitud expresa 
				del Cliente,
				<fo:block padding-bottom="1mm">
				y a trav�s de los medios que el Banco disponga al efecto, contrate todo tipo de seguros colectivos o individuales, de prima �nica o recurrente, 
				espec�ficos para cada financiamiento o colocaci�n. 
				</fo:block>
				 
		</fo:block>
		<fo:block text-align="justify" padding-bottom="1mm">
				<fo:inline font-weight="bold">Siete) Vigencia. </fo:inline>
				Los mandatos otorgados con ocasi�n del presente instrumento ser�n revocables, una vez que est�n totalmente extinguidas las obligaciones a favor de BCI.
				Con todo, su revocaci�n 
				
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
											 P�gina 1 de 2</fo:block>
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
				deber� comunicarse por escrito al Banco en cualquiera de sus sucursales, y producir� sus efectos, transcurridos 15 d�as de haberse
				notificado la revocaci�n al Banco.
			</fo:block>
		</fo:block>
		
		<fo:block text-align="justify" padding-bottom="1mm">
				<fo:inline font-weight="bold">Ocho) Constancia. </fo:inline>
				Estos mandatos no revocan y son complementarios de otros conferidos al Banco con anterioridad. 
		</fo:block>
		
		<fo:block text-align="left" padding-bottom="2mm">
				<fo:block text-align="justify" padding-bottom="1mm">
				<fo:inline font-weight="bold">Nueve) Costos y Gastos. </fo:inline>
				Ser�n de cargo del Cliente los costos de autorizaci�n notarial y protocolizaci�n de este instrumento, impuestos y dem�s
				gastos que se originen con ocasi�n de la suscripci�n del presente documento.
				<fo:block padding-bottom="1mm" padding-top="2mm">
				El presente instrumento se firma en dos ejemplares de id�ntico tenor, quedando uno en poder de cada una de las partes.   	
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
			<fo:inline>En se�al de aceptaci�n, firma en representaci�n del Banco de Cr�dito e Inversiones
			</fo:inline>
			</fo:block>
			
			<fo:block text-align="center" padding-top="4mm" font-weight="bold">
			<fo:inline>AUTORIZACI�N NOTARIAL
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
											 P�gina 2 de 2</fo:block>
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