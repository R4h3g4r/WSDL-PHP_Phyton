<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format" version="1.0">
    <xsl:template match="datosEmpresa">
		<fo:root xmlns:fo="http://www.w3.org/1999/XSL/Format">
			<fo:layout-master-set>
				<fo:simple-page-master master-name="convenio"
								   page-height="29.7cm"
								   page-width="21cm"
								   margin-top="5mm"
								   margin-bottom="10mm"
								   margin-left="20mm"
								   margin-right="20mm">
					<fo:region-body margin-top="10mm" margin-bottom="10mm" />
				</fo:simple-page-master>
			</fo:layout-master-set>
			
			<fo:page-sequence master-reference="convenio">
				<fo:flow flow-name="xsl-region-body" font-family="Helvetica, Arial, sans" font-size="10pt" text-align="justify">
					<fo:block><fo:leader leader-pattern="space" /></fo:block>
                    <fo:block margin-top="0.4cm" text-align="center">
                    	<fo:inline font-weight="bold">
                    	CONDICIONES GENERALES SERVICIO BCI CASH EXPRESS
                    	</fo:inline>
                    </fo:block>
					<fo:block><fo:leader leader-pattern="space" /></fo:block>
					<fo:block><fo:leader leader-pattern="space" /></fo:block>
					<fo:block>
						En _____________________________, a______ de___________ de _________, entre el BANCO DE
						CREDITO E INVERSIONES, representado por don ____________________________________,
						chileno, casado, factor de comercio, cédula nacional de identidad Nº _____________, ambos
						domiciliados en Avenida El Golf N° 125, Comuna de L as Condes, Santiago, en adelante el "Banco", por
						una parte, y por la otra, _________________________________________, RUT_________________,
						en adelante el "Cliente", representado por don _________________, cédula de identidad Nº
						__________________________, nacionalidad __________________ estado civil
						________________________ profesión ________________________________ y por don
						____________________________, cédula de identidad Nº _________________, nacionalidad
						__________________ estado civil ________________________ profesión
						________________________________, todos domiciliados en esta ciudad, calle
						_______________________________, se ha convenido lo siguiente:
					</fo:block>
					<fo:block><fo:leader leader-pattern="space" /></fo:block>
					<fo:block><fo:leader leader-pattern="space" /></fo:block>
					<fo:block><fo:leader leader-pattern="space" /></fo:block>
					<fo:block>
						<fo:inline font-weight="bold" text-decoration="underline">Primero:</fo:inline> Por el presente instrumento, el Cliente contrata con el "Banco" los servicios de Bci Cash
						Express, cuyas condiciones particulares se contienen en las descripciones especificas de cada uno de
						ellos, los cuales se entienden forman parte integrante del presente Contrato. El sólo hecho de que el
						Cliente utilice los aludidos servicios se entenderá como una expresa contratación de los mismos y la
						aceptación de acuerdo a las condiciones operativas y comerciales que han sido ofrecidas por el "Banco"
						y aceptadas por el Cliente.
					</fo:block>
					<fo:block><fo:leader leader-pattern="space" /></fo:block>
					<fo:block><fo:leader leader-pattern="space" /></fo:block>
					<fo:block>
						<fo:inline font-weight="bold" text-decoration="underline">Segundo:</fo:inline> La contratación de cada producto, se verificará a través de la firma del presente contrato o
						mediante la comunicación que en tal sentido efectúe el Cliente, a través de Internet, o en la forma y bajo
						las seguridades que exijan los servicios de Bci Cash Express. Será de responsabilidad del cliente
						proveer el equipamiento tecnológico necesario para efectuar esta conexión.
					</fo:block>
					<fo:block><fo:leader leader-pattern="space" /></fo:block>
					<fo:block>
						Para la prestación de los servicios contratados, el Cliente se interconectará con el "Banco" por vía
						remota y ello se efectuará a través de sus apoderados y representantes debidamente facultados para
						ello, quienes lo harán en forma estrictamente confidencial, mediante el ingreso de la correspondiente
						clave secreta personal e intransferible que es de exclusivo conocimiento del Cliente y de sus
						apoderados o representantes que él determine. Por esta razón se entenderán como propias y
						efectuadas por el Cliente, las operaciones y transacciones contables, informativas, crediticias o
						instrucciones electrónicas de cualquiera naturaleza, recibidas en el Banco y que hayan sido cursadas
						utilizando la clave secreta asignada al Cliente, así haya operado alguien no autorizado al efecto, hecho
						que el Banco no está en condiciones de verificar. La seguridad y reserva total de las operaciones del
						Cliente, queda garantizada por intermedio del uso de la clave precitada ya que sólo con ella podrá
						acceder a la información deseada y realizar las operaciones propias de cada servicio en particular.
					</fo:block>
						<fo:block><fo:leader leader-pattern="space" /></fo:block>
					<fo:block>
						El Cliente faculta irrevocablemente al "Banco" para suscribir bajo la firma de uno o más de sus
						apoderados, aquellos servicios amparados por estas Condiciones o que se ofrecieren en lo sucesivo, y
						que aquel decida contratar, describiendo por vía remota tales servicios, los que se entenderán
						contratados con la sola recepción de una carta vía correo ordinario o fax, debidamente firmada por el
						Banco en su representación, indicando las condiciones mínimas requeridas para la operación del
						servicio, las cuales se considerarán parte integrante del presente contrato.
					</fo:block>
					<fo:block><fo:leader leader-pattern="space" /></fo:block>
					<fo:block>
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
					<fo:block><fo:leader leader-pattern="space" /></fo:block>
					<fo:block>
						<fo:inline font-weight="bold" text-decoration="underline">Tercero:</fo:inline> El Banco se compromete a entregar los servicios en forma eficiente y oportuna, salvo por
						razones de fuerza mayor o caso fortuito, facultándosele a suspender el funcionamiento de los mismos en
						forma total o parcial, en cuyo caso aplicará los procedimientos de contingencia que se hayan definido.
						En vista de lo anterior el Banco queda liberado de toda responsabilidad por los daños o perjuicios
						eventuales que pudiere ocasionar, tanto al Cliente como a terceros.
					</fo:block>
					<fo:block><fo:leader leader-pattern="space" /></fo:block>
					<fo:block>
						<fo:inline font-weight="bold" text-decoration="underline">Cuarto:</fo:inline> Las tarifas que se prevén para el presente contrato, se mantendrán vigentes siempre y cuando
						se cumplan los acuerdos y condiciones de reciprocidad estipuladas en el anexo respectivo y que forman
						parte del mismo, en cada uno de los servicios específicos que componen este contrato, todos los cuales
						el Cliente declara conocer y se obliga a cumplir. Si no lo hiciere, quedará el Banco expresa e
						irrevocablemente facultado para utilizar el valor base indicado en la tabla de tarifas, de cada servicio.
					</fo:block>
					<fo:block><fo:leader leader-pattern="space" /></fo:block>
					<fo:block>
						<fo:inline font-weight="bold" text-decoration="underline">Quinto:</fo:inline> El Cliente deberá adoptar los resguardos que estime necesarios para proteger el acceso a los
						equipos, programas y aplicaciones de su dependencia. Cualquier filtración o mal uso que se hiciera de
						ellos o de sus conexiones, elementos de transmisión u otro, serán de su exclusiva responsabilidad.
					</fo:block>
					<fo:block><fo:leader leader-pattern="space" /></fo:block>
					<fo:block>
						Respecto a las personas que el Cliente autorice a utilizar los servicios, es de su exclusiva
						responsabilidad su designación y la forma de hacerlo, sin que al Banco corresponda verificar, confrontar
						o corroborar que ellos estén acreditados como sus representantes ni que las operaciones se hayan
						materializado efectivamente por su intermedio.
					</fo:block>
					<fo:block><fo:leader leader-pattern="space" /></fo:block>
					<fo:block>
						Cada vez que el Cliente defina un usuario, dotado de facultades de apoderado o contralor conforme se
						prevé en la cláusula sexta siguiente, el que ciertamente ha de estar previamente registrado en el Banco
						como apoderado, deberá enviar a éste una carta individualizándolo en dicho rol. Dicha carta deberá
						encontrarse firmada por algún representante del Cliente, debidamente registrado en el Banco. Esta carta
						deberá estar adjunta al recibo conforme por parte de la persona definida como apoderado,
						entendiéndose con ello que se le ha creado como usuario; que ha recibido una clave secreta y que las
						acciones realizadas a nombre de dicho usuario son de su responsabilidad. Con estos elementos el
						Banco procederá a habilitar el uso del producto por parte del usuario definido como "apoderado".
					</fo:block>
					<fo:block><fo:leader leader-pattern="space" /></fo:block>
					<fo:block>
						<fo:inline font-weight="bold" text-decoration="underline">Sexto:</fo:inline> Para tener acceso y operar los servicios electrónicos el Cliente deberá utilizar los procedimientos
						y/o medios de seguridad, identificación e integridad que el Banco ha implementado o implemente en el
						futuro, para cada uno de ellos, y que pudieren estar asociados a los elementos requeridos para su
						utilización, tales como firma electrónica --simple o avanzada-- tarjetas magnéticas, número de rut y/u
						otros, todos los cuales serán previamente informados por el Banco.
					</fo:block>
					<fo:block><fo:leader leader-pattern="space" /></fo:block>
					<fo:block>
						El Banco realizará, en línea o no, todas las instrucciones que emita el Cliente a través de los servicios
						electrónicos, instrucciones que serán consideradas como mandatos irrevocables para todos los efectos
						legales; quedando el Banco irrevocablemente legitimado para cumplirlas y efectuar, por consiguiente, los
						cargos, abonos u otros, así como los demás actos que procedan. El mandante releva al Banco o a quien
						ésta designe de la obligación de rendir cuenta de los mandatos establecidos en este instrumento.
					</fo:block>
					<fo:block><fo:leader leader-pattern="space" /></fo:block>
					<fo:block>
						Las partes dejan constancia y declaran que las claves de acceso, tarjetas y la firma electrónica son
						secretas, personales e intransferibles, siendo de exclusiva responsabilidad del Cliente mantener la
						debida diligencia y cuidado en su utilización; por lo anterior, el Cliente será responsable por los perjuicios
						que pueda ocasionar al Banco, al propio Cliente y/o a terceros, el mal uso de aquellas y de los servicios
						electrónicos, como también de los perjuicios al Banco, al propio Cliente y/o a terceros derivados de su
						extravío, hurto, robo, mal uso, o cualquier otra circunstancia, sea que ellos provengan de su hecho o
						culpa o del caso fortuito o de fuerza mayor, liberando, en consecuencia, al Banco de toda
						responsabilidad.
					</fo:block>
					<fo:block><fo:leader leader-pattern="space" /></fo:block>
					<fo:block>
						En caso de extravío, hurto, robo, mal uso, o cualquier otra circunstancia similar, de aquellos elementos
						de seguridad y desde luego de la firma electrónica, el Cliente se obliga a dar aviso inmediato y por
						escrito al Banco, en cualquiera de sus oficinas. Cesará la responsabilidad del Cliente una vez
						transcurrido un día hábil bancario contado desde el momento en que el Banco reciba el mencionado
						aviso. Existen servicios electrónicos en los que será requisito necesario para la utilización de los
						mismos, que el Cliente cambie en la primera oportunidad que opere, las claves o la firma electrónica,
						liberando el Cliente al Banco de toda responsabilidad en caso de no hacerlo.
					</fo:block>
					<fo:block><fo:leader leader-pattern="space" /></fo:block>
					<fo:block>
						El Banco tiene la facultad de solicitar al Cliente la sustitución de las claves o de la firma electrónica,
						cuando así lo aconsejen razones de carácter técnico, cuya calificación corresponderá exclusivamente al
						Banco. Por el presente acto, el Cliente autoriza expresamente al Banco, para que en su nombre y
						representación, solicite y obtenga de la entidad prestadora de servicios de certificación de firma
						electrónica acreditada por la Subsecretaría de Economía, Fomento y Reconstrucción o quien cumpla la
						función de acreditación, designada por el propio Banco, en adelante también el Certificador, la firma
						electrónica avanzada, sus Reglamentos y posteriores modificaciones. Para ello, el Banco, podrá firmar,
						suscribir todos los documentos e instrumentos, realizar todos los actos, y presentar todos los
						instrumentos públicos y/o privados requeridos por el Certificador. El Cliente se obliga a efectuar, con la
						mayor diligencia posible, todos los actos tendientes a obtener la firma electrónica avanzada de acuerdo
						a este punto, así como presentar la documentación que le sea solicitada.
					</fo:block>
					<fo:block><fo:leader leader-pattern="space" /></fo:block>
					<fo:block>
						El Cliente autoriza al Banco para comunicar, transmitir, transferir y/o proporcionar a sus filiales y/o a
						terceros cualesquiera datos de carácter personal o protegidos por la Ley General de Bancos y por otras
						disposiciones legales, cuando ello fuere necesario o conveniente para el adecuado perfeccionamiento,
						materialización y/o implementación de los productos y/o servicios que se pongan a disposición del
						Cliente a través de los servicios electrónicos; como también cuando ello fuere necesario o conveniente a
						los efectos de agregar nuevos atributos o beneficios o de implementar modalidades o características que
						mejoren la calidad y/u oportunidad de prestación de servicios y/o productos puestos a su disposición por
						el Banco, sus filiales y/o terceros a través de los mencionados servicios. A mayor abundamiento y
						considerando esta explícita autorización, las partes declaran expresamente que lo anterior no constituye
						infracción al artículo 1º de la Ley de Cuentas Corrientes Bancarias y Cheques, ni al artículo 154 de la
						Ley General de Bancos, en lo relativo al secreto bancario.
					</fo:block>
					<fo:block><fo:leader leader-pattern="space" /></fo:block>
					<fo:block>
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
					<fo:block><fo:leader leader-pattern="space" /></fo:block>
					<fo:block>
						<fo:inline font-weight="bold" text-decoration="underline">Séptimo:</fo:inline> El Cliente puede informar a los beneficiarios de los servicios a los cuales se ha adscrito, para
						cuyo efecto podrá utilizar los medios de publicidad que estime, incluso la propia documentación
						respaldatoria de los servicios. En todo caso, toda publicidad en que se utilice el nombre o logo del
						"Banco" deberá contar con la aprobación previa de éste último. Adicionalmente, el Cliente autoriza
						expresamente al Banco para que éste informe a los beneficiarios o terceros que se relacionen con el
						Cliente, por correspondencia o a través de cualquier otro medio, acerca de la firma del presente
						convenio, como así también para promocionar entre ellos otros productos y servicios que proporciona el
						Banco, pero sin que constituya una obligación para el Banco el hacerlo.
					</fo:block>
					<fo:block><fo:leader leader-pattern="space" /></fo:block>
					<fo:block>
						<fo:inline font-weight="bold" text-decoration="underline">Octavo:</fo:inline> El Cliente acepta desde ya todas las condiciones, procedimientos y controles internos que el
						Banco utilice para el cumplimiento del presente Contrato y que sean compatibles con el mismo, y en
						especial con las obligaciones asumidas por las partes.
					</fo:block>
					<fo:block><fo:leader leader-pattern="space" /></fo:block>
					<fo:block>
						<fo:inline font-weight="bold" text-decoration="underline">Noveno:</fo:inline> El Cliente faculta en este acto irrevocablemente al Banco para efectuar cargos en la cuenta
						corriente o vista asignada para cada servicio especifico, con el fin de regularizar eventuales cargos o
						abonos improcedentes o provocados por errores o fallas computacionales, procesos operativos o
						administrativos o de digitación.
					</fo:block>
					<fo:block><fo:leader leader-pattern="space" /></fo:block>
					<fo:block>
						<fo:inline font-weight="bold" text-decoration="underline">Décimo:</fo:inline> Si el Cliente instruyere pagos sin contar al efecto con fondos disponibles suficientes, el Banco
						no los efectuará. Sin embargo se entenderá que esa sola instrucción constituye una solicitud de crédito
						hasta por el monto instruido pagar, pudiendo el Banco libremente acceder a ello o denegarlo, sin
						necesidad de expresar causa. El solo hecho que el Banco efectúe los pagos ordenados en tales
						condiciones, importa su consentimiento en conceder el crédito.
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
					<fo:block><fo:leader leader-pattern="space" /></fo:block>
					<fo:block>
						<fo:inline font-weight="bold" text-decoration="underline">Undécimo:</fo:inline> Las tarifas, comisiones e impuestos que se originen con ocasión de éste contrato y sus
						anexos, serán cargados en la Cuenta Corriente definida para operar cada servicio en particular dentro
						de los primeros diez días hábiles del mes siguiente al de la prestación del servicio.
					</fo:block>
					<fo:block><fo:leader leader-pattern="space" /></fo:block>
					<fo:block>
						Sin perjuicio de otros derechos que correspondan al Banco, en el evento que el cargo automático de la
						tarifa en la cuenta corriente prevista para cada producto específico, sea rechazado por cualquier causa o
						el Cliente no pague oportunamente los servicios correspondientes, el monto de la factura
						correspondiente devengará el interés moratorio más alto que legalmente sea procedente estipular a
						partir de la fecha del no pago, por cualquier causa.
					</fo:block>
					<fo:block><fo:leader leader-pattern="space" /></fo:block>
					<fo:block>
						<fo:inline font-weight="bold" text-decoration="underline">Duodécimo:</fo:inline> El Banco podrá modificar tanto la comisión fija mensual como la facturación mínima
						mensual de todos y cada uno de los servicios contratados y que constan en los respectivos anexos,
						incluso aumentándolas, debiendo al efecto comunicarlas al Cliente por escrito, con una antelación no
						inferior a 30 días con respecto a la fecha en que comiencen a regir las nuevas tarifas. Dicha
						comunicación podrá incluirse en la cartola de cuentas corrientes.
					</fo:block>
					<fo:block><fo:leader leader-pattern="space" /></fo:block>
					<fo:block>
						<fo:inline font-weight="bold" text-decoration="underline">Decimotercero:</fo:inline> El presente Convenio comienza a regir a contar de esta fecha, y tendrá duración
						indefinida, pero cualesquiera de las partes podrá ponerle término dando a la otra un aviso por carta
						certificada con 30 días de anticipación a la fecha en que deba expirar, sin necesidad de expresar causa.
						Esta revocación del contrato implica la revocación de todos los servicios contratados por el Cliente. Con
						todo, el Banco se reserva el derecho de ponerle término en cualquier momento, sin responsabilidad
						alguna de su parte ni aviso de ninguna especie en los siguientes casos:
					</fo:block>
					<fo:block><fo:leader leader-pattern="space" /></fo:block>
					<fo:block>
						a) Si por cualquier circunstancia el Banco o el Cliente procediera a cerrar La(s) cuenta(s) corriente(s) o
						vista(s) a su nombre.
					</fo:block>
					<fo:block><fo:leader leader-pattern="space" /></fo:block>
					<fo:block>
						b) Si el Cliente a través de sus mandatarios, no administrare en forma adecuada su cuenta corriente,
						hiciere mal uso del equipamiento asociado al servicio, o realizare cualquier hecho, acción o
						aplicación del sistema que no corresponda a la naturaleza del servicio o lo utilizase con un propósito
						ajeno a los negocios que lo ligan con el Banco.
					</fo:block>
					<fo:block><fo:leader leader-pattern="space" /></fo:block>
					<fo:block>
						Cabe señalar, que la revocación de este contrato implica la revocación de los servicios contratados.
						Todo lo anterior es, sin perjuicio de la responsabilidad civil y/o penal en que pudiese incurrir el Cliente o
						sus Apoderados o mandatarios, por el inadecuado uso del servicio.
					</fo:block>
					<fo:block><fo:leader leader-pattern="space" /></fo:block>
					<fo:block>
						<fo:inline font-weight="bold" text-decoration="underline">Decimocuarto:</fo:inline> Para todos los efectos que se deriven de este contrato, las partes fijan su domicilio en la
						Ciudad y Comuna de.............................................. Se tendrá como domicilio del Cliente, aquel que se
						encuentre registrado en el Banco en relación con su(s) cuenta(s) corriente(s).
					</fo:block>
					<fo:block><fo:leader leader-pattern="space" /></fo:block>
					<fo:block>
						<fo:inline font-weight="bold" text-decoration="underline">Decimoquinto:</fo:inline> Cualquier duda o dificultad que surja entre las partes con motivo de las presentes
						Condiciones Generales, así como con ocasión de los Anexos relativos a cada producto específico o sus
						documentos complementarios o modificatorios, ya se refiera a su interpretación, cumplimiento, validez,
						terminación o cualquier otra causa relacionada con este contrato o con dichos Anexos, se resolverá por
						medio de un árbitro arbitrador, designado de común acuerdo por las partes y a falta de tal acuerdo, la
						designación se hará por los Tribunales de Justicia. Este árbitro conocerá breve y sumariamente, sin
						forma de juicio y en contra de sus resoluciones no procederá recurso alguno.
					</fo:block>
					<fo:block><fo:leader leader-pattern="space" /></fo:block>
					<fo:block>
						<fo:inline font-weight="bold" text-decoration="underline">Decimosexto:</fo:inline> El presente contrato se somete a lo dispuesto en el artículo 3º de la Ley Nº 19.799, sobre
						Documentos Electrónicos, Firma Electrónica y Servicios de Certificación de dicha Firma, firmándose en
						dos ejemplares, quedando uno de ellos en poder del Banco y el otro para el Cliente.
					</fo:block>
					<fo:block><fo:leader leader-pattern="space" /></fo:block>
					<fo:block><fo:leader leader-pattern="space" /></fo:block>
					<fo:block>
						La personería del apoderado del Banco consta de escritura pública de fecha ________________,
						otorgada ante el Notario de Santiago don _________________________________________________
					</fo:block>
					<fo:block><fo:leader leader-pattern="space" /></fo:block>
					<fo:block><fo:leader leader-pattern="space" /></fo:block>
					<fo:block>
						La personería del apoderado del Cliente consta de escritura pública de fecha
						______________________ extendida en la Notaría de don
						___________________________________________________________
					</fo:block>
					<fo:block><fo:leader leader-pattern="space" /></fo:block>
					<fo:block><fo:leader leader-pattern="space" /></fo:block>
					<fo:block><fo:leader leader-pattern="space" /></fo:block>
					<fo:block><fo:leader leader-pattern="space" /></fo:block>
					<fo:block><fo:leader leader-pattern="space" /></fo:block>
					<fo:block margin-top="0.4cm" >
						<fo:table width="180mm" >                     
						   <fo:table-column column-number="1"   />                                              
						   <fo:table-column column-number="2"   />                    
						   <fo:table-body>
							  <fo:table-row border-style="double" >                         
								 <fo:table-cell column-number="1" >                            
									<fo:block text-align="left"> ___________________________</fo:block>
								 </fo:table-cell>
								 <fo:table-cell column-number="2" >                            
									<fo:block text-align="left"> ___________________________</fo:block>
								 </fo:table-cell>                         
							  </fo:table-row>
							  
							  <fo:table-row border-style="double" >                         
								 <fo:table-cell column-number="1" >                            
									<fo:block text-align="left"> p.p. Banco de Crédito e Inversiones</fo:block>
								 </fo:table-cell>
								 <fo:table-cell column-number="2" >                            
									<fo:block text-align="left"> p.p. Cliente</fo:block>
								 </fo:table-cell>                         
							  </fo:table-row>
						   </fo:table-body>
						</fo:table>
                    </fo:block>
					<fo:block><fo:leader leader-pattern="space" /></fo:block>
					<fo:block><fo:leader leader-pattern="space" /></fo:block>
					<fo:block margin-top="0.4cm" >
						<fo:table width="180mm" >                     
						   <fo:table-column column-number="1"   />                                              
						   <fo:table-column column-number="2"   />                    
						   <fo:table-body>
							  <fo:table-row border-style="double" >                         
								 <fo:table-cell column-number="1" >                            
									<fo:block text-align="left"></fo:block>
								 </fo:table-cell>
								 <fo:table-cell column-number="2" >                            
									<fo:block text-align="left"> Rut: __________________</fo:block>
								 </fo:table-cell>                         
							  </fo:table-row>
							  
							  <fo:table-row border-style="double" >                         
								 <fo:table-cell column-number="1" >                            
									<fo:block text-align="left"></fo:block>
								 </fo:table-cell>
								 <fo:table-cell column-number="2" >                            
									<fo:block text-align="left"> Nombre: ___________________</fo:block>
								 </fo:table-cell>                         
							  </fo:table-row>
						   </fo:table-body>
						</fo:table>
                    </fo:block>
					<fo:block><fo:leader leader-pattern="space" /></fo:block>
					<fo:block><fo:leader leader-pattern="space" /></fo:block>
					<fo:block margin-top="0.4cm">
						“Este documento consta de 5 hojas”
					</fo:block>
					<fo:block><fo:leader leader-pattern="space" /></fo:block>
					<fo:block><fo:leader leader-pattern="space" /></fo:block>
					<fo:block margin-top="0.4cm" text-align="left">
						<fo:inline font-weight="bold">
							USO INTERNO DEL BCI
						</fo:inline>
					</fo:block>
					<fo:block><fo:leader leader-pattern="space" /></fo:block>
					<fo:block margin-top="0.4cm" text-align="left">
						Oficina BCI :_______________________________
					</fo:block>
					<fo:block><fo:leader leader-pattern="space" /></fo:block>
					<fo:block margin-top="0.4cm" text-align="left">
						Ejecutivo BCI :_________________________________
					</fo:block>
					<fo:block><fo:leader leader-pattern="space" /></fo:block>
					<fo:block margin-top="0.4cm" text-align="left">
						Anexo: _____________
					</fo:block>
					<fo:block><fo:leader leader-pattern="space" /></fo:block>
					<fo:block margin-top="0.4cm" text-align="left">
						Correo electrónico :________________________________
					</fo:block>
					<fo:block><fo:leader leader-pattern="space" /></fo:block>
					<fo:block margin-top="0.4cm" text-align="right">
						Timbre
					</fo:block>
					<fo:block><fo:leader leader-pattern="space" /></fo:block>
					<fo:block margin-top="0.4cm" >
						<fo:table width="180mm" >                     
						   <fo:table-column column-number="1"   />                                              
						   <fo:table-column column-number="2"   />                    
						   <fo:table-body>
							  <fo:table-row border-style="double" >                         
								 <fo:table-cell column-number="1" >                            
									<fo:block text-align="left">VºBº Ejecutivo:__________________</fo:block>
								 </fo:table-cell>
								 <fo:table-cell column-number="2" >                            
									<fo:block text-align="left"> Fecha:______________</fo:block>
								 </fo:table-cell>                         
							  </fo:table-row>
							  
							  <fo:table-row border-style="double" >                         
								 <fo:table-cell column-number="1" >                            
									<fo:block text-align="left">VºBº ACA JOP:__________________</fo:block>
								 </fo:table-cell>
								 <fo:table-cell column-number="2" >                            
									<fo:block text-align="left"> Fecha:______________</fo:block>
								 </fo:table-cell>                         
							  </fo:table-row>
						   </fo:table-body>
						</fo:table>
                    </fo:block>
					<fo:block><fo:leader leader-pattern="space" /></fo:block>
					<fo:block><fo:leader leader-pattern="space" /></fo:block>
					<fo:block margin-top="0.4cm" text-align="left">
						Ejecutivo BEL BCI :________________________________
					</fo:block>
					<fo:block><fo:leader leader-pattern="space" /></fo:block>
					<fo:block margin-top="0.4cm" text-align="left">
						Correo Electrónico:_______________
					</fo:block>
					
				</fo:flow>
			</fo:page-sequence>
			<fo:page-sequence master-reference="convenio">
				<fo:flow flow-name="xsl-region-body" font-family="Helvetica, Arial, sans" font-size="10pt" text-align="justify">
					<fo:block margin-top="0.4cm" text-align="left">
                    	<fo:inline font-weight="bold">
                    	INFORMACION REQUERIDA PARA HABILITAR LOS SERVICIOS
                    	</fo:inline>
                    </fo:block>
					<fo:block><fo:leader leader-pattern="space" /></fo:block>
					<fo:block margin-top="0.4cm" text-align="left">
                    	<fo:inline font-weight="bold" text-decoration="underline">
                    	DATOS BÁSICOS DEL CONVENIO DE SERVICIO
                    	</fo:inline>
                    </fo:block>
					<fo:block><fo:leader leader-pattern="space" /></fo:block>
					<fo:block margin-top="0.4cm">
						RUT Empresa : <xsl:value-of select='rut'/>
                    </fo:block>
					<fo:block margin-top="0.4cm" >
						Razón Social : <xsl:value-of select='razonSocial'/>
                    </fo:block>
					<fo:block margin-top="0.4cm" >
						Dirección : <xsl:value-of select='direccion'/>
                    </fo:block>
					<fo:block margin-top="0.4cm" >
						Comuna :
                    </fo:block>
					<fo:block margin-top="0.4cm" >
						Ciudad :
                    </fo:block>
					<fo:block margin-top="0.4cm" >
						Teléfono :
                    </fo:block>
					<fo:block margin-top="0.4cm" >
						Fax:
                    </fo:block>
					<fo:block><fo:leader leader-pattern="space" /></fo:block>
					<fo:block><fo:leader leader-pattern="space" /></fo:block>
					<fo:block margin-top="0.4cm" >
                    	<fo:inline font-weight="bold" text-decoration="underline">
                    	DATOS BASICOS DE INSTALACION / HABLITACION DEL SERVICIO
                    	</fo:inline>
                    </fo:block>
					<fo:block><fo:leader leader-pattern="space" /></fo:block>
					<fo:block margin-top="0.4cm" >
						Nombre Contacto :
                    </fo:block>
					<fo:block margin-top="0.4cm" >
						Rut Contacto :
                    </fo:block>
					<fo:block margin-top="0.4cm" >
						Cargo Contacto :
                    </fo:block>
					<fo:block margin-top="0.4cm" >
						Direccion :
                    </fo:block>
					<fo:block margin-top="0.4cm" >
						Comuna :
                    </fo:block>
					<fo:block margin-top="0.4cm" >
						Ciudad :
                    </fo:block>
					<fo:block margin-top="0.4cm" >
						Telefono :
                    </fo:block>
					<fo:block margin-top="0.4cm" >
						Fax:
                    </fo:block>
					<fo:block margin-top="0.4cm" >
						Correo @mail :
                    </fo:block>
					<fo:block margin-top="0.4cm" >
						Plataforma Operacion (Internet):
                    </fo:block>
					<fo:block><fo:leader leader-pattern="space" /></fo:block>
					<fo:block><fo:leader leader-pattern="space" /></fo:block>
					<fo:block margin-top="0.4cm" >
                    	<fo:inline font-weight="bold" text-decoration="underline">
                    	DATOS BÁSICOS ADMINISTRACIÓN DEL SERVICIO EN LA EMPRESA
                    	</fo:inline>
                    </fo:block>
					<fo:block><fo:leader leader-pattern="space" /></fo:block>
					<fo:block margin-top="0.4cm" >
						Nombre usuario SUPERVISOR:
                    </fo:block>
					<fo:block margin-top="0.4cm" >
						Rut usuario SUPERVISOR :
                    </fo:block>
					<fo:block margin-top="0.4cm" >
						Telefono :
                    </fo:block>
					<fo:block margin-top="0.4cm" >
						Fax:
                    </fo:block>
					<fo:block margin-top="0.4cm" >
						Correo @mail :
                    </fo:block>
					<fo:block><fo:leader leader-pattern="space" /></fo:block>
					<fo:block margin-top="0.4cm" >
						<fo:inline font-weight="bold">
                    	Supervisor: Quièn habilita al(os) usuario(s) y define perfil(es) en la empresa
                    	</fo:inline>
                    </fo:block>
					<fo:block><fo:leader leader-pattern="space" /></fo:block>
					<fo:block margin-top="0.4cm" >
						<fo:inline font-weight="bold" text-decoration="underline">
                    	Requisitos Mínimos Técnicos
                    	</fo:inline>
                    </fo:block>
					<fo:block><fo:leader leader-pattern="space" /></fo:block>
					<fo:block margin-top="0.4cm" >
						Para todos los efectos de la prestación del servicio descrito en el presente instrumento, el
						Cliente deberá contar con el siguiente equipamiento computacional y programas de software:
                    </fo:block>
					<fo:block><fo:leader leader-pattern="space" /></fo:block>
					<fo:block margin-top="0.4cm" >
						<fo:table width="180mm" border="solid">                     
						   <fo:table-column column-number="1"  border="solid" border-width="1pt"/>                                              
						   <fo:table-column column-number="2"  border="solid" border-width="1pt"/>
						   <fo:table-column column-number="3"  border="solid" border-width="1pt"/>                     
						   <fo:table-body>
							  <fo:table-row border-style="double" border-width="1pt">                         
								 <fo:table-cell column-number="1" border="solid">                            
									<fo:block text-align="center"> ITEM</fo:block>
								 </fo:table-cell>
								 <fo:table-cell column-number="2" border="solid">                            
									<fo:block text-align="center"> MINIMO</fo:block>
								 </fo:table-cell>                         
								 <fo:table-cell column-number="3" border="solid"> 
									<fo:block text-align="center">RECOMENDADO</fo:block>                         
								 </fo:table-cell>
							  </fo:table-row>
							  
							  <fo:table-row border="double" border-width="1pt">                         
								 <fo:table-cell column-number="1" border="solid">                            
									<fo:block > Procesador</fo:block>
								 </fo:table-cell>
								 <fo:table-cell column-number="2" border="solid">                            
									<fo:block > PENTIUM 250 Mhz</fo:block>
								 </fo:table-cell>                         
								 <fo:table-cell column-number="3" border="solid"> 
									<fo:block >PENTIUM III 500 Mhz o superior</fo:block>                         
								 </fo:table-cell>
							  </fo:table-row>
							  
							  <fo:table-row border="double" border-width="1pt">                         
								 <fo:table-cell column-number="1" border="solid">                            
									<fo:block > Memoria RAM</fo:block>
								 </fo:table-cell>
								 <fo:table-cell column-number="2" border="solid">                            
									<fo:block > 64 Mb</fo:block>
								 </fo:table-cell>                         
								 <fo:table-cell column-number="3" border="solid"> 
									<fo:block >64 Mb o superior</fo:block>                         
								 </fo:table-cell>
							  </fo:table-row>
							  
							  <fo:table-row border="double" border-width="1pt">                         
								 <fo:table-cell column-number="1" border="solid">                            
									<fo:block > Tarjeta de Video</fo:block>
								 </fo:table-cell>
								 <fo:table-cell column-number="2" border="solid">                            
									<fo:block > SVGA</fo:block>
								 </fo:table-cell>                         
								 <fo:table-cell column-number="3" border="solid"> 
									<fo:block >SVGA o superior</fo:block>                         
								 </fo:table-cell>
							  </fo:table-row>
							  
							  <fo:table-row border="double" border-width="1pt">                         
								 <fo:table-cell column-number="1" border="solid">                            
									<fo:block >Disco Duro (Opcional)</fo:block>
								 </fo:table-cell>
								 <fo:table-cell column-number="2" border="solid">                            
									<fo:block > 500 Mb disponibles</fo:block>
								 </fo:table-cell>                         
								 <fo:table-cell column-number="3" border="solid"> 
									<fo:block >1 Gb disponibles</fo:block>                         
								 </fo:table-cell>
							  </fo:table-row>
							  
							  <fo:table-row border="double" border-width="1pt">                         
								 <fo:table-cell column-number="1" border="solid">                            
									<fo:block >Modem</fo:block>
								 </fo:table-cell>
								 <fo:table-cell column-number="2" border="solid">                            
									<fo:block > 56.6 Kbps</fo:block>
								 </fo:table-cell>                         
								 <fo:table-cell column-number="3" border="solid"> 
									<fo:block >56,6 Kbps o superior</fo:block>                         
								 </fo:table-cell>
							  </fo:table-row>
							  
							  <fo:table-row border="double" border-width="1pt">                         
								 <fo:table-cell column-number="1" border="solid">                            
									<fo:block >Windows</fo:block>
								 </fo:table-cell>
								 <fo:table-cell column-number="2" border="solid">                            
									<fo:block > 95, 98, NT 3.51</fo:block>
								 </fo:table-cell>                         
								 <fo:table-cell column-number="3" border="solid"> 
									<fo:block >98, 2000, NT 3.51 o superior</fo:block>                         
								 </fo:table-cell>
							  </fo:table-row>
							  
							  <fo:table-row border="double" border-width="1pt">                         
								 <fo:table-cell column-number="1" border="solid">                            
									<fo:block >Browser</fo:block>
								 </fo:table-cell>
								 <fo:table-cell column-number="2" border="solid">                            
									<fo:block > MS Explorer 5.5</fo:block>
								 </fo:table-cell>                         
								 <fo:table-cell column-number="3" border="solid"> 
									<fo:block >MS Explorer 5.5 o superior</fo:block>                         
								 </fo:table-cell>
							  </fo:table-row>
							  
							  <fo:table-row border="double" border-width="1pt">                         
								 <fo:table-cell column-number="1" border="solid">                            
									<fo:block >Línea de comunicación</fo:block>
								 </fo:table-cell>
								 <fo:table-cell column-number="2" border="solid">                            
									<fo:block > Tipo FAX</fo:block>
								 </fo:table-cell>                         
								 <fo:table-cell column-number="3" border="solid"> 
									<fo:block >Tipo FAX / Línea ISDN</fo:block>                         
								 </fo:table-cell>
							  </fo:table-row>
							 
						   </fo:table-body>
						</fo:table>
                    </fo:block>
				</fo:flow>
			</fo:page-sequence>
			<fo:page-sequence master-reference="convenio">
				<fo:flow flow-name="xsl-region-body" font-family="Helvetica, Arial, sans" font-size="10pt" text-align="justify">
				<fo:block margin-top="0.4cm" text-align="center">
                    <fo:inline font-weight="bold">
                    	SERVICIOS DE INFORMACION BCI CASH EXPRESS
                    </fo:inline>
                 </fo:block>
				 <fo:block><fo:leader leader-pattern="space" /></fo:block>
				 <fo:block><fo:leader leader-pattern="space" /></fo:block>
				 <fo:block margin-top="0.4cm" text-align="left">
                    <fo:inline font-weight="bold">
                    	EXPRESS Y CARTOLA ELECTRONICA
                    </fo:inline>
                 </fo:block>
				 <fo:block><fo:leader leader-pattern="space" /></fo:block>
				 <fo:block><fo:leader leader-pattern="space" /></fo:block>
				 <fo:block margin-top="0.4cm" text-align="left">
                    <fo:inline font-weight="bold" text-decoration="underline">
                    	Especificaciones del Servicio
                    </fo:inline>
                 </fo:block>
				 <fo:block><fo:leader leader-pattern="space" /></fo:block>
				 <fo:block margin-top="0.4cm">
                    Es un servicio que permite al cliente, a través de una red de comunicaciones, pública o privada, interconectar
					su computador el Banco, para poder con ello realizar las siguientes operaciones y acceder a los siguientes
					servicios:
                 </fo:block>
				 <fo:block margin-top="0.4cm">
                    * Obtener información de las distintas operaciones bancarias que mantiene con el BCI.
                 </fo:block>
				 <fo:block margin-top="0.4cm">
                    * Efectuar electrónicamente transferencias de fondos entre Cuentas Corrientes BCI y Otros Bancos, las
					cuales están sujetas a los horarios que se indican mas adelante. El Cliente podrá efectuar transferencias
					de fondos interbancarias en línea, utilizando el sistema de liquidación bruta entiempo real (LBTR) del
					Banco Central, el cual define montos mínimos para su operación.
                 </fo:block>
				 <fo:block margin-top="0.4cm">
                    * Transmitir y recibir archivos computacionales con formatos predefinidos asociados a otros prodcutos Bci
					Cash Express.
                 </fo:block>
				 <fo:block><fo:leader leader-pattern="space" /></fo:block>
				 <fo:block margin-top="0.4cm">
                    Las transacciones realizadas por el Cliente en virtud del presente convenio, se debitarán o abonarán según
					corresponda, en la(s) cuenta(s) corriente(s) y/o en la(s) cuentaprima(s) del Cliente que se individualizan en el
					contrato que acompaña el presente instrumento.
                 </fo:block>
				 <fo:block><fo:leader leader-pattern="space" /></fo:block>
				 <fo:block margin-top="0.4cm">
                    Las partes acuerdan que sin perjuicio de las Condiciones Generales del Servicio Bci Cash Express, las
					operaciones de Transferencias de Fondos, se regirán además por las siguientes condiciones:
                 </fo:block>
				 <fo:block><fo:leader leader-pattern="space" /></fo:block>
				 <fo:block margin-top="0.4cm">
                    (a) Las Transferencias de Fondos efectuadas desde las 00:01 horas hasta las 14:00 horas de un
						determinado día hábil Bancario, se considerarán realizadas contablemente ese mismo día. Las que se
						lleven a cabo con posterioridad a dicho horario, así como las que se efectúen en día sin hábiles
						bancarios, se considerarán como realizadas el día hábil bancario siguiente, salvo que la normativa
						sobre esta materia permita contabilizarlas de inmediato.
                 </fo:block>
				 <fo:block><fo:leader leader-pattern="space" /></fo:block>
				 <fo:block margin-top="0.4cm">
                    (b) Las Transferencias de Fondos iniciadas antes de las 14:00 horas y que por razones de comunicaciones,
						se prolonguen hasta después de la hora precitada, serán consideradas como efectuadas dentro de día
						contable en que el sistema terminó de procesar íntegramente la transacción.
                 </fo:block>
				 <fo:block><fo:leader leader-pattern="space" /></fo:block>
				 <fo:block margin-top="0.4cm">
                    (c) Las Transferencias de Fondos implican un cargo en la(s) cuenta(s) corriente(s) del Cliente. Cada cargo
						estará afecto al impuesto previsto en el D.L. 3475, el que se cargará durante los cinco primeros días
						del mes siguiente efectuadas las operaciones.
                 </fo:block>
				 <fo:block><fo:leader leader-pattern="space" /></fo:block>
				 <fo:block margin-top="0.4cm">
                    (d) Para poder efectuar las Transferencias de Fondos, será necesario el ingreso de una Clave Secreta para
						este tipo de operación y que el usuario SUPERVISOR definido por el Cliente proporciona. El usuario
						deberá acreditar previamente ante el Banco, las facultades de que se encuentra dotado al efecto.
                 </fo:block>
				 <fo:block><fo:leader leader-pattern="space" /></fo:block>
				 <fo:block margin-top="0.4cm">
                    (e) Sólo se podrán efectuar Transferencias de Fondos por montos disponibles en las respectivas
						cuentas a debitar. No obstante, respecto a los clientes que tengan Línea de Sobregiro con margen
						disponible, asumirá ésta en los casos que corresponda.
                 </fo:block>
				 <fo:block><fo:leader leader-pattern="space" /></fo:block>
				 <fo:block margin-top="0.4cm">
                    (f) El Cliente podrá solicitar al Banco que se establezca un monto límite máximo diario para Transferencias
						de Fondos, cantidad que se estipula al final del presente Contrato. En tal caso, cada Apoderado
						autorizado podrá transferir hasta el monto máximo diario autorizado, en una o más transacciones, en
						la medida que se disponga de fondos suficientes.
                 </fo:block>
				 </fo:flow>
			</fo:page-sequence>
			<fo:page-sequence master-reference="convenio">
				<fo:flow flow-name="xsl-region-body" font-family="Helvetica, Arial, sans" font-size="10pt" text-align="justify">
					<fo:block margin-top="0.4cm" text-align="left">
						<fo:inline font-weight="bold" text-decoration="underline">
							Cartola Electronica
						</fo:inline>
					</fo:block>
					<fo:block><fo:leader leader-pattern="space" /></fo:block>
					<fo:block margin-top="0.4cm">
						Este servicio está orientado a aquellas empresas que realizan procesos de conciliación automática, para lo cual el Banco
						Banco genera un archivo con un formato predefinido y con todos los movimientos asociados a la(s) cuenta(s) que el cliente
						solicite e indique a través del servicio de información, en el módulo de cuentas corrientes - cartola electrónica.
					</fo:block>
					<fo:block><fo:leader leader-pattern="space" /></fo:block>
					<fo:block margin-top="0.4cm">
						Para solicitar este servicio el cliente podrá marcar la periodicidad requerida para cada cuenta y el sólo hecho de hacerlo
						facultará al Banco a efectuar el cobro de dicho servicio.
					</fo:block>
					<fo:block><fo:leader leader-pattern="space" /></fo:block>
					<fo:block margin-top="0.4cm">
						El Banco habilitará automáticamente este servicio para todos aquellos clientes empresa que contraten los servicios de
						información, el cual tendrá un cobro que comenzará a regir desde el momento en que el cliente solicite y configure este
						servicio.
					</fo:block>
					<fo:block><fo:leader leader-pattern="space" /></fo:block>
					<fo:block><fo:leader leader-pattern="space" /></fo:block>
					<fo:block margin-top="0.4cm" text-align="left">
						<fo:inline font-weight="bold">
							ANTECEDENTES PARA CREACION DEL SERVICIO
						</fo:inline>
					</fo:block>
					<fo:block><fo:leader leader-pattern="space" /></fo:block>
					<fo:block><fo:leader leader-pattern="space" /></fo:block>
					<fo:block margin-top="0.4cm" text-align="left">
						<fo:inline font-weight="bold">
							Marca lo que Corresponde:
						</fo:inline>
					</fo:block>
					<fo:block><fo:leader leader-pattern="space" /></fo:block>
					<fo:block margin-top="0.4cm" >
						<fo:table width="180mm" border="solid">                     
						   <fo:table-column column-number="1"  border="solid" border-width="1pt"/>                                              
						   <fo:table-column column-number="2"  border="solid" border-width="1pt"/>
						   <fo:table-column column-number="3"  border="solid" border-width="1pt"/>                     
						   <fo:table-body>
							  <fo:table-row border-style="double" border-width="1pt">                         
								 <fo:table-cell column-number="1" border="solid">                            
									<fo:block text-align="center"> Crear</fo:block>
								 </fo:table-cell>
								 <fo:table-cell column-number="2" border="solid">                            
									<fo:block text-align="center"> Modificar</fo:block>
								 </fo:table-cell>                         
								 <fo:table-cell column-number="3" border="solid"> 
									<fo:block text-align="center">Revocar</fo:block>                         
								 </fo:table-cell>
							  </fo:table-row>
						   </fo:table-body>
						</fo:table>
                    </fo:block>
					<fo:block><fo:leader leader-pattern="space" /></fo:block>
					<fo:block><fo:leader leader-pattern="space" /></fo:block>
					<fo:block margin-top="0.4cm" text-align="center">
						<fo:inline font-weight="bold">
							DATOS BÁSICOS DEL CONVENIO DE SERVICIO INFORMACIÓN BCI CASH
						</fo:inline>
					</fo:block>
					<fo:block><fo:leader leader-pattern="space" /></fo:block>
					<fo:block><fo:leader leader-pattern="space" /></fo:block>
					<fo:block margin-top="0.4cm" >
						<fo:table width="180mm" >                     
						   <fo:table-column column-number="1"   />                                              
						   <fo:table-column column-number="2"   />                    
						   <fo:table-body>
							  <fo:table-row border-style="double" >                         
								 <fo:table-cell column-number="1" >                            
									<fo:block text-align="left"> Rut Empresa:<xsl:value-of select='rut'/></fo:block>
								 </fo:table-cell>
								 <fo:table-cell column-number="2" >                            
									<fo:block text-align="left"> Razon Social:<xsl:value-of select='razonSocial'/></fo:block>
								 </fo:table-cell>                         
							  </fo:table-row>
							  
							  <fo:table-row border-style="double" >                         
								 <fo:table-cell column-number="1" >                            
									<fo:block text-align="left"> Direccion:<xsl:value-of select='direccion'/></fo:block>
								 </fo:table-cell>
								 <fo:table-cell column-number="2" >                            
									<fo:block text-align="left"> Comuna:</fo:block>
								 </fo:table-cell>                         
							  </fo:table-row>
							  <fo:table-row border-style="double" >                         
								 <fo:table-cell column-number="1" >                            
									<fo:block text-align="left"> Ciudad:</fo:block>
								 </fo:table-cell>
								 <fo:table-cell column-number="2" >                            
									<fo:block text-align="left"> Telefono:</fo:block>
								 </fo:table-cell>                         
							  </fo:table-row>
							  <fo:table-row border-style="double" >                         
								 <fo:table-cell column-number="1" >                            
									<fo:block text-align="left"> Fax:</fo:block>
								 </fo:table-cell>
								 <fo:table-cell column-number="2" >                            
									<fo:block text-align="left"></fo:block>
								 </fo:table-cell>                         
							  </fo:table-row>
						   </fo:table-body>
						</fo:table>
                    </fo:block>
					<fo:block><fo:leader leader-pattern="space" /></fo:block>
					<fo:block><fo:leader leader-pattern="space" /></fo:block>
					<fo:block margin-top="0.4cm" text-align="center">
						<fo:inline font-weight="bold">
							DATOS BÁSICOS DE INSTALACIÓN / HABILITACIÓN DEL SERVICIO
						</fo:inline>
					</fo:block>
					<fo:block><fo:leader leader-pattern="space" /></fo:block>
					<fo:block><fo:leader leader-pattern="space" /></fo:block>
					<fo:block margin-top="0.4cm" >
						<fo:table width="180mm" >                     
						   <fo:table-column column-number="1"   />                                              
						   <fo:table-column column-number="2"   />                    
						   <fo:table-body>
							  <fo:table-row border-style="double" >                         
								 <fo:table-cell column-number="1" >                            
									<fo:block text-align="left"> Rut Contactos:</fo:block>
								 </fo:table-cell>
								 <fo:table-cell column-number="2" >                            
									<fo:block text-align="left"> Nombre Contacto:</fo:block>
								 </fo:table-cell>                         
							  </fo:table-row>
							  
							  <fo:table-row border-style="double" >                         
								 <fo:table-cell column-number="1" >                            
									<fo:block text-align="left"> Cargo Contacto:</fo:block>
								 </fo:table-cell>
								 <fo:table-cell column-number="2" >                            
									<fo:block text-align="left"> Direccion:</fo:block>
								 </fo:table-cell>                         
							  </fo:table-row>
							  <fo:table-row border-style="double" >                         
								 <fo:table-cell column-number="1" >                            
									<fo:block text-align="left"> Comuna:</fo:block>
								 </fo:table-cell>
								 <fo:table-cell column-number="2" >                            
									<fo:block text-align="left"> Ciudad:</fo:block>
								 </fo:table-cell>                         
							  </fo:table-row>
							  <fo:table-row border-style="double" >                         
								 <fo:table-cell column-number="1" >                            
									<fo:block text-align="left"> Fax:</fo:block>
								 </fo:table-cell>
								 <fo:table-cell column-number="2" >                            
									<fo:block text-align="left">Telefono:</fo:block>
								 </fo:table-cell>                         
							  </fo:table-row>
							  <fo:table-row border-style="double" >                         
								 <fo:table-cell column-number="1" >                            
									<fo:block text-align="left"> Correo @mail:</fo:block>
								 </fo:table-cell>
								 <fo:table-cell column-number="2" >                            
									<fo:block text-align="left"></fo:block>
								 </fo:table-cell>                         
							  </fo:table-row>
						   </fo:table-body>
						</fo:table>
                    </fo:block>
					<fo:block><fo:leader leader-pattern="space" /></fo:block>
					<fo:block><fo:leader leader-pattern="space" /></fo:block>
					<fo:block margin-top="0.4cm" text-align="left">
						<fo:inline font-weight="bold">
							INDICAR PLATAFORMA: Internet
						</fo:inline>
					</fo:block>
					<fo:block><fo:leader leader-pattern="space" /></fo:block>
					<fo:block><fo:leader leader-pattern="space" /></fo:block>
					<fo:block margin-top="0.4cm" text-align="left">
						<fo:inline font-weight="bold">
							RAZON SOCIAL RELACIONADA AL RUT DEL ENCABEZAMIENTO
						</fo:inline>
					</fo:block>
					<fo:block><fo:leader leader-pattern="space" /></fo:block>
					<fo:block margin-top="0.4cm" >
						<fo:table width="180mm" border="solid">                     
						   <fo:table-column column-number="1"  border="solid" border-width="1pt"/>                                              
						   <fo:table-column column-number="2"  border="solid" border-width="1pt"/>
						   <fo:table-column column-number="3"  border="solid" border-width="1pt"/>                     
						   <fo:table-body>
							  <fo:table-row border-style="double" border-width="1pt">                         
								 <fo:table-cell column-number="1" border="solid">                            
									<fo:block text-align="center"> RUT</fo:block>
								 </fo:table-cell>
								 <fo:table-cell column-number="2" border="solid">                            
									<fo:block text-align="center"> RAZON SOCIAL</fo:block>
								 </fo:table-cell>                         
								 <fo:table-cell column-number="3" border="solid"> 
									<fo:block text-align="center">MONTO MAXIMO TRANSF.</fo:block>                         
								 </fo:table-cell>
							  </fo:table-row>
							  <fo:table-row border-style="double" border-width="1pt">                         
								 <fo:table-cell column-number="1" border="solid">                            
									<fo:block text-align="center"> <xsl:value-of select='rut'/></fo:block>
								 </fo:table-cell>
								 <fo:table-cell column-number="2" border="solid">                            
									<fo:block text-align="center"> <xsl:value-of select='razonSocial'/></fo:block>
								 </fo:table-cell>                         
								 <fo:table-cell column-number="3" border="solid"> 
									<fo:block text-align="center"></fo:block>                         
								 </fo:table-cell>
							  </fo:table-row>
						   </fo:table-body>
						</fo:table>
                    </fo:block>
				</fo:flow>
			</fo:page-sequence>
			<fo:page-sequence master-reference="convenio">
				<fo:flow flow-name="xsl-region-body" font-family="Helvetica, Arial, sans" font-size="10pt" text-align="justify">
					<fo:block margin-top="0.4cm" text-align="left">
						<fo:inline font-weight="bold">
							TIPO APODERADO PARA TRANSFERENCIA DE FONDOS:
						</fo:inline>
					</fo:block>
					<fo:block margin-top="0.4cm" text-align="left">
						<fo:inline font-weight="bold">
							- Sistema Firmas y Poderes(SIFP)
						</fo:inline>
					</fo:block>
					<fo:block margin-top="0.4cm" text-align="left">
						<fo:inline font-weight="bold">
							- Apoderado Virtual (AV)
						</fo:inline>
					</fo:block>
					<fo:block><fo:leader leader-pattern="space" /></fo:block>
					<fo:block margin-top="0.4cm" text-align="left">
						<fo:inline font-weight="bold">
							CUENTAS CORRIENTES DE TERCEROS AUTORIZADOS (transferencia de fondos)
						</fo:inline>
					</fo:block>
					<fo:block><fo:leader leader-pattern="space" /></fo:block>
					<fo:block margin-top="0.4cm" >
						<fo:table width="180mm" border="solid">                     
						   <fo:table-column column-number="1"  border="solid" border-width="1pt"/>                                              
						   <fo:table-column column-number="2"  border="solid" border-width="1pt"/>
						   <fo:table-column column-number="3"  border="solid" border-width="1pt"/>
						   <fo:table-column column-number="4"  border="solid" border-width="1pt"/>   						   
						   <fo:table-body>
							  <fo:table-row border-style="double" border-width="1pt">                         
								 <fo:table-cell column-number="1" border="solid">                            
									<fo:block text-align="center"> RUT</fo:block>
								 </fo:table-cell>
								 <fo:table-cell column-number="2" border="solid">                            
									<fo:block text-align="center"> RAZON SOCIAL</fo:block>
								 </fo:table-cell>                         
								 <fo:table-cell column-number="3" border="solid"> 
									<fo:block text-align="center">CUENTA CORRIENTE</fo:block>                         
								 </fo:table-cell>
								 <fo:table-cell column-number="4" border="solid"> 
									<fo:block text-align="center">BANCO</fo:block>                         
								 </fo:table-cell>
							  </fo:table-row>
							  <fo:table-row border-style="double" border-width="1pt">                         
								 <fo:table-cell column-number="1" border="solid">                            
									<fo:block text-align="center"> </fo:block>
								 </fo:table-cell>
								 <fo:table-cell column-number="2" border="solid">                            
									<fo:block text-align="center"> </fo:block>
								 </fo:table-cell>                         
								 <fo:table-cell column-number="3" border="solid"> 
									<fo:block text-align="center"></fo:block>                         
								 </fo:table-cell>
								 <fo:table-cell column-number="4" border="solid"> 
									<fo:block text-align="center"></fo:block>                         
								 </fo:table-cell>
							  </fo:table-row>
						   </fo:table-body>
						</fo:table>
                    </fo:block>
					<fo:block><fo:leader leader-pattern="space" /></fo:block>
					<fo:block margin-top="0.4cm">
						El presente anexo se firma en 2 ejemplares, quedando uno en poder del Banco de Crédito e Inversiones.
					</fo:block>
					<fo:block><fo:leader leader-pattern="space" /></fo:block>
					<fo:block><fo:leader leader-pattern="space" /></fo:block>
					<fo:block><fo:leader leader-pattern="space" /></fo:block>
					<fo:block><fo:leader leader-pattern="space" /></fo:block>
					<fo:block><fo:leader leader-pattern="space" /></fo:block>
					<fo:block margin-top="0.4cm" >
						<fo:table width="180mm" >                     
						   <fo:table-column column-number="1"   />                                              
						   <fo:table-column column-number="2"   />                    
						   <fo:table-body>
							  <fo:table-row border-style="double" >                         
								 <fo:table-cell column-number="1" >                            
									<fo:block text-align="left"> ___________________________</fo:block>
								 </fo:table-cell>
								 <fo:table-cell column-number="2" >                            
									<fo:block text-align="left"> ___________________________</fo:block>
								 </fo:table-cell>                         
							  </fo:table-row>
							  
							  <fo:table-row border-style="double" >                         
								 <fo:table-cell column-number="1" >                            
									<fo:block text-align="left"> p.p. Banco de Crédito e Inversiones</fo:block>
								 </fo:table-cell>
								 <fo:table-cell column-number="2" >                            
									<fo:block text-align="left"> p.p. Cliente</fo:block>
								 </fo:table-cell>                         
							  </fo:table-row>
						   </fo:table-body>
						</fo:table>
                    </fo:block>
					<fo:block><fo:leader leader-pattern="space" /></fo:block>
					<fo:block><fo:leader leader-pattern="space" /></fo:block>
					<fo:block margin-top="0.4cm" >
						<fo:table width="180mm" >                     
						   <fo:table-column column-number="1"   />                                              
						   <fo:table-column column-number="2"   />                    
						   <fo:table-body>
							  <fo:table-row border-style="double" >                         
								 <fo:table-cell column-number="1" >                            
									<fo:block text-align="left"></fo:block>
								 </fo:table-cell>
								 <fo:table-cell column-number="2" >                            
									<fo:block text-align="left"> Rut: __________________</fo:block>
								 </fo:table-cell>                         
							  </fo:table-row>
							  
							  <fo:table-row border-style="double" >                         
								 <fo:table-cell column-number="1" >                            
									<fo:block text-align="left"></fo:block>
								 </fo:table-cell>
								 <fo:table-cell column-number="2" >                            
									<fo:block text-align="left"> Nombre: ___________________</fo:block>
								 </fo:table-cell>                         
							  </fo:table-row>
						   </fo:table-body>
						</fo:table>
                    </fo:block>
					<fo:block><fo:leader leader-pattern="space" /></fo:block>
					<fo:block><fo:leader leader-pattern="space" /></fo:block>
					<fo:block margin-top="0.4cm">
						“Este documento consta de 2 hojas”
					</fo:block>
					<fo:block><fo:leader leader-pattern="space" /></fo:block>
					<fo:block><fo:leader leader-pattern="space" /></fo:block>
					<fo:block margin-top="0.4cm" text-align="left">
						<fo:inline font-weight="bold">
							USO INTERNO DEL BCI
						</fo:inline>
					</fo:block>
					<fo:block><fo:leader leader-pattern="space" /></fo:block>
					<fo:block margin-top="0.4cm" text-align="left">
						Oficina BCI :_______________________________
					</fo:block>
					<fo:block><fo:leader leader-pattern="space" /></fo:block>
					<fo:block margin-top="0.4cm" text-align="left">
						Ejecutivo BCI :_________________________________
					</fo:block>
					<fo:block><fo:leader leader-pattern="space" /></fo:block>
					<fo:block margin-top="0.4cm" text-align="left">
						Anexo: _____________
					</fo:block>
					<fo:block><fo:leader leader-pattern="space" /></fo:block>
					<fo:block margin-top="0.4cm" text-align="left">
						Correo electrónico :________________________________
					</fo:block>
					<fo:block><fo:leader leader-pattern="space" /></fo:block>
					<fo:block margin-top="0.4cm" text-align="right">
						Timbre
					</fo:block>
					<fo:block><fo:leader leader-pattern="space" /></fo:block>
					<fo:block margin-top="0.4cm" >
						<fo:table width="180mm" >                     
						   <fo:table-column column-number="1"   />                                              
						   <fo:table-column column-number="2"   />                    
						   <fo:table-body>
							  <fo:table-row border-style="double" >                         
								 <fo:table-cell column-number="1" >                            
									<fo:block text-align="left">VºBº Ejecutivo:__________________</fo:block>
								 </fo:table-cell>
								 <fo:table-cell column-number="2" >                            
									<fo:block text-align="left"> Fecha:______________</fo:block>
								 </fo:table-cell>                         
							  </fo:table-row>
							  
							  <fo:table-row border-style="double" >                         
								 <fo:table-cell column-number="1" >                            
									<fo:block text-align="left">VºBº ACA JOP:__________________</fo:block>
								 </fo:table-cell>
								 <fo:table-cell column-number="2" >                            
									<fo:block text-align="left"> Fecha:______________</fo:block>
								 </fo:table-cell>                         
							  </fo:table-row>
						   </fo:table-body>
						</fo:table>
                    </fo:block>
					<fo:block><fo:leader leader-pattern="space" /></fo:block>
					<fo:block><fo:leader leader-pattern="space" /></fo:block>
					<fo:block margin-top="0.4cm" text-align="left">
						Ejecutivo BEL BCI :________________________________
					</fo:block>
					<fo:block><fo:leader leader-pattern="space" /></fo:block>
					<fo:block margin-top="0.4cm" text-align="left">
						Correo Electrónico:_______________
					</fo:block>
				</fo:flow>
			</fo:page-sequence>
			<fo:page-sequence master-reference="convenio">
				<fo:flow flow-name="xsl-region-body" font-family="Helvetica, Arial, sans" font-size="10pt" text-align="justify">
					<fo:block margin-top="0.4cm" text-align="left">
						<fo:inline font-weight="bold">
							ANEXO TARIFAS Y CONDICIONES DE RECIPROCIDAD
						</fo:inline>
					</fo:block>
					<fo:block><fo:leader leader-pattern="space" /></fo:block>
					<fo:block><fo:leader leader-pattern="space" /></fo:block>
					<fo:block margin-top="0.4cm" text-align="left">
						<fo:inline font-weight="bold">
							A. TARIFAS
						</fo:inline>
					</fo:block>
					<fo:block><fo:leader leader-pattern="space" /></fo:block>
					<fo:block margin-top="0.4cm" >
						<fo:table width="180mm" >                     
						   <fo:table-column column-number="1"   />                                              
						   <fo:table-column column-number="2"   />
							<fo:table-column column-number="3"   />
							<fo:table-column column-number="4"   />
						   <fo:table-body>
							  <fo:table-row border-style="double" >                         
								 <fo:table-cell column-number="1" >                            
									<fo:block text-align="center">Producto</fo:block>
								 </fo:table-cell>
								 <fo:table-cell column-number="2" >                            
									<fo:block text-align="center"> Item</fo:block>
								 </fo:table-cell>  
								 <fo:table-cell column-number="3" >                            
									<fo:block text-align="center"> Tarifa Pizarra [UF] Cantidad (Volumen)</fo:block>
								 </fo:table-cell> 
								 <fo:table-cell column-number="4" >                            
									<fo:block text-align="center"> Tarifa Ofrecida [UF]</fo:block>
								 </fo:table-cell> 
							  </fo:table-row>
							  <fo:table-row border-style="double" >                         
								 <fo:table-cell column-number="1" border="solid">                            
									<fo:block text-align="left">Bci Express (Fijo)</fo:block>
								 </fo:table-cell>
								 <fo:table-cell column-number="2" border="solid">                            
									<fo:block text-align="left"> Costo Fijo</fo:block>
								 </fo:table-cell>  
								 <fo:table-cell column-number="3" border="solid">                            
									<fo:block text-align="left"> 1,0000</fo:block>
								 </fo:table-cell> 
								 <fo:table-cell column-number="4" border="solid">                            
									<fo:block text-align="left"> </fo:block>
								 </fo:table-cell> 
							  </fo:table-row>
							  <fo:table-row border-style="double" >                         
								 <fo:table-cell column-number="1" border="solid">                            
									<fo:block text-align="left"></fo:block>
								 </fo:table-cell>
								 <fo:table-cell column-number="2" border="solid">                            
									<fo:block text-align="left"> Visualización de Cheques</fo:block>
								 </fo:table-cell>  
								 <fo:table-cell column-number="3" border="solid">                            
									<fo:block text-align="left"> 0,0060</fo:block>
								 </fo:table-cell> 
								 <fo:table-cell column-number="4" border="solid">                            
									<fo:block text-align="left"> 0,000</fo:block>
								 </fo:table-cell> 
							  </fo:table-row>
							  <fo:table-row border-style="double" >                         
								 <fo:table-cell column-number="1" border="solid">                            
									<fo:block text-align="left">Bci Express (Variable)</fo:block>
								 </fo:table-cell>
								 <fo:table-cell column-number="2" border="solid">                            
									<fo:block text-align="left"> Transferencias de Fondos Bci</fo:block>
								 </fo:table-cell>  
								 <fo:table-cell column-number="3" border="solid">                            
									<fo:block text-align="left"> 0,0190</fo:block>
								 </fo:table-cell> 
								 <fo:table-cell column-number="4" border="solid">                            
									<fo:block text-align="left"> 0,000</fo:block>
								 </fo:table-cell> 
							  </fo:table-row>
							  <fo:table-row border-style="double" >                         
								 <fo:table-cell column-number="1" border="solid">                            
									<fo:block text-align="left"></fo:block>
								 </fo:table-cell>
								 <fo:table-cell column-number="2" border="solid">                            
									<fo:block text-align="left"> Transferencias de Fondos OOBB</fo:block>
								 </fo:table-cell>  
								 <fo:table-cell column-number="3" border="solid">                            
									<fo:block text-align="left"> 0,0350</fo:block>
								 </fo:table-cell> 
								 <fo:table-cell column-number="4" border="solid">                            
									<fo:block text-align="left"> 0,000</fo:block>
								 </fo:table-cell> 
							  </fo:table-row>
							  <fo:table-row border-style="double" >                         
								 <fo:table-cell column-number="1" border="solid">                            
									<fo:block text-align="left"></fo:block>
								 </fo:table-cell>
								 <fo:table-cell column-number="2" border="solid">                            
									<fo:block text-align="left"> Cartola Histórica (MN y MX)</fo:block>
								 </fo:table-cell>  
								 <fo:table-cell column-number="3" border="solid">                            
									<fo:block text-align="left"> 0,0250</fo:block>
								 </fo:table-cell> 
								 <fo:table-cell column-number="4" border="solid">                            
									<fo:block text-align="left"> 0,025</fo:block>
								 </fo:table-cell> 
							  </fo:table-row>
							  <fo:table-row border-style="double" >                         
								 <fo:table-cell column-number="1" border="solid">                            
									<fo:block text-align="left"></fo:block>
								 </fo:table-cell>
								 <fo:table-cell column-number="2" border="solid">                            
									<fo:block text-align="left"> Visualización de Cheques</fo:block>
								 </fo:table-cell>  
								 <fo:table-cell column-number="3" border="solid">                            
									<fo:block text-align="left"> 0,0060</fo:block>
								 </fo:table-cell> 
								 <fo:table-cell column-number="4" border="solid">                            
									<fo:block text-align="left"> 0,000</fo:block>
								 </fo:table-cell> 
							  </fo:table-row>
							  <fo:table-row border-style="double" >                         
								 <fo:table-cell column-number="1" border="solid">                            
									<fo:block text-align="left">Cartola Electrónica o PAC Empresas</fo:block>
								 </fo:table-cell>
								 <fo:table-cell column-number="2" border="solid">                            
									<fo:block text-align="left"> Diaria</fo:block>
								 </fo:table-cell>  
								 <fo:table-cell column-number="3" border="solid">                            
									<fo:block text-align="left"> 1,0000</fo:block>
								 </fo:table-cell> 
								 <fo:table-cell column-number="4" border="solid">                            
									<fo:block text-align="left"></fo:block>
								 </fo:table-cell> 
							  </fo:table-row>
							  <fo:table-row border-style="double" >                         
								 <fo:table-cell column-number="1" border="solid">                            
									<fo:block text-align="left"></fo:block>
								 </fo:table-cell>
								 <fo:table-cell column-number="2" border="solid">                            
									<fo:block text-align="left"> Semanal</fo:block>
								 </fo:table-cell>  
								 <fo:table-cell column-number="3" border="solid">                            
									<fo:block text-align="left"> 0,8000</fo:block>
								 </fo:table-cell> 
								 <fo:table-cell column-number="4" border="solid">                            
									<fo:block text-align="left"></fo:block>
								 </fo:table-cell> 
							  </fo:table-row>
							  <fo:table-row border-style="double" >                         
								 <fo:table-cell column-number="1" border="solid">                            
									<fo:block text-align="left"></fo:block>
								 </fo:table-cell>
								 <fo:table-cell column-number="2" border="solid">                            
									<fo:block text-align="left"> Quincenal</fo:block>
								 </fo:table-cell>  
								 <fo:table-cell column-number="3" border="solid">                            
									<fo:block text-align="left"> 0,6000</fo:block>
								 </fo:table-cell> 
								 <fo:table-cell column-number="4" border="solid">                            
									<fo:block text-align="left"></fo:block>
								 </fo:table-cell> 
							  </fo:table-row>
							  <fo:table-row border-style="double" >                         
								 <fo:table-cell column-number="1" border="solid">                            
									<fo:block text-align="left"></fo:block>
								 </fo:table-cell>
								 <fo:table-cell column-number="2" border="solid">                            
									<fo:block text-align="left"> Mensual</fo:block>
								 </fo:table-cell>  
								 <fo:table-cell column-number="3" border="solid">                            
									<fo:block text-align="left"> 0,5000</fo:block>
								 </fo:table-cell> 
								 <fo:table-cell column-number="4" border="solid">                            
									<fo:block text-align="left"></fo:block>
								 </fo:table-cell> 
							  </fo:table-row>
							  <fo:table-row border-style="double" >                         
								 <fo:table-cell column-number="1" border="solid">                            
									<fo:block text-align="left">Bci Transfer</fo:block>
								 </fo:table-cell>
								 <fo:table-cell column-number="2" border="solid">                            
									<fo:block text-align="left"> Abono en Bci</fo:block>
								 </fo:table-cell>  
								 <fo:table-cell column-number="3" border="solid">                            
									<fo:block text-align="left"></fo:block>
								 </fo:table-cell> 
								 <fo:table-cell column-number="4" border="solid">                            
									<fo:block text-align="left"></fo:block>
								 </fo:table-cell> 
							  </fo:table-row>
							  <fo:table-row border-style="double" >                         
								 <fo:table-cell column-number="1" border="solid">                            
									<fo:block text-align="left"></fo:block>
								 </fo:table-cell>
								 <fo:table-cell column-number="2" border="solid">                            
									<fo:block text-align="left"> Abono en otro Banco</fo:block>
								 </fo:table-cell>  
								 <fo:table-cell column-number="3" border="solid">                            
									<fo:block text-align="left"></fo:block>
								 </fo:table-cell> 
								 <fo:table-cell column-number="4" border="solid">                            
									<fo:block text-align="left"></fo:block>
								 </fo:table-cell> 
							  </fo:table-row>
							  <fo:table-row border-style="double" >                         
								 <fo:table-cell column-number="1" border="solid">                            
									<fo:block text-align="left"></fo:block>
								 </fo:table-cell>
								 <fo:table-cell column-number="2" border="solid">                            
									<fo:block text-align="left"> Efectivo e Servipag</fo:block>
								 </fo:table-cell>  
								 <fo:table-cell column-number="3" border="solid">                            
									<fo:block text-align="left"></fo:block>
								 </fo:table-cell> 
								 <fo:table-cell column-number="4" border="solid">                            
									<fo:block text-align="left"></fo:block>
								 </fo:table-cell> 
							  </fo:table-row>
							  <fo:table-row border-style="double" >                         
								 <fo:table-cell column-number="1" border="solid">                            
									<fo:block text-align="left"></fo:block>
								 </fo:table-cell>
								 <fo:table-cell column-number="2" border="solid">                            
									<fo:block text-align="left"> Vale a la Vista</fo:block>
								 </fo:table-cell>  
								 <fo:table-cell column-number="3" border="solid">                            
									<fo:block text-align="left">0,0300</fo:block>
								 </fo:table-cell> 
								 <fo:table-cell column-number="4" border="solid">                            
									<fo:block text-align="left"></fo:block>
								 </fo:table-cell> 
							  </fo:table-row>
							  <fo:table-row border-style="double" >                         
								 <fo:table-cell column-number="1" border="solid">                            
									<fo:block text-align="left"></fo:block>
								 </fo:table-cell>
								 <fo:table-cell column-number="2" border="solid">                            
									<fo:block text-align="left"> Vale a la Vista por Correo</fo:block>
								 </fo:table-cell>  
								 <fo:table-cell column-number="3" border="solid">                            
									<fo:block text-align="left">0,0464</fo:block>
								 </fo:table-cell> 
								 <fo:table-cell column-number="4" border="solid">                            
									<fo:block text-align="left"></fo:block>
								 </fo:table-cell> 
							  </fo:table-row>
							  <fo:table-row border-style="double" >                         
								 <fo:table-cell column-number="1" border="solid">                            
									<fo:block text-align="left"></fo:block>
								 </fo:table-cell>
								 <fo:table-cell column-number="2" border="solid">                            
									<fo:block text-align="left"> Vale Vista Virtual</fo:block>
								 </fo:table-cell>  
								 <fo:table-cell column-number="3" border="solid">                            
									<fo:block text-align="left"></fo:block>
								 </fo:table-cell> 
								 <fo:table-cell column-number="4" border="solid">                            
									<fo:block text-align="left"></fo:block>
								 </fo:table-cell> 
							  </fo:table-row>
							  <fo:table-row border-style="double" >                         
								 <fo:table-cell column-number="1" border="solid">                            
									<fo:block text-align="left">Portal Proveedores</fo:block>
								 </fo:table-cell>
								 <fo:table-cell column-number="2" border="solid">                            
									<fo:block text-align="left"> Servicio de Publicación</fo:block>
								 </fo:table-cell>  
								 <fo:table-cell column-number="3" border="solid">                            
									<fo:block text-align="left">0,0006</fo:block>
								 </fo:table-cell> 
								 <fo:table-cell column-number="4" border="solid">                            
									<fo:block text-align="left"></fo:block>
								 </fo:table-cell> 
							  </fo:table-row>
							  <fo:table-row border-style="double" >                         
								 <fo:table-cell column-number="1" border="solid">                            
									<fo:block text-align="left"></fo:block>
								 </fo:table-cell>
								 <fo:table-cell column-number="2" border="solid">                            
									<fo:block text-align="left"> Abono en Bci</fo:block>
								 </fo:table-cell>  
								 <fo:table-cell column-number="3" border="solid">                            
									<fo:block text-align="left"></fo:block>
								 </fo:table-cell> 
								 <fo:table-cell column-number="4" border="solid">                            
									<fo:block text-align="left"></fo:block>
								 </fo:table-cell> 
							  </fo:table-row>
							  <fo:table-row border-style="double" >                         
								 <fo:table-cell column-number="1" border="solid">                            
									<fo:block text-align="left"></fo:block>
								 </fo:table-cell>
								 <fo:table-cell column-number="2" border="solid">                            
									<fo:block text-align="left"> Abono en otro Banco</fo:block>
								 </fo:table-cell>  
								 <fo:table-cell column-number="3" border="solid">                            
									<fo:block text-align="left"></fo:block>
								 </fo:table-cell> 
								 <fo:table-cell column-number="4" border="solid">                            
									<fo:block text-align="left"></fo:block>
								 </fo:table-cell> 
							  </fo:table-row>
							  <fo:table-row border-style="double" >                         
								 <fo:table-cell column-number="1" border="solid">                            
									<fo:block text-align="left"></fo:block>
								 </fo:table-cell>
								 <fo:table-cell column-number="2" border="solid">                            
									<fo:block text-align="left"> Vale a la Vista</fo:block>
								 </fo:table-cell>  
								 <fo:table-cell column-number="3" border="solid">                            
									<fo:block text-align="left">0,0300</fo:block>
								 </fo:table-cell> 
								 <fo:table-cell column-number="4" border="solid">                            
									<fo:block text-align="left"></fo:block>
								 </fo:table-cell> 
							  </fo:table-row>
							  <fo:table-row border-style="double" >                         
								 <fo:table-cell column-number="1" border="solid">                            
									<fo:block text-align="left"></fo:block>
								 </fo:table-cell>
								 <fo:table-cell column-number="2" border="solid">                            
									<fo:block text-align="left"> Vale a la Vista por Correo</fo:block>
								 </fo:table-cell>  
								 <fo:table-cell column-number="3" border="solid">                            
									<fo:block text-align="left">0,0464</fo:block>
								 </fo:table-cell> 
								 <fo:table-cell column-number="4" border="solid">                            
									<fo:block text-align="left"></fo:block>
								 </fo:table-cell> 
							  </fo:table-row>
							  <fo:table-row border-style="double" >                         
								 <fo:table-cell column-number="1" border="solid">                            
									<fo:block text-align="left"></fo:block>
								 </fo:table-cell>
								 <fo:table-cell column-number="2" border="solid">                            
									<fo:block text-align="left"> Vale Vista Virtual</fo:block>
								 </fo:table-cell>  
								 <fo:table-cell column-number="3" border="solid">                            
									<fo:block text-align="left"></fo:block>
								 </fo:table-cell> 
								 <fo:table-cell column-number="4" border="solid">                            
									<fo:block text-align="left"></fo:block>
								 </fo:table-cell> 
							  </fo:table-row>
							  <fo:table-row border-style="double" >                         
								 <fo:table-cell column-number="1" border="solid">                            
									<fo:block text-align="left">Bci Transfer Full</fo:block>
								 </fo:table-cell>
								 <fo:table-cell column-number="2" border="solid">                            
									<fo:block text-align="left"> Variable por trabajador procesado</fo:block>
								 </fo:table-cell>  
								 <fo:table-cell column-number="3" border="solid">                            
									<fo:block text-align="left"></fo:block>
								 </fo:table-cell> 
								 <fo:table-cell column-number="4" border="solid">                            
									<fo:block text-align="left"></fo:block>
								 </fo:table-cell> 
							  </fo:table-row>
							  <fo:table-row border-style="double" >                         
								 <fo:table-cell column-number="1" border="solid">                            
									<fo:block text-align="left"></fo:block>
								 </fo:table-cell>
								 <fo:table-cell column-number="2" border="solid">                            
									<fo:block text-align="left"> Puesta en marcha (por única vez)</fo:block>
								 </fo:table-cell>  
								 <fo:table-cell column-number="3" border="solid">                            
									<fo:block text-align="left">30,000</fo:block>
								 </fo:table-cell> 
								 <fo:table-cell column-number="4" border="solid">                            
									<fo:block text-align="left"></fo:block>
								 </fo:table-cell> 
							  </fo:table-row>
							  <fo:table-row border-style="double" >                         
								 <fo:table-cell column-number="1" border="solid">                            
									<fo:block text-align="left"></fo:block>
								 </fo:table-cell>
								 <fo:table-cell column-number="2" border="solid">                            
									<fo:block text-align="left"> Reproceso por trabajador</fo:block>
								 </fo:table-cell>  
								 <fo:table-cell column-number="3" border="solid">                            
									<fo:block text-align="left"></fo:block>
								 </fo:table-cell> 
								 <fo:table-cell column-number="4" border="solid">                            
									<fo:block text-align="left"></fo:block>
								 </fo:table-cell> 
							  </fo:table-row>
							  <fo:table-row border-style="double" >                         
								 <fo:table-cell column-number="1" border="solid">                            
									<fo:block text-align="left">Pagos Previsionales</fo:block>
								 </fo:table-cell>
								 <fo:table-cell column-number="2" border="solid">                            
									<fo:block text-align="left"> Pago 2° día hábil (Mínimo)</fo:block>
								 </fo:table-cell>  
								 <fo:table-cell column-number="3" border="solid">                            
									<fo:block text-align="left">1,000</fo:block>
								 </fo:table-cell> 
								 <fo:table-cell column-number="4" border="solid">                            
									<fo:block text-align="left"></fo:block>
								 </fo:table-cell> 
							  </fo:table-row>
							  <fo:table-row border-style="double" >                         
								 <fo:table-cell column-number="1" border="solid">                            
									<fo:block text-align="left"></fo:block>
								 </fo:table-cell>
								 <fo:table-cell column-number="2" border="solid">                            
									<fo:block text-align="left"> Pago día 9 (Mínimo)</fo:block>
								 </fo:table-cell>  
								 <fo:table-cell column-number="3" border="solid">                            
									<fo:block text-align="left">1,000</fo:block>
								 </fo:table-cell> 
								 <fo:table-cell column-number="4" border="solid">                            
									<fo:block text-align="left"></fo:block>
								 </fo:table-cell> 
							  </fo:table-row>
							  <fo:table-row border-style="double" >                         
								 <fo:table-cell column-number="1" border="solid">                            
									<fo:block text-align="left"></fo:block>
								 </fo:table-cell>
								 <fo:table-cell column-number="2" border="solid">                            
									<fo:block text-align="left"> Pago día 10 (Mínimo)</fo:block>
								 </fo:table-cell>  
								 <fo:table-cell column-number="3" border="solid">                            
									<fo:block text-align="left">1,500</fo:block>
								 </fo:table-cell> 
								 <fo:table-cell column-number="4" border="solid">                            
									<fo:block text-align="left"></fo:block>
								 </fo:table-cell> 
							  </fo:table-row>
							  <fo:table-row border-style="double" >                         
								 <fo:table-cell column-number="1" border="solid">                            
									<fo:block text-align="left">Ordenes de Pago al Extranjero (ODP)</fo:block>
								 </fo:table-cell>
								 <fo:table-cell column-number="2" border="solid">                            
									<fo:block text-align="left"> ODP Valuta 24 hrs. USA / EUROPA</fo:block>
								 </fo:table-cell>  
								 <fo:table-cell column-number="3" border="solid">                            
									<fo:block text-align="left">US$ 15</fo:block>
								 </fo:table-cell> 
								 <fo:table-cell column-number="4" border="solid">                            
									<fo:block text-align="left"></fo:block>
								 </fo:table-cell> 
							  </fo:table-row>
							  <fo:table-row border-style="double" >                         
								 <fo:table-cell column-number="1" border="solid">                            
									<fo:block text-align="left"></fo:block>
								 </fo:table-cell>
								 <fo:table-cell column-number="2" border="solid">                            
									<fo:block text-align="left"> ODP Valuta 24 hrs. ASIA / AMERICA</fo:block>
								 </fo:table-cell>  
								 <fo:table-cell column-number="3" border="solid">                            
									<fo:block text-align="left">US$ 15</fo:block>
								 </fo:table-cell> 
								 <fo:table-cell column-number="4" border="solid">                            
									<fo:block text-align="left"></fo:block>
								 </fo:table-cell> 
							  </fo:table-row>
							  <fo:table-row border-style="double" >                         
								 <fo:table-cell column-number="1" border="solid">                            
									<fo:block text-align="left"></fo:block>
								 </fo:table-cell>
								 <fo:table-cell column-number="2" border="solid">                            
									<fo:block text-align="left"> ODP Valuta mismo día USA / EUROPA</fo:block>
								 </fo:table-cell>  
								 <fo:table-cell column-number="3" border="solid">                            
									<fo:block text-align="left">US$ 25</fo:block>
								 </fo:table-cell> 
								 <fo:table-cell column-number="4" border="solid">                            
									<fo:block text-align="left"></fo:block>
								 </fo:table-cell> 
							  </fo:table-row>
							  <fo:table-row border-style="double" >                         
								 <fo:table-cell column-number="1" border="solid">                            
									<fo:block text-align="left"></fo:block>
								 </fo:table-cell>
								 <fo:table-cell column-number="2" border="solid">                            
									<fo:block text-align="left"> ODP Valuta mismo día ASIA / AMERICA</fo:block>
								 </fo:table-cell>  
								 <fo:table-cell column-number="3" border="solid">                            
									<fo:block text-align="left">US$ 30</fo:block>
								 </fo:table-cell> 
								 <fo:table-cell column-number="4" border="solid">                            
									<fo:block text-align="left"></fo:block>
								 </fo:table-cell> 
							  </fo:table-row>
							  <fo:table-row border-style="double" >                         
								 <fo:table-cell column-number="1" border="solid">                            
									<fo:block text-align="left"></fo:block>
								 </fo:table-cell>
								 <fo:table-cell column-number="2" border="solid">                            
									<fo:block text-align="left"> Otras Zonas Geográficas</fo:block>
								 </fo:table-cell>  
								 <fo:table-cell column-number="3" border="solid">                            
									<fo:block text-align="left">Convenir</fo:block>
								 </fo:table-cell> 
								 <fo:table-cell column-number="4" border="solid">                            
									<fo:block text-align="left"></fo:block>
								 </fo:table-cell> 
							  </fo:table-row>
							  <fo:table-row border-style="double" >                         
								 <fo:table-cell column-number="1" border="solid">                            
									<fo:block text-align="left">Bci Pago Empresas</fo:block>
								 </fo:table-cell>
								 <fo:table-cell column-number="2" border="solid">                            
									<fo:block text-align="left"> Monobanco</fo:block>
								 </fo:table-cell>  
								 <fo:table-cell column-number="3" border="solid">                            
									<fo:block text-align="left">0,0150</fo:block>
								 </fo:table-cell> 
								 <fo:table-cell column-number="4" border="solid">                            
									<fo:block text-align="left"></fo:block>
								 </fo:table-cell> 
							  </fo:table-row>
							  <fo:table-row border-style="double" >                         
								 <fo:table-cell column-number="1" border="solid">                            
									<fo:block text-align="left"></fo:block>
								 </fo:table-cell>
								 <fo:table-cell column-number="2" border="solid">                            
									<fo:block text-align="left"> Multibanco (Tarifa Fija)</fo:block>
								 </fo:table-cell>  
								 <fo:table-cell column-number="3" border="solid">                            
									<fo:block text-align="left">4,000</fo:block>
								 </fo:table-cell> 
								 <fo:table-cell column-number="4" border="solid">                            
									<fo:block text-align="left"></fo:block>
								 </fo:table-cell> 
							  </fo:table-row>
							  <fo:table-row border-style="double" >                         
								 <fo:table-cell column-number="1" border="solid">                            
									<fo:block text-align="left"></fo:block>
								 </fo:table-cell>
								 <fo:table-cell column-number="2" border="solid">                            
									<fo:block text-align="left"> Bci - Cargo Cta. Cte. / Vista</fo:block>
								 </fo:table-cell>  
								 <fo:table-cell column-number="3" border="solid">                            
									<fo:block text-align="left">0,0150</fo:block>
								 </fo:table-cell> 
								 <fo:table-cell column-number="4" border="solid">                            
									<fo:block text-align="left"></fo:block>
								 </fo:table-cell> 
							  </fo:table-row>
							  <fo:table-row border-style="double" >                         
								 <fo:table-cell column-number="1" border="solid">                            
									<fo:block text-align="left"></fo:block>
								 </fo:table-cell>
								 <fo:table-cell column-number="2" border="solid">                            
									<fo:block text-align="left"> OOBB - Cargo Cta. Cte. / Vista</fo:block>
								 </fo:table-cell>  
								 <fo:table-cell column-number="3" border="solid">                            
									<fo:block text-align="left">0,0350</fo:block>
								 </fo:table-cell> 
								 <fo:table-cell column-number="4" border="solid">                            
									<fo:block text-align="left"></fo:block>
								 </fo:table-cell> 
							  </fo:table-row>
							  <fo:table-row border-style="double" >                         
								 <fo:table-cell column-number="1" border="solid">                            
									<fo:block text-align="left"></fo:block>
								 </fo:table-cell>
								 <fo:table-cell column-number="2" border="solid">                            
									<fo:block text-align="left"> Reintentos (Tarifa Fija)</fo:block>
								 </fo:table-cell>  
								 <fo:table-cell column-number="3" border="solid">                            
									<fo:block text-align="left">3,0000</fo:block>
								 </fo:table-cell> 
								 <fo:table-cell column-number="4" border="solid">                            
									<fo:block text-align="left"></fo:block>
								 </fo:table-cell> 
							  </fo:table-row>
							  <fo:table-row border-style="double" >                         
								 <fo:table-cell column-number="1" border="solid">                            
									<fo:block text-align="left"></fo:block>
								 </fo:table-cell>
								 <fo:table-cell column-number="2" border="solid">                            
									<fo:block text-align="left"> Bci - Reintento Cta. Cte. / Vista</fo:block>
								 </fo:table-cell>  
								 <fo:table-cell column-number="3" border="solid">                            
									<fo:block text-align="left">0,0040</fo:block>
								 </fo:table-cell> 
								 <fo:table-cell column-number="4" border="solid">                            
									<fo:block text-align="left"></fo:block>
								 </fo:table-cell> 
							  </fo:table-row>
							  <fo:table-row border-style="double" >                         
								 <fo:table-cell column-number="1" border="solid">                            
									<fo:block text-align="left"></fo:block>
								 </fo:table-cell>
								 <fo:table-cell column-number="2" border="solid">                            
									<fo:block text-align="left"> OOBB - Reintento Cta. Cte. / Vista</fo:block>
								 </fo:table-cell>  
								 <fo:table-cell column-number="3" border="solid">                            
									<fo:block text-align="left">0,0230</fo:block>
								 </fo:table-cell> 
								 <fo:table-cell column-number="4" border="solid">                            
									<fo:block text-align="left"></fo:block>
								 </fo:table-cell> 
							  </fo:table-row>
							  <fo:table-row border-style="double" >                         
								 <fo:table-cell column-number="1" border="solid">                            
									<fo:block text-align="left">Bci Pague Directo</fo:block>
								 </fo:table-cell>
								 <fo:table-cell column-number="2" border="solid">                            
									<fo:block text-align="left"> % sobre compras efectivas</fo:block>
								 </fo:table-cell>  
								 <fo:table-cell column-number="3" border="solid">                            
									<fo:block text-align="left">3%</fo:block>
								 </fo:table-cell> 
								 <fo:table-cell column-number="4" border="solid">                            
									<fo:block text-align="left"></fo:block>
								 </fo:table-cell> 
							  </fo:table-row>
							  <fo:table-row border-style="double" >                         
								 <fo:table-cell column-number="1" border="solid">                            
									<fo:block text-align="left"></fo:block>
								 </fo:table-cell>
								 <fo:table-cell column-number="2" border="solid">                            
									<fo:block text-align="left"> Valor por Transacción</fo:block>
								 </fo:table-cell>  
								 <fo:table-cell column-number="3" border="solid">                            
									<fo:block text-align="left">0,0350</fo:block>
								 </fo:table-cell> 
								 <fo:table-cell column-number="4" border="solid">                            
									<fo:block text-align="left"></fo:block>
								 </fo:table-cell> 
							  </fo:table-row>
						   </fo:table-body>
						</fo:table>
                    </fo:block>
				</fo:flow>
			</fo:page-sequence>
			<fo:page-sequence master-reference="convenio">
				<fo:flow flow-name="xsl-region-body" font-family="Helvetica, Arial, sans" font-size="10pt" text-align="justify">
					<fo:block margin-top="0.4cm" >
						<fo:table width="180mm" >                     
						   <fo:table-column column-number="1"   />                                              
						   <fo:table-column column-number="2"   />
							<fo:table-column column-number="3"   />
							<fo:table-column column-number="4"   />
						   <fo:table-body>
							  <fo:table-row border-style="double" >                         
								 <fo:table-cell column-number="1" border="solid">                            
									<fo:block text-align="left">E Pyme</fo:block>
								 </fo:table-cell>
								 <fo:table-cell column-number="2" border="solid">                            
									<fo:block text-align="left"> Pagos en cuenta Bci</fo:block>
								 </fo:table-cell>  
								 <fo:table-cell column-number="3" border="solid">                            
									<fo:block text-align="left"> 0,0170</fo:block>
								 </fo:table-cell> 
								 <fo:table-cell column-number="4" border="solid">                            
									<fo:block text-align="left"> 0,000</fo:block>
								 </fo:table-cell> 
							  </fo:table-row>
								<fo:table-row border-style="double" >                         
								 <fo:table-cell column-number="1" border="solid">                            
									<fo:block text-align="left"></fo:block>
								 </fo:table-cell>
								 <fo:table-cell column-number="2" border="solid">                            
									<fo:block text-align="left"> Pagos en cuenta otros Bancos</fo:block>
								 </fo:table-cell>  
								 <fo:table-cell column-number="3" border="solid">                            
									<fo:block text-align="left"> 0,0170</fo:block>
								 </fo:table-cell> 
								 <fo:table-cell column-number="4" border="solid">                            
									<fo:block text-align="left"> 0,000</fo:block>
								 </fo:table-cell> 
							  </fo:table-row>
							  <fo:table-row border-style="double" >                         
								 <fo:table-cell column-number="1" border="solid">                            
									<fo:block text-align="left"></fo:block>
								 </fo:table-cell>
								 <fo:table-cell column-number="2" border="solid">                            
									<fo:block text-align="left"> Cartola Histórica</fo:block>
								 </fo:table-cell>  
								 <fo:table-cell column-number="3" border="solid">                            
									<fo:block text-align="left"> 0,0250</fo:block>
								 </fo:table-cell> 
								 <fo:table-cell column-number="4" border="solid">                            
									<fo:block text-align="left"> 0,000</fo:block>
								 </fo:table-cell> 
							  </fo:table-row>
							  <fo:table-row border-style="double" >                         
								 <fo:table-cell column-number="1" border="solid">                            
									<fo:block text-align="left"></fo:block>
								 </fo:table-cell>
								 <fo:table-cell column-number="2" border="solid">                            
									<fo:block text-align="left"> Visualización de Cheques</fo:block>
								 </fo:table-cell>  
								 <fo:table-cell column-number="3" border="solid">                            
									<fo:block text-align="left"> 0,0060</fo:block>
								 </fo:table-cell> 
								 <fo:table-cell column-number="4" border="solid">                            
									<fo:block text-align="left"> 0,000</fo:block>
								 </fo:table-cell> 
							  </fo:table-row>
							  <fo:table-row border-style="double" >                         
								 <fo:table-cell column-number="1" border="solid">                            
									<fo:block text-align="left">Recaudación en Línea</fo:block>
								 </fo:table-cell>
								 <fo:table-cell column-number="2" border="solid">                            
									<fo:block text-align="left"> Mínima</fo:block>
								 </fo:table-cell>  
								 <fo:table-cell column-number="3" border="solid">                            
									<fo:block text-align="left"> 8,8000</fo:block>
								 </fo:table-cell> 
								 <fo:table-cell column-number="4" border="solid">                            
									<fo:block text-align="left"> </fo:block>
								 </fo:table-cell> 
							  </fo:table-row>
							  <fo:table-row border-style="double" >                         
								 <fo:table-cell column-number="1" border="solid">                            
									<fo:block text-align="left"></fo:block>
								 </fo:table-cell>
								 <fo:table-cell column-number="2" border="solid">                            
									<fo:block text-align="left"> Variable</fo:block>
								 </fo:table-cell>  
								 <fo:table-cell column-number="3" border="solid">                            
									<fo:block text-align="left"> 0,0440</fo:block>
								 </fo:table-cell> 
								 <fo:table-cell column-number="4" border="solid">                            
									<fo:block text-align="left"> </fo:block>
								 </fo:table-cell> 
							  </fo:table-row>
							  <fo:table-row border-style="double" >                         
								 <fo:table-cell column-number="1" border="solid">                            
									<fo:block text-align="left">Recaudación electrónica</fo:block>
								 </fo:table-cell>
								 <fo:table-cell column-number="2" border="solid">                            
									<fo:block text-align="left"> Mínima</fo:block>
								 </fo:table-cell>  
								 <fo:table-cell column-number="3" border="solid">                            
									<fo:block text-align="left"> 3,0000</fo:block>
								 </fo:table-cell> 
								 <fo:table-cell column-number="4" border="solid">                            
									<fo:block text-align="left"> </fo:block>
								 </fo:table-cell> 
							  </fo:table-row>
							  <fo:table-row border-style="double" >                         
								 <fo:table-cell column-number="1" border="solid">                            
									<fo:block text-align="left">Recaudación electrónica</fo:block>
								 </fo:table-cell>
								 <fo:table-cell column-number="2" border="solid">                            
									<fo:block text-align="left"> Variable</fo:block>
								 </fo:table-cell>  
								 <fo:table-cell column-number="3" border="solid">                            
									<fo:block text-align="left"> 0,0300</fo:block>
								 </fo:table-cell> 
								 <fo:table-cell column-number="4" border="solid">                            
									<fo:block text-align="left"> </fo:block>
								 </fo:table-cell> 
							  </fo:table-row>
							  <fo:table-row border-style="double" >                         
								 <fo:table-cell column-number="1" border="solid">                            
									<fo:block text-align="left">Cobranzas</fo:block>
								 </fo:table-cell>
								 <fo:table-cell column-number="2" border="solid">                            
									<fo:block text-align="left"> Cobranza Simple - Mínima</fo:block>
								 </fo:table-cell>  
								 <fo:table-cell column-number="3" border="solid">                            
									<fo:block text-align="left"> 0,1200</fo:block>
								 </fo:table-cell> 
								 <fo:table-cell column-number="4" border="solid">                            
									<fo:block text-align="left"> </fo:block>
								 </fo:table-cell> 
							  </fo:table-row>
							  <fo:table-row border-style="double" >                         
								 <fo:table-cell column-number="1" border="solid">                            
									<fo:block text-align="left"></fo:block>
								 </fo:table-cell>
								 <fo:table-cell column-number="2" border="solid">                            
									<fo:block text-align="left"> Cobranza Simple - Variable</fo:block>
								 </fo:table-cell>  
								 <fo:table-cell column-number="3" border="solid">                            
									<fo:block text-align="left"> 1,25%</fo:block>
								 </fo:table-cell> 
								 <fo:table-cell column-number="4" border="solid">                            
									<fo:block text-align="left"> </fo:block>
								 </fo:table-cell> 
							  </fo:table-row>
							  <fo:table-row border-style="double" >                         
								 <fo:table-cell column-number="1" border="solid">                            
									<fo:block text-align="left"></fo:block>
								 </fo:table-cell>
								 <fo:table-cell column-number="2" border="solid">                            
									<fo:block text-align="left"> Cobranza en Garantía - Mínima</fo:block>
								 </fo:table-cell>  
								 <fo:table-cell column-number="3" border="solid">                            
									<fo:block text-align="left"> 0,1200</fo:block>
								 </fo:table-cell> 
								 <fo:table-cell column-number="4" border="solid">                            
									<fo:block text-align="left"> </fo:block>
								 </fo:table-cell> 
							  </fo:table-row>
							  <fo:table-row border-style="double" >                         
								 <fo:table-cell column-number="1" border="solid">                            
									<fo:block text-align="left"></fo:block>
								 </fo:table-cell>
								 <fo:table-cell column-number="2" border="solid">                            
									<fo:block text-align="left"> Cobranza en Garantía - Variable</fo:block>
								 </fo:table-cell>  
								 <fo:table-cell column-number="3" border="solid">                            
									<fo:block text-align="left"> 1,5%</fo:block>
								 </fo:table-cell> 
								 <fo:table-cell column-number="4" border="solid">                            
									<fo:block text-align="left"> </fo:block>
								 </fo:table-cell> 
							  </fo:table-row>
							  <fo:table-row border-style="double" >                         
								 <fo:table-cell column-number="1" border="solid">                            
									<fo:block text-align="left"></fo:block>
								 </fo:table-cell>
								 <fo:table-cell column-number="2" border="solid">                            
									<fo:block text-align="left"> Protestos</fo:block>
								 </fo:table-cell>  
								 <fo:table-cell column-number="3" border="solid">                            
									<fo:block text-align="left"> 0,1300</fo:block>
								 </fo:table-cell> 
								 <fo:table-cell column-number="4" border="solid">                            
									<fo:block text-align="left"> </fo:block>
								 </fo:table-cell> 
							  </fo:table-row>
							  <fo:table-row border-style="double" >                         
								 <fo:table-cell column-number="1" border="solid">                            
									<fo:block text-align="left">Cuentas Primas</fo:block>
								 </fo:table-cell>
								 <fo:table-cell column-number="2" border="solid">                            
									<fo:block text-align="left"> Comisión Fija Año UF (Txs libres mes)</fo:block>
								 </fo:table-cell>  
								 <fo:table-cell column-number="3" border="solid">                            
									<fo:block text-align="left"></fo:block>
								 </fo:table-cell> 
								 <fo:table-cell column-number="4" border="solid">                            
									<fo:block text-align="left"> </fo:block>
								 </fo:table-cell> 
							  </fo:table-row>
						   </fo:table-body>
						</fo:table>
                    </fo:block>
					<fo:block><fo:leader leader-pattern="space" /></fo:block>
					<fo:block><fo:leader leader-pattern="space" /></fo:block>
					<fo:block margin-top="0.4cm" text-align="left">
						<fo:inline font-weight="bold">
							IMPORTANTE: Eliminar Item Productos NO considerados y eliminar Columna Precios Pizarra
						</fo:inline>
					</fo:block>
					<fo:block><fo:leader leader-pattern="space" /></fo:block>
					<fo:block margin-top="0.4cm" text-align="left">
						<fo:inline font-weight="bold">
							B. CONDICIONES DE RECIPROCIDAD
						</fo:inline>
					</fo:block>
					<fo:block><fo:leader leader-pattern="space" /></fo:block>
					<fo:block margin-top="0.4cm" >
						<fo:table width="180mm" border="solid">                     
						   <fo:table-column column-number="1"  border="solid" border-width="1pt"/>                                              
						   <fo:table-column column-number="2"  border="solid" border-width="1pt"/>
						   <fo:table-column column-number="3"  border="solid" border-width="1pt"/>                     
						   <fo:table-body>
							  <fo:table-row border-style="double" border-width="1pt">                         
								 <fo:table-cell column-number="1" border="solid">                            
									<fo:block text-align="center"> </fo:block>
								 </fo:table-cell>
								 <fo:table-cell column-number="2" border="solid">                            
									<fo:block text-align="center"> </fo:block>
								 </fo:table-cell>                         
								 <fo:table-cell column-number="3" border="solid"> 
									<fo:block text-align="center">Monto/Cantidad</fo:block>                         
								 </fo:table-cell>
							  </fo:table-row>
							  
							  <fo:table-row border="double" border-width="1pt">                         
								 <fo:table-cell column-number="1" border="solid">                            
									<fo:block > 1.- Incrementos de saldos en Cta. Cte. (en miles $)</fo:block>
								 </fo:table-cell>
								 <fo:table-cell column-number="2" border="solid">                            
									<fo:block > Saldo</fo:block>
								 </fo:table-cell>                         
								 <fo:table-cell column-number="3" border="solid"> 
									<fo:block ></fo:block>                         
								 </fo:table-cell>
							  </fo:table-row>
							  <fo:table-row border="double" border-width="1pt">                         
								 <fo:table-cell column-number="1" border="solid">                            
									<fo:block > 2.- Pago de IVA (en miles $)</fo:block>
								 </fo:table-cell>
								 <fo:table-cell column-number="2" border="solid">                            
									<fo:block > Mensual</fo:block>
								 </fo:table-cell>                         
								 <fo:table-cell column-number="3" border="solid"> 
									<fo:block ></fo:block>                         
								 </fo:table-cell>
							  </fo:table-row>
							  <fo:table-row border="double" border-width="1pt">                         
								 <fo:table-cell column-number="1" border="solid">                            
									<fo:block > 3.- Reducción cheques girados / mes (En unidades)</fo:block>
								 </fo:table-cell>
								 <fo:table-cell column-number="2" border="solid">                            
									<fo:block > Maximo</fo:block>
								 </fo:table-cell>                         
								 <fo:table-cell column-number="3" border="solid"> 
									<fo:block ></fo:block>                         
								 </fo:table-cell>
							  </fo:table-row>
							  <fo:table-row border="double" border-width="1pt">                         
								 <fo:table-cell column-number="1" border="solid">                            
									<fo:block > 4.- Reducción Vales Vista / mes (En unidades)</fo:block>
								 </fo:table-cell>
								 <fo:table-cell column-number="2" border="solid">                            
									<fo:block > Maximo</fo:block>
								 </fo:table-cell>                         
								 <fo:table-cell column-number="3" border="solid"> 
									<fo:block ></fo:block>                         
								 </fo:table-cell>
							  </fo:table-row>
						   </fo:table-body>
						</fo:table>
                    </fo:block>
					<fo:block><fo:leader leader-pattern="space" /></fo:block>
					<fo:block><fo:leader leader-pattern="space" /></fo:block>
					<fo:block margin-top="0.4cm" >
						<fo:table width="180mm" >                     
						   <fo:table-column column-number="1"   />                                              
						   <fo:table-column column-number="2"   />                    
						   <fo:table-body>
							  <fo:table-row border-style="double" >                         
								 <fo:table-cell column-number="1" >                            
									<fo:block text-align="left"> Rut Empresa:<xsl:value-of select='rut'/></fo:block>
								 </fo:table-cell>
								 <fo:table-cell column-number="2" >                            
									<fo:block text-align="left"> Razon Social:<xsl:value-of select='razonSocial'/></fo:block>
								 </fo:table-cell>                         
							  </fo:table-row>
							  
							  <fo:table-row border-style="double" >                         
								 <fo:table-cell column-number="1" >                            
									<fo:block text-align="left"> Direccion:<xsl:value-of select='direccion'/></fo:block>
								 </fo:table-cell>
								 <fo:table-cell column-number="2" >                            
									<fo:block text-align="left"> Comuna:</fo:block>
								 </fo:table-cell>                         
							  </fo:table-row>
							  <fo:table-row border-style="double" >                         
								 <fo:table-cell column-number="1" >                            
									<fo:block text-align="left"> Ciudad:</fo:block>
								 </fo:table-cell>
								 <fo:table-cell column-number="2" >                            
									<fo:block text-align="left"> Telefono:</fo:block>
								 </fo:table-cell>                         
							  </fo:table-row>
							  <fo:table-row border-style="double" >                         
								 <fo:table-cell column-number="1" >                            
									<fo:block text-align="left"> Fax:</fo:block>
								 </fo:table-cell>
								 <fo:table-cell column-number="2" >                            
									<fo:block text-align="left"></fo:block>
								 </fo:table-cell>                         
							  </fo:table-row>
						   </fo:table-body>
						</fo:table>
                    </fo:block>
					<fo:block><fo:leader leader-pattern="space" /></fo:block>
					<fo:block><fo:leader leader-pattern="space" /></fo:block>
					<fo:block><fo:leader leader-pattern="space" /></fo:block>
					<fo:block><fo:leader leader-pattern="space" /></fo:block>
					<fo:block margin-top="0.4cm" >
						<fo:table width="180mm" >                     
						   <fo:table-column column-number="1"   />                                              
						   <fo:table-column column-number="2"   />                    
						   <fo:table-body>
							  <fo:table-row border-style="double" >                         
								 <fo:table-cell column-number="1" >                            
									<fo:block text-align="left"> ___________________________</fo:block>
								 </fo:table-cell>
								 <fo:table-cell column-number="2" >                            
									<fo:block text-align="left"> ___________________________</fo:block>
								 </fo:table-cell>                         
							  </fo:table-row>
							  
							  <fo:table-row border-style="double" >                         
								 <fo:table-cell column-number="1" >                            
									<fo:block text-align="left"> p.p. Banco de Crédito e Inversiones</fo:block>
								 </fo:table-cell>
								 <fo:table-cell column-number="2" >                            
									<fo:block text-align="left"> p.p. Cliente</fo:block>
								 </fo:table-cell>                         
							  </fo:table-row>
						   </fo:table-body>
						</fo:table>
                    </fo:block>
					<fo:block><fo:leader leader-pattern="space" /></fo:block>
					<fo:block><fo:leader leader-pattern="space" /></fo:block>
					<fo:block margin-top="0.4cm" >
						<fo:table width="180mm" >                     
						   <fo:table-column column-number="1"   />                                              
						   <fo:table-column column-number="2"   />                    
						   <fo:table-body>
							  <fo:table-row border-style="double" >                         
								 <fo:table-cell column-number="1" >                            
									<fo:block text-align="left"></fo:block>
								 </fo:table-cell>
								 <fo:table-cell column-number="2" >                            
									<fo:block text-align="left"> Rut: __________________</fo:block>
								 </fo:table-cell>                         
							  </fo:table-row>
							  
							  <fo:table-row border-style="double" >                         
								 <fo:table-cell column-number="1" >                            
									<fo:block text-align="left"></fo:block>
								 </fo:table-cell>
								 <fo:table-cell column-number="2" >                            
									<fo:block text-align="left"> Nombre: ___________________</fo:block>
								 </fo:table-cell>                         
							  </fo:table-row>
						   </fo:table-body>
						</fo:table>
                    </fo:block>
					<fo:block><fo:leader leader-pattern="space" /></fo:block>
					<fo:block><fo:leader leader-pattern="space" /></fo:block>
					<fo:block margin-top="0.4cm">
						“Este documento consta de 2 hojas”
					</fo:block>
					<fo:block><fo:leader leader-pattern="space" /></fo:block>
					<fo:block margin-top="0.4cm" text-align="left">
						<fo:inline font-weight="bold">
							USO INTERNO DEL BCI
						</fo:inline>
					</fo:block>

					<fo:block margin-top="0.4cm" text-align="left">
						Oficina BCI :_______________________________
					</fo:block>

					<fo:block margin-top="0.4cm" text-align="left">
						Ejecutivo BCI :_________________________________
					</fo:block>

					<fo:block margin-top="0.4cm" text-align="left">
						Anexo: _____________
					</fo:block>

					<fo:block margin-top="0.4cm" text-align="left">
						Correo electrónico :________________________________
					</fo:block>

					<fo:block margin-top="0.4cm" text-align="right">
						Timbre
					</fo:block>
					<fo:block margin-top="0.4cm" >
						<fo:table width="180mm" >                     
						   <fo:table-column column-number="1"   />                                              
						   <fo:table-column column-number="2"   />                    
						   <fo:table-body>
							  <fo:table-row border-style="double" >                         
								 <fo:table-cell column-number="1" >                            
									<fo:block text-align="left">VºBº Ejecutivo:__________________</fo:block>
								 </fo:table-cell>
								 <fo:table-cell column-number="2" >                            
									<fo:block text-align="left"> Fecha:______________</fo:block>
								 </fo:table-cell>                         
							  </fo:table-row>
							  
							  <fo:table-row border-style="double" >                         
								 <fo:table-cell column-number="1" >                            
									<fo:block text-align="left">VºBº ACA JOP:__________________</fo:block>
								 </fo:table-cell>
								 <fo:table-cell column-number="2" >                            
									<fo:block text-align="left"> Fecha:______________</fo:block>
								 </fo:table-cell>                         
							  </fo:table-row>
						   </fo:table-body>
						</fo:table>
                    </fo:block>
					<fo:block><fo:leader leader-pattern="space" /></fo:block>
					<fo:block margin-top="0.4cm" text-align="left">
						Ejecutivo BEL BCI :________________________________
					</fo:block>
					<fo:block><fo:leader leader-pattern="space" /></fo:block>
					<fo:block margin-top="0.4cm" text-align="left">
						Correo Electrónico:_______________
					</fo:block>
					
				</fo:flow>
			</fo:page-sequence>
		</fo:root>
	</xsl:template>
</xsl:stylesheet>