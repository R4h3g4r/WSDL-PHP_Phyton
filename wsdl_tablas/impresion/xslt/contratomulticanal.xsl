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
					page-height="35.56cm"
					page-width="21.59cm"
					margin-top="0.7cm"
					margin-bottom="1cm"
					margin-left="2cm"
					margin-right="2cm">
					<fo:region-body margin-top="1.6cm" margin-bottom="0.5cm" background-color="#ffffff"/> 
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
							<fo:table-body>
								<fo:table-row>
									<fo:table-cell>
										<fo:external-graphic width="72px" height="43px">
											<xsl:attribute name="src">
												<xsl:value-of select="contrato-multicanal/rutaImagen"/>logo-bci-somos-diferentes.gif
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
					<xsl:call-template name="datos_cliente"/>
					<fo:block padding-bottom="4mm" />
					<xsl:call-template name="clausulas"/>
					<fo:block padding-bottom="2mm" />
					<xsl:call-template name="uso_exclusivo_bci"/>
				</fo:flow>
			</fo:page-sequence> 
		</fo:root>
	</xsl:template>


	<xsl:template name="datos_cliente">
	<fo:block text-align="justify" background-color="#DBDBDB" padding-left="{$espacio-texto-celda-left}" padding-top="{$espacio-texto-celda-top}" border="1px solid #C2C2C2" border-bottom="0px">
		<fo:block text-align="center" font-size="11pt" text-decoration="underline" font-weight="bold">
		CONTRATO MULTICANAL
		</fo:block>	
	</fo:block>
	<fo:block text-align="justify" background-color="#DBDBDB" font-size="10pt" padding-left="{$espacio-texto-celda-left}" padding-top="5mm" border="1px solid #C2C2C2">
		<fo:block padding-bottom="1mm">
		En ................................, a 
		&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;
		<fo:inline color="red"><xsl:value-of select="contrato-multicanal/dia"/></fo:inline>
		&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;
		de 
		&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;
		<fo:inline color="red"><xsl:value-of select="contrato-multicanal/mes"/></fo:inline>
		&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;
		de
		&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;
		<fo:inline color="red"><xsl:value-of select="contrato-multicanal/anyo"/></fo:inline>
		&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;
		</fo:block>
		
		<fo:block padding-bottom="1mm">
			<fo:table table-layout="fixed">
				<fo:table-column column-width="10.5cm"/>
				<fo:table-column column-width="7.5cm"/>
				<fo:table-body>
					<fo:table-row>
						<fo:table-cell>
							<fo:block>
								don(a) &#0160;&#0160;
								<fo:inline color="red"><xsl:value-of select="contrato-multicanal/nombreCompleto"/></fo:inline>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell>
							<fo:block>
								de profesi�n o
								<fo:block padding-bottom="1mm" />
								actividad
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
				</fo:table-body>
			</fo:table>
		</fo:block>

		<fo:block padding-bottom="1mm">
		Domiciliado(a) en &#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160; Comuna
		</fo:block>

		<fo:block padding-bottom="1mm">
		&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160; Ciudad
		</fo:block>

		<fo:block padding-bottom="1mm">
		C�dula de Identidad N� &#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160; Nacionalidad &#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160; Estado Civil
		</fo:block>

		<fo:block padding-bottom="1mm">
		Tel�fono &#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160; E-mail
		</fo:block>

		<fo:block padding-bottom="1mm">
		por s� o en representaci�n de la sociedad &#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160; de su mismo domicilio, en
		adelante indistintamente "el mandante", declaro:
		</fo:block>
	
	</fo:block>
	</xsl:template>


	<!-- CLAUSULAS -->
	<xsl:template name="clausulas">
		<fo:block>
			<fo:table table-layout="fixed">
			<fo:table-column column-width="8.5cm" />
			<fo:table-column column-width="1cm" />
			<fo:table-column column-width="8.5cm" />
			<fo:table-body>
				<!-- FILA 1 -->
				<fo:table-row height="{$alto-filas}">
					<fo:table-cell padding-left="{$espacio-texto-celda-left}" padding-top="{$espacio-texto-celda-top}">
						<fo:block font-size="11pt" text-align="left" color="{$txt}">
							<xsl:call-template name="col_izquierda"/>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell>
						<fo:block font-size="12pt">
							<fo:block padding-before="25cm" text-align="center">1-2</fo:block>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell padding-right="{$espacio-texto-celda-right}" padding-top="{$espacio-texto-celda-top}">
						<fo:block font-size="11pt" text-align="left" color="{$txt}">
							<xsl:call-template name="col_derecha"/>
						</fo:block>
					</fo:table-cell>
				</fo:table-row>
				<!-- FILA 1 -->

			</fo:table-body>
			</fo:table>
		</fo:block>
	</xsl:template>

	<xsl:template name="col_izquierda">
		<fo:block text-align="justify" padding-bottom="2mm">
				<fo:inline font-weight="bold">PRIMERO.-</fo:inline>
				Declaro ser cliente del Banco de Cr�dito
				e Inversiones, en adelante tambi�n llamado "el
				Banco", designaci�n que para estos efectos incluye
				tambi�n a sus sociedades filiales. Es mi decisi�n
				operar, en cuanto ello sea t�cnicamente posible, a
				trav�s de instrucciones que impartir� por medios
				remotos, especialmente internet y por cualquier otro
				sistema de transmisi�n de esa naturaleza; v�a
				electr�nica, satelital o telef�nica, que est�n
				disponibles en el Banco.
		</fo:block>
		<fo:block text-align="justify" padding-bottom="2mm">
				<fo:inline font-weight="bold">SEGUNDO.-</fo:inline>
				Declaro asimismo conocer los
				productos y servicios que proporciona actualmente
				el Banco y sus sociedades filiales, as� como el texto
				de sus respectivas condiciones generales y
				contratos, los que se encuentran publicados en la
				p�gina web del Banco, a la cual declaro tener
				acceso; en las sucursales del Banco y adem�s,
				protocolizadas en la Cuadrag�sima Notar�a de
				Santiago, de don Alberto Moz� Aguilar, documentos
				que forman parte integrante del presente contrato.
		</fo:block>
		<fo:block text-align="justify" padding-bottom="2mm">
				<fo:inline font-weight="bold">TERCERO.-</fo:inline>
				Mediante el presente instrumento,
				otorgo mandato al Banco de Cr�dito e
				Inversiones para que -con
				relaci�n a los productos y
				servicios en que decidiere operar- en
				mi nombre y
				representaci�n los suscriba, junto a la
				documentaci�n adicional que fuere menester para la
				prestaci�n de los mismos. Entre dichos productos se
				hallan, desde luego, y a t�tulo meramente
				enunciativo, cuentas corrientes de dep�sito, l�neas
				de sobregiro, cr�ditos de cualquiera naturaleza;
				captaciones e inversiones de todo tipo incluidos
				fondos mutuos y accionesy
				el traspaso de fondos
				entre diversas cuentas. Con respecto a este �ltimo
				servicio, declaro contar con la autorizaci�n de los
				terceros titulares de las cuentas involucradas con los
				abonos, y libero al Banco de toda responsabilidad
				relacionada con lo anterior.
				<fo:block padding-bottom="1mm">
				En general, autorizo al Banco para que me provea
				en forma remota, cualquiera que sea el canal
				empleado al efecto, todos aquellos productos y
				servicios que hoy provee en sus sucursales f�sicas o
				en forma manual, asimilando como medio v�lido de
				autorizaci�n cuando as� se requiera, la firma
				electr�nica.
				</fo:block>
				Con relaci�n a los cr�ditos de cualquiera naturaleza,
				en moneda nacional o extranjera, reajustables o no,
				otorgo adem�s en este mismo acto, mandato
				especial, para que a�n
				autocontratando, y a trav�s de cualesquiera de sus
				apoderados actuando indistintamente, firme las
				solicitudes de cr�dito y dem�s documentos
				<fo:block break-after="page" />
				Reconozco expresamente que la ejecuci�n del
				presente mandato estar� sujeta a la decisi�n del
				Banco de otorgar el cr�dito solicitado, pudiendo
				negarse si estimare que mis condiciones
				comerciales o patrimoniales no califican para su
				otorgamiento, seg�n sus criterios comerciales o
				pol�ticas de cr�dito vigentes.
				<fo:block padding-bottom="0.5mm" />
				Para los efectos del pago del Impuesto de Timbres y
				Estampillas que grave la operaci�n efectuada de
				conformidad a lo expresado en este n�mero y con el
				objeto de enterar dicho tributo en arcas fiscales, el
				Banco se entender� facultado para deducir del
				cr�dito otorgado, el monto del impuesto aludido, o
				para cargar dicho monto en mi cuenta corriente o en
				cualquiera otra acreencia que mantenga en el
				Banco.
				<fo:block padding-bottom="0.5mm" />
				El presente Mandato podr� tambi�n ser ejecutado en
				todas sus partes por el Banco o por quien �ste
				designe, despu�s de mi muerte, de conformidad a lo
				previsto en el art�culo 2169 del C�digo Civil. Se
				conviene expresamente que todas y cada una de las
				obligaciones se�aladas en el presente contrato y en
				los pagar�s que con arreglo al mismo se suscriban
				en mi representaci�n, tendr�n el car�cter de
				indivisibles, de modo que su cumplimiento podr�
				exigirse a cualquiera de mis herederos, de acuerdo a
				lo dispuesto en los art�culos 1526 N� 4 y 1528 del
				C�digo Civil.
		</fo:block>
		<fo:block text-align="justify" padding-bottom="2mm">
				<fo:inline font-weight="bold">CUARTO.-</fo:inline>
				Con respecto a nuevos productos y
				servicios que el Banco ofrezca en lo sucesivo y que
				sean susceptibles de ser operados a trav�s de
				medios remotos, declaro expresamente
				que el solo hecho de hacer uso de los mismos,
				constituir� expresa manifestaci�n de voluntad de mi
				parte en t�rminos de suscribirlos y de obligarme con
				relaci�n a ellos, cuyas condiciones generales ser�n
				publicadas en alguna de las formas estipuladas en la
				cl�usula segunda.
		</fo:block>
		<fo:block text-align="justify" padding-bottom="2mm">
				<fo:inline font-weight="bold">QUINTO.-</fo:inline>
				Otorgo mandato al Banco
				para que cargue mi(s) cuenta(s) corriente(s),
				cuenta(s) a la vista, cuenta(s) de ahorro u otras que
				t�cnicamente lo permitieren, los impuestos,
				comisiones y dem�s costos, actualmente existentes
				o que se aplicaren o instauraren en los sucesivo,
				que devenguen los servicios que se me prestan o
				prestar�n en virtud del presente contrato. Tales
				comisiones y tarifas as� como su instauraci�n y/o
				modificaci�n se publicar�n en la p�gina web del
				Banco a la cual declaro tener acceso, o
				alternativamente se hallar�n disponibles en las
				sucursales del Banco, y por lo mismo con esa
				publicaci�n me dar� por satisfactoriamente enterado.
		</fo:block>
		<fo:block text-align="justify" padding-bottom="2mm">
				<fo:inline font-weight="bold">SEXTO.-</fo:inline>
				Declaro conocer que para operar a trav�s
				de medios remotos, los servicios que se prestan en
				virtud de este mandato, incluyendo las
				comunicaciones y transacciones v�a internet,
				requieren identificaci�n mediante claves personales
				o una firma electr�nica. Para estos efectos,
				revestir�n tal car�cter los denominados &#x201C;pin&#x201D;,
				&#x201C;password&#x201D;, &#x201C;medio de autentificaci�n y/o
				autorizaci�n", "claves de acceso", "claves secretas",
				acordando las partes la equivalencia jur�dica de ellos
				a la firma electr�nica registrada en los sistemas del
				Banco, y de igual forma, solemnidad y efecto como
				<fo:block break-after="page" />
				que el Banco, en su calidad de mandatario, ejecute,
				realice, firme y suscriba todos los actos, contratos,
				documentos, instrumentos p�blicos y/o privados que
				no requieran necesariamente de mi comparecencia
				f�sica.
				Todos los actos y contratos otorgados o celebrados
				por m�, suscritos con firma electr�nica ser�n v�lidos
				de la misma manera y producir�n los mismos
				efectos que los celebrados por escrito y en soporte
				papel.
		</fo:block>
		<fo:block text-align="justify" padding-bottom="2mm">
				<fo:inline font-weight="bold">SEPTIMO.-</fo:inline>
				Faculto al Banco de
				Cr�dito e Inversiones para que grabe las voces y
				conversaciones con las cuales se impartir�n las
				instrucciones a que se refiere el presente
				instrumento o cree los registros inform�ticos que
				estime oportunos, pudiendo reproducir tales
				grabaciones o registros s�lo cuando sea menester
				aclarar o precisar una o m�s �rdenes, o probar,
				judicial o extrajudicialmente, el hecho de haberse
				impartido las referidas instrucciones. As� tambi�n lo
				faculto para que pueda proporcionar toda la
				informaci�n relacionada con mi(s) cuenta(s)
				corriente(s), cuenta(s) a la vista, cuenta(s) de ahorro,
				de dep�sitos, inversiones y dem�s productos y/o
				servicios que me proporciona el Banco, a otras
				empresas, relacionadas o no con el Banco, y que
				�ste contratare para el desarrollo de sus servicios,
				as� se trate de aquella informaci�n sujeta a secreto o
				reserva bancarios.
				Me obligo a proporcionar al Banco todos los
				antecedentes que �ste requiriere, relacionados con
				el origen de los fondos objeto de dep�sitos o
				transacciones de cualquiera naturaleza, que se
				hagan a trav�s de �ste, pudiendo el Banco objetar la
				transacci�n y en definitiva no cursarla, si yo no
				quisiere o no pudiere demostrar el se�alado origen,
				o �ste fuere insatisfactorio o no se cumpliere con lo
				requerido por el Banco, el que no estar� obligado a
				entregar raz�n de tal rechazo.
		</fo:block>
		<fo:block text-align="justify" padding-bottom="2mm">
				<fo:inline font-weight="bold">OCTAVO.-</fo:inline>
				El presente contrato tendr� una
				duraci�n indefinida y los mandatos que �l contiene
				expirar�n, asimismo, si fueren revocados por m�,
				para cuyo efecto deber� dar aviso por escrito al
				Banco, con una anticipaci�n de, a lo menos 30 d�as
				antes de la fecha en el cual deban terminar. Con
				todo, en lo relativo a todos aquellos servicios,
				operaciones o transacciones formalizados a trav�s
				de este mandato y cuya ejecuci�n interesare al
				Banco, en particular los relativos a contrataci�n de
				cr�ditos y suscripci�n de pagar�s, 
				con arreglo a lo prescrito en el art�culo
				241 del C�digo de Comercio; a mayor abundamiento
				y con arreglo al art�culo 12 del C�digo Civil, renuncio
				a la facultad de revocaci�n, si pese a lo dicho,
				estimare que la tengo; los mandatos anteriormente 
				mencionados, no se extinguir�n por la
				muerte del mandante, toda vez que pueden estar
				destinados a ejecutarse despu�s de ella, con arreglo
		</fo:block>
	</xsl:template>

	<xsl:template name="col_derecha">
		<fo:block text-align="justify" padding-bottom="2mm">
				relacionados o necesarios para lo anterior y suscriba
				y/o complete los pagar�s a la orden del Banco de
				Cr�dito e Inversiones, por las sumas que en
				definitiva resultare adeud�ndole por cualquier
				concepto, con expresa facultad de delegar estas
				atribuciones. El Banco de Cr�dito e Inversiones o
				quien �ste designe al efecto, se encontrar� adem�s
				facultado para completar en dichos documentos y
				pagar�s los datos relativos a mi individualizaci�n,
				cantidad adeudada, plazos, tasas de inter�s, fechas
				de pago de capital e intereses, y dem�s condiciones
				acordadas que sean necesarias para que los
				respectivos t�tulos re�nan los requisitos legales para
				su validez en conformidad a la Ley 18.092 sobre
				letras de cambio y pagar�s y para que tengan m�rito
				ejecutivo, incluidas las autorizaciones de firmas por
				un notario p�blico, pudiendo tambi�n delegar en
				terceros, la facultad de suscribir pagar�s a su orden
				con relaci�n a las antedichas deudas.
				Declaro conocer que est� sancionado penalmente,
				el suministro de datos falsos con el prop�sito de
				obtener cr�ditos.
				El Banco contratar� seguros para todos los cr�ditos
				que me curse y tan pronto como esto ocurra,
				cualquiera que sea la naturaleza de dichos cr�ditos,
				como tambi�n otros seguros o coberturas que yo le
				instruyere, pudiendo determinar el intermediario y la
				compa��a aseguradora, a menos que le instruyere
				expresamente en sentido contrario, pudiendo desde
				luego suscribir y completar las propuestas de
				seguros que corresponden a los formularios y dem�s
				documentos asociados a la contrataci�n de los
				mismos.
				Declaro desde ya que es mi voluntad contar con
				seguros de desgrav�men para todos los cr�ditos que
				me curse el Banco y reconozco que no es condici�n
				para el otorgamiento de los cr�ditos que solicite, la
				contrataci�n de aquellos.
				Declaro estar en conocimiento que puedo contratar
				dichos seguros directamente y por mi cuenta en
				cualquier entidad aseguradora y a trav�s de
				cualquier corredor de seguros y que he tomado
				conocimiento del derecho a decidir sobre la
				contrataci�n de los seguros y a la libre elecci�n del
				intermediario y de la compa��a aseguradora. Las
				partes dejan expresa constancia que el no ejercicio
				del presente mandato por parte del Banco, no le
				acarrear� responsabilidad de ning�n tipo, ni ser�
				motivo para reclamar perjuicios ni da�os de ninguna
				especie.
				<fo:block break-after="page" />
				si se tratara de mi firma manuscrita. Dicha
				connotaci�n la provee cualquier tipo de elemento,
				sonido, s�mbolo, o proceso electr�nico que permita
				al Banco validar al menos formalmente mi identidad
				y desde luego, aqu�lla que legalmente se defina
				como firma electr�nica o aquel mecanismo de
				seguridad de acceso y/u operativo que el Banco o
				los operadores de los canales hubiesen establecido
				o que establezcan en el futuro, importando para
				todos los efectos legales que corresponde a la
				expresa manifestaci�n de mi voluntad. Sin perjuicio
				de lo anterior, si legal o reglamentariamente o por
				disposici�n de autoridad se exigieren otras
				certificaciones para la validez de estas firmas,
				deber� en todo caso operar con �stas y reconozco
				as� tambi�n que los medios remotos o electr�nicos
				de comunicaci�n constituyen una forma
				automatizada de acceso a los servicios del Banco,
				de manera que si por cualquier eventualidad no
				estuvieran disponibles, acceder� a los medios
				alternativos definidos por aquel. El Banco no ser�
				responsable de los da�os y perjuicios que llegaren a
				caus�rseme por la falta de disponibilidad de los
				medios electr�nicos de comunicaci�n. El Banco se
				reserva el derecho a modificar aquellos m�todos de
				acceso, inhibirlos y/o restringir la habilitaci�n o uso a
				determinadas funcionalidades y/o servicios actuales
				o que en un futuro se habiliten.
				<fo:block padding-bottom="0.5mm" />
				Asumo la obligaci�n de no divulgar los
				elementos que constituyen o conforman las claves
				personales o de firma electr�nica antedichas,
				oblig�ndome as� tambi�n a actuar en el uso de las
				mismas con el mayor sigilo a fin de que nadie se
				imponga de aqu�llas. Libero desde ya al Banco de
				Cr�dito e Inversiones de toda responsabilidad
				relacionada con una o m�s de las operaciones a que
				se refiere este mandato, realizadas mediante el uso
				de mis claves personales, o respecto de aqu�llas
				que en cada caso impartiere, as� se derivaren en mi
				contra consecuencias de �ndole civil, patrimonial o
				penal.
				<fo:block padding-bottom="0.5mm" />
				El Banco se entender� especial y ampliamente
				facultado para que en mi nombre y representaci�n
				concurra, solicite y obtenga de alguna entidad
				prestadora de servicios de certificaci�n de firma
				electr�nica acreditada por la Subsecretar�a de
				Econom�a, Fomento y Reconstrucci�n o quien
				cumpla la funci�n de acreditaci�n, una firma
				electr�nica avanzada en los t�rminos establecidos
				en la Ley sobre Documentos Electr�nicos, Firma
				Electr�nica y Servicios de Certificaci�n de dicha
				Firma, sus Reglamentos y posteriores
				modificaciones.
				<fo:block padding-bottom="0.5mm" />
				En el cumplimiento del presente mandato, el Banco
				podr� firmar y suscribir todos los documentos e
				instrumentos, realizar todos los actos y presentar
				todos los instrumentos p�blicos y/o privados
				requeridos por el Certificador y/o la Subsecretar�a de
				Econom�a, Fomento y Reconstrucci�n o quien lo
				reemplace con el objeto de obtener efectivamente
				para m�, la firma electr�nica avanzada. En caso que
				el procedimiento establecido para obtener firma
				electr�nica avanzada demandare mi comparecencia
				personal, esta dicha circunstancia no obstar� para
				<fo:block break-after="page" />
				a lo previsto en el art�culo 2169 del C�digo Civil. La
				suscripci�n del presente instrumento no revoca otros
				otorgados al Banco de Cr�dito e Inversiones con
				anterioridad a �ste, si los hubiese. Libero desde ya
				al Banco de la obligaci�n de rendir cuenta de las
				gestiones realizadas con arreglo o al amparo de los
				mencionados mandatos.
				<fo:block padding-bottom="0.5mm" />
				Para el evento de que decidiere operar alg�n
				producto del Banco en forma conjunta con otro
				cliente, dicho cliente deber� tambi�n suscribir un
				mandato como el presente, situaci�n que
				comunicaremos al Banco. En tal caso desde ya
				confiero mandato irrestricto a dicho
				tercero, quien a su vez habr� de otorgarme mandato
				en las mismas condiciones, para que uno cualquiera
				de nosotros, en representaci�n de todos, operemos
				en forma individual en todos los productos y
				servicios del Banco, pudiendo en consecuencia
				impartir instrucciones en dicha forma al Banco, girar
				cheques y en general oblig�ndonos solidariamente
				en los cr�ditos contra�dos por cualquiera de
				nosotros, cualquiera sea la naturaleza de �stos.
				<fo:block padding-bottom="0.5mm" />
				El Banco podr� en cualquier tiempo modificar las
				condiciones, modalidades u operatoria de los
				canales remotos, con el objeto de obtener un mejor
				aprovechamiento de �stos, lo cual me ser�
				comunicado por cualquier medio remoto con
				anticipaci�n a su entrada en vigencia. Importar�
				aceptaci�n expresa la realizaci�n por mi parte de
				alguna transacci�n, operaci�n o servicio objeto de
				modificaci�n, procedimiento que acepto desde ya.
		</fo:block>
		<fo:block text-align="justify" padding-bottom="3mm">
				<fo:inline font-weight="bold">NOVENO.-</fo:inline>
				Para todos los efectos derivados del
				presente contrato, fijo mi domicilio en la ciudad y
				comuna indicada en la comparecencia, y me someto
				a la jurisdicci�n de sus tribunales de justicia.
		</fo:block>
		<fo:block text-align="justify" padding-bottom="3mm">
				<fo:inline font-weight="bold">PERSONERIA.-</fo:inline>
				La personer�a del compareciente
				por su representada consta de la escritura p�blica
				otorgada ante la Notar�a de don_________________
				___________________________, con fecha
				____________ (no debe completarse si el suscriptor
				del mandato act�a por s�).
		</fo:block>
		<fo:block text-align="justify" padding-bottom="10mm">
				El presente contrato se firma en dos ejemplares de
				id�ntico tenor, quedando uno en poder de cada una
				de las partes
		</fo:block>
		<fo:block text-align="center" padding-bottom="3mm">
				__________________________
				<fo:block padding-bottom="0.5mm" />
				Mandante
				<fo:block padding-bottom="4mm" />
				&#x201C;Este Documento consta de 2 hojas&#x201D;
		</fo:block>		


	</xsl:template>

	<xsl:template name="uso_exclusivo_bci">
		<fo:block border="1pt solid black">
			<fo:table table-layout="fixed">
			<fo:table-column column-width="18cm" />
			<fo:table-body>
				<!-- FILA 1 -->
				<fo:table-row height="{$alto-filas}">
					<fo:table-cell padding-left="{$espacio-texto-celda-left}" padding-top="{$espacio-texto-celda-top}">
						<fo:block font-size="8pt" font-weight="bold" padding-bottom="0.5mm" text-align="left">
							USO EXCLUSIVO BCI:
						</fo:block>
						<fo:block font-weight="normal" text-align="left">
						    --------------------------------------------------------------------------------------------------------------------------
						</fo:block>
					</fo:table-cell>
				</fo:table-row>

				<!-- FILA 2 -->
				<fo:table-row height="{$alto-filas}">
					<fo:table-cell padding-left="{$espacio-texto-celda-left}" padding-top="0mm" padding-bottom="2.5mm">
						<fo:block font-size="7pt" padding-bottom="1.5mm">
							Canal Capturador:&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160; Recibe, Nombre / Timbre / Cargo / Firma:&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160; Autoriza, Nombre / Timbre / Cargo / Firma
						</fo:block>
					</fo:table-cell>
				</fo:table-row>

			</fo:table-body>
			</fo:table>			
		</fo:block>

		<fo:block padding-before="1mm" text-align="center">2-2</fo:block>

	</xsl:template>

</xsl:stylesheet>