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
		casado, factor de comercio, cédula nacional de identidad Nº _____________, ambos domiciliados en
		Avenida El Golf N° 125, Comuna de Las Condes, Santiago, en adelante el "Banco", por una parte, y por
		la otra, _________________________________________, RUT_________________, en adelante el
		"Cliente", representado por don _________________, cédula de identidad Nº
		__________________________, nacionalidad __________________ estado civil
		________________________ profesión ________________________________ y por don
		____________________________, cédula de identidad Nº _________________, nacionalidad
		__________________ estado civil ________________________ profesión
		________________________________, todos domiciliados en esta ciudad, calle
		_______________________________, se ha convenido lo siguiente:
		</fo:block>

		<fo:block space-after="1.5cm">
		</fo:block>

		<fo:block font-size="{$size-fuente-margen}"  text-align="justify" color="{$txt}" text-altitude="1.5cm">
		<fo:inline font-weight="bold"> Primero:</fo:inline> Por el presente instrumento, el Cliente contrata con el "Banco" los servicios de Bci Cash
		Express, cuyas condiciones particulares se contienen en las descripciones especificas de cada uno de
		ellos, los cuales se entienden forman parte integrante del presente Contrato. El sólo hecho de que el
		Cliente utilice los aludidos servicios se entenderá como una expresa contratación de los mismos y la
		aceptación de acuerdo a las condiciones operativas y comerciales que han sido ofrecidas por el "Banco"
		y aceptadas por el Cliente.
		</fo:block>

		<fo:block space-after="1cm">
		</fo:block>

		<fo:block font-size="{$size-fuente-margen}"  text-align="justify" color="{$txt}" text-altitude="1.5cm">
		<fo:inline font-weight="bold">Segundo:</fo:inline> La contratación de cada producto, se verificará a través de la firma del presente contrato o
		mediante la comunicación que en tal sentido efectúe el Cliente, a través de Internet, o en la forma y bajo
		las seguridades que exijan los servicios de Bci Cash Express. Será de responsabilidad del cliente proveer
		el equipamiento tecnológico necesario para efectuar esta conexión.
		</fo:block>

		<fo:block space-after="0.5cm">
		</fo:block>

		<fo:block font-size="{$size-fuente-margen}"  text-align="justify" color="{$txt}" text-altitude="1.5cm">
		Para la prestación de los servicios contratados, el Cliente se interconectará con el "Banco" por vía
		remota y ello se efectuará a través de sus apoderados y representantes debidamente facultados para
		ello, quienes lo harán en forma estrictamente confidencial, mediante el ingreso de la correspondiente
		clave secreta personal e intransferible que es de exclusivo conocimiento del Cliente y de sus apoderados
		o representantes que él determine. Por esta razón se entenderán como propias y efectuadas por el
		Cliente, las operaciones y transacciones contables, informativas, crediticias o instrucciones electrónicas
		de cualquiera naturaleza, recibidas en el Banco y que hayan sido cursadas utilizando la clave secreta
		asignada al Cliente, así haya operado alguien no autorizado al efecto, hecho que el Banco no está en
		condiciones de verificar. La seguridad y reserva total de las operaciones del Cliente, queda garantizada
		por intermedio del uso de la clave precitada ya que sólo con ella podrá acceder a la información deseada
		y realizar las operaciones propias de cada servicio en particular.
		</fo:block>

		<!-- Separador -->
		<fo:block space-after="0.5cm">
		</fo:block>
		<!-- Separador -->

		<fo:block font-size="{$size-fuente-margen}" text-align="justify" color="{$txt}" >
			El Cliente faculta irrevocablemente al "Banco" para suscribir bajo la firma de uno o más de sus
			apoderados, aquellos servicios amparados por estas Condiciones o que se ofrecieren en lo sucesivo, y
			que aquel decida contratar, describiendo por vía remota tales servicios, los que se entenderán
			contratados con la sola recepción de una carta vía correo ordinario o fax, debidamente firmada por el
			Banco en su representación, indicando las condiciones mínimas requeridas para la operación del
			servicio, las cuales se considerarán parte integrante del presente contrato.
		</fo:block>
		<!-- Separador -->
		<fo:block space-after="0.5cm">
		</fo:block>
		<!-- Separador -->

		<fo:block font-size="{$size-fuente-margen}" text-align="justify" color="{$txt}" >
			Las partes acuerdan irrevocablemente que las grabaciones telefónicas y/o archivos computacionales de
			cualquiera índole, tales como logs y otros, ya sean de orden electrónico, informático o telemático del
			Banco y/o de terceros constituyen plena prueba de la solicitud, instrucciones, operaciones, transacciones
			y/o realización de los servicios electrónicos de que da cuenta el presente contrato, renunciando ambas
			partes a objetarlos o impugnarlos, incluso judicialmente. El Cliente autoriza expresa e irrevocablemente
			al Banco, con respeto a las voces que contienen las instrucciones impartidas telefónicamente, para
			grabarlas, captarlas, reproducirlas y, en general, exhibirlas ante quien fuere menester. El Cliente no
			podrá impugnar o negar una instrucción recibida por el Banco a través de los mecanismos antes
			indicados.
		</fo:block>
			<!-- Separador -->
			<fo:block space-after="0.5cm">
			</fo:block>
			<!-- Separador -->
			<fo:block font-size="{$size-fuente-margen}" text-align="justify" color="{$txt}" >
			<fo:inline font-weight="bold">Tercero: </fo:inline>El Banco se compromete a entregar los servicios en forma eficiente y oportuna, salvo por
			razones de fuerza mayor o caso fortuito, facultándosele a suspender el funcionamiento de los mismos en
			forma total o parcial, en cuyo caso aplicará los procedimientos de contingencia que se hayan definido. En
			vista de lo anterior el Banco queda liberado de toda responsabilidad por los daños o perjuicios eventuales
			que pudiere ocasionar, tanto al Cliente como a terceros.
			</fo:block>
			<!-- Separador -->
			<fo:block space-after="0.5cm">
			</fo:block>
			<!-- Separador -->
			<fo:block font-size="{$size-fuente-margen}" text-align="justify" color="{$txt}" >
			<fo:inline font-weight="bold">Cuarto:</fo:inline> Las tarifas que se prevén para el presente contrato, se mantendrán vigentes siempre y cuando
			se cumplan los acuerdos y condiciones de reciprocidad estipuladas en el anexo respectivo y que forman
			parte del mismo, en cada uno de los servicios específicos que componen este contrato, todos los cuales
			el Cliente declara conocer y se obliga a cumplir. Si no lo hiciere, quedará el Banco expresa e
			irrevocablemente facultado para utilizar el valor base indicado en la tabla de tarifas, de cada servicio.
			</fo:block>
			<!-- Separador -->
			<fo:block space-after="0.5cm">
			</fo:block>
			<!-- Separador -->
			<fo:block font-size="{$size-fuente-margen}" text-align="justify" color="{$txt}" >
			<fo:inline font-weight="bold">Quinto:</fo:inline> El Cliente deberá adoptar los resguardos que estime necesarios para proteger el acceso a los
			equipos, programas y aplicaciones de su dependencia. Cualquier filtración o mal uso que se hiciera de
			ellos o de sus conexiones, elementos de transmisión u otro, serán de su exclusiva responsabilidad.
			Respecto a las personas que el Cliente autorice a utilizar los servicios, es de su exclusiva
			responsabilidad su designación y la forma de hacerlo, sin que al Banco corresponda verificar, confrontar
			o corroborar que ellos estén acreditados como sus representantes ni que las operaciones se hayan
			materializado efectivamente por su intermedio.
			</fo:block>
			<!-- Separador -->
			<fo:block space-after="0.5cm">
			</fo:block>
			<!-- Separador -->
			<fo:block font-size="{$size-fuente-margen}" text-align="justify" color="{$txt}" >
			Cada vez que el Cliente defina un usuario, dotado de facultades de apoderado o contralor conforme se
			prevé en la cláusula sexta siguiente, el que ciertamente ha de estar previamente registrado en el Banco
			como apoderado, deberá enviar a éste una carta individualizándolo en dicho rol. Dicha carta deberá
			encontrarse firmada por algún representante del Cliente, debidamente registrado en el Banco. Esta carta
			deberá estar adjunta al recibo conforme por parte de la persona definida como apoderado,
			entendiéndose con ello que se le ha creado como usuario; que ha recibido una clave secreta y que las
			acciones realizadas a nombre de dicho usuario son de su responsabilidad. Con estos elementos el Banco
			procederá a habilitar el uso del producto por parte del usuario definido como "apoderado".
			</fo:block>
			<!-- Separador -->
			<fo:block space-after="0.5cm">
			</fo:block>
			<!-- Separador -->
			<fo:block font-size="{$size-fuente-margen}" text-align="justify" color="{$txt}" >
			<fo:inline font-weight="bold">Sexto:</fo:inline> Para tener acceso y operar los servicios electrónicos el Cliente deberá utilizar los procedimientos
			y/o medios de seguridad, identificación e integridad que el Banco ha implementado o implemente en el
			futuro, para cada uno de ellos, y que pudieren estar asociados a los elementos requeridos para su
			utilización, tales como firma electrónica --simple o avanzada-- tarjetas magnéticas, número de rut y/u
			otros, todos los cuales serán previamente informados por el Banco.
			</fo:block>
			<!-- Separador -->
			<fo:block space-after="0.5cm">
			</fo:block>
			<!-- Separador -->
			<fo:block font-size="{$size-fuente-margen}" text-align="justify" color="{$txt}" >
			El Banco realizará, en línea o no, todas las instrucciones que emita el Cliente a través de los servicios
			electrónicos, instrucciones que serán consideradas como mandatos irrevocables para todos los efectos
			legales; quedando el Banco irrevocablemente legitimado para cumplirlas y efectuar, por consiguiente, los
			cargos, abonos u otros, así como los demás actos que procedan. El mandante releva al Banco o a quien
			ésta designe de la obligación de rendir cuenta de los mandatos establecidos en este instrumento.
			Las partes dejan constancia y declaran que las claves de acceso, tarjetas y la firma electrónica son
			secretas, personales e intransferibles, siendo de exclusiva responsabilidad del Cliente mantener la
			debida diligencia y cuidado en su utilización; por lo anterior, el Cliente será responsable por los perjuicios
			que pueda ocasionar al Banco, al propio Cliente y/o a terceros, el mal uso de aquellas y de los servicios
			electrónicos, como también de los perjuicios al Banco, al propio Cliente y/o a terceros derivados de su
			extravío, hurto, robo, mal uso, o cualquier otra circunstancia, sea que ellos provengan de su hecho o
			culpa o del caso fortuito o de fuerza mayor, liberando, en consecuencia, al Banco de toda
			responsabilidad.
			</fo:block>
			<!-- Separador -->
			<fo:block space-after="0.5cm">
			</fo:block>
			<!-- Separador -->
			<fo:block font-size="{$size-fuente-margen}" text-align="justify" color="{$txt}" >
			En caso de extravío, hurto, robo, mal uso, o cualquier otra circunstancia similar, de aquellos elementos
			de seguridad y desde luego de la firma electrónica, el Cliente se obliga a dar aviso inmediato y por
			escrito al Banco, en cualquiera de sus oficinas. Cesará la responsabilidad del Cliente una vez
			transcurrido un día hábil bancario contado desde el momento en que el Banco reciba el mencionado
			aviso. Existen servicios electrónicos en los que será requisito necesario para la utilización de los mismos,
			que el Cliente cambie en la primera oportunidad que opere, las claves o la firma electrónica, liberando el
			Cliente al Banco de toda responsabilidad en caso de no hacerlo.
			</fo:block>
			<!-- Separador -->
			<fo:block space-after="0.5cm">
			</fo:block>
			<!-- Separador -->
			<fo:block font-size="{$size-fuente-margen}" text-align="justify" color="{$txt}" >
			El Banco tiene la facultad de solicitar al Cliente la sustitución de las claves o de la firma electrónica,
			cuando así lo aconsejen razones de carácter técnico, cuya calificación corresponderá exclusivamente al
			Banco. Por el presente acto, el Cliente autoriza expresamente al Banco, para que en su nombre y
			representación, solicite y obtenga de la entidad prestadora de servicios de certificación de firma
			electrónica acreditada por la Subsecretaría de Economía, Fomento y Reconstrucción o quien cumpla la
			función de acreditación, designada por el propio Banco, en adelante también el Certificador, la firma
			electrónica avanzada, sus Reglamentos y posteriores modificaciones. Para ello, el Banco, podrá firmar,
			suscribir todos los documentos e instrumentos, realizar todos los actos, y presentar todos los
			instrumentos públicos y/o privados requeridos por el Certificador. El Cliente se obliga a efectuar, con la
			mayor diligencia posible, todos los actos tendientes a obtener la firma electrónica avanzada de acuerdo a
			este punto, así como presentar la documentación que le sea solicitada.
			</fo:block>
			<!-- Separador -->
			<fo:block space-after="0.5cm">
			</fo:block>
			<!-- Separador -->
			<fo:block font-size="{$size-fuente-margen}" text-align="justify" color="{$txt}" >
			El Cliente autoriza al Banco para comunicar, transmitir, transferir y/o proporcionar a sus filiales y/o a
			terceros cualesquiera datos de carácter personal o protegidos por la Ley General de Bancos y por otras
			disposiciones legales, cuando ello fuere necesario o conveniente para el adecuado perfeccionamiento,
			materialización y/o implementación de los productos y/o servicios que se pongan a disposición del
			Cliente a través de los servicios electrónicos; como también cuando ello fuere necesario o conveniente a
			los efectos de agregar nuevos atributos o beneficios o de implementar modalidades o características que
			mejoren la calidad y/u oportunidad de prestación de servicios y/o productos puestos a su disposición por
			el Banco, sus filiales y/o terceros a través de los mencionados servicios. A mayor abundamiento y
			considerando esta explícita autorización, las partes declaran expresamente que lo anterior no constituye
			infracción al artículo 1º de la Ley de Cuentas Corrientes Bancarias y Cheques, ni al artículo 154 de la Ley
			General de Bancos, en lo relativo al secreto bancario.
			</fo:block>
			<!-- Separador -->
			<fo:block space-after="0.5cm">
			</fo:block>
			<!-- Separador -->
			<fo:block font-size="{$size-fuente-margen}" text-align="justify" color="{$txt}" >
			Para poder operar los servicios asociados a las presentes Condiciones Generales, el Cliente estará
			provisto de una clave denominada "CLAVE DE SUPERVISOR", que corresponde a la única entregada
			por el Banco, y que le permite definir, asignar, mantener y eliminar usuarios de estos productos; perfiles
			de servicios y acceso a éstos; a su turno, el Cliente podrá asignar las denominadas "CLAVES DE
			USUARIO", las que permiten a cada uno de éstos, en forma individual, operar determinados servicios.
			Se definen tres niveles de "usuarios", que corresponden a operador, contralor y apoderado, sea este
			virtual o de firmas y poderes, siendo éste último el único además facultado para efectuar transferencias
			de fondos distintas de pagos propiamente tal. El usuario apoderado de firmas y poderes debe hallarse
			registrado en el Banco como tal, sobre la base de los poderes formalmente otorgados por el Cliente y
			utilizar para la firma la password o Firma Electrónica.
			</fo:block>
			<!-- Separador -->
			<fo:block space-after="0.5cm">
			</fo:block>
			<!-- Separador -->
			<fo:block font-size="{$size-fuente-margen}" text-align="justify" color="{$txt}" >
			<fo:inline font-weight="bold">Séptimo:</fo:inline> El Cliente puede informar a los beneficiarios de los servicios a los cuales se ha adscrito, para
			cuyo efecto podrá utilizar los medios de publicidad que estime, incluso la propia documentación
			respaldatoria de los servicios. En todo caso, toda publicidad en que se utilice el nombre o logo del
			"Banco" deberá contar con la aprobación previa de éste último. Adicionalmente, el Cliente autoriza
			expresamente al Banco para que éste informe a los beneficiarios o terceros que se relacionen con el
			Cliente, por correspondencia o a través de cualquier otro medio, acerca de la firma del presente
			convenio, como así también para promocionar entre ellos otros productos y servicios que proporciona el
			Banco, pero sin que constituya una obligación para el Banco el hacerlo.
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
			administrativos o de digitación.
			</fo:block>
			<!-- Separador -->
			<fo:block space-after="0.5cm">
			</fo:block>
			<!-- Separador -->
			<fo:block font-size="{$size-fuente-margen}" text-align="justify" color="{$txt}" >
			<fo:inline font-weight="bold">Décimo:</fo:inline> Si el Cliente instruyere pagos sin contar al efecto con fondos disponibles suficientes, el Banco
			no los efectuará. Sin embargo se entenderá que esa sola instrucción constituye una solicitud de crédito
			hasta por el monto instruido pagar, pudiendo el Banco libremente acceder a ello o denegarlo, sin
			necesidad de expresar causa. El solo hecho que el Banco efectúe los pagos ordenados en tales
			condiciones, importa su consentimiento en conceder el crédito.
			</fo:block>
			<!-- Separador -->
			<fo:block space-after="0.5cm">
			</fo:block>
			<!-- Separador -->
			<fo:block font-size="{$size-fuente-margen}" text-align="justify" color="{$txt}" >
			Con el propósito de documentar el crédito así contraído, el Cliente otorga en este mismo acto y por el
			presente instrumento, un mandato mercantil e irrevocable al Banco y a la empresa "Servicios de
			Normalización y Cobranza - Normaliza, S.A.", sociedad filial del Banco, para que indistintamente ésta o
			el Banco, autocontratando, suscriban un pagaré a la orden del mismo Banco, por el importe
			correspondiente a las sumas que el Cliente resultare adeudando a aquel, como consecuencia de los
			pagos así instruidos y efectivamente verificados, pudiendo desde luego enterar el impuesto
			correspondiente a dicho pagaré, protestarlo y en definitiva proceder a su cobranza judicial, incluyendo el
			monto del mismo, el importe que se resultare adeudando, más impuestos, intereses y reajustes, bastará
			para acreditar que se ha verificado el pago en las condiciones señaladas y en consecuencia que se ha
			concedido el crédito, el que figuren debidamente canceladas las cuentas instruidas pagar por el Cliente.
			</fo:block>
			<!-- Separador -->
			<fo:block space-after="0.5cm">
			</fo:block>
			<!-- Separador -->
			<fo:block font-size="{$size-fuente-margen}" text-align="justify" color="{$txt}" >
			<fo:inline font-weight="bold">Undécimo:</fo:inline> Las tarifas, comisiones e impuestos que se originen con ocasión de éste contrato y sus
			anexos, serán cargados en la Cuenta Corriente definida para operar cada servicio en particular dentro de
			los primeros diez días hábiles del mes siguiente al de la prestación del servicio.
			</fo:block>
			<!-- Separador -->
			<fo:block space-after="0.5cm">
			</fo:block>
			<!-- Separador -->
			<fo:block font-size="{$size-fuente-margen}" text-align="justify" color="{$txt}" >
			Sin perjuicio de otros derechos que correspondan al Banco, en el evento que el cargo automático de la
			tarifa en la cuenta corriente prevista para cada producto específico, sea rechazado por cualquier causa o
			el Cliente no pague oportunamente los servicios correspondientes, el monto de la factura
			correspondiente devengará el interés moratorio más alto que legalmente sea procedente estipular a partir
			de la fecha del no pago, por cualquier causa.
			</fo:block>
			<!-- Separador -->
			<fo:block space-after="0.5cm">
			</fo:block>
			<!-- Separador -->
			<fo:block font-size="{$size-fuente-margen}" text-align="justify" color="{$txt}" >
			<fo:inline font-weight="bold">Duodécimo:</fo:inline> El Banco podrá modificar tanto la comisión fija mensual como la facturación mínima
			mensual de todos y cada uno de los servicios contratados y que constan en los respectivos anexos,
			incluso aumentándolas, debiendo al efecto comunicarlas al Cliente por escrito, con una antelación no
			inferior a 30 días con respecto a la fecha en que comiencen a regir las nuevas tarifas. Dicha
			comunicación podrá incluirse en la cartola de cuentas corrientes.
			</fo:block>
			<!-- Separador -->
			<fo:block space-after="0.5cm">
			</fo:block>
			<!-- Separador -->
			<fo:block font-size="{$size-fuente-margen}" text-align="justify" color="{$txt}" >
			<fo:inline font-weight="bold">Decimotercero:</fo:inline> El presente Convenio comienza a regir a contar de esta fecha, y tendrá duración
			indefinida, pero cualesquiera de las partes podrá ponerle término dando a la otra un aviso por carta
			certificada con 30 días de anticipación a la fecha en que deba expirar, sin necesidad de expresar causa.
			Esta revocación del contrato implica la revocación de todos los servicios contratados por el Cliente. Con
			todo, el Banco se reserva el derecho de ponerle término en cualquier momento, sin responsabilidad
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
			b) Si el Cliente a través de sus mandatarios, no administrare en forma adecuada su cuenta corriente,
			    hiciere mal uso del equipamiento asociado al servicio, o realizare cualquier hecho, acción o
			                   aplicación del sistema que no corresponda a la naturaleza del servicio o lo utilizase con un propósito
			                   ajeno a los negocios que lo ligan con el Banco.
			</fo:block>
			
			<!-- Separador -->
			<fo:block space-after="0.5cm">
			</fo:block>
			<!-- Separador -->
			<fo:block font-size="{$size-fuente-margen}" text-align="justify" color="{$txt}" >
			Cabe señalar, que la revocación de este contrato implica la revocación de los servicios contratados.
			Todo lo anterior es, sin perjuicio de la responsabilidad civil y/o penal en que pudiese incurrir el Cliente o
			sus Apoderados o mandatarios, por el inadecuado uso del servicio.
			</fo:block>
			<!-- Separador -->
			<fo:block space-after="0.5cm">
			</fo:block>
			<!-- Separador -->
			<fo:block font-size="{$size-fuente-margen}" text-align="justify" color="{$txt}" >
			<fo:inline font-weight="bold">Decimocuarto:</fo:inline> Para todos los efectos que se deriven de este contrato, las partes fijan su domicilio en la
			Ciudad y Comuna de.............................................. Se tendrá como domicilio del Cliente, aquel que se
			encuentre registrado en el Banco en relación con su(s) cuenta(s) corriente(s).
			</fo:block>
			<!-- Separador -->
			<fo:block space-after="0.5cm">
			</fo:block>
			<!-- Separador -->
			<fo:block font-size="{$size-fuente-margen}" text-align="justify" color="{$txt}" >
			<fo:inline font-weight="bold">Decimoquinto:</fo:inline> Cualquier duda o dificultad que surja entre las partes con motivo de las presentes
			Condiciones Generales, así como con ocasión de los Anexos relativos a cada producto específico o sus
			documentos complementarios o modificatorios, ya se refiera a su interpretación, cumplimiento, validez,
			terminación o cualquier otra causa relacionada con este contrato o con dichos Anexos, se resolverá por
			medio de un árbitro arbitrador, designado de común acuerdo por las partes y a falta de tal acuerdo, la
			designación se hará por los Tribunales de Justicia. Este árbitro conocerá breve y sumariamente, sin
			forma de juicio y en contra de sus resoluciones no procederá recurso alguno.
			</fo:block>
			<!-- Separador -->
			<fo:block space-after="0.5cm">
			</fo:block>
			<!-- Separador -->
			<fo:block font-size="{$size-fuente-margen}" text-align="justify" color="{$txt}" >
			<fo:inline font-weight="bold">Decimosexto:</fo:inline> El presente contrato se somete a lo dispuesto en el artículo 3º de la Ley Nº 19.799, sobre
			Documentos Electrónicos, Firma Electrónica y Servicios de Certificación de dicha Firma, firmándose en
			dos ejemplares, quedando uno de ellos en poder del Banco y el otro para el Cliente.
			</fo:block>
			<!-- Separador -->
			<fo:block space-after="0.5cm">
			</fo:block>
			<!-- Separador -->

			<fo:block font-size="{$size-fuente-margen}" text-align="justify" color="{$txt}" >
			La personería del apoderado del Banco consta de escritura pública de fecha ________________,
			otorgada ante el Notario de Santiago don _________________________________________________
			</fo:block>
			<fo:block space-after="0.5cm">
			</fo:block>
			<fo:block font-size="{$size-fuente-margen}" text-align="justify" color="{$txt}" >
			La personería del apoderado del Cliente consta de escritura pública de fecha ______________________
			extendida en la Notaría de don ___________________________________________________________
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
										p.p. Banco de Crédito e Inversiones
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
										Correo electrónico&#0160;&#0160;&#0160; : 
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
										<fo:inline font-weight="bold">V°B° Ejecutivo</fo:inline> &#0160;&#0160;&#0160; : 
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
										<fo:inline font-weight="bold">V°B° ACA JOP</fo:inline> &#0160;&#0160;&#0160; : 
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
										&#0160;&#0160;&#0160; &#0160;&#0160;&#0160; Correo electrónico&#0160;&#0160;&#0160; :   
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
		<fo:inline font-weight="bold"> DATOS BÁSICOS DEL CONVENIO DE SERVICIO</fo:inline>
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
										Razón Social &#0160;&#0160;&#0160; 
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
										Dirección &#0160;&#0160;&#0160; 
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
										Teléfono &#0160;&#0160;&#0160; 
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
										Dirección &#0160;&#0160;&#0160; 
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
		<fo:inline font-weight="bold" > DATOS BÁSICOS ADMINISTRACIÓN DEL SERVICIO EN LA EMPRESA</fo:inline>
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
										Teléfono&#0160;&#0160;&#0160; 
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
		<fo:inline font-weight="bold" > Supervisor: Quièn habilita al(os) usuario(s) y define perfil(es) en la empresa</fo:inline>
		</fo:block>		

		<fo:block space-after="0.5cm"></fo:block>
		<fo:block border-after-width ="dashed"  font-size="{$size-fuente-margen}"  text-align="left" color="{$txt}" text-altitude="1.5cm">
		<fo:inline font-weight="bold" > Requisitos Mínimos Técnicos</fo:inline>
		</fo:block>		

		<fo:block font-size="{$size-fuente-margen}"  text-align="justify" color="{$txt}" text-altitude="1.5cm">
		Para todos los efectos de la prestación del servicio descrito en el presente instrumento, el
		Cliente deberá contar con el siguiente equipamiento computacional y programas de software:
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
								Línea de comunicación
							</fo:block>
						</fo:table-cell>
						<fo:table-cell border="0.5pt solid">
							<fo:block font-size="{$size-fuente-margen}" text-align="left" color="{$txt}" >
								Tipo FAX
							</fo:block>
						</fo:table-cell>
						<fo:table-cell border="0.5pt solid">
							<fo:block font-size="{$size-fuente-margen}" text-align="left" color="{$txt}" >
								Tipo FAX / Línea ISDN 
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
		Es un servicio que permite al cliente, a través de una red de comunicaciones, pública o privada, interconectar
		su computador el Banco, para poder con ello realizar las siguientes operaciones y acceder a los siguientes
		servicios:
		</fo:block>
		<fo:block font-size="{$size-fuente-margen}"  text-align="justify" color="{$txt}" text-altitude="1.5cm">
		* Obtener información de las distintas operaciones bancarias que mantiene con el BCI.
		</fo:block>
		<fo:block font-size="{$size-fuente-margen}"  text-align="justify" color="{$txt}" text-altitude="1.5cm">
		* Efectuar electrónicamente transferencias de fondos entre Cuentas Corrientes BCI y Otros Bancos, las
		cuales están sujetas a los horarios que se indican mas adelante. El Cliente podrá efectuar transferencias
		de fondos interbancarias en línea, utilizando el sistema de liquidación bruta entiempo real (LBTR) del
		Banco Central, el cual define montos mínimos para su operación.
		</fo:block>
		<fo:block font-size="{$size-fuente-margen}"  text-align="justify" color="{$txt}" text-altitude="1.5cm">
		* Transmitir y recibir archivos computacionales con formatos predefinidos asociados a otros prodcutos Bci
		Cash Express.
		</fo:block>

		<fo:block space-after="0.5cm">
		</fo:block>

		<fo:block font-size="{$size-fuente-margen}"  text-align="justify" color="{$txt}" text-altitude="1.5cm">
			Las transacciones realizadas por el Cliente en virtud del presente convenio, se debitarán o abonarán según
			corresponda, en la(s) cuenta(s) corriente(s) y/o en la(s) cuentaprima(s) del Cliente que se individualizan en el
			contrato que acompaña el presente instrumento.
		</fo:block>

		<fo:block space-after="0.5cm">
		</fo:block>

		<fo:block font-size="{$size-fuente-margen}"  text-align="justify" color="{$txt}" text-altitude="1.5cm">
			Las partes acuerdan que sin perjuicio de las Condiciones Generales del Servicio Bci Cash Express, las
			operaciones de Transferencias de Fondos, se regirán además por las siguientes condiciones:
		</fo:block>

		<fo:block space-after="0.5cm">
		</fo:block>

		<fo:block font-size="{$size-fuente-margen}"  text-align="justify" color="{$txt}" text-altitude="1.5cm">
			(a) Las Transferencias de Fondos efectuadas desde las 00:01 horas hasta las 14:00 horas de un
				determinado día hábil Bancario, se considerarán realizadas contablemente ese mismo día. Las que se
				lleven a cabo con posterioridad a dicho horario, así como las que se efectúen en día sin hábiles
				bancarios, se considerarán como realizadas el día hábil bancario siguiente, salvo que la normativa
				sobre esta materia permita contabilizarlas de inmediato.
		</fo:block>
		<fo:block space-after="0.5cm"></fo:block>
		<fo:block font-size="{$size-fuente-margen}"  text-align="justify" color="{$txt}" text-altitude="1.5cm">
			(b) Las Transferencias de Fondos iniciadas antes de las 14:00 horas y que por razones de comunicaciones,
				se prolonguen hasta después de la hora precitada, serán consideradas como efectuadas dentro de día
				contable en que el sistema terminó de procesar íntegramente la transacción.
		</fo:block>
		<fo:block space-after="0.5cm"></fo:block>
		<fo:block font-size="{$size-fuente-margen}"  text-align="justify" color="{$txt}" text-altitude="1.5cm">
			(c) Las Transferencias de Fondos implican un cargo en la(s) cuenta(s) corriente(s) del Cliente. Cada cargo
				estará afecto al impuesto previsto en el D.L. 3475, el que se cargará durante los cinco primeros días
				del mes siguiente efectuadas las operaciones.
		</fo:block>
		<fo:block space-after="0.5cm"></fo:block>
		<fo:block font-size="{$size-fuente-margen}"  text-align="justify" color="{$txt}" text-altitude="1.5cm">
			(d) Para poder efectuar las Transferencias de Fondos, será necesario el ingreso de una Clave Secreta para
				este tipo de operación y que el usuario SUPERVISOR definido por el Cliente proporciona. El usuario
				deberá acreditar previamente ante el Banco, las facultades de que se encuentra dotado al efecto.
		</fo:block>
		<fo:block space-after="0.5cm"></fo:block>
		<fo:block font-size="{$size-fuente-margen}"  text-align="justify" color="{$txt}" text-altitude="1.5cm">
			(e) Sólo se podrán efectuar Transferencias de Fondos por montos disponibles en las respectivas
				cuentas a debitar. No obstante, respecto a los clientes que tengan Línea de Sobregiro con margen
				disponible, asumirá ésta en los casos que corresponda.
		</fo:block>
		<fo:block space-after="0.5cm"></fo:block>
		<fo:block font-size="{$size-fuente-margen}"  text-align="justify" color="{$txt}" text-altitude="1.5cm">
			(f) El Cliente podrá solicitar al Banco que se establezca un monto límite máximo diario para Transferencias
				de Fondos, cantidad que se estipula al final del presente Contrato. En tal caso, cada Apoderado
				autorizado podrá transferir hasta el monto máximo diario autorizado, en una o más transacciones, en
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
		Este servicio está orientado a aquellas empresas que realizan procesos de conciliación automática, para lo cual el Banco
		Banco genera un archivo con un formato predefinido y con todos los movimientos asociados a la(s) cuenta(s) que el cliente
		solicite e indique a través del servicio de información, en el módulo de cuentas corrientes - cartola electrónica.
		</fo:block>
		<fo:block space-after="0.5cm"></fo:block>
		<fo:block font-size="{$size-fuente-margen}"  text-align="justify" color="{$txt}" text-altitude="1.5cm">
		Para solicitar este servicio el cliente podrá marcar la periodicidad requerida para cada cuenta y el sólo hecho de hacerlo
		facultará al Banco a efectuar el cobro de dicho servicio.
		</fo:block>
		<fo:block space-after="0.5cm"></fo:block>
		<fo:block font-size="{$size-fuente-margen}"  text-align="justify" color="{$txt}" text-altitude="1.5cm">
		El Banco habilitará automáticamente este servicio para todos aquellos clientes empresa que contraten los servicios de
		información, el cual tendrá un cobro que comenzará a regir desde el momento en que el cliente solicite y configure este
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
		 <fo:inline font-weight="bold"> DATOS BÁSICOS DEL CONVENIO DE SERVICIO INFORMACIÓN BCI CASH </fo:inline>
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
										Teléfono &#0160;&#0160;&#0160; 
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
		 <fo:inline font-weight="bold"> DATOS BÁSICOS DE INSTALACIÓN / HABILITACIÓN DEL SERVICIO </fo:inline>
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
										Teléfono &#0160;&#0160;&#0160; 
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
								MONTO MÁXIMO TRANSF.
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
		 del Banco de Crédito e Inversiones.
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
										p.p. Banco de Crédito e Inversiones
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
										Correo electrónico&#0160;&#0160;&#0160; : 
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
										<fo:inline font-weight="bold">V°B° Ejecutivo</fo:inline> &#0160;&#0160;&#0160; : 
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
										<fo:inline font-weight="bold">V°B° ACA JOP</fo:inline> &#0160;&#0160;&#0160; : 
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
										&#0160;&#0160;&#0160; &#0160;&#0160;&#0160; Correo electrónico&#0160;&#0160;&#0160; :   
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
										3.- Reducción cheques girados / mes (En unidades)
									</fo:block>
								</fo:table-cell>
								<fo:table-cell border="0.5pt solid">
									<fo:block font-size="{$size-fuente-margen}" text-align="justify" color="{$txt}" >
										&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;Máximo
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
										4.- Reducción Vales Vista / mes (En unidades)
									</fo:block>
								</fo:table-cell>
								<fo:table-cell border="0.5pt solid">
									<fo:block font-size="{$size-fuente-margen}" text-align="justify" color="{$txt}" >
										&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;Máximo
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
										Razón Social &#0160;&#0160;&#0160; 
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
										Dirección &#0160;&#0160;&#0160; 
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
										Teléfono &#0160;&#0160;&#0160; 
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
										p.p. Banco de Crédito e Inversiones
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
										Correo electrónico&#0160;&#0160;&#0160; : 
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
										<fo:inline font-weight="bold">V°B° Ejecutivo</fo:inline> &#0160;&#0160;&#0160; : 
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
										<fo:inline font-weight="bold">V°B° ACA JOP</fo:inline> &#0160;&#0160;&#0160; : 
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
										&#0160;&#0160;&#0160; &#0160;&#0160;&#0160; Correo electrónico&#0160;&#0160;&#0160; :   
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