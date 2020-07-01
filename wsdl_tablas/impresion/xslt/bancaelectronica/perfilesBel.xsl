<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format">
	<!--Variables-->
	<xsl:variable name="bgcolor">#E7E5EF</xsl:variable>
	<xsl:variable name="lineas">000000</xsl:variable>
	<xsl:variable name="txt">#000000</xsl:variable>
	<xsl:variable name="txt-azul-claro">#0061A5</xsl:variable>
	<xsl:variable name="txt-azul-oscuro">#1069B5</xsl:variable>
	<xsl:variable name="alto-filas">5mm</xsl:variable>
	<xsl:variable name="espacio-subtitulos">2mm</xsl:variable>
	<xsl:variable name="borde-tabla">#CCCCCC</xsl:variable>
	<xsl:variable name="espacio-texto-celda-left">2mm</xsl:variable>
	<xsl:variable name="espacio-texto-celda-top">1mm</xsl:variable>
	<xsl:variable name="espacio-celda-top">2mm</xsl:variable>
	<xsl:variable name="size-fuente-margen">9pt</xsl:variable>
	<xsl:decimal-format name="peso" decimal-separator="." grouping-separator="."/>

	<!-- Variables -->
	<xsl:template match="/">
		<fo:root xmlns:fo="http://www.w3.org/1999/XSL/Format">
			<!-- Propiedades pagina -->
			<fo:layout-master-set>
				<fo:simple-page-master master-name="pagina"
					page-height="28cm"
					page-width="22cm"
					margin-top="1cm"
					margin-bottom="1cm"
					margin-left="2cm"
					margin-right="2cm">
					<fo:region-body margin-top="1cm" margin-bottom="1.5cm" background-color="#ffffff"/> 
					<fo:region-before extent="3cm"/>
					<fo:region-after extent="2cm"/>
				</fo:simple-page-master>
			</fo:layout-master-set>
			<!-- Propiedades pagina -->
			<fo:page-sequence master-reference="pagina" initial-page-number="1" language="en" country="us">
				<fo:static-content flow-name="xsl-region-before">
					<!-- imagen bci -->
					<fo:block space-after="3mm">
						<fo:table table-layout="fixed">
							<fo:table-column column-width="13cm"/>
							<fo:table-column column-width="5cm"/>
							<fo:table-body>
								<fo:table-row>
									<fo:table-cell>
										<fo:external-graphic>
											<xsl:attribute name="src">
												<xsl:value-of select="info/rutaImagen"/>02-logo-bci.gif
											</xsl:attribute>
										</fo:external-graphic>
									</fo:table-cell>
								</fo:table-row>
							</fo:table-body>
						</fo:table>
					</fo:block>
					<!-- imagen bci -->
				</fo:static-content>
				<fo:static-content flow-name="xsl-region-after">
				</fo:static-content>
				<fo:flow flow-name="xsl-region-body">
					<xsl:call-template name="contenido"/>
				</fo:flow>
			</fo:page-sequence> 
		</fo:root>
	</xsl:template>
	
	<xsl:template name="contenido">
		<!-- Titulo Modulo -->
		<fo:block>
			<fo:table table-layout="fixed">
				<fo:table-column column-width="20cm"/>
				<fo:table-body>
					<fo:table-row>
						<fo:table-cell>
							<!-- titulo -->
							<fo:block font-size="10pt" font-weight="bold" text-align="center">
								CONDICIONES GENERALES SERVICIO BCI CASH EXPRESS
							</fo:block>
							<!-- titulo -->
						</fo:table-cell>
					</fo:table-row>
				</fo:table-body>
			</fo:table>
		</fo:block>
		<!-- Titulo Modulo -->
		
		<!-- Separador -->
		<fo:block space-after="1.5cm">
		</fo:block>
		<!-- Separador -->

		
		

		<fo:block font-size="{$size-fuente-margen}"  text-align="justify" color="{$txt}" text-altitude="1.5cm">
		En _____________________________, a______ de___________ de _________, entre el BANCO DE
		CREDITO E INVERSIONES, representado por don ____________________________________, chileno,
		casado, factor de comercio, c�dula nacional de identidad N� _____________, ambos domiciliados en
		Avenida El Golf N� 125, Comuna de Las Condes, Santiago, en adelante el "Banco", por una parte, y por
		la otra, _________________________________________, RUT_________________, en adelante el
		"Cliente", representado por don _________________, c�dula de identidad N�
		__________________________, nacionalidad __________________ estado civil
		________________________ profesi�n ________________________________ y por don
		____________________________, c�dula de identidad N� _________________, nacionalidad
		__________________ estado civil ________________________ profesi�n
		________________________________, todos domiciliados en esta ciudad, calle
		_______________________________, se ha convenido lo siguiente:
		</fo:block>

		<fo:block space-after="1.5cm">
		</fo:block>

		<fo:block font-size="{$size-fuente-margen}"  text-align="justify" color="{$txt}" text-altitude="1.5cm">
		<fo:inline font-weight="bold"> Primero:</fo:inline> Por el presente instrumento, el Cliente contrata con el "Banco" los servicios de Bci Cash
		Express, cuyas condiciones particulares se contienen en las descripciones especificas de cada uno de
		ellos, los cuales se entienden forman parte integrante del presente Contrato. El s�lo hecho de que el
		Cliente utilice los aludidos servicios se entender� como una expresa contrataci�n de los mismos y la
		aceptaci�n de acuerdo a las condiciones operativas y comerciales que han sido ofrecidas por el "Banco"
		y aceptadas por el Cliente.
		</fo:block>

		<fo:block space-after="1cm">
		</fo:block>

		<fo:block font-size="{$size-fuente-margen}"  text-align="justify" color="{$txt}" text-altitude="1.5cm">
		<fo:inline font-weight="bold">Segundo:</fo:inline> La contrataci�n de cada producto, se verificar� a trav�s de la firma del presente contrato o
		mediante la comunicaci�n que en tal sentido efect�e el Cliente, a trav�s de Internet, o en la forma y bajo
		las seguridades que exijan los servicios de Bci Cash Express. Ser� de responsabilidad del cliente proveer
		el equipamiento tecnol�gico necesario para efectuar esta conexi�n.
		</fo:block>

		<fo:block space-after="0.5cm">
		</fo:block>

		<fo:block font-size="{$size-fuente-margen}"  text-align="justify" color="{$txt}" text-altitude="1.5cm">
		Para la prestaci�n de los servicios contratados, el Cliente se interconectar� con el "Banco" por v�a
		remota y ello se efectuar� a trav�s de sus apoderados y representantes debidamente facultados para
		ello, quienes lo har�n en forma estrictamente confidencial, mediante el ingreso de la correspondiente
		clave secreta personal e intransferible que es de exclusivo conocimiento del Cliente y de sus apoderados
		o representantes que �l determine. Por esta raz�n se entender�n como propias y efectuadas por el
		Cliente, las operaciones y transacciones contables, informativas, crediticias o instrucciones electr�nicas
		de cualquiera naturaleza, recibidas en el Banco y que hayan sido cursadas utilizando la clave secreta
		asignada al Cliente, as� haya operado alguien no autorizado al efecto, hecho que el Banco no est� en
		condiciones de verificar. La seguridad y reserva total de las operaciones del Cliente, queda garantizada
		por intermedio del uso de la clave precitada ya que s�lo con ella podr� acceder a la informaci�n deseada
		y realizar las operaciones propias de cada servicio en particular.
		</fo:block>

		<!-- Separador -->
		<fo:block space-after="0.5cm">
		</fo:block>
		<!-- Separador -->

		<fo:block font-size="{$size-fuente-margen}" text-align="justify" color="{$txt}" >
			El Cliente faculta irrevocablemente al "Banco" para suscribir bajo la firma de uno o m�s de sus
			apoderados, aquellos servicios amparados por estas Condiciones o que se ofrecieren en lo sucesivo, y
			que aquel decida contratar, describiendo por v�a remota tales servicios, los que se entender�n
			contratados con la sola recepci�n de una carta v�a correo ordinario o fax, debidamente firmada por el
			Banco en su representaci�n, indicando las condiciones m�nimas requeridas para la operaci�n del
			servicio, las cuales se considerar�n parte integrante del presente contrato.
		</fo:block>
		<!-- Separador -->
		<fo:block space-after="0.5cm">
		</fo:block>
		<!-- Separador -->

		<fo:block font-size="{$size-fuente-margen}" text-align="justify" color="{$txt}" >
			Las partes acuerdan irrevocablemente que las grabaciones telef�nicas y/o archivos computacionales de
			cualquiera �ndole, tales como logs y otros, ya sean de orden electr�nico, inform�tico o telem�tico del
			Banco y/o de terceros constituyen plena prueba de la solicitud, instrucciones, operaciones, transacciones
			y/o realizaci�n de los servicios electr�nicos de que da cuenta el presente contrato, renunciando ambas
			partes a objetarlos o impugnarlos, incluso judicialmente. El Cliente autoriza expresa e irrevocablemente
			al Banco, con respeto a las voces que contienen las instrucciones impartidas telef�nicamente, para
			grabarlas, captarlas, reproducirlas y, en general, exhibirlas ante quien fuere menester. El Cliente no
			podr� impugnar o negar una instrucci�n recibida por el Banco a trav�s de los mecanismos antes
			indicados.
		</fo:block>
			<!-- Separador -->
			<fo:block space-after="0.5cm">
			</fo:block>
			<!-- Separador -->
			<fo:block font-size="{$size-fuente-margen}" text-align="justify" color="{$txt}" >
			<fo:inline font-weight="bold">Tercero: </fo:inline>El Banco se compromete a entregar los servicios en forma eficiente y oportuna, salvo por
			razones de fuerza mayor o caso fortuito, facult�ndosele a suspender el funcionamiento de los mismos en
			forma total o parcial, en cuyo caso aplicar� los procedimientos de contingencia que se hayan definido. En
			vista de lo anterior el Banco queda liberado de toda responsabilidad por los da�os o perjuicios eventuales
			que pudiere ocasionar, tanto al Cliente como a terceros.
			</fo:block>
			<!-- Separador -->
			<fo:block space-after="0.5cm">
			</fo:block>
			<!-- Separador -->
			<fo:block font-size="{$size-fuente-margen}" text-align="justify" color="{$txt}" >
			<fo:inline font-weight="bold">Cuarto:</fo:inline> Las tarifas que se prev�n para el presente contrato, se mantendr�n vigentes siempre y cuando
			se cumplan los acuerdos y condiciones de reciprocidad estipuladas en el anexo respectivo y que forman
			parte del mismo, en cada uno de los servicios espec�ficos que componen este contrato, todos los cuales
			el Cliente declara conocer y se obliga a cumplir. Si no lo hiciere, quedar� el Banco expresa e
			irrevocablemente facultado para utilizar el valor base indicado en la tabla de tarifas, de cada servicio.
			</fo:block>
			<!-- Separador -->
			<fo:block space-after="0.5cm">
			</fo:block>
			<!-- Separador -->
			<fo:block font-size="{$size-fuente-margen}" text-align="justify" color="{$txt}" >
			<fo:inline font-weight="bold">Quinto:</fo:inline> El Cliente deber� adoptar los resguardos que estime necesarios para proteger el acceso a los
			equipos, programas y aplicaciones de su dependencia. Cualquier filtraci�n o mal uso que se hiciera de
			ellos o de sus conexiones, elementos de transmisi�n u otro, ser�n de su exclusiva responsabilidad.
			Respecto a las personas que el Cliente autorice a utilizar los servicios, es de su exclusiva
			responsabilidad su designaci�n y la forma de hacerlo, sin que al Banco corresponda verificar, confrontar
			o corroborar que ellos est�n acreditados como sus representantes ni que las operaciones se hayan
			materializado efectivamente por su intermedio.
			</fo:block>
			<!-- Separador -->
			<fo:block space-after="0.5cm">
			</fo:block>
			<!-- Separador -->
			<fo:block font-size="{$size-fuente-margen}" text-align="justify" color="{$txt}" >
			Cada vez que el Cliente defina un usuario, dotado de facultades de apoderado o contralor conforme se
			prev� en la cl�usula sexta siguiente, el que ciertamente ha de estar previamente registrado en el Banco
			como apoderado, deber� enviar a �ste una carta individualiz�ndolo en dicho rol. Dicha carta deber�
			encontrarse firmada por alg�n representante del Cliente, debidamente registrado en el Banco. Esta carta
			deber� estar adjunta al recibo conforme por parte de la persona definida como apoderado,
			entendi�ndose con ello que se le ha creado como usuario; que ha recibido una clave secreta y que las
			acciones realizadas a nombre de dicho usuario son de su responsabilidad. Con estos elementos el Banco
			proceder� a habilitar el uso del producto por parte del usuario definido como "apoderado".
			</fo:block>
			<!-- Separador -->
			<fo:block space-after="0.5cm">
			</fo:block>
			<!-- Separador -->
			<fo:block font-size="{$size-fuente-margen}" text-align="justify" color="{$txt}" >
			<fo:inline font-weight="bold">Sexto:</fo:inline> Para tener acceso y operar los servicios electr�nicos el Cliente deber� utilizar los procedimientos
			y/o medios de seguridad, identificaci�n e integridad que el Banco ha implementado o implemente en el
			futuro, para cada uno de ellos, y que pudieren estar asociados a los elementos requeridos para su
			utilizaci�n, tales como firma electr�nica --simple o avanzada-- tarjetas magn�ticas, n�mero de rut y/u
			otros, todos los cuales ser�n previamente informados por el Banco.
			</fo:block>
			<!-- Separador -->
			<fo:block space-after="0.5cm">
			</fo:block>
			<!-- Separador -->
			<fo:block font-size="{$size-fuente-margen}" text-align="justify" color="{$txt}" >
			El Banco realizar�, en l�nea o no, todas las instrucciones que emita el Cliente a trav�s de los servicios
			electr�nicos, instrucciones que ser�n consideradas como mandatos irrevocables para todos los efectos
			legales; quedando el Banco irrevocablemente legitimado para cumplirlas y efectuar, por consiguiente, los
			cargos, abonos u otros, as� como los dem�s actos que procedan. El mandante releva al Banco o a quien
			�sta designe de la obligaci�n de rendir cuenta de los mandatos establecidos en este instrumento.
			Las partes dejan constancia y declaran que las claves de acceso, tarjetas y la firma electr�nica son
			secretas, personales e intransferibles, siendo de exclusiva responsabilidad del Cliente mantener la
			debida diligencia y cuidado en su utilizaci�n; por lo anterior, el Cliente ser� responsable por los perjuicios
			que pueda ocasionar al Banco, al propio Cliente y/o a terceros, el mal uso de aquellas y de los servicios
			electr�nicos, como tambi�n de los perjuicios al Banco, al propio Cliente y/o a terceros derivados de su
			extrav�o, hurto, robo, mal uso, o cualquier otra circunstancia, sea que ellos provengan de su hecho o
			culpa o del caso fortuito o de fuerza mayor, liberando, en consecuencia, al Banco de toda
			responsabilidad.
			</fo:block>
			<!-- Separador -->
			<fo:block space-after="0.5cm">
			</fo:block>
			<!-- Separador -->
			<fo:block font-size="{$size-fuente-margen}" text-align="justify" color="{$txt}" >
			En caso de extrav�o, hurto, robo, mal uso, o cualquier otra circunstancia similar, de aquellos elementos
			de seguridad y desde luego de la firma electr�nica, el Cliente se obliga a dar aviso inmediato y por
			escrito al Banco, en cualquiera de sus oficinas. Cesar� la responsabilidad del Cliente una vez
			transcurrido un d�a h�bil bancario contado desde el momento en que el Banco reciba el mencionado
			aviso. Existen servicios electr�nicos en los que ser� requisito necesario para la utilizaci�n de los mismos,
			que el Cliente cambie en la primera oportunidad que opere, las claves o la firma electr�nica, liberando el
			Cliente al Banco de toda responsabilidad en caso de no hacerlo.
			</fo:block>
			<!-- Separador -->
			<fo:block space-after="0.5cm">
			</fo:block>
			<!-- Separador -->
			<fo:block font-size="{$size-fuente-margen}" text-align="justify" color="{$txt}" >
			El Banco tiene la facultad de solicitar al Cliente la sustituci�n de las claves o de la firma electr�nica,
			cuando as� lo aconsejen razones de car�cter t�cnico, cuya calificaci�n corresponder� exclusivamente al
			Banco. Por el presente acto, el Cliente autoriza expresamente al Banco, para que en su nombre y
			representaci�n, solicite y obtenga de la entidad prestadora de servicios de certificaci�n de firma
			electr�nica acreditada por la Subsecretar�a de Econom�a, Fomento y Reconstrucci�n o quien cumpla la
			funci�n de acreditaci�n, designada por el propio Banco, en adelante tambi�n el Certificador, la firma
			electr�nica avanzada, sus Reglamentos y posteriores modificaciones. Para ello, el Banco, podr� firmar,
			suscribir todos los documentos e instrumentos, realizar todos los actos, y presentar todos los
			instrumentos p�blicos y/o privados requeridos por el Certificador. El Cliente se obliga a efectuar, con la
			mayor diligencia posible, todos los actos tendientes a obtener la firma electr�nica avanzada de acuerdo a
			este punto, as� como presentar la documentaci�n que le sea solicitada.
			</fo:block>
			<!-- Separador -->
			<fo:block space-after="0.5cm">
			</fo:block>
			<!-- Separador -->
			<fo:block font-size="{$size-fuente-margen}" text-align="justify" color="{$txt}" >
			El Cliente autoriza al Banco para comunicar, transmitir, transferir y/o proporcionar a sus filiales y/o a
			terceros cualesquiera datos de car�cter personal o protegidos por la Ley General de Bancos y por otras
			disposiciones legales, cuando ello fuere necesario o conveniente para el adecuado perfeccionamiento,
			materializaci�n y/o implementaci�n de los productos y/o servicios que se pongan a disposici�n del
			Cliente a trav�s de los servicios electr�nicos; como tambi�n cuando ello fuere necesario o conveniente a
			los efectos de agregar nuevos atributos o beneficios o de implementar modalidades o caracter�sticas que
			mejoren la calidad y/u oportunidad de prestaci�n de servicios y/o productos puestos a su disposici�n por
			el Banco, sus filiales y/o terceros a trav�s de los mencionados servicios. A mayor abundamiento y
			considerando esta expl�cita autorizaci�n, las partes declaran expresamente que lo anterior no constituye
			infracci�n al art�culo 1� de la Ley de Cuentas Corrientes Bancarias y Cheques, ni al art�culo 154 de la Ley
			General de Bancos, en lo relativo al secreto bancario.
			</fo:block>
			<!-- Separador -->
			<fo:block space-after="0.5cm">
			</fo:block>
			<!-- Separador -->
			<fo:block font-size="{$size-fuente-margen}" text-align="justify" color="{$txt}" >
			Para poder operar los servicios asociados a las presentes Condiciones Generales, el Cliente estar�
			provisto de una clave denominada "CLAVE DE SUPERVISOR", que corresponde a la �nica entregada
			por el Banco, y que le permite definir, asignar, mantener y eliminar usuarios de estos productos; perfiles
			de servicios y acceso a �stos; a su turno, el Cliente podr� asignar las denominadas "CLAVES DE
			USUARIO", las que permiten a cada uno de �stos, en forma individual, operar determinados servicios.
			Se definen tres niveles de "usuarios", que corresponden a operador, contralor y apoderado, sea este
			virtual o de firmas y poderes, siendo �ste �ltimo el �nico adem�s facultado para efectuar transferencias
			de fondos distintas de pagos propiamente tal. El usuario apoderado de firmas y poderes debe hallarse
			registrado en el Banco como tal, sobre la base de los poderes formalmente otorgados por el Cliente y
			utilizar para la firma la password o Firma Electr�nica.
			</fo:block>
			<!-- Separador -->
			<fo:block space-after="0.5cm">
			</fo:block>
			<!-- Separador -->
			<fo:block font-size="{$size-fuente-margen}" text-align="justify" color="{$txt}" >
			<fo:inline font-weight="bold">S�ptimo:</fo:inline> El Cliente puede informar a los beneficiarios de los servicios a los cuales se ha adscrito, para
			cuyo efecto podr� utilizar los medios de publicidad que estime, incluso la propia documentaci�n
			respaldatoria de los servicios. En todo caso, toda publicidad en que se utilice el nombre o logo del
			"Banco" deber� contar con la aprobaci�n previa de �ste �ltimo. Adicionalmente, el Cliente autoriza
			expresamente al Banco para que �ste informe a los beneficiarios o terceros que se relacionen con el
			Cliente, por correspondencia o a trav�s de cualquier otro medio, acerca de la firma del presente
			convenio, como as� tambi�n para promocionar entre ellos otros productos y servicios que proporciona el
			Banco, pero sin que constituya una obligaci�n para el Banco el hacerlo.
			</fo:block>
			<!-- Separador -->
			<fo:block space-after="0.5cm">
			</fo:block>
			<!-- Separador -->
			<fo:block font-size="{$size-fuente-margen}" text-align="justify" color="{$txt}" >
			<fo:inline font-weight="bold">Octavo:</fo:inline> El Cliente acepta desde ya todas las condiciones, procedimientos y controles internos que el
			Banco utilice para el cumplimiento del presente Contrato y que sean compatibles con el mismo, y en
			especial con las obligaciones asumidas por las partes.
			</fo:block>
			<!-- Separador -->
			<fo:block space-after="0.5cm">
			</fo:block>
			<!-- Separador -->
			<fo:block font-size="{$size-fuente-margen}" text-align="justify" color="{$txt}" >
			<fo:inline font-weight="bold">Noveno:</fo:inline> El Cliente faculta en este acto irrevocablemente al Banco para efectuar cargos en la cuenta
			corriente o vista asignada para cada servicio especifico, con el fin de regularizar eventuales cargos o
			abonos improcedentes o provocados por errores o fallas computacionales, procesos operativos o
			administrativos o de digitaci�n.
			</fo:block>
			<!-- Separador -->
			<fo:block space-after="0.5cm">
			</fo:block>
			<!-- Separador -->
			<fo:block font-size="{$size-fuente-margen}" text-align="justify" color="{$txt}" >
			<fo:inline font-weight="bold">D�cimo:</fo:inline> Si el Cliente instruyere pagos sin contar al efecto con fondos disponibles suficientes, el Banco
			no los efectuar�. Sin embargo se entender� que esa sola instrucci�n constituye una solicitud de cr�dito
			hasta por el monto instruido pagar, pudiendo el Banco libremente acceder a ello o denegarlo, sin
			necesidad de expresar causa. El solo hecho que el Banco efect�e los pagos ordenados en tales
			condiciones, importa su consentimiento en conceder el cr�dito.
			</fo:block>
			<!-- Separador -->
			<fo:block space-after="0.5cm">
			</fo:block>
			<!-- Separador -->
			<fo:block font-size="{$size-fuente-margen}" text-align="justify" color="{$txt}" >
			Con el prop�sito de documentar el cr�dito as� contra�do, el Cliente otorga en este mismo acto y por el
			presente instrumento, un mandato mercantil e irrevocable al Banco y a la empresa "Servicios de
			Normalizaci�n y Cobranza - Normaliza, S.A.", sociedad filial del Banco, para que indistintamente �sta o
			el Banco, autocontratando, suscriban un pagar� a la orden del mismo Banco, por el importe
			correspondiente a las sumas que el Cliente resultare adeudando a aquel, como consecuencia de los
			pagos as� instruidos y efectivamente verificados, pudiendo desde luego enterar el impuesto
			correspondiente a dicho pagar�, protestarlo y en definitiva proceder a su cobranza judicial, incluyendo el
			monto del mismo, el importe que se resultare adeudando, m�s impuestos, intereses y reajustes, bastar�
			para acreditar que se ha verificado el pago en las condiciones se�aladas y en consecuencia que se ha
			concedido el cr�dito, el que figuren debidamente canceladas las cuentas instruidas pagar por el Cliente.
			</fo:block>
			<!-- Separador -->
			<fo:block space-after="0.5cm">
			</fo:block>
			<!-- Separador -->
			<fo:block font-size="{$size-fuente-margen}" text-align="justify" color="{$txt}" >
			<fo:inline font-weight="bold">Und�cimo:</fo:inline> Las tarifas, comisiones e impuestos que se originen con ocasi�n de �ste contrato y sus
			anexos, ser�n cargados en la Cuenta Corriente definida para operar cada servicio en particular dentro de
			los primeros diez d�as h�biles del mes siguiente al de la prestaci�n del servicio.
			</fo:block>
			<!-- Separador -->
			<fo:block space-after="0.5cm">
			</fo:block>
			<!-- Separador -->
			<fo:block font-size="{$size-fuente-margen}" text-align="justify" color="{$txt}" >
			Sin perjuicio de otros derechos que correspondan al Banco, en el evento que el cargo autom�tico de la
			tarifa en la cuenta corriente prevista para cada producto espec�fico, sea rechazado por cualquier causa o
			el Cliente no pague oportunamente los servicios correspondientes, el monto de la factura
			correspondiente devengar� el inter�s moratorio m�s alto que legalmente sea procedente estipular a partir
			de la fecha del no pago, por cualquier causa.
			</fo:block>
			<!-- Separador -->
			<fo:block space-after="0.5cm">
			</fo:block>
			<!-- Separador -->
			<fo:block font-size="{$size-fuente-margen}" text-align="justify" color="{$txt}" >
			<fo:inline font-weight="bold">Duod�cimo:</fo:inline> El Banco podr� modificar tanto la comisi�n fija mensual como la facturaci�n m�nima
			mensual de todos y cada uno de los servicios contratados y que constan en los respectivos anexos,
			incluso aument�ndolas, debiendo al efecto comunicarlas al Cliente por escrito, con una antelaci�n no
			inferior a 30 d�as con respecto a la fecha en que comiencen a regir las nuevas tarifas. Dicha
			comunicaci�n podr� incluirse en la cartola de cuentas corrientes.
			</fo:block>
			<!-- Separador -->
			<fo:block space-after="0.5cm">
			</fo:block>
			<!-- Separador -->
			<fo:block font-size="{$size-fuente-margen}" text-align="justify" color="{$txt}" >
			<fo:inline font-weight="bold">Decimotercero:</fo:inline> El presente Convenio comienza a regir a contar de esta fecha, y tendr� duraci�n
			indefinida, pero cualesquiera de las partes podr� ponerle t�rmino dando a la otra un aviso por carta
			certificada con 30 d�as de anticipaci�n a la fecha en que deba expirar, sin necesidad de expresar causa.
			Esta revocaci�n del contrato implica la revocaci�n de todos los servicios contratados por el Cliente. Con
			todo, el Banco se reserva el derecho de ponerle t�rmino en cualquier momento, sin responsabilidad
			alguna de su parte ni aviso de ninguna especie en los siguientes casos:
			</fo:block>
			<fo:block space-after="0.5cm">
			</fo:block>
			<fo:block font-size="{$size-fuente-margen}" text-align="justify" color="{$txt}" >
			a) Si por cualquier circunstancia el Banco o el Cliente procediera a cerrar La(s) cuenta(s) corriente(s) o
			    vista(s) a su nombre.
			</fo:block>
			<fo:block space-after="0.5cm">
			</fo:block>
			<fo:block font-size="{$size-fuente-margen}" text-align="justify" color="{$txt}" >
			b) Si el Cliente a trav�s de sus mandatarios, no administrare en forma adecuada su cuenta corriente,
			    hiciere mal uso del equipamiento asociado al servicio, o realizare cualquier hecho, acci�n o
			                   aplicaci�n del sistema que no corresponda a la naturaleza del servicio o lo utilizase con un prop�sito
			                   ajeno a los negocios que lo ligan con el Banco.
			</fo:block>
			
			<!-- Separador -->
			<fo:block space-after="0.5cm">
			</fo:block>
			<!-- Separador -->
			<fo:block font-size="{$size-fuente-margen}" text-align="justify" color="{$txt}" >
			Cabe se�alar, que la revocaci�n de este contrato implica la revocaci�n de los servicios contratados.
			Todo lo anterior es, sin perjuicio de la responsabilidad civil y/o penal en que pudiese incurrir el Cliente o
			sus Apoderados o mandatarios, por el inadecuado uso del servicio.
			</fo:block>
			<!-- Separador -->
			<fo:block space-after="0.5cm">
			</fo:block>
			<!-- Separador -->
			<fo:block font-size="{$size-fuente-margen}" text-align="justify" color="{$txt}" >
			<fo:inline font-weight="bold">Decimocuarto:</fo:inline> Para todos los efectos que se deriven de este contrato, las partes fijan su domicilio en la
			Ciudad y Comuna de.............................................. Se tendr� como domicilio del Cliente, aquel que se
			encuentre registrado en el Banco en relaci�n con su(s) cuenta(s) corriente(s).
			</fo:block>
			<!-- Separador -->
			<fo:block space-after="0.5cm">
			</fo:block>
			<!-- Separador -->
			<fo:block font-size="{$size-fuente-margen}" text-align="justify" color="{$txt}" >
			<fo:inline font-weight="bold">Decimoquinto:</fo:inline> Cualquier duda o dificultad que surja entre las partes con motivo de las presentes
			Condiciones Generales, as� como con ocasi�n de los Anexos relativos a cada producto espec�fico o sus
			documentos complementarios o modificatorios, ya se refiera a su interpretaci�n, cumplimiento, validez,
			terminaci�n o cualquier otra causa relacionada con este contrato o con dichos Anexos, se resolver� por
			medio de un �rbitro arbitrador, designado de com�n acuerdo por las partes y a falta de tal acuerdo, la
			designaci�n se har� por los Tribunales de Justicia. Este �rbitro conocer� breve y sumariamente, sin
			forma de juicio y en contra de sus resoluciones no proceder� recurso alguno.
			</fo:block>
			<!-- Separador -->
			<fo:block space-after="0.5cm">
			</fo:block>
			<!-- Separador -->
			<fo:block font-size="{$size-fuente-margen}" text-align="justify" color="{$txt}" >
			<fo:inline font-weight="bold">Decimosexto:</fo:inline> El presente contrato se somete a lo dispuesto en el art�culo 3� de la Ley N� 19.799, sobre
			Documentos Electr�nicos, Firma Electr�nica y Servicios de Certificaci�n de dicha Firma, firm�ndose en
			dos ejemplares, quedando uno de ellos en poder del Banco y el otro para el Cliente.
			</fo:block>
			<!-- Separador -->
			<fo:block space-after="0.5cm">
			</fo:block>
			<!-- Separador -->

			<fo:block font-size="{$size-fuente-margen}" text-align="justify" color="{$txt}" >
			La personer�a del apoderado del Banco consta de escritura p�blica de fecha ________________,
			otorgada ante el Notario de Santiago don _________________________________________________
			</fo:block>
			<fo:block space-after="0.5cm">
			</fo:block>
			<fo:block font-size="{$size-fuente-margen}" text-align="justify" color="{$txt}" >
			La personer�a del apoderado del Cliente consta de escritura p�blica de fecha ______________________
			extendida en la Notar�a de don ___________________________________________________________
			</fo:block>
			<fo:block space-after="0.5cm">
			</fo:block>
					<fo:table table-layout="fixed">
						<fo:table-column column-width="10cm" />
						<fo:table-column column-width="10cm"/>
						<fo:table-body>
							<fo:table-row>
								<fo:table-cell>
									<fo:block font-size="{$size-fuente-margen}" text-align="justify" color="{$txt}" >
										___________________________________________ 
									</fo:block>
								</fo:table-cell>
								<fo:table-cell>
									<fo:block font-size="{$size-fuente-margen}" text-align="justify" color="{$txt}" >
										___________________________________________  							
									</fo:block>
								</fo:table-cell>
							</fo:table-row>
							<fo:table-row>
								<fo:table-cell>
									<fo:block font-size="{$size-fuente-margen}" text-align="justify" color="{$txt}" >
										p.p. Banco de Cr�dito e Inversiones
									</fo:block>
								</fo:table-cell>
								<fo:table-cell>
									<fo:block font-size="{$size-fuente-margen}" text-align="center" color="{$txt}" >
										p.p. Cliente  							
									</fo:block>
								</fo:table-cell>
							</fo:table-row>
							<fo:table-row>
								<fo:table-cell>
									<fo:block space-after="1cm"></fo:block>
								</fo:table-cell>
								<fo:table-cell>
									<fo:block space-after="1cm"></fo:block>
								</fo:table-cell>
							</fo:table-row>
							<fo:table-row>
								<fo:table-cell>
									<fo:block space-after="1cm"></fo:block>
								</fo:table-cell>
								<fo:table-cell>
									<fo:block font-size="{$size-fuente-margen}" text-align="center" color="{$txt}" >
										RUT: _________________________
									</fo:block>
									<fo:block space-after="0.5cm"></fo:block>
									<fo:block font-size="{$size-fuente-margen}" text-align="center" color="{$txt}" >
										Nombre: _________________________  							
									</fo:block>
								</fo:table-cell>
							</fo:table-row>
							<fo:table-row>
								<fo:table-cell>
									<fo:block space-after="1cm"></fo:block>
								</fo:table-cell>
								<fo:table-cell>
									<fo:block space-after="1cm"></fo:block>
								</fo:table-cell>
							</fo:table-row>
							<fo:table-row>
								<fo:table-cell>
									<fo:block font-size="{$size-fuente-margen}" text-align="center" color="{$txt}" >
										"Este documento consta de 4 hojas"
									</fo:block>
								</fo:table-cell>
								<fo:table-cell>
									<fo:block space-after="0.5cm"></fo:block>
								</fo:table-cell>
							</fo:table-row>
						</fo:table-body>
					</fo:table>	

				<fo:block font-size="5pt">
					<fo:leader color="{$lineas}" leader-pattern="rule" leader-length="18cm"/>
				</fo:block>

					<fo:table table-layout="fixed">
						<fo:table-column column-width="5cm" />
						<fo:table-column column-width="5cm"/>
						<fo:table-column column-width="5cm" />
						<fo:table-column column-width="5cm"/>
						<fo:table-body>
							<fo:table-row>
								<fo:table-cell padding-before="0.4cm">
									<fo:block font-size="{$size-fuente-margen}" text-align="justify" color="{$txt}" >
										<fo:inline font-weight="bold">  USO INTERNO DEL BCI</fo:inline>
									</fo:block>
								</fo:table-cell>
								<fo:table-cell padding-before="0.2cm">
									<fo:block font-size="{$size-fuente-margen}" text-align="justify" color="{$txt}" >
										
									</fo:block>
								</fo:table-cell>
								<fo:table-cell padding-before="0.2cm">
									<fo:block font-size="{$size-fuente-margen}" text-align="justify" color="{$txt}" >
										 
									</fo:block>
								</fo:table-cell>
								<fo:table-cell padding-before="0.2cm">
									<fo:block font-size="{$size-fuente-margen}" text-align="justify" color="{$txt}" >
										
									</fo:block>
								</fo:table-cell>
							</fo:table-row>
							<fo:table-row>
								<fo:table-cell padding-before="0.2cm">
									<fo:block font-size="{$size-fuente-margen}" text-align="justify" color="{$txt}" >
										Oficina BCI&#0160;&#0160;&#0160; :
									</fo:block>
								</fo:table-cell>
								<fo:table-cell padding-before="0.2cm">
									<fo:block font-size="{$size-fuente-margen}" text-align="justify" color="{$txt}" >
										_____________________________
									</fo:block>
								</fo:table-cell>
								<fo:table-cell padding-before="0.2cm">
									<fo:block font-size="{$size-fuente-margen}" text-align="justify" color="{$txt}" >
										 
									</fo:block>
								</fo:table-cell>
								<fo:table-cell padding-before="0.2cm">
									<fo:block font-size="{$size-fuente-margen}" text-align="justify" color="{$txt}" >
										
									</fo:block>
								</fo:table-cell>
							</fo:table-row>
							<fo:table-row>
								<fo:table-cell padding-before="0.2cm">
									<fo:block font-size="{$size-fuente-margen}" text-align="justify" color="{$txt}" >
										Ejecutivo BCI&#0160;&#0160;&#0160; :
									</fo:block>
								</fo:table-cell>
								<fo:table-cell padding-before="0.2cm">
									<fo:block font-size="{$size-fuente-margen}" text-align="justify" color="{$txt}" >
										_____________________________
									</fo:block>
								</fo:table-cell>
								<fo:table-cell padding-before="0.2cm">
									<fo:block font-size="{$size-fuente-margen}" text-align="justify" color="{$txt}" >
										&#0160;&#0160;&#0160; &#0160;&#0160;&#0160; Anexo&#0160;&#0160;&#0160; : 
									</fo:block>
								</fo:table-cell>
								<fo:table-cell padding-before="0.2cm" >
									<fo:block font-size="{$size-fuente-margen}" text-align="justify" color="{$txt}" >
										________
									</fo:block>
								</fo:table-cell>
							</fo:table-row>
							<fo:table-row>
								<fo:table-cell padding-before="0.2cm">
									<fo:block font-size="{$size-fuente-margen}" text-align="justify" color="{$txt}" >
										Correo electr�nico&#0160;&#0160;&#0160; : 
									</fo:block>
								</fo:table-cell>
								<fo:table-cell padding-before="0.2cm">
									<fo:block font-size="{$size-fuente-margen}" text-align="justify" color="{$txt}" >
										_____________________________
									</fo:block>
								</fo:table-cell>
								<fo:table-cell padding-before="0.2cm">
									<fo:block font-size="{$size-fuente-margen}" text-align="justify" color="{$txt}" >
										 
									</fo:block>
								</fo:table-cell>
								<fo:table-cell padding-before="0.2cm">
									<fo:block font-size="{$size-fuente-margen}" text-align="justify" color="{$txt}" >
										
									</fo:block>
								</fo:table-cell>
							</fo:table-row>
							<fo:table-row>
								<fo:table-cell padding-before="0.2cm">
									<fo:block font-size="{$size-fuente-margen}" text-align="justify" color="{$txt}" >
										
									</fo:block>
								</fo:table-cell>
								<fo:table-cell padding-before="0.2cm">
									<fo:block font-size="{$size-fuente-margen}" text-align="justify" color="{$txt}" >
										
									</fo:block>
								</fo:table-cell>
								<fo:table-cell padding-before="0.2cm">
									<fo:block font-size="{$size-fuente-margen}" text-align="justify" color="{$txt}" >
										
									</fo:block>
								</fo:table-cell>
								<fo:table-cell padding-before="0.2cm">
									<fo:block font-size="{$size-fuente-margen}" text-align="justify" color="{$txt}" >
										<fo:inline font-weight="bold">Timbre</fo:inline>
									</fo:block>
								</fo:table-cell>
							</fo:table-row>
							<fo:table-row>
								<fo:table-cell padding-before="0.2cm">
									<fo:block font-size="{$size-fuente-margen}" text-align="justify" color="{$txt}" >
										<fo:inline font-weight="bold">V�B� Ejecutivo</fo:inline> &#0160;&#0160;&#0160; : 
									</fo:block>
								</fo:table-cell>
								<fo:table-cell padding-before="0.2cm">
									<fo:block font-size="{$size-fuente-margen}" text-align="justify" color="{$txt}" >
										_____________________________
									</fo:block>
								</fo:table-cell>
								<fo:table-cell padding-before="0.2cm">
									<fo:block font-size="{$size-fuente-margen}" text-align="justify" color="{$txt}" >
										&#0160;&#0160;&#0160; &#0160;&#0160;&#0160; <fo:inline font-weight="bold">Fecha</fo:inline>
										&#0160;&#0160;&#0160; : 
									</fo:block>
								</fo:table-cell>
								<fo:table-cell padding-before="0.2cm">
									<fo:block font-size="{$size-fuente-margen}" text-align="justify" color="{$txt}" >
										_______________
									</fo:block>
								</fo:table-cell>
							</fo:table-row>
							<fo:table-row>
								<fo:table-cell padding-before="0.2cm">
									<fo:block font-size="{$size-fuente-margen}" font-weight="bold" text-align="justify" color="{$txt}" >
										<fo:inline font-weight="bold">V�B� ACA JOP</fo:inline> &#0160;&#0160;&#0160; : 
									</fo:block>
								</fo:table-cell>
								<fo:table-cell padding-before="0.2cm">
									<fo:block font-size="{$size-fuente-margen}" text-align="justify" color="{$txt}" >
										_____________________________
									</fo:block>
								</fo:table-cell>
								<fo:table-cell padding-before="0.2cm">
									<fo:block font-size="{$size-fuente-margen}" text-align="justify" color="{$txt}" >
										&#0160;&#0160;&#0160; &#0160;&#0160;&#0160; <fo:inline font-weight="bold">Fecha</fo:inline>
										&#0160;&#0160;&#0160; : 
									</fo:block>
								</fo:table-cell>
								<fo:table-cell padding-before="0.2cm">
									<fo:block font-size="{$size-fuente-margen}" text-align="justify" color="{$txt}" >
										_______________
									</fo:block>
								</fo:table-cell>
							</fo:table-row>
							<fo:table-row>
								<fo:table-cell padding-before="0.2cm">
									<fo:block font-size="{$size-fuente-margen}" text-align="justify" color="{$txt}" >
										Ejecutivo BEL BCI&#0160;&#0160;&#0160; : 
									</fo:block>
								</fo:table-cell>
								<fo:table-cell padding-before="0.2cm">
									<fo:block font-size="{$size-fuente-margen}" text-align="justify" color="{$txt}" >
										_______________________
									</fo:block>
								</fo:table-cell>
								<fo:table-cell padding-before="0.2cm">
									<fo:block font-size="{$size-fuente-margen}" text-align="justify" color="{$txt}" >
										&#0160;&#0160;&#0160; &#0160;&#0160;&#0160; Correo electr�nico&#0160;&#0160;&#0160; :   
									</fo:block>
								</fo:table-cell>
								<fo:table-cell padding-before="0.2cm">
									<fo:block font-size="{$size-fuente-margen}" text-align="justify" color="{$txt}" >
										_____________
									</fo:block>
								</fo:table-cell>
							</fo:table-row>
						</fo:table-body>
					</fo:table>	


		<!-- Separador -->
		<fo:block space-after="25cm">
		</fo:block>
		<!-- Separador -->

	<fo:block>
			<fo:table table-layout="fixed">
				<fo:table-column column-width="18cm"/>
				<fo:table-body>
					<fo:table-row>
						<fo:table-cell>
							<!-- titulo -->
							<fo:block font-size="10pt" font-weight="bold" text-align="left">
								INFORMACION REQUERIDA PARA HABILITAR LOS SERVICIOS
							</fo:block>
							<!-- titulo -->
						</fo:table-cell>
					</fo:table-row>
				</fo:table-body>
			</fo:table>
		</fo:block>
		<!-- Titulo Modulo -->
		
		
		<fo:block space-after="0.5cm"></fo:block>
		

		<fo:block font-size="{$size-fuente-margen}"  text-align="left" color="{$txt}" text-altitude="1.5cm">
		<fo:inline font-weight="bold"> DATOS B�SICOS DEL CONVENIO DE SERVICIO</fo:inline>
		</fo:block>		
			
				<fo:table table-layout="fixed">
						<fo:table-column column-width="5cm" />
						<fo:table-column column-width="10cm"/>
						<fo:table-body>
							<fo:table-row>
								<fo:table-cell padding-before="0.2cm">
									<fo:block font-size="{$size-fuente-margen}" text-align="justify" color="{$txt}" >
										RUT Empresa &#0160;&#0160;&#0160; 
									</fo:block>
								</fo:table-cell>
								<fo:table-cell padding-before="0.2cm">
									<fo:block font-size="{$size-fuente-margen}" text-align="justify" color="{$txt}" >
										: &#0160;&#0160;<xsl:value-of select="bel/datos-basicos/rut"/>
									</fo:block>
								</fo:table-cell>
							</fo:table-row>
							<fo:table-row>
								<fo:table-cell padding-before="0.2cm">
									<fo:block font-size="{$size-fuente-margen}" text-align="justify" color="{$txt}" >
										Raz�n Social &#0160;&#0160;&#0160; 
									</fo:block>
								</fo:table-cell>
								<fo:table-cell padding-before="0.2cm">
									<fo:block font-size="{$size-fuente-margen}" text-align="justify" color="{$txt}" >
										: &#0160;&#0160;<xsl:value-of select="bel/datos-basicos/nombre"/>
									</fo:block>
								</fo:table-cell>
							</fo:table-row>
							<fo:table-row>
								<fo:table-cell padding-before="0.2cm">
									<fo:block font-size="{$size-fuente-margen}" text-align="justify" color="{$txt}" >
										Direcci�n &#0160;&#0160;&#0160; 
									</fo:block>
								</fo:table-cell>
								<fo:table-cell padding-before="0.2cm">
									<fo:block font-size="{$size-fuente-margen}" text-align="justify" color="{$txt}" >
										: &#0160;&#0160;<xsl:value-of select="bel/datos-basicos/direccion"/>
									</fo:block>
								</fo:table-cell>
							</fo:table-row>
							<fo:table-row>
								<fo:table-cell padding-before="0.2cm">
									<fo:block font-size="{$size-fuente-margen}" text-align="justify" color="{$txt}" >
										Comuna &#0160;&#0160;&#0160; 
									</fo:block>
								</fo:table-cell>
								<fo:table-cell padding-before="0.2cm">
									<fo:block font-size="{$size-fuente-margen}" text-align="justify" color="{$txt}" >
										: &#0160;&#0160;<xsl:value-of select="bel/datos-basicos/comuna"/>
									</fo:block>
								</fo:table-cell>
							</fo:table-row>
							<fo:table-row>
								<fo:table-cell padding-before="0.2cm">
									<fo:block font-size="{$size-fuente-margen}" text-align="justify" color="{$txt}" >
										Ciudad &#0160;&#0160;&#0160; 
									</fo:block>
								</fo:table-cell>
								<fo:table-cell padding-before="0.2cm">
									<fo:block font-size="{$size-fuente-margen}" text-align="justify" color="{$txt}" >
										: &#0160;&#0160;<xsl:value-of select="bel/datos-basicos/ciudad"/>
									</fo:block>
								</fo:table-cell>
							</fo:table-row>
							<fo:table-row>
								<fo:table-cell padding-before="0.2cm">
									<fo:block font-size="{$size-fuente-margen}" text-align="justify" color="{$txt}" >
										Tel�fono &#0160;&#0160;&#0160; 
									</fo:block>
								</fo:table-cell>
								<fo:table-cell padding-before="0.2cm">
									<fo:block font-size="{$size-fuente-margen}" text-align="justify" color="{$txt}" >
										: &#0160;&#0160;<xsl:value-of select="bel/datos-basicos/telefono"/>
									</fo:block>
								</fo:table-cell>
							</fo:table-row>
							<fo:table-row>
								<fo:table-cell padding-before="0.2cm">
									<fo:block font-size="{$size-fuente-margen}" text-align="justify" color="{$txt}" >
										Fax &#0160;&#0160;&#0160; 
									</fo:block>
								</fo:table-cell>
								<fo:table-cell padding-before="0.2cm">
									<fo:block font-size="{$size-fuente-margen}" text-align="justify" color="{$txt}" >
										: <xsl:value-of select="bel/datos-basicos/fax"/>
									</fo:block>
								</fo:table-cell>
							</fo:table-row>
						</fo:table-body>
					</fo:table>	
		
		<fo:block space-after="2cm"></fo:block>
		<fo:block font-size="{$size-fuente-margen}"  text-align="left" color="{$txt}" text-altitude="1.5cm">
		<fo:inline font-weight="bold"> DATOS BASICOS DE INSTALACION / HABLITACION DEL SERVICIO</fo:inline>
		</fo:block>		
			
				<fo:table table-layout="fixed">
						<fo:table-column column-width="5cm" />
						<fo:table-column column-width="5cm"/>
						<fo:table-body>
							<fo:table-row>
								<fo:table-cell padding-before="0.2cm">
									<fo:block font-size="{$size-fuente-margen}" text-align="justify" color="{$txt}" >
										Nombre Contacto &#0160;&#0160;&#0160; 
									</fo:block>
								</fo:table-cell>
								<fo:table-cell padding-before="0.2cm">
									<fo:block font-size="{$size-fuente-margen}" text-align="justify" color="{$txt}" >
										:
									</fo:block>
								</fo:table-cell>
							</fo:table-row>
							<fo:table-row>
								<fo:table-cell padding-before="0.2cm">
									<fo:block font-size="{$size-fuente-margen}" text-align="justify" color="{$txt}" >
										Rut Contacto &#0160;&#0160;&#0160; 
									</fo:block>
								</fo:table-cell>
								<fo:table-cell padding-before="0.2cm">
									<fo:block font-size="{$size-fuente-margen}" text-align="justify" color="{$txt}" >
										:
									</fo:block>
								</fo:table-cell>
							</fo:table-row>
							<fo:table-row>
								<fo:table-cell padding-before="0.2cm">
									<fo:block font-size="{$size-fuente-margen}" text-align="justify" color="{$txt}" >
										Cargo Contacto &#0160;&#0160;&#0160; 
									</fo:block>
								</fo:table-cell>
								<fo:table-cell padding-before="0.2cm">
									<fo:block font-size="{$size-fuente-margen}" text-align="justify" color="{$txt}" >
										:
									</fo:block>
								</fo:table-cell>
							</fo:table-row>
							<fo:table-row>
								<fo:table-cell padding-before="0.2cm">
									<fo:block font-size="{$size-fuente-margen}" text-align="justify" color="{$txt}" >
										Direcci�n &#0160;&#0160;&#0160; 
									</fo:block>
								</fo:table-cell>
								<fo:table-cell padding-before="0.2cm">
									<fo:block font-size="{$size-fuente-margen}" text-align="justify" color="{$txt}" >
										:
									</fo:block>
								</fo:table-cell>
							</fo:table-row>
							<fo:table-row>
								<fo:table-cell padding-before="0.2cm">
									<fo:block font-size="{$size-fuente-margen}" text-align="justify" color="{$txt}" >
										Comuna &#0160;&#0160;&#0160; 
									</fo:block>
								</fo:table-cell>
								<fo:table-cell padding-before="0.2cm">
									<fo:block font-size="{$size-fuente-margen}" text-align="justify" color="{$txt}" >
										:
									</fo:block>
								</fo:table-cell>
							</fo:table-row>
							<fo:table-row>
								<fo:table-cell padding-before="0.2cm">
									<fo:block font-size="{$size-fuente-margen}" text-align="justify" color="{$txt}" >
										Ciudad &#0160;&#0160;&#0160; 
									</fo:block>
								</fo:table-cell>
								<fo:table-cell padding-before="0.2cm">
									<fo:block font-size="{$size-fuente-margen}" text-align="justify" color="{$txt}" >
										:
									</fo:block>
								</fo:table-cell>
							</fo:table-row>
							<fo:table-row>
								<fo:table-cell padding-before="0.2cm">
									<fo:block font-size="{$size-fuente-margen}" text-align="justify" color="{$txt}" >
										Telefono &#0160;&#0160;&#0160; 
									</fo:block>
								</fo:table-cell>
								<fo:table-cell padding-before="0.2cm">
									<fo:block font-size="{$size-fuente-margen}" text-align="justify" color="{$txt}" >
										:
									</fo:block>
								</fo:table-cell>
							</fo:table-row>
							<fo:table-row>
								<fo:table-cell padding-before="0.2cm">
									<fo:block font-size="{$size-fuente-margen}" text-align="justify" color="{$txt}" >
										Correo @mail &#0160;&#0160;&#0160; 
									</fo:block>
								</fo:table-cell>
								<fo:table-cell padding-before="0.2cm">
									<fo:block font-size="{$size-fuente-margen}" text-align="justify" color="{$txt}" >
										:
									</fo:block>
								</fo:table-cell>
							</fo:table-row>
							<fo:table-row>
								<fo:table-cell padding-before="0.2cm">
									<fo:block font-size="{$size-fuente-margen}" text-align="justify" color="{$txt}" >
										Fax &#0160;&#0160;&#0160; 
									</fo:block>
								</fo:table-cell>
								<fo:table-cell padding-before="0.2cm">
									<fo:block font-size="{$size-fuente-margen}" text-align="justify" color="{$txt}" >
										:
									</fo:block>
								</fo:table-cell>
							</fo:table-row>
							<fo:table-row>
								<fo:table-cell padding-before="0.2cm">
									<fo:block font-size="{$size-fuente-margen}" text-align="justify" color="{$txt}" >
										Plataforma Operacion (Internet) &#0160;&#0160;&#0160; 
									</fo:block>
								</fo:table-cell>
								<fo:table-cell padding-before="0.2cm">
									<fo:block font-size="{$size-fuente-margen}" text-align="justify" color="{$txt}" >
										:
									</fo:block>
								</fo:table-cell>
							</fo:table-row>
						</fo:table-body>
					</fo:table>	
		
		<fo:block space-after="0.5cm"></fo:block>
		<fo:block border-after-width ="dashed"  font-size="{$size-fuente-margen}"  text-align="left" color="{$txt}" text-altitude="1.5cm">
		<fo:inline font-weight="bold" > DATOS B�SICOS ADMINISTRACI�N DEL SERVICIO EN LA EMPRESA</fo:inline>
		</fo:block>		
			
				<fo:table table-layout="fixed">
						<fo:table-column column-width="5cm" />
						<fo:table-column column-width="5cm"/>
						<fo:table-body>
							<fo:table-row>
								<fo:table-cell padding-before="0.2cm">
									<fo:block font-size="{$size-fuente-margen}" text-align="justify" color="{$txt}" >
										Nombre usuario SUPERVISOR &#0160;&#0160;&#0160; 
									</fo:block>
								</fo:table-cell>
								<fo:table-cell padding-before="0.2cm">
									<fo:block font-size="{$size-fuente-margen}" text-align="justify" color="{$txt}" >
										: &#0160;&#0160;<xsl:value-of select="bel/administrador-convenio/detalle/nombre"/>
									</fo:block>
								</fo:table-cell>
							</fo:table-row>
							<fo:table-row>
								<fo:table-cell padding-before="0.2cm">
									<fo:block font-size="{$size-fuente-margen}" text-align="justify" color="{$txt}" >
										Rut Usuario SUPERVISOR &#0160;&#0160;&#0160; 
									</fo:block>
								</fo:table-cell>
								<fo:table-cell padding-before="0.2cm">
									<fo:block font-size="{$size-fuente-margen}" text-align="justify" color="{$txt}" >
										: &#0160;&#0160;<xsl:value-of select="bel/administrador-convenio/detalle/rut"/>
									</fo:block>
								</fo:table-cell>
							</fo:table-row>
							<fo:table-row>
								<fo:table-cell padding-before="0.2cm">
									<fo:block font-size="{$size-fuente-margen}" text-align="justify" color="{$txt}" >
										Tel�fono&#0160;&#0160;&#0160; 
									</fo:block>
								</fo:table-cell>
								<fo:table-cell padding-before="0.2cm">
									<fo:block  font-size="{$size-fuente-margen}" text-align="justify" color="{$txt}" >
										: &#0160;&#0160;<xsl:value-of select="bel/administrador-convenio/detalle/telefono"/>
									</fo:block>
								</fo:table-cell>
							</fo:table-row>
							<fo:table-row>
								<fo:table-cell padding-before="0.2cm">
									<fo:block font-size="{$size-fuente-margen}" text-align="justify" color="{$txt}" >
										Fax &#0160;&#0160;&#0160; 
									</fo:block>
								</fo:table-cell>
								<fo:table-cell padding-before="0.2cm">
									<fo:block font-size="{$size-fuente-margen}" text-align="justify" color="{$txt}" >
										: &#0160;&#0160;<xsl:value-of select="bel/administrador-convenio/detalle/fax"/>
									</fo:block>
								</fo:table-cell>
							</fo:table-row>
							<fo:table-row>
								<fo:table-cell padding-before="0.2cm">
									<fo:block font-size="{$size-fuente-margen}" text-align="justify" color="{$txt}" >
										Correo @mail &#0160;&#0160;&#0160; 
									</fo:block>
								</fo:table-cell>
								<fo:table-cell padding-before="0.2cm">
									<fo:block font-size="{$size-fuente-margen}" text-align="justify" color="{$txt}" >
										: &#0160;&#0160;<xsl:value-of select="bel/administrador-convenio/detalle/correo"/>
									</fo:block>
								</fo:table-cell>
							</fo:table-row>
						</fo:table-body>
					</fo:table>		


		<fo:block space-after="0.5cm"></fo:block>
		<fo:block border-after-width ="dashed"  font-size="{$size-fuente-margen}"  text-align="left" color="{$txt}" text-altitude="1.5cm">
		<fo:inline font-weight="bold" > Supervisor: Qui�n habilita al(os) usuario(s) y define perfil(es) en la empresa</fo:inline>
		</fo:block>		

		<fo:block space-after="0.5cm"></fo:block>
		<fo:block border-after-width ="dashed"  font-size="{$size-fuente-margen}"  text-align="left" color="{$txt}" text-altitude="1.5cm">
		<fo:inline font-weight="bold" > Requisitos M�nimos T�cnicos</fo:inline>
		</fo:block>		

		<fo:block font-size="{$size-fuente-margen}"  text-align="justify" color="{$txt}" text-altitude="1.5cm">
		Para todos los efectos de la prestaci�n del servicio descrito en el presente instrumento, el
		Cliente deber� contar con el siguiente equipamiento computacional y programas de software:
		</fo:block>
				<!-- Titulo Modulo -->

		<fo:block space-after="0.5cm"></fo:block>
				<fo:table table-layout="fixed" border="0.5pt solid" >
						<fo:table-column column-width="5cm" />
						<fo:table-column column-width="5cm"/>
						<fo:table-column column-width="5cm"/>
						<fo:table-body>
							<fo:table-row>
						<fo:table-cell border="0.5pt solid">
							<fo:block font-size="{$size-fuente-margen}" text-align="center" color="{$txt}" >
								ITEM
							</fo:block>
						</fo:table-cell>
						<fo:table-cell border="0.5pt solid">
							<fo:block font-size="{$size-fuente-margen}" text-align="center" color="{$txt}" >
								MINIMO
							</fo:block>
						</fo:table-cell>
						<fo:table-cell border="0.5pt solid">
							<fo:block font-size="{$size-fuente-margen}" text-align="center" color="{$txt}" >
								RECOMENDADO
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
					<fo:table-row>
						<fo:table-cell border="0.5pt solid">
							<fo:block font-size="{$size-fuente-margen}" text-align="left" color="{$txt}" >
								Precosador
							</fo:block>
						</fo:table-cell>
						<fo:table-cell border="0.5pt solid">
							<fo:block font-size="{$size-fuente-margen}" text-align="left" color="{$txt}" >
								PENTIUM 250 Mhz
							</fo:block>
						</fo:table-cell>
						<fo:table-cell border="0.5pt solid">
							<fo:block font-size="{$size-fuente-margen}" text-align="left" color="{$txt}" >
								PENTIUM III 500 Mhz o superior
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
					<fo:table-row>
						<fo:table-cell >
							<fo:block font-size="{$size-fuente-margen}" text-align="left" color="{$txt}" >
								Memoria RAM
							</fo:block>
						</fo:table-cell>
						<fo:table-cell border="0.5pt solid">
							<fo:block font-size="{$size-fuente-margen}" text-align="left" color="{$txt}" >
								64 Mb
							</fo:block>
						</fo:table-cell>
						<fo:table-cell border="0.5pt solid">
							<fo:block font-size="{$size-fuente-margen}" text-align="left" color="{$txt}" >
								64 Mb o superior
							</fo:block>
						</fo:table-cell >
					</fo:table-row>


					<fo:table-row>
						<fo:table-cell border="0.5pt solid">
							<fo:block font-size="{$size-fuente-margen}" text-align="left" color="{$txt}" >
								Tarjeta de Video
							</fo:block>
						</fo:table-cell>
						<fo:table-cell border="0.5pt solid">
							<fo:block font-size="{$size-fuente-margen}" text-align="left" color="{$txt}" >
								SVGA
							</fo:block>
						</fo:table-cell>
						<fo:table-cell border="0.5pt solid">
							<fo:block font-size="{$size-fuente-margen}" text-align="left" color="{$txt}" >
								SVGA o superior
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
					<fo:table-row>
						<fo:table-cell border="0.5pt solid">
							<fo:block font-size="{$size-fuente-margen}" text-align="left" color="{$txt}" >
								Disco Duro (Opcional)
							</fo:block>
						</fo:table-cell>
						<fo:table-cell border="0.5pt solid">
							<fo:block font-size="{$size-fuente-margen}" text-align="left" color="{$txt}" >
								500 Mb disponibles
							</fo:block>
						</fo:table-cell>
						<fo:table-cell border="0.5pt solid">
							<fo:block font-size="{$size-fuente-margen}" text-align="left" color="{$txt}" >
								1 Gb disponibles
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
					<fo:table-row>
						<fo:table-cell border="0.5pt solid">
							<fo:block font-size="{$size-fuente-margen}" text-align="left" color="{$txt}" >
								Modem
							</fo:block>
						</fo:table-cell>
						<fo:table-cell border="0.5pt solid">
							<fo:block font-size="{$size-fuente-margen}" text-align="left" color="{$txt}" >
								56.6 Kbps
							</fo:block>
						</fo:table-cell>
						<fo:table-cell border="0.5pt solid">
							<fo:block font-size="{$size-fuente-margen}" text-align="left" color="{$txt}" >
								56,6 Kbps o superior
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
					<fo:table-row>
						<fo:table-cell >
							<fo:block font-size="{$size-fuente-margen}" text-align="left" color="{$txt}" >
								Windows
							</fo:block>
						</fo:table-cell>
						<fo:table-cell border="0.5pt solid">
							<fo:block font-size="{$size-fuente-margen}" text-align="left" color="{$txt}" >
								95, 98, NT 3.51
							</fo:block>
						</fo:table-cell>
						<fo:table-cell border="0.5pt solid">
							<fo:block font-size="{$size-fuente-margen}" text-align="left" color="{$txt}" >
								98, 2000, NT 3.51 o superior
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
					<fo:table-row>
						<fo:table-cell border="0.5pt solid">
							<fo:block font-size="{$size-fuente-margen}" text-align="left" color="{$txt}" >
								Browser
							</fo:block>
						</fo:table-cell>
						<fo:table-cell border="0.5pt solid">
							<fo:block font-size="{$size-fuente-margen}" text-align="left" color="{$txt}" >
								MS Explorer 5.5
							</fo:block>
						</fo:table-cell>
						<fo:table-cell border="0.5pt solid">
							<fo:block font-size="{$size-fuente-margen}" text-align="left" color="{$txt}" >
								MS Explorer 5.5 o superior
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
					<fo:table-row>
						<fo:table-cell border="0.5pt solid">
							<fo:block font-size="{$size-fuente-margen}" text-align="left" color="{$txt}" >
								L�nea de comunicaci�n
							</fo:block>
						</fo:table-cell>
						<fo:table-cell border="0.5pt solid">
							<fo:block font-size="{$size-fuente-margen}" text-align="left" color="{$txt}" >
								Tipo FAX
							</fo:block>
						</fo:table-cell>
						<fo:table-cell border="0.5pt solid">
							<fo:block font-size="{$size-fuente-margen}" text-align="left" color="{$txt}" >
								Tipo FAX / L�nea ISDN 
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
						</fo:table-body>
					</fo:table>		


		<fo:block space-after="5cm"></fo:block>
		<fo:block>
			<fo:table table-layout="fixed">
				<fo:table-column column-width="18cm"/>
				<fo:table-body>
					<fo:table-row>
						<fo:table-cell>
							<!-- titulo -->
							<fo:block font-size="10pt" font-weight="bold" text-align="center">
								SERVICIOS DE INFORMACION BCI CASH EXPRESS
							</fo:block>
							<!-- titulo -->
						</fo:table-cell>
					</fo:table-row>
					<fo:table-row>
						<fo:table-cell>
							<!-- titulo -->
							<fo:block font-size="10pt" font-weight="bold" text-align="center">
								<fo:leader color="{$lineas}" leader-pattern="rule" leader-length="20cm"/>
							</fo:block>
							<!-- titulo -->
						</fo:table-cell>
					</fo:table-row>
					<fo:table-row>
						<fo:table-cell>
							<!-- titulo -->
							<fo:block font-size="10pt" font-weight="bold" text-align="left">
								EXPRESS Y CARTOLA ELECTRONICA
							</fo:block>
							<!-- titulo -->
						</fo:table-cell>
					</fo:table-row>
					<fo:table-row>
						<fo:table-cell>
							<!-- titulo -->
							<fo:block font-size="10pt" font-weight="bold" text-align="center">
								<fo:leader color="{$lineas}" leader-pattern="rule" leader-length="20cm"/>	
							</fo:block>
							<!-- titulo -->
						</fo:table-cell>
					</fo:table-row>
				</fo:table-body>
			</fo:table>
		</fo:block>
		<!-- Titulo Modulo -->
		
		<!-- Separador -->
		<fo:block space-after="0.5cm">
		</fo:block>
		<!-- Separador -->
		<fo:block font-size="{$size-fuente-margen}"  text-align="justify" color="{$txt}" text-altitude="1.5cm">
		<fo:inline font-weight="bold"> Especificaciones del Servicio </fo:inline>
		</fo:block>		
		

		<fo:block font-size="{$size-fuente-margen}"  text-align="justify" color="{$txt}" text-altitude="1.5cm">
		Es un servicio que permite al cliente, a trav�s de una red de comunicaciones, p�blica o privada, interconectar
		su computador el Banco, para poder con ello realizar las siguientes operaciones y acceder a los siguientes
		servicios:
		</fo:block>
		<fo:block font-size="{$size-fuente-margen}"  text-align="justify" color="{$txt}" text-altitude="1.5cm">
		* Obtener informaci�n de las distintas operaciones bancarias que mantiene con el BCI.
		</fo:block>
		<fo:block font-size="{$size-fuente-margen}"  text-align="justify" color="{$txt}" text-altitude="1.5cm">
		* Efectuar electr�nicamente transferencias de fondos entre Cuentas Corrientes BCI y Otros Bancos, las
		cuales est�n sujetas a los horarios que se indican mas adelante. El Cliente podr� efectuar transferencias
		de fondos interbancarias en l�nea, utilizando el sistema de liquidaci�n bruta entiempo real (LBTR) del
		Banco Central, el cual define montos m�nimos para su operaci�n.
		</fo:block>
		<fo:block font-size="{$size-fuente-margen}"  text-align="justify" color="{$txt}" text-altitude="1.5cm">
		* Transmitir y recibir archivos computacionales con formatos predefinidos asociados a otros prodcutos Bci
		Cash Express.
		</fo:block>

		<fo:block space-after="0.5cm">
		</fo:block>

		<fo:block font-size="{$size-fuente-margen}"  text-align="justify" color="{$txt}" text-altitude="1.5cm">
			Las transacciones realizadas por el Cliente en virtud del presente convenio, se debitar�n o abonar�n seg�n
			corresponda, en la(s) cuenta(s) corriente(s) y/o en la(s) cuentaprima(s) del Cliente que se individualizan en el
			contrato que acompa�a el presente instrumento.
		</fo:block>

		<fo:block space-after="0.5cm">
		</fo:block>

		<fo:block font-size="{$size-fuente-margen}"  text-align="justify" color="{$txt}" text-altitude="1.5cm">
			Las partes acuerdan que sin perjuicio de las Condiciones Generales del Servicio Bci Cash Express, las
			operaciones de Transferencias de Fondos, se regir�n adem�s por las siguientes condiciones:
		</fo:block>

		<fo:block space-after="0.5cm">
		</fo:block>

		<fo:block font-size="{$size-fuente-margen}"  text-align="justify" color="{$txt}" text-altitude="1.5cm">
			(a) Las Transferencias de Fondos efectuadas desde las 00:01 horas hasta las 14:00 horas de un
				determinado d�a h�bil Bancario, se considerar�n realizadas contablemente ese mismo d�a. Las que se
				lleven a cabo con posterioridad a dicho horario, as� como las que se efect�en en d�a sin h�biles
				bancarios, se considerar�n como realizadas el d�a h�bil bancario siguiente, salvo que la normativa
				sobre esta materia permita contabilizarlas de inmediato.
		</fo:block>
		<fo:block space-after="0.5cm"></fo:block>
		<fo:block font-size="{$size-fuente-margen}"  text-align="justify" color="{$txt}" text-altitude="1.5cm">
			(b) Las Transferencias de Fondos iniciadas antes de las 14:00 horas y que por razones de comunicaciones,
				se prolonguen hasta despu�s de la hora precitada, ser�n consideradas como efectuadas dentro de d�a
				contable en que el sistema termin� de procesar �ntegramente la transacci�n.
		</fo:block>
		<fo:block space-after="0.5cm"></fo:block>
		<fo:block font-size="{$size-fuente-margen}"  text-align="justify" color="{$txt}" text-altitude="1.5cm">
			(c) Las Transferencias de Fondos implican un cargo en la(s) cuenta(s) corriente(s) del Cliente. Cada cargo
				estar� afecto al impuesto previsto en el D.L. 3475, el que se cargar� durante los cinco primeros d�as
				del mes siguiente efectuadas las operaciones.
		</fo:block>
		<fo:block space-after="0.5cm"></fo:block>
		<fo:block font-size="{$size-fuente-margen}"  text-align="justify" color="{$txt}" text-altitude="1.5cm">
			(d) Para poder efectuar las Transferencias de Fondos, ser� necesario el ingreso de una Clave Secreta para
				este tipo de operaci�n y que el usuario SUPERVISOR definido por el Cliente proporciona. El usuario
				deber� acreditar previamente ante el Banco, las facultades de que se encuentra dotado al efecto.
		</fo:block>
		<fo:block space-after="0.5cm"></fo:block>
		<fo:block font-size="{$size-fuente-margen}"  text-align="justify" color="{$txt}" text-altitude="1.5cm">
			(e) S�lo se podr�n efectuar Transferencias de Fondos por montos disponibles en las respectivas
				cuentas a debitar. No obstante, respecto a los clientes que tengan L�nea de Sobregiro con margen
				disponible, asumir� �sta en los casos que corresponda.
		</fo:block>
		<fo:block space-after="0.5cm"></fo:block>
		<fo:block font-size="{$size-fuente-margen}"  text-align="justify" color="{$txt}" text-altitude="1.5cm">
			(f) El Cliente podr� solicitar al Banco que se establezca un monto l�mite m�ximo diario para Transferencias
				de Fondos, cantidad que se estipula al final del presente Contrato. En tal caso, cada Apoderado
				autorizado podr� transferir hasta el monto m�ximo diario autorizado, en una o m�s transacciones, en
				la medida que se disponga de fondos suficientes
		</fo:block>
 
		<fo:block space-after="6cm">
		</fo:block>
		<!-- Separador -->
		<fo:block font-size="{$size-fuente-margen}"  text-align="justify" color="{$txt}" text-altitude="1.5cm">
		<fo:inline font-weight="bold"> Cartola Electronica</fo:inline>
		</fo:block>		
		<fo:block space-after="0.5cm"></fo:block>

		<fo:block font-size="{$size-fuente-margen}"  text-align="justify" color="{$txt}" text-altitude="1.5cm">
		Este servicio est� orientado a aquellas empresas que realizan procesos de conciliaci�n autom�tica, para lo cual el Banco
		Banco genera un archivo con un formato predefinido y con todos los movimientos asociados a la(s) cuenta(s) que el cliente
		solicite e indique a trav�s del servicio de informaci�n, en el m�dulo de cuentas corrientes - cartola electr�nica.
		</fo:block>
		<fo:block space-after="0.5cm"></fo:block>
		<fo:block font-size="{$size-fuente-margen}"  text-align="justify" color="{$txt}" text-altitude="1.5cm">
		Para solicitar este servicio el cliente podr� marcar la periodicidad requerida para cada cuenta y el s�lo hecho de hacerlo
		facultar� al Banco a efectuar el cobro de dicho servicio.
		</fo:block>
		<fo:block space-after="0.5cm"></fo:block>
		<fo:block font-size="{$size-fuente-margen}"  text-align="justify" color="{$txt}" text-altitude="1.5cm">
		El Banco habilitar� autom�ticamente este servicio para todos aquellos clientes empresa que contraten los servicios de
		informaci�n, el cual tendr� un cobro que comenzar� a regir desde el momento en que el cliente solicite y configure este
		servicio.
		</fo:block>

		<fo:block space-after="0.5cm"></fo:block>
		<fo:block font-size="{$size-fuente-margen}"  text-align="justify" color="{$txt}" text-altitude="1.5cm">
		 <fo:inline font-weight="bold"> ANTECEDENTES PARA CREACION DEL SERVICIO </fo:inline>
		</fo:block>
		
		<fo:block space-after="0.5cm"></fo:block>
		<fo:block font-size="{$size-fuente-margen}"  text-align="justify" color="{$txt}" text-altitude="1.5cm">
		 <fo:inline font-weight="bold"> Marca lo que corresponde : </fo:inline>
		</fo:block>	
			
				<fo:block space-after="0.5 cm"></fo:block>
				<fo:table table-layout="fixed" border="0.5pt solid" >
						<fo:table-column column-width="5cm" />
						<fo:table-column column-width="5cm"/>
						<fo:table-column column-width="5cm"/>
						<fo:table-body>
							<fo:table-row>
						<fo:table-cell border="0.5pt solid">
							<fo:block font-size="{$size-fuente-margen}" text-align="center" color="{$txt}" >
								Crear
							</fo:block>
						</fo:table-cell >
						<fo:table-cell border="0.5pt solid">
							<fo:block font-size="{$size-fuente-margen}" text-align="center" color="{$txt}" >
								Modificar
							</fo:block>
						</fo:table-cell>
						<fo:table-cell border="0.5pt solid">
							<fo:block font-size="{$size-fuente-margen}" text-align="center" color="{$txt}" >
								Revocar
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
					</fo:table-body>
					</fo:table>		

		<fo:block space-after="0.5cm"></fo:block>
		<fo:block font-size="{$size-fuente-margen}"  text-align="justify" color="{$txt}" text-altitude="1.5cm">
		 <fo:inline font-weight="bold"> DATOS B�SICOS DEL CONVENIO DE SERVICIO INFORMACI�N BCI CASH </fo:inline>
		</fo:block>	
		
		<fo:table table-layout="fixed">
						<fo:table-column column-width="5cm" />
						<fo:table-column column-width="10cm"/>
						<fo:table-body>
							<fo:table-row>
								<fo:table-cell padding-before="0.2cm">
									<fo:block font-size="{$size-fuente-margen}" text-align="justify" color="{$txt}" >
										Rut Empresa&#0160;&#0160;&#0160; 
									</fo:block>
								</fo:table-cell>
								<fo:table-cell padding-before="0.2cm">
									<fo:block font-size="{$size-fuente-margen}" text-align="justify" color="{$txt}" >
										:<xsl:value-of select="bel/datos-basicos/rut"/>
									</fo:block>
								</fo:table-cell>
							</fo:table-row>
							<fo:table-row>
								<fo:table-cell padding-before="0.2cm">
									<fo:block font-size="{$size-fuente-margen}" text-align="justify" color="{$txt}" >
										Razon Social &#0160;&#0160;&#0160; 
									</fo:block>
								</fo:table-cell>
								<fo:table-cell padding-before="0.2cm">
									<fo:block font-size="{$size-fuente-margen}" text-align="justify" color="{$txt}" >
										:<xsl:value-of select="bel/datos-basicos/nombre"/>
									</fo:block>
								</fo:table-cell>
							</fo:table-row>
							<fo:table-row>
								<fo:table-cell padding-before="0.2cm">
									<fo:block font-size="{$size-fuente-margen}" text-align="justify" color="{$txt}" >
										Direccion&#0160;&#0160;&#0160; 
									</fo:block>
								</fo:table-cell>
								<fo:table-cell padding-before="0.2cm">
									<fo:block  font-size="{$size-fuente-margen}" text-align="justify" color="{$txt}" >
										:<xsl:value-of select="bel/datos-basicos/direccion"/>
									</fo:block>
								</fo:table-cell>
							</fo:table-row>
							<fo:table-row>
								<fo:table-cell padding-before="0.2cm">
									<fo:block font-size="{$size-fuente-margen}" text-align="justify" color="{$txt}" >
										Comuna &#0160;&#0160;&#0160; 
									</fo:block>
								</fo:table-cell>
								<fo:table-cell padding-before="0.2cm">
									<fo:block font-size="{$size-fuente-margen}" text-align="justify" color="{$txt}" >
										:<xsl:value-of select="bel/datos-basicos/comuna"/>
									</fo:block>
								</fo:table-cell>
							</fo:table-row>
							<fo:table-row>
								<fo:table-cell padding-before="0.2cm">
									<fo:block font-size="{$size-fuente-margen}" text-align="justify" color="{$txt}" >
										Ciudad &#0160;&#0160;&#0160; 
									</fo:block>
								</fo:table-cell>
								<fo:table-cell padding-before="0.2cm">
									<fo:block font-size="{$size-fuente-margen}" text-align="justify" color="{$txt}" >
										: <xsl:value-of select="bel/datos-basicos/ciudad"/>
									</fo:block>
								</fo:table-cell>
							</fo:table-row>
							<fo:table-row>
								<fo:table-cell padding-before="0.2cm">
									<fo:block font-size="{$size-fuente-margen}" text-align="justify" color="{$txt}" >
										Tel�fono &#0160;&#0160;&#0160; 
									</fo:block>
								</fo:table-cell>
								<fo:table-cell padding-before="0.2cm">
									<fo:block font-size="{$size-fuente-margen}" text-align="justify" color="{$txt}" >
										: <xsl:value-of select="bel/datos-basicos/telefono"/>
									</fo:block>
								</fo:table-cell>
							</fo:table-row>
							<fo:table-row>
								<fo:table-cell padding-before="0.2cm">
									<fo:block font-size="{$size-fuente-margen}" text-align="justify" color="{$txt}" >
										Fax &#0160;&#0160;&#0160; 
									</fo:block>
								</fo:table-cell>
								<fo:table-cell padding-before="0.2cm">
									<fo:block font-size="{$size-fuente-margen}" text-align="justify" color="{$txt}" >
										: <xsl:value-of select="bel/datos-basicos/fax"/>
									</fo:block>
								</fo:table-cell>
							</fo:table-row>
						</fo:table-body>
					</fo:table>		

			
		<fo:block space-after="0.5cm"></fo:block>
		<fo:block font-size="{$size-fuente-margen}"  text-align="justify" color="{$txt}" text-altitude="1.5cm">
		 <fo:inline font-weight="bold"> DATOS B�SICOS DE INSTALACI�N / HABILITACI�N DEL SERVICIO </fo:inline>
		</fo:block>	
		
		<fo:table table-layout="fixed">
						<fo:table-column column-width="5cm" />
						<fo:table-column column-width="5cm"/>
						<fo:table-body>
							<fo:table-row>
								<fo:table-cell padding-before="0.2cm">
									<fo:block font-size="{$size-fuente-margen}" text-align="justify" color="{$txt}" >
										Rut Contacto&#0160;&#0160;&#0160; 
									</fo:block>
								</fo:table-cell>
								<fo:table-cell padding-before="0.2cm">
									<fo:block font-size="{$size-fuente-margen}" text-align="justify" color="{$txt}" >
										:
									</fo:block>
								</fo:table-cell>
							</fo:table-row>
							<fo:table-row>
								<fo:table-cell padding-before="0.2cm">
									<fo:block font-size="{$size-fuente-margen}" text-align="justify" color="{$txt}" >
										Nombre Contacto &#0160;&#0160;&#0160; 
									</fo:block>
								</fo:table-cell>
								<fo:table-cell padding-before="0.2cm">
									<fo:block font-size="{$size-fuente-margen}" text-align="justify" color="{$txt}" >
										:
									</fo:block>
								</fo:table-cell>
							</fo:table-row>
							<fo:table-row>
								<fo:table-cell padding-before="0.2cm">
									<fo:block font-size="{$size-fuente-margen}" text-align="justify" color="{$txt}" >
										Cargo Contacto&#0160;&#0160;&#0160; 
									</fo:block>
								</fo:table-cell>
								<fo:table-cell padding-before="0.2cm">
									<fo:block  font-size="{$size-fuente-margen}" text-align="justify" color="{$txt}" >
										:
									</fo:block>
								</fo:table-cell>
							</fo:table-row>
							<fo:table-row>
								<fo:table-cell padding-before="0.2cm">
									<fo:block font-size="{$size-fuente-margen}" text-align="justify" color="{$txt}" >
										Direccion &#0160;&#0160;&#0160; 
									</fo:block>
								</fo:table-cell>
								<fo:table-cell padding-before="0.2cm">
									<fo:block font-size="{$size-fuente-margen}" text-align="justify" color="{$txt}" >
										:
									</fo:block>
								</fo:table-cell>
							</fo:table-row>
							<fo:table-row>
								<fo:table-cell padding-before="0.2cm">
									<fo:block font-size="{$size-fuente-margen}" text-align="justify" color="{$txt}" >
										Comuna &#0160;&#0160;&#0160; 
									</fo:block>
								</fo:table-cell>
								<fo:table-cell padding-before="0.2cm">
									<fo:block font-size="{$size-fuente-margen}" text-align="justify" color="{$txt}" >
										:
									</fo:block>
								</fo:table-cell>
							</fo:table-row>
							<fo:table-row>
								<fo:table-cell padding-before="0.2cm">
									<fo:block font-size="{$size-fuente-margen}" text-align="justify" color="{$txt}" >
										Ciudad &#0160;&#0160;&#0160; 
									</fo:block>
								</fo:table-cell>
								<fo:table-cell padding-before="0.2cm">
									<fo:block font-size="{$size-fuente-margen}" text-align="justify" color="{$txt}" >
										:
									</fo:block>
								</fo:table-cell>
							</fo:table-row>
							<fo:table-row>
								<fo:table-cell padding-before="0.2cm">
									<fo:block font-size="{$size-fuente-margen}" text-align="justify" color="{$txt}" >
										Fax &#0160;&#0160;&#0160; 
									</fo:block>
								</fo:table-cell>
								<fo:table-cell padding-before="0.2cm">
									<fo:block font-size="{$size-fuente-margen}" text-align="justify" color="{$txt}" >
										:
									</fo:block>
								</fo:table-cell>
							</fo:table-row>
							<fo:table-row>
								<fo:table-cell padding-before="0.2cm">
									<fo:block font-size="{$size-fuente-margen}" text-align="justify" color="{$txt}" >
										Tel�fono &#0160;&#0160;&#0160; 
									</fo:block>
								</fo:table-cell>
								<fo:table-cell padding-before="0.2cm">
									<fo:block font-size="{$size-fuente-margen}" text-align="justify" color="{$txt}" >
										:
									</fo:block>
								</fo:table-cell>
							</fo:table-row>
							<fo:table-row>
								<fo:table-cell padding-before="0.2cm">
									<fo:block font-size="{$size-fuente-margen}" text-align="justify" color="{$txt}" >
										Correo @mail &#0160;&#0160;&#0160; 
									</fo:block>
								</fo:table-cell>
								<fo:table-cell padding-before="0.2cm">
									<fo:block font-size="{$size-fuente-margen}" text-align="justify" color="{$txt}" >
										:
									</fo:block>
								</fo:table-cell>
							</fo:table-row>
						</fo:table-body>
					</fo:table>		
					
		<fo:block space-after="0.5cm"></fo:block>
		<fo:block font-size="{$size-fuente-margen}"  text-align="justify" color="{$txt}" text-altitude="1.5cm">
		 <fo:inline font-weight="bold"> INDICAR PLATAFORMA: Internet</fo:inline>
		</fo:block>		

		<fo:block space-after="0.3cm"></fo:block>
		<fo:block font-size="{$size-fuente-margen}"  text-align="justify" color="{$txt}" text-altitude="1.5cm">
		 <fo:inline font-weight="bold"> RAZON SOCIAL RELACIONADA AL RUT DEL ENCABEZAMIENTO</fo:inline>
		</fo:block>		
		<fo:table table-layout="fixed" border="0.5pt solid" >
						<fo:table-column column-width="5cm" />
						<fo:table-column column-width="5cm"/>
						<fo:table-column column-width="5cm"/>
						<fo:table-body>
						<fo:table-row>
						<fo:table-cell border="0.5pt solid">
							<fo:block font-size="{$size-fuente-margen}" text-align="center" color="{$txt}" >
								RUT
							</fo:block>
						</fo:table-cell>
						<fo:table-cell border="0.5pt solid">
							<fo:block font-size="{$size-fuente-margen}" text-align="center" color="{$txt}" >
								RAZON SOCIAL
							</fo:block>
						</fo:table-cell>
						<fo:table-cell border="0.5pt solid">
							<fo:block font-size="{$size-fuente-margen}" text-align="center" color="{$txt}" >
								MONTO M�XIMO TRANSF.
							</fo:block>
						</fo:table-cell>
						</fo:table-row>
					<xsl:choose>
						<xsl:when test="count( bel/empresa-relacionada) > 0">
							<!-- ITERACION -->
							<xsl:for-each select="bel/empresa-relacionada/detalle">
								<fo:table-row>
								<fo:table-cell border="0.5pt solid">
									<fo:block font-size="{$size-fuente-margen}" text-align="center" color="{$txt}" >
										<xsl:value-of select="rut"/>
									</fo:block>
								</fo:table-cell>
								<fo:table-cell border="0.5pt solid">
									<fo:block font-size="{$size-fuente-margen}" text-align="center" color="{$txt}" >
										<xsl:value-of select="nombreEmpresa"/>
									</fo:block>
								</fo:table-cell>
								<fo:table-cell border="0.5pt solid">
									<fo:block font-size="{$size-fuente-margen}" text-align="center" color="{$txt}" >
										<xsl:value-of select="montoMaximo"/>
									</fo:block>
								</fo:table-cell>
								</fo:table-row>
							</xsl:for-each>
						</xsl:when>
						<xsl:otherwise>
							<fo:table-row>
								<fo:table-cell border="0.5pt solid">
									<fo:block font-size="{$size-fuente-margen}" text-align="center" color="{$txt}" >
										
									</fo:block>
								</fo:table-cell>
								<fo:table-cell border="0.5pt solid">
									<fo:block font-size="{$size-fuente-margen}" text-align="center" color="{$txt}" >
										
									</fo:block>
								</fo:table-cell>
								<fo:table-cell border="0.5pt solid">
									<fo:block font-size="{$size-fuente-margen}" text-align="center" color="{$txt}" >
										
									</fo:block>
								</fo:table-cell>
								</fo:table-row>
						</xsl:otherwise>
					</xsl:choose>
						</fo:table-body>
					</fo:table>

	<fo:block space-after="5.5cm"></fo:block>
		<fo:block font-size="{$size-fuente-margen}"  text-align="justify" color="{$txt}" text-altitude="1.5cm">
		 <fo:inline font-weight="bold"> TIPO APODERADO PARA TRANSFERENCIA DE FONDOS: _______________</fo:inline>
		</fo:block>		

		<fo:block space-after="0.3cm"></fo:block>
		<fo:block font-size="{$size-fuente-margen}"  text-align="justify" color="{$txt}" text-altitude="1.5cm">
		 <fo:inline font-weight="bold"> - Sistema Firmas y Poderes (SIFP)</fo:inline>
		</fo:block>		
		<fo:block space-after="0.3cm"></fo:block>
		<fo:block font-size="{$size-fuente-margen}"  text-align="justify" color="{$txt}" text-altitude="1.5cm">
		 <fo:inline font-weight="bold"> - Apoderado Virtual(AV)</fo:inline>
		</fo:block>		
		
		<fo:block space-after="0.5cm"></fo:block>
		<fo:block font-size="{$size-fuente-margen}"  text-align="justify" color="{$txt}" text-altitude="1.5cm">
		 <fo:inline font-weight="bold"> CUENTAS CORRIENTES DE TERCEROS AUTORIZADOS (transferencia de fondos)</fo:inline>
		</fo:block>		
		<fo:table table-layout="fixed" border="0.5pt solid" >
						<fo:table-column column-width="4cm" />
						<fo:table-column column-width="4cm"/>
						<fo:table-column column-width="4cm"/>
						<fo:table-column column-width="4cm"/>
						<fo:table-body>
							<fo:table-row>
						<fo:table-cell border="0.5pt solid">
							<fo:block font-size="{$size-fuente-margen}" text-align="center" color="{$txt}" >
								RUT
							</fo:block>
						</fo:table-cell>
						<fo:table-cell border="0.5pt solid">
							<fo:block font-size="{$size-fuente-margen}" text-align="center" color="{$txt}" >
								RAZON SOCIAL
							</fo:block>
						</fo:table-cell>
						<fo:table-cell border="0.5pt solid">
							<fo:block font-size="{$size-fuente-margen}" text-align="center" color="{$txt}" >
								CUENTA CORRIENTE
							</fo:block>
						</fo:table-cell>
						<fo:table-cell border="0.5pt solid">
							<fo:block font-size="{$size-fuente-margen}" text-align="center" color="{$txt}" >
								BANCO
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
					<xsl:choose>
						<xsl:when test="count( bel/cuenta-tercero) > 0">
							<!-- ITERACION -->
							<xsl:for-each select="bel/cuenta-tercero/detalle">
								<fo:table-row>
								<fo:table-cell border="0.5pt solid">
									<fo:block font-size="{$size-fuente-margen}" text-align="center" color="{$txt}" >
										<xsl:value-of select="rutEmpresa"/>
									</fo:block>
								</fo:table-cell>
								<fo:table-cell border="0.5pt solid">
									<fo:block font-size="{$size-fuente-margen}" text-align="center" color="{$txt}" >
										<xsl:value-of select="nombreEmpresa"/>
									</fo:block>
								</fo:table-cell>
								<fo:table-cell border="0.5pt solid">
									<fo:block font-size="{$size-fuente-margen}" text-align="center" color="{$txt}" >
										<xsl:value-of select="numeroCuenta"/>
									</fo:block>
								</fo:table-cell>
								<fo:table-cell border="0.5pt solid">
									<fo:block font-size="{$size-fuente-margen}" text-align="center" color="{$txt}" >
										<xsl:value-of select="banco"/>
									</fo:block>
								</fo:table-cell>
								</fo:table-row>
							</xsl:for-each>
						</xsl:when>
						<xsl:otherwise>
							<fo:table-row>
								<fo:table-cell border="0.5pt solid">
									<fo:block font-size="{$size-fuente-margen}" text-align="center" color="{$txt}" >
										
									</fo:block>
								</fo:table-cell>
								<fo:table-cell border="0.5pt solid">
									<fo:block font-size="{$size-fuente-margen}" text-align="center" color="{$txt}" >
										
									</fo:block>
								</fo:table-cell>
								<fo:table-cell border="0.5pt solid">
									<fo:block font-size="{$size-fuente-margen}" text-align="center" color="{$txt}" >
										
									</fo:block>
								</fo:table-cell>
								<fo:table-cell border="0.5pt solid">
									<fo:block font-size="{$size-fuente-margen}" text-align="center" color="{$txt}" >
										
									</fo:block>
								</fo:table-cell>
								</fo:table-row>
						</xsl:otherwise>
					</xsl:choose>
					</fo:table-body>
					</fo:table>

		<fo:block space-after="0.5cm"></fo:block>
		<fo:block font-size="{$size-fuente-margen}"  text-align="justify" color="{$txt}" text-altitude="1.5cm">
		 El presente anexo se firma en 2 ejemplares, quedando uno en poder
		</fo:block>		
		<fo:block space-after="0.5cm"></fo:block>
		<fo:block font-size="{$size-fuente-margen}"  text-align="justify" color="{$txt}" text-altitude="1.5cm">
		 del Banco de Cr�dito e Inversiones.
		</fo:block>		


		<fo:block space-after="3cm"></fo:block>
		<fo:table table-layout="fixed">
						<fo:table-column column-width="10cm" />
						<fo:table-column column-width="10cm"/>
						<fo:table-body>
							<fo:table-row>
								<fo:table-cell>
									<fo:block font-size="{$size-fuente-margen}" text-align="justify" color="{$txt}" >
										___________________________________________ 
									</fo:block>
								</fo:table-cell>
								<fo:table-cell>
									<fo:block font-size="{$size-fuente-margen}" text-align="justify" color="{$txt}" >
										___________________________________________  							
									</fo:block>
								</fo:table-cell>
							</fo:table-row>
							<fo:table-row>
								<fo:table-cell>
									<fo:block font-size="{$size-fuente-margen}" text-align="justify" color="{$txt}" >
										p.p. Banco de Cr�dito e Inversiones
									</fo:block>
								</fo:table-cell>
								<fo:table-cell>
									<fo:block font-size="{$size-fuente-margen}" text-align="center" color="{$txt}" >
										p.p. Cliente  							
									</fo:block>
								</fo:table-cell>
							</fo:table-row>
							<fo:table-row>
								<fo:table-cell>
									<fo:block space-after="1cm"></fo:block>
								</fo:table-cell>
								<fo:table-cell>
									<fo:block space-after="1cm"></fo:block>
								</fo:table-cell>
							</fo:table-row>
							<fo:table-row>
								<fo:table-cell>
									<fo:block space-after="1cm"></fo:block>
								</fo:table-cell>
								<fo:table-cell>
									<fo:block font-size="{$size-fuente-margen}" text-align="center" color="{$txt}" >
										RUT: _________________________
									</fo:block>
									<fo:block space-after="0.5cm"></fo:block>
									<fo:block font-size="{$size-fuente-margen}" text-align="center" color="{$txt}" >
										Nombre: _________________________  							
									</fo:block>
								</fo:table-cell>
							</fo:table-row>
							<fo:table-row>
								<fo:table-cell>
									<fo:block space-after="1cm"></fo:block>
								</fo:table-cell>
								<fo:table-cell>
									<fo:block space-after="1cm"></fo:block>
								</fo:table-cell>
							</fo:table-row>
							<fo:table-row>
								<fo:table-cell>
									<fo:block font-size="{$size-fuente-margen}" text-align="center" color="{$txt}" >
										"Este documento consta de 2 hojas"
									</fo:block>
								</fo:table-cell>
								<fo:table-cell>
									<fo:block space-after="0.5cm"></fo:block>
								</fo:table-cell>
							</fo:table-row>
						</fo:table-body>
					</fo:table>	

				<fo:block font-size="5pt">
					<fo:leader color="{$lineas}" leader-pattern="rule" leader-length="18cm"/>
				</fo:block>

					<fo:table table-layout="fixed">
						<fo:table-column column-width="5cm" />
						<fo:table-column column-width="5cm"/>
						<fo:table-column column-width="5cm" />
						<fo:table-column column-width="5cm"/>
						<fo:table-body>
							<fo:table-row>
								<fo:table-cell padding-before="0.4cm">
									<fo:block font-size="{$size-fuente-margen}" text-align="justify" color="{$txt}" >
										<fo:inline font-weight="bold">  USO INTERNO DEL BCI</fo:inline>
									</fo:block>
								</fo:table-cell>
								<fo:table-cell padding-before="0.2cm">
									<fo:block font-size="{$size-fuente-margen}" text-align="justify" color="{$txt}" >
										
									</fo:block>
								</fo:table-cell>
								<fo:table-cell padding-before="0.2cm">
									<fo:block font-size="{$size-fuente-margen}" text-align="justify" color="{$txt}" >
										 
									</fo:block>
								</fo:table-cell>
								<fo:table-cell padding-before="0.2cm">
									<fo:block font-size="{$size-fuente-margen}" text-align="justify" color="{$txt}" >
										
									</fo:block>
								</fo:table-cell>
							</fo:table-row>
							<fo:table-row>
								<fo:table-cell padding-before="0.2cm">
									<fo:block font-size="{$size-fuente-margen}" text-align="justify" color="{$txt}" >
										Oficina BCI&#0160;&#0160;&#0160; :
									</fo:block>
								</fo:table-cell>
								<fo:table-cell padding-before="0.2cm">
									<fo:block font-size="{$size-fuente-margen}" text-align="justify" color="{$txt}" >
										_____________________________
									</fo:block>
								</fo:table-cell>
								<fo:table-cell padding-before="0.2cm">
									<fo:block font-size="{$size-fuente-margen}" text-align="justify" color="{$txt}" >
										 
									</fo:block>
								</fo:table-cell>
								<fo:table-cell padding-before="0.2cm">
									<fo:block font-size="{$size-fuente-margen}" text-align="justify" color="{$txt}" >
										
									</fo:block>
								</fo:table-cell>
							</fo:table-row>
							<fo:table-row>
								<fo:table-cell padding-before="0.2cm">
									<fo:block font-size="{$size-fuente-margen}" text-align="justify" color="{$txt}" >
										Ejecutivo BCI&#0160;&#0160;&#0160; :
									</fo:block>
								</fo:table-cell>
								<fo:table-cell padding-before="0.2cm">
									<fo:block font-size="{$size-fuente-margen}" text-align="justify" color="{$txt}" >
										_____________________________
									</fo:block>
								</fo:table-cell>
								<fo:table-cell padding-before="0.2cm">
									<fo:block font-size="{$size-fuente-margen}" text-align="justify" color="{$txt}" >
										&#0160;&#0160;&#0160; &#0160;&#0160;&#0160; Anexo&#0160;&#0160;&#0160; : 
									</fo:block>
								</fo:table-cell>
								<fo:table-cell padding-before="0.2cm" >
									<fo:block font-size="{$size-fuente-margen}" text-align="justify" color="{$txt}" >
										________
									</fo:block>
								</fo:table-cell>
							</fo:table-row>
							<fo:table-row>
								<fo:table-cell padding-before="0.2cm">
									<fo:block font-size="{$size-fuente-margen}" text-align="justify" color="{$txt}" >
										Correo electr�nico&#0160;&#0160;&#0160; : 
									</fo:block>
								</fo:table-cell>
								<fo:table-cell padding-before="0.2cm">
									<fo:block font-size="{$size-fuente-margen}" text-align="justify" color="{$txt}" >
										_____________________________
									</fo:block>
								</fo:table-cell>
								<fo:table-cell padding-before="0.2cm">
									<fo:block font-size="{$size-fuente-margen}" text-align="justify" color="{$txt}" >
										 
									</fo:block>
								</fo:table-cell>
								<fo:table-cell padding-before="0.2cm">
									<fo:block font-size="{$size-fuente-margen}" text-align="justify" color="{$txt}" >
										
									</fo:block>
								</fo:table-cell>
							</fo:table-row>
							<fo:table-row>
								<fo:table-cell padding-before="0.2cm">
									<fo:block font-size="{$size-fuente-margen}" text-align="justify" color="{$txt}" >
										
									</fo:block>
								</fo:table-cell>
								<fo:table-cell padding-before="0.2cm">
									<fo:block font-size="{$size-fuente-margen}" text-align="justify" color="{$txt}" >
										
									</fo:block>
								</fo:table-cell>
								<fo:table-cell padding-before="0.2cm">
									<fo:block font-size="{$size-fuente-margen}" text-align="justify" color="{$txt}" >
										
									</fo:block>
								</fo:table-cell>
								<fo:table-cell padding-before="0.2cm">
									<fo:block font-size="{$size-fuente-margen}" text-align="justify" color="{$txt}" >
										<fo:inline font-weight="bold">Timbre</fo:inline>
									</fo:block>
								</fo:table-cell>
							</fo:table-row>
							<fo:table-row>
								<fo:table-cell padding-before="0.2cm">
									<fo:block font-size="{$size-fuente-margen}" text-align="justify" color="{$txt}" >
										<fo:inline font-weight="bold">V�B� Ejecutivo</fo:inline> &#0160;&#0160;&#0160; : 
									</fo:block>
								</fo:table-cell>
								<fo:table-cell padding-before="0.2cm">
									<fo:block font-size="{$size-fuente-margen}" text-align="justify" color="{$txt}" >
										_____________________________
									</fo:block>
								</fo:table-cell>
								<fo:table-cell padding-before="0.2cm">
									<fo:block font-size="{$size-fuente-margen}" text-align="justify" color="{$txt}" >
										&#0160;&#0160;&#0160; &#0160;&#0160;&#0160; <fo:inline font-weight="bold">Fecha</fo:inline>
										&#0160;&#0160;&#0160; : 
									</fo:block>
								</fo:table-cell>
								<fo:table-cell padding-before="0.2cm">
									<fo:block font-size="{$size-fuente-margen}" text-align="justify" color="{$txt}" >
										_______________
									</fo:block>
								</fo:table-cell>
							</fo:table-row>
							<fo:table-row>
								<fo:table-cell padding-before="0.2cm">
									<fo:block font-size="{$size-fuente-margen}" font-weight="bold" text-align="justify" color="{$txt}" >
										<fo:inline font-weight="bold">V�B� ACA JOP</fo:inline> &#0160;&#0160;&#0160; : 
									</fo:block>
								</fo:table-cell>
								<fo:table-cell padding-before="0.2cm">
									<fo:block font-size="{$size-fuente-margen}" text-align="justify" color="{$txt}" >
										_____________________________
									</fo:block>
								</fo:table-cell>
								<fo:table-cell padding-before="0.2cm">
									<fo:block font-size="{$size-fuente-margen}" text-align="justify" color="{$txt}" >
										&#0160;&#0160;&#0160; &#0160;&#0160;&#0160; <fo:inline font-weight="bold">Fecha</fo:inline>
										&#0160;&#0160;&#0160; : 
									</fo:block>
								</fo:table-cell>
								<fo:table-cell padding-before="0.2cm">
									<fo:block font-size="{$size-fuente-margen}" text-align="justify" color="{$txt}" >
										_______________
									</fo:block>
								</fo:table-cell>
							</fo:table-row>
							<fo:table-row>
								<fo:table-cell padding-before="0.2cm">
									<fo:block font-size="{$size-fuente-margen}" text-align="justify" color="{$txt}" >
										Ejecutivo BEL BCI&#0160;&#0160;&#0160; : 
									</fo:block>
								</fo:table-cell>
								<fo:table-cell padding-before="0.2cm">
									<fo:block font-size="{$size-fuente-margen}" text-align="justify" color="{$txt}" >
										_______________________
									</fo:block>
								</fo:table-cell>
								<fo:table-cell padding-before="0.2cm">
									<fo:block font-size="{$size-fuente-margen}" text-align="justify" color="{$txt}" >
										&#0160;&#0160;&#0160; &#0160;&#0160;&#0160; Correo electr�nico&#0160;&#0160;&#0160; :   
									</fo:block>
								</fo:table-cell>
								<fo:table-cell padding-before="0.2cm">
									<fo:block font-size="{$size-fuente-margen}" text-align="justify" color="{$txt}" >
										_____________
									</fo:block>
								</fo:table-cell>
							</fo:table-row>
						</fo:table-body>
					</fo:table>	

					<fo:block space-after="2cm"></fo:block>

					<fo:table table-layout="fixed" border="0.5pt solid" >
						<fo:table-column column-width="4cm" />
						<fo:table-column column-width="6cm"/>
						<fo:table-column column-width="2cm"/>
						<fo:table-column column-width="2cm"/>
						<fo:table-column column-width="2cm"/>
						<fo:table-body>
							<fo:table-row>
						<fo:table-cell border="0.5pt solid">
							<fo:block font-size="{$size-fuente-margen}" text-align="center" color="{$txt}" >
								Producto
							</fo:block>
						</fo:table-cell>
						<fo:table-cell border="0.5pt solid">
							<fo:block font-size="{$size-fuente-margen}" text-align="center" color="{$txt}" >
								Item
							</fo:block>
						</fo:table-cell>
						<fo:table-cell border="0.5pt solid">
							<fo:block font-size="{$size-fuente-margen}" text-align="center" color="{$txt}" >
								Tarifa Pizarra [UF]
							</fo:block>
						</fo:table-cell>
						<fo:table-cell border="0.5pt solid">
							<fo:block font-size="{$size-fuente-margen}" text-align="center" color="{$txt}" >
								Cantidad (Volumen)
							</fo:block>
						</fo:table-cell>
						<fo:table-cell border="0.5pt solid">
							<fo:block font-size="{$size-fuente-margen}" text-align="left" color="{$txt}" >
								Tarifa Ofrecida [UF]
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
					<xsl:choose>
						<xsl:when test="count( bel/tarifas) > 0">
							<!-- ITERACION -->
							<xsl:for-each select="bel/tarifas/detalle">
								<fo:table-row>
								<xsl:choose>
								<xsl:when test="producto !=  ''">
									<fo:table-cell border-top-style="dashed" border-top-width="0.5pt" >
										<fo:block border-top-width="10pt solid"  font-size="{$size-fuente-margen}" text-align="left" color="{$txt}">
											<fo:inline font-weight="bold"> <xsl:value-of select="producto"/> </fo:inline>
										</fo:block>
									</fo:table-cell>
								</xsl:when>
								<xsl:otherwise>
									<fo:table-cell border="0pt solid">
										<fo:block font-size="{$size-fuente-margen}" text-align="center" color="{$txt}" >
											
										</fo:block>
									</fo:table-cell>
								</xsl:otherwise>
								</xsl:choose>
								<fo:table-cell border="0.5pt solid">
									<fo:block font-size="{$size-fuente-margen}" text-align="left" color="{$txt}" >
										<xsl:value-of select="servicio"/>
									</fo:block>
								</fo:table-cell>
								<fo:table-cell border="0.5pt solid">
									<fo:block font-size="{$size-fuente-margen}" text-align="center" color="{$txt}" >
										<xsl:value-of select="tarifa-pizara"/>
									</fo:block>
								</fo:table-cell>
								<fo:table-cell border="0.5pt solid">
									<fo:block font-size="{$size-fuente-margen}" text-align="center" color="{$txt}" >
										
									</fo:block>
								</fo:table-cell>
								<fo:table-cell border="0.5pt solid">
									<fo:block font-size="{$size-fuente-margen}" text-align="center" color="{$txt}" >
										<xsl:value-of select="tarifa-ofrecida"/>
									</fo:block>
								</fo:table-cell>
								</fo:table-row>
							</xsl:for-each>
						</xsl:when>
						<xsl:otherwise>
							<fo:table-row>
								<fo:table-cell border="0.5pt solid">
									<fo:block font-size="{$size-fuente-margen}" text-align="center" color="{$txt}" >
										
									</fo:block>
								</fo:table-cell>
								<fo:table-cell border="0.5pt solid">
									<fo:block font-size="{$size-fuente-margen}" text-align="center" color="{$txt}" >
										
									</fo:block>
								</fo:table-cell>
								<fo:table-cell border="0.5pt solid">
									<fo:block font-size="{$size-fuente-margen}" text-align="center" color="{$txt}" >
										
									</fo:block>
								</fo:table-cell>
								<fo:table-cell border="0.5pt solid">
									<fo:block font-size="{$size-fuente-margen}" text-align="center" color="{$txt}" >
										
									</fo:block>
								</fo:table-cell>
								<fo:table-cell border="0.5pt solid">
									<fo:block font-size="{$size-fuente-margen}" text-align="center" color="{$txt}" >
										
									</fo:block>
								</fo:table-cell>
								</fo:table-row>
						</xsl:otherwise>
					</xsl:choose>
					</fo:table-body>
					</fo:table>


					<fo:block space-after="1.5cm"></fo:block>
		<fo:block font-size="{$size-fuente-margen}"  text-align="justify" color="{$txt}" text-altitude="1.5cm">
		 <fo:inline font-weight="bold"> IMPORTANTE: Eliminar Item Productos NO considerados y eliminar Columna Precios Pizarra</fo:inline>
		</fo:block>		
		<fo:block space-after="0.5cm"></fo:block>
		<fo:block font-size="{$size-fuente-margen}"  text-align="justify" color="{$txt}" text-altitude="1.5cm">
		 <fo:inline font-weight="bold"> B. CONDICIONES DE RECIPROCIDAD</fo:inline>
		</fo:block>		

			<fo:block space-after="1cm"></fo:block>
		<fo:table table-layout="fixed">
						<fo:table-column column-width="10cm" />
						<fo:table-column column-width="3cm"/>
						<fo:table-column column-width="3cm" />
						<fo:table-body>
							<fo:table-row>
								<fo:table-cell>
									<fo:block font-size="{$size-fuente-margen}" text-align="justify" color="{$txt}" >
										
									</fo:block>
								</fo:table-cell>
								<fo:table-cell>
									<fo:block font-size="{$size-fuente-margen}" text-align="justify" color="{$txt}" >
										
									</fo:block>
								</fo:table-cell>
								<fo:table-cell border="0.5pt solid">
									<fo:block font-size="{$size-fuente-margen}" text-align="justify" color="{$txt}" >
										Monto/Cantidad
									</fo:block>
								</fo:table-cell>
							</fo:table-row>	
							<fo:table-row>
								<fo:table-cell border="0.5pt solid">
									<fo:block font-size="{$size-fuente-margen}" text-align="justify" color="{$txt}" >
										1.- Incrementos de saldos en Cta. Cte. (en miles $)
									</fo:block>
								</fo:table-cell>
								<fo:table-cell border="0.5pt solid">
									<fo:block font-size="{$size-fuente-margen}" text-align="justify" color="{$txt}" >
										&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;Saldo
									</fo:block>
								</fo:table-cell>
								<fo:table-cell border="0.5pt solid">
									<fo:block font-size="{$size-fuente-margen}" text-align="justify" color="{$txt}" >
										
									</fo:block>
								</fo:table-cell>
							</fo:table-row>	
							<fo:table-row>
								<fo:table-cell border="0.5pt solid">
									<fo:block font-size="{$size-fuente-margen}" text-align="justify" color="{$txt}" >
										2.- Pago de IVA (en miles $)
									</fo:block>
								</fo:table-cell>
								<fo:table-cell border="0.5pt solid">
									<fo:block font-size="{$size-fuente-margen}" text-align="justify" color="{$txt}" >
										&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;Mensual
									</fo:block>
								</fo:table-cell>
								<fo:table-cell border="0.5pt solid">
									<fo:block font-size="{$size-fuente-margen}" text-align="justify" color="{$txt}" >
										
									</fo:block>
								</fo:table-cell>
							</fo:table-row>	
							<fo:table-row>
								<fo:table-cell border="0.5pt solid">
									<fo:block font-size="{$size-fuente-margen}" text-align="justify" color="{$txt}" >
										3.- Reducci�n cheques girados / mes (En unidades)
									</fo:block>
								</fo:table-cell>
								<fo:table-cell border="0.5pt solid">
									<fo:block font-size="{$size-fuente-margen}" text-align="justify" color="{$txt}" >
										&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;M�ximo
									</fo:block>
								</fo:table-cell>
								<fo:table-cell border="0.5pt solid">
									<fo:block font-size="{$size-fuente-margen}" text-align="justify" color="{$txt}" >
										
									</fo:block>
								</fo:table-cell>
							</fo:table-row>	
							<fo:table-row>
								<fo:table-cell border="0.5pt solid">
									<fo:block font-size="{$size-fuente-margen}" text-align="justify" color="{$txt}" >
										4.- Reducci�n Vales Vista / mes (En unidades)
									</fo:block>
								</fo:table-cell>
								<fo:table-cell border="0.5pt solid">
									<fo:block font-size="{$size-fuente-margen}" text-align="justify" color="{$txt}" >
										&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;M�ximo
									</fo:block>
								</fo:table-cell>
								<fo:table-cell border="0.5pt solid">
									<fo:block font-size="{$size-fuente-margen}" text-align="justify" color="{$txt}" >
										
									</fo:block>
								</fo:table-cell>
							</fo:table-row>	
						</fo:table-body>
					</fo:table>
		<fo:block space-after="1cm"></fo:block>
				<fo:table table-layout="fixed">
						<fo:table-column column-width="5cm" />
						<fo:table-column column-width="10cm"/>
						<fo:table-body>
							<fo:table-row>
								<fo:table-cell padding-before="0.2cm">
									<fo:block font-size="{$size-fuente-margen}" text-align="justify" color="{$txt}" >
										RUT Empresa &#0160;&#0160;&#0160; 
									</fo:block>
								</fo:table-cell>
								<fo:table-cell padding-before="0.2cm">
									<fo:block font-size="{$size-fuente-margen}" text-align="justify" color="{$txt}" >
										: &#0160;&#0160;<xsl:value-of select="bel/datos-basicos/rut"/>
									</fo:block>
								</fo:table-cell>
							</fo:table-row>
							<fo:table-row>
								<fo:table-cell padding-before="0.2cm">
									<fo:block font-size="{$size-fuente-margen}" text-align="justify" color="{$txt}" >
										Raz�n Social &#0160;&#0160;&#0160; 
									</fo:block>
								</fo:table-cell>
								<fo:table-cell padding-before="0.2cm">
									<fo:block font-size="{$size-fuente-margen}" text-align="justify" color="{$txt}" >
										: &#0160;&#0160;<xsl:value-of select="bel/datos-basicos/nombre"/>
									</fo:block>
								</fo:table-cell>
							</fo:table-row>
							<fo:table-row>
								<fo:table-cell padding-before="0.2cm">
									<fo:block font-size="{$size-fuente-margen}" text-align="justify" color="{$txt}" >
										Direcci�n &#0160;&#0160;&#0160; 
									</fo:block>
								</fo:table-cell>
								<fo:table-cell padding-before="0.2cm">
									<fo:block font-size="{$size-fuente-margen}" text-align="justify" color="{$txt}" >
										: &#0160;&#0160;<xsl:value-of select="bel/datos-basicos/direccion"/>
									</fo:block>
								</fo:table-cell>
							</fo:table-row>
							<fo:table-row>
								<fo:table-cell padding-before="0.2cm">
									<fo:block font-size="{$size-fuente-margen}" text-align="justify" color="{$txt}" >
										Comuna &#0160;&#0160;&#0160; 
									</fo:block>
								</fo:table-cell>
								<fo:table-cell padding-before="0.2cm">
									<fo:block font-size="{$size-fuente-margen}" text-align="justify" color="{$txt}" >
										: &#0160;&#0160;<xsl:value-of select="bel/datos-basicos/comuna"/>
									</fo:block>
								</fo:table-cell>
							</fo:table-row>
							<fo:table-row>
								<fo:table-cell padding-before="0.2cm">
									<fo:block font-size="{$size-fuente-margen}" text-align="justify" color="{$txt}" >
										Ciudad &#0160;&#0160;&#0160; 
									</fo:block>
								</fo:table-cell>
								<fo:table-cell padding-before="0.2cm">
									<fo:block font-size="{$size-fuente-margen}" text-align="justify" color="{$txt}" >
										: &#0160;&#0160;<xsl:value-of select="bel/datos-basicos/ciudad"/>
									</fo:block>
								</fo:table-cell>
							</fo:table-row>
							<fo:table-row>
								<fo:table-cell padding-before="0.2cm">
									<fo:block font-size="{$size-fuente-margen}" text-align="justify" color="{$txt}" >
										Tel�fono &#0160;&#0160;&#0160; 
									</fo:block>
								</fo:table-cell>
								<fo:table-cell padding-before="0.2cm">
									<fo:block font-size="{$size-fuente-margen}" text-align="justify" color="{$txt}" >
										: &#0160;&#0160;<xsl:value-of select="bel/datos-basicos/telefono"/>
									</fo:block>
								</fo:table-cell>
							</fo:table-row>
							<fo:table-row>
								<fo:table-cell padding-before="0.2cm">
									<fo:block font-size="{$size-fuente-margen}" text-align="justify" color="{$txt}" >
										Fax &#0160;&#0160;&#0160; 
									</fo:block>
								</fo:table-cell>
								<fo:table-cell padding-before="0.2cm">
									<fo:block font-size="{$size-fuente-margen}" text-align="justify" color="{$txt}" >
										: <xsl:value-of select="bel/datos-basicos/fax"/>
									</fo:block>
								</fo:table-cell>
							</fo:table-row>
						</fo:table-body>
					</fo:table>	
					<fo:block space-after="1cm"></fo:block>

		<fo:table table-layout="fixed">
						<fo:table-column column-width="10cm" />
						<fo:table-column column-width="10cm"/>
						<fo:table-body>
							<fo:table-row>
								<fo:table-cell>
									<fo:block font-size="{$size-fuente-margen}" text-align="justify" color="{$txt}" >
										___________________________________________ 
									</fo:block>
								</fo:table-cell>
								<fo:table-cell>
									<fo:block font-size="{$size-fuente-margen}" text-align="justify" color="{$txt}" >
										___________________________________________  							
									</fo:block>
								</fo:table-cell>
							</fo:table-row>
							<fo:table-row>
								<fo:table-cell>
									<fo:block font-size="{$size-fuente-margen}" text-align="justify" color="{$txt}" >
										p.p. Banco de Cr�dito e Inversiones
									</fo:block>
								</fo:table-cell>
								<fo:table-cell>
									<fo:block font-size="{$size-fuente-margen}" text-align="center" color="{$txt}" >
										p.p. Cliente  							
									</fo:block>
								</fo:table-cell>
							</fo:table-row>
							<fo:table-row>
								<fo:table-cell>
									<fo:block space-after="1cm"></fo:block>
								</fo:table-cell>
								<fo:table-cell>
									<fo:block space-after="1cm"></fo:block>
								</fo:table-cell>
							</fo:table-row>
							<fo:table-row>
								<fo:table-cell>
									<fo:block space-after="1cm"></fo:block>
								</fo:table-cell>
								<fo:table-cell>
									<fo:block font-size="{$size-fuente-margen}" text-align="center" color="{$txt}" >
										RUT: _________________________
									</fo:block>
									<fo:block space-after="0.5cm"></fo:block>
									<fo:block font-size="{$size-fuente-margen}" text-align="center" color="{$txt}" >
										Nombre: _________________________  							
									</fo:block>
								</fo:table-cell>
							</fo:table-row>
							<fo:table-row>
								<fo:table-cell>
									<fo:block space-after="1cm"></fo:block>
								</fo:table-cell>
								<fo:table-cell>
									<fo:block space-after="1cm"></fo:block>
								</fo:table-cell>
							</fo:table-row>
							<fo:table-row>
								<fo:table-cell>
									<fo:block font-size="{$size-fuente-margen}" text-align="center" color="{$txt}" >
										"Este documento consta de 2 hojas"
									</fo:block>
								</fo:table-cell>
								<fo:table-cell>
									<fo:block space-after="0.5cm"></fo:block>
								</fo:table-cell>
							</fo:table-row>
						</fo:table-body>
					</fo:table>	

				<fo:block font-size="5pt">
					<fo:leader color="{$lineas}" leader-pattern="rule" leader-length="18cm"/>
				</fo:block>

					<fo:table table-layout="fixed">
						<fo:table-column column-width="5cm" />
						<fo:table-column column-width="5cm"/>
						<fo:table-column column-width="5cm" />
						<fo:table-column column-width="5cm"/>
						<fo:table-body>
							<fo:table-row>
								<fo:table-cell padding-before="0.4cm">
									<fo:block font-size="{$size-fuente-margen}" text-align="justify" color="{$txt}" >
										<fo:inline font-weight="bold">  USO INTERNO DEL BCI</fo:inline>
									</fo:block>
								</fo:table-cell>
								<fo:table-cell padding-before="0.2cm">
									<fo:block font-size="{$size-fuente-margen}" text-align="justify" color="{$txt}" >
										
									</fo:block>
								</fo:table-cell>
								<fo:table-cell padding-before="0.2cm">
									<fo:block font-size="{$size-fuente-margen}" text-align="justify" color="{$txt}" >
										 
									</fo:block>
								</fo:table-cell>
								<fo:table-cell padding-before="0.2cm">
									<fo:block font-size="{$size-fuente-margen}" text-align="justify" color="{$txt}" >
										
									</fo:block>
								</fo:table-cell>
							</fo:table-row>
							<fo:table-row>
								<fo:table-cell padding-before="0.2cm">
									<fo:block font-size="{$size-fuente-margen}" text-align="justify" color="{$txt}" >
										Oficina BCI&#0160;&#0160;&#0160; :
									</fo:block>
								</fo:table-cell>
								<fo:table-cell padding-before="0.2cm">
									<fo:block font-size="{$size-fuente-margen}" text-align="justify" color="{$txt}" >
										_____________________________
									</fo:block>
								</fo:table-cell>
								<fo:table-cell padding-before="0.2cm">
									<fo:block font-size="{$size-fuente-margen}" text-align="justify" color="{$txt}" >
										 
									</fo:block>
								</fo:table-cell>
								<fo:table-cell padding-before="0.2cm">
									<fo:block font-size="{$size-fuente-margen}" text-align="justify" color="{$txt}" >
										
									</fo:block>
								</fo:table-cell>
							</fo:table-row>
							<fo:table-row>
								<fo:table-cell padding-before="0.2cm">
									<fo:block font-size="{$size-fuente-margen}" text-align="justify" color="{$txt}" >
										Ejecutivo BCI&#0160;&#0160;&#0160; :
									</fo:block>
								</fo:table-cell>
								<fo:table-cell padding-before="0.2cm">
									<fo:block font-size="{$size-fuente-margen}" text-align="justify" color="{$txt}" >
										_____________________________
									</fo:block>
								</fo:table-cell>
								<fo:table-cell padding-before="0.2cm">
									<fo:block font-size="{$size-fuente-margen}" text-align="justify" color="{$txt}" >
										&#0160;&#0160;&#0160; &#0160;&#0160;&#0160; Anexo&#0160;&#0160;&#0160; : 
									</fo:block>
								</fo:table-cell>
								<fo:table-cell padding-before="0.2cm" >
									<fo:block font-size="{$size-fuente-margen}" text-align="justify" color="{$txt}" >
										________
									</fo:block>
								</fo:table-cell>
							</fo:table-row>
							<fo:table-row>
								<fo:table-cell padding-before="0.2cm">
									<fo:block font-size="{$size-fuente-margen}" text-align="justify" color="{$txt}" >
										Correo electr�nico&#0160;&#0160;&#0160; : 
									</fo:block>
								</fo:table-cell>
								<fo:table-cell padding-before="0.2cm">
									<fo:block font-size="{$size-fuente-margen}" text-align="justify" color="{$txt}" >
										_____________________________
									</fo:block>
								</fo:table-cell>
								<fo:table-cell padding-before="0.2cm">
									<fo:block font-size="{$size-fuente-margen}" text-align="justify" color="{$txt}" >
										 
									</fo:block>
								</fo:table-cell>
								<fo:table-cell padding-before="0.2cm">
									<fo:block font-size="{$size-fuente-margen}" text-align="justify" color="{$txt}" >
										
									</fo:block>
								</fo:table-cell>
							</fo:table-row>
							<fo:table-row>
								<fo:table-cell padding-before="0.2cm">
									<fo:block font-size="{$size-fuente-margen}" text-align="justify" color="{$txt}" >
										
									</fo:block>
								</fo:table-cell>
								<fo:table-cell padding-before="0.2cm">
									<fo:block font-size="{$size-fuente-margen}" text-align="justify" color="{$txt}" >
										
									</fo:block>
								</fo:table-cell>
								<fo:table-cell padding-before="0.2cm">
									<fo:block font-size="{$size-fuente-margen}" text-align="justify" color="{$txt}" >
										
									</fo:block>
								</fo:table-cell>
								<fo:table-cell padding-before="0.2cm">
									<fo:block font-size="{$size-fuente-margen}" text-align="justify" color="{$txt}" >
										<fo:inline font-weight="bold">Timbre</fo:inline>
									</fo:block>
								</fo:table-cell>
							</fo:table-row>
							<fo:table-row>
								<fo:table-cell padding-before="0.2cm">
									<fo:block font-size="{$size-fuente-margen}" text-align="justify" color="{$txt}" >
										<fo:inline font-weight="bold">V�B� Ejecutivo</fo:inline> &#0160;&#0160;&#0160; : 
									</fo:block>
								</fo:table-cell>
								<fo:table-cell padding-before="0.2cm">
									<fo:block font-size="{$size-fuente-margen}" text-align="justify" color="{$txt}" >
										_____________________________
									</fo:block>
								</fo:table-cell>
								<fo:table-cell padding-before="0.2cm">
									<fo:block font-size="{$size-fuente-margen}" text-align="justify" color="{$txt}" >
										&#0160;&#0160;&#0160; &#0160;&#0160;&#0160; <fo:inline font-weight="bold">Fecha</fo:inline>
										&#0160;&#0160;&#0160; : 
									</fo:block>
								</fo:table-cell>
								<fo:table-cell padding-before="0.2cm">
									<fo:block font-size="{$size-fuente-margen}" text-align="justify" color="{$txt}" >
										_______________
									</fo:block>
								</fo:table-cell>
							</fo:table-row>
							<fo:table-row>
								<fo:table-cell padding-before="0.2cm">
									<fo:block font-size="{$size-fuente-margen}" font-weight="bold" text-align="justify" color="{$txt}" >
										<fo:inline font-weight="bold">V�B� ACA JOP</fo:inline> &#0160;&#0160;&#0160; : 
									</fo:block>
								</fo:table-cell>
								<fo:table-cell padding-before="0.2cm">
									<fo:block font-size="{$size-fuente-margen}" text-align="justify" color="{$txt}" >
										_____________________________
									</fo:block>
								</fo:table-cell>
								<fo:table-cell padding-before="0.2cm">
									<fo:block font-size="{$size-fuente-margen}" text-align="justify" color="{$txt}" >
										&#0160;&#0160;&#0160; &#0160;&#0160;&#0160; <fo:inline font-weight="bold">Fecha</fo:inline>
										&#0160;&#0160;&#0160; : 
									</fo:block>
								</fo:table-cell>
								<fo:table-cell padding-before="0.2cm">
									<fo:block font-size="{$size-fuente-margen}" text-align="justify" color="{$txt}" >
										_______________
									</fo:block>
								</fo:table-cell>
							</fo:table-row>
							<fo:table-row>
								<fo:table-cell padding-before="0.2cm">
									<fo:block font-size="{$size-fuente-margen}" text-align="justify" color="{$txt}" >
										Ejecutivo BEL BCI&#0160;&#0160;&#0160; : 
									</fo:block>
								</fo:table-cell>
								<fo:table-cell padding-before="0.2cm">
									<fo:block font-size="{$size-fuente-margen}" text-align="justify" color="{$txt}" >
										_______________________
									</fo:block>
								</fo:table-cell>
								<fo:table-cell padding-before="0.2cm">
									<fo:block font-size="{$size-fuente-margen}" text-align="justify" color="{$txt}" >
										&#0160;&#0160;&#0160; &#0160;&#0160;&#0160; Correo electr�nico&#0160;&#0160;&#0160; :   
									</fo:block>
								</fo:table-cell>
								<fo:table-cell padding-before="0.2cm">
									<fo:block font-size="{$size-fuente-margen}" text-align="justify" color="{$txt}" >
										_____________
									</fo:block>
								</fo:table-cell>
							</fo:table-row>
						</fo:table-body>
					</fo:table>	

</xsl:template>

	
	<xsl:template name="subTitulo">
		<xsl:param name="titulo"/>
		<xsl:param name="numero"/>

		<fo:block font-size="8pt" font-weight="bold" text-align="left" color="black" >
			<fo:table table-layout="fixed">
				<fo:table-column column-width="8cm" />
				<fo:table-body>
					<fo:table-row>
						<fo:table-cell>
							<fo:block>
								<xsl:value-of select="$numero"/> <xsl:value-of select="$titulo"/>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
				</fo:table-body>
			</fo:table>
		</fo:block>
	</xsl:template>

	<xsl:template name="itemTitulo">
		<xsl:param name="titulo"/> 
		<fo:block font-size="9pt" font-weight="normal" color="{$txt-azul-claro}" padding-before="1mm" padding-after="1mm" text-align="left">
			<fo:table table-layout="fixed">
				<fo:table-column column-width="0.5cm" />
				<fo:table-column column-width="8cm" />
				<fo:table-body>
					<fo:table-row>
						<fo:table-cell padding-left="2mm" padding-before="1mm" >
							<fo:external-graphic height="1mm" width="1mm">
								<xsl:attribute name="src">
									<xsl:value-of select="info/rutaImagen"/>01-bullet1-rj.gif
								</xsl:attribute>
							</fo:external-graphic>
						</fo:table-cell>
						<fo:table-cell>
							<fo:block>
								<xsl:value-of select="$titulo"/>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
				</fo:table-body>
			</fo:table>
		</fo:block>
	</xsl:template>

</xsl:stylesheet>