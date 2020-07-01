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
								de profesión o
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
		Cédula de Identidad Nº &#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160; Nacionalidad &#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160; Estado Civil
		</fo:block>

		<fo:block padding-bottom="1mm">
		Teléfono &#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160; E-mail
		</fo:block>

		<fo:block padding-bottom="1mm">
		por sí o en representación de la sociedad &#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160; de su mismo domicilio, en
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
				Declaro ser cliente del Banco de Crédito
				e Inversiones, en adelante también llamado "el
				Banco", designación que para estos efectos incluye
				también a sus sociedades filiales. Es mi decisión
				operar, en cuanto ello sea técnicamente posible, a
				través de instrucciones que impartiré por medios
				remotos, especialmente internet y por cualquier otro
				sistema de transmisión de esa naturaleza; vía
				electrónica, satelital o telefónica, que estén
				disponibles en el Banco.
		</fo:block>
		<fo:block text-align="justify" padding-bottom="2mm">
				<fo:inline font-weight="bold">SEGUNDO.-</fo:inline>
				Declaro asimismo conocer los
				productos y servicios que proporciona actualmente
				el Banco y sus sociedades filiales, así como el texto
				de sus respectivas condiciones generales y
				contratos, los que se encuentran publicados en la
				página web del Banco, a la cual declaro tener
				acceso; en las sucursales del Banco y además,
				protocolizadas en la Cuadragésima Notaría de
				Santiago, de don Alberto Mozó Aguilar, documentos
				que forman parte integrante del presente contrato.
		</fo:block>
		<fo:block text-align="justify" padding-bottom="2mm">
				<fo:inline font-weight="bold">TERCERO.-</fo:inline>
				Mediante el presente instrumento,
				otorgo mandato al Banco de Crédito e
				Inversiones para que -con
				relación a los productos y
				servicios en que decidiere operar- en
				mi nombre y
				representación los suscriba, junto a la
				documentación adicional que fuere menester para la
				prestación de los mismos. Entre dichos productos se
				hallan, desde luego, y a título meramente
				enunciativo, cuentas corrientes de depósito, líneas
				de sobregiro, créditos de cualquiera naturaleza;
				captaciones e inversiones de todo tipo incluidos
				fondos mutuos y accionesy
				el traspaso de fondos
				entre diversas cuentas. Con respecto a este último
				servicio, declaro contar con la autorización de los
				terceros titulares de las cuentas involucradas con los
				abonos, y libero al Banco de toda responsabilidad
				relacionada con lo anterior.
				<fo:block padding-bottom="1mm">
				En general, autorizo al Banco para que me provea
				en forma remota, cualquiera que sea el canal
				empleado al efecto, todos aquellos productos y
				servicios que hoy provee en sus sucursales físicas o
				en forma manual, asimilando como medio válido de
				autorización cuando así se requiera, la firma
				electrónica.
				</fo:block>
				Con relación a los créditos de cualquiera naturaleza,
				en moneda nacional o extranjera, reajustables o no,
				otorgo además en este mismo acto, mandato
				especial, para que aún
				autocontratando, y a través de cualesquiera de sus
				apoderados actuando indistintamente, firme las
				solicitudes de crédito y demás documentos
				<fo:block break-after="page" />
				Reconozco expresamente que la ejecución del
				presente mandato estará sujeta a la decisión del
				Banco de otorgar el crédito solicitado, pudiendo
				negarse si estimare que mis condiciones
				comerciales o patrimoniales no califican para su
				otorgamiento, según sus criterios comerciales o
				políticas de crédito vigentes.
				<fo:block padding-bottom="0.5mm" />
				Para los efectos del pago del Impuesto de Timbres y
				Estampillas que grave la operación efectuada de
				conformidad a lo expresado en este número y con el
				objeto de enterar dicho tributo en arcas fiscales, el
				Banco se entenderá facultado para deducir del
				crédito otorgado, el monto del impuesto aludido, o
				para cargar dicho monto en mi cuenta corriente o en
				cualquiera otra acreencia que mantenga en el
				Banco.
				<fo:block padding-bottom="0.5mm" />
				El presente Mandato podrá también ser ejecutado en
				todas sus partes por el Banco o por quien éste
				designe, después de mi muerte, de conformidad a lo
				previsto en el artículo 2169 del Código Civil. Se
				conviene expresamente que todas y cada una de las
				obligaciones señaladas en el presente contrato y en
				los pagarés que con arreglo al mismo se suscriban
				en mi representación, tendrán el carácter de
				indivisibles, de modo que su cumplimiento podrá
				exigirse a cualquiera de mis herederos, de acuerdo a
				lo dispuesto en los artículos 1526 Nº 4 y 1528 del
				Código Civil.
		</fo:block>
		<fo:block text-align="justify" padding-bottom="2mm">
				<fo:inline font-weight="bold">CUARTO.-</fo:inline>
				Con respecto a nuevos productos y
				servicios que el Banco ofrezca en lo sucesivo y que
				sean susceptibles de ser operados a través de
				medios remotos, declaro expresamente
				que el solo hecho de hacer uso de los mismos,
				constituirá expresa manifestación de voluntad de mi
				parte en términos de suscribirlos y de obligarme con
				relación a ellos, cuyas condiciones generales serán
				publicadas en alguna de las formas estipuladas en la
				cláusula segunda.
		</fo:block>
		<fo:block text-align="justify" padding-bottom="2mm">
				<fo:inline font-weight="bold">QUINTO.-</fo:inline>
				Otorgo mandato al Banco
				para que cargue mi(s) cuenta(s) corriente(s),
				cuenta(s) a la vista, cuenta(s) de ahorro u otras que
				técnicamente lo permitieren, los impuestos,
				comisiones y demás costos, actualmente existentes
				o que se aplicaren o instauraren en los sucesivo,
				que devenguen los servicios que se me prestan o
				prestarán en virtud del presente contrato. Tales
				comisiones y tarifas así como su instauración y/o
				modificación se publicarán en la página web del
				Banco a la cual declaro tener acceso, o
				alternativamente se hallarán disponibles en las
				sucursales del Banco, y por lo mismo con esa
				publicación me daré por satisfactoriamente enterado.
		</fo:block>
		<fo:block text-align="justify" padding-bottom="2mm">
				<fo:inline font-weight="bold">SEXTO.-</fo:inline>
				Declaro conocer que para operar a través
				de medios remotos, los servicios que se prestan en
				virtud de este mandato, incluyendo las
				comunicaciones y transacciones vía internet,
				requieren identificación mediante claves personales
				o una firma electrónica. Para estos efectos,
				revestirán tal carácter los denominados &#x201C;pin&#x201D;,
				&#x201C;password&#x201D;, &#x201C;medio de autentificación y/o
				autorización", "claves de acceso", "claves secretas",
				acordando las partes la equivalencia jurídica de ellos
				a la firma electrónica registrada en los sistemas del
				Banco, y de igual forma, solemnidad y efecto como
				<fo:block break-after="page" />
				que el Banco, en su calidad de mandatario, ejecute,
				realice, firme y suscriba todos los actos, contratos,
				documentos, instrumentos públicos y/o privados que
				no requieran necesariamente de mi comparecencia
				física.
				Todos los actos y contratos otorgados o celebrados
				por mí, suscritos con firma electrónica serán válidos
				de la misma manera y producirán los mismos
				efectos que los celebrados por escrito y en soporte
				papel.
		</fo:block>
		<fo:block text-align="justify" padding-bottom="2mm">
				<fo:inline font-weight="bold">SEPTIMO.-</fo:inline>
				Faculto al Banco de
				Crédito e Inversiones para que grabe las voces y
				conversaciones con las cuales se impartirán las
				instrucciones a que se refiere el presente
				instrumento o cree los registros informáticos que
				estime oportunos, pudiendo reproducir tales
				grabaciones o registros sólo cuando sea menester
				aclarar o precisar una o más órdenes, o probar,
				judicial o extrajudicialmente, el hecho de haberse
				impartido las referidas instrucciones. Así también lo
				faculto para que pueda proporcionar toda la
				información relacionada con mi(s) cuenta(s)
				corriente(s), cuenta(s) a la vista, cuenta(s) de ahorro,
				de depósitos, inversiones y demás productos y/o
				servicios que me proporciona el Banco, a otras
				empresas, relacionadas o no con el Banco, y que
				éste contratare para el desarrollo de sus servicios,
				así se trate de aquella información sujeta a secreto o
				reserva bancarios.
				Me obligo a proporcionar al Banco todos los
				antecedentes que éste requiriere, relacionados con
				el origen de los fondos objeto de depósitos o
				transacciones de cualquiera naturaleza, que se
				hagan a través de éste, pudiendo el Banco objetar la
				transacción y en definitiva no cursarla, si yo no
				quisiere o no pudiere demostrar el señalado origen,
				o éste fuere insatisfactorio o no se cumpliere con lo
				requerido por el Banco, el que no estará obligado a
				entregar razón de tal rechazo.
		</fo:block>
		<fo:block text-align="justify" padding-bottom="2mm">
				<fo:inline font-weight="bold">OCTAVO.-</fo:inline>
				El presente contrato tendrá una
				duración indefinida y los mandatos que él contiene
				expirarán, asimismo, si fueren revocados por mí,
				para cuyo efecto deberé dar aviso por escrito al
				Banco, con una anticipación de, a lo menos 30 días
				antes de la fecha en el cual deban terminar. Con
				todo, en lo relativo a todos aquellos servicios,
				operaciones o transacciones formalizados a través
				de este mandato y cuya ejecución interesare al
				Banco, en particular los relativos a contratación de
				créditos y suscripción de pagarés, 
				con arreglo a lo prescrito en el artículo
				241 del Código de Comercio; a mayor abundamiento
				y con arreglo al artículo 12 del Código Civil, renuncio
				a la facultad de revocación, si pese a lo dicho,
				estimare que la tengo; los mandatos anteriormente 
				mencionados, no se extinguirán por la
				muerte del mandante, toda vez que pueden estar
				destinados a ejecutarse después de ella, con arreglo
		</fo:block>
	</xsl:template>

	<xsl:template name="col_derecha">
		<fo:block text-align="justify" padding-bottom="2mm">
				relacionados o necesarios para lo anterior y suscriba
				y/o complete los pagarés a la orden del Banco de
				Crédito e Inversiones, por las sumas que en
				definitiva resultare adeudándole por cualquier
				concepto, con expresa facultad de delegar estas
				atribuciones. El Banco de Crédito e Inversiones o
				quien éste designe al efecto, se encontrará además
				facultado para completar en dichos documentos y
				pagarés los datos relativos a mi individualización,
				cantidad adeudada, plazos, tasas de interés, fechas
				de pago de capital e intereses, y demás condiciones
				acordadas que sean necesarias para que los
				respectivos títulos reúnan los requisitos legales para
				su validez en conformidad a la Ley 18.092 sobre
				letras de cambio y pagarés y para que tengan mérito
				ejecutivo, incluidas las autorizaciones de firmas por
				un notario público, pudiendo también delegar en
				terceros, la facultad de suscribir pagarés a su orden
				con relación a las antedichas deudas.
				Declaro conocer que está sancionado penalmente,
				el suministro de datos falsos con el propósito de
				obtener créditos.
				El Banco contratará seguros para todos los créditos
				que me curse y tan pronto como esto ocurra,
				cualquiera que sea la naturaleza de dichos créditos,
				como también otros seguros o coberturas que yo le
				instruyere, pudiendo determinar el intermediario y la
				compañía aseguradora, a menos que le instruyere
				expresamente en sentido contrario, pudiendo desde
				luego suscribir y completar las propuestas de
				seguros que corresponden a los formularios y demás
				documentos asociados a la contratación de los
				mismos.
				Declaro desde ya que es mi voluntad contar con
				seguros de desgravámen para todos los créditos que
				me curse el Banco y reconozco que no es condición
				para el otorgamiento de los créditos que solicite, la
				contratación de aquellos.
				Declaro estar en conocimiento que puedo contratar
				dichos seguros directamente y por mi cuenta en
				cualquier entidad aseguradora y a través de
				cualquier corredor de seguros y que he tomado
				conocimiento del derecho a decidir sobre la
				contratación de los seguros y a la libre elección del
				intermediario y de la compañía aseguradora. Las
				partes dejan expresa constancia que el no ejercicio
				del presente mandato por parte del Banco, no le
				acarreará responsabilidad de ningún tipo, ni será
				motivo para reclamar perjuicios ni daños de ninguna
				especie.
				<fo:block break-after="page" />
				si se tratara de mi firma manuscrita. Dicha
				connotación la provee cualquier tipo de elemento,
				sonido, símbolo, o proceso electrónico que permita
				al Banco validar al menos formalmente mi identidad
				y desde luego, aquélla que legalmente se defina
				como firma electrónica o aquel mecanismo de
				seguridad de acceso y/u operativo que el Banco o
				los operadores de los canales hubiesen establecido
				o que establezcan en el futuro, importando para
				todos los efectos legales que corresponde a la
				expresa manifestación de mi voluntad. Sin perjuicio
				de lo anterior, si legal o reglamentariamente o por
				disposición de autoridad se exigieren otras
				certificaciones para la validez de estas firmas,
				deberé en todo caso operar con éstas y reconozco
				así también que los medios remotos o electrónicos
				de comunicación constituyen una forma
				automatizada de acceso a los servicios del Banco,
				de manera que si por cualquier eventualidad no
				estuvieran disponibles, accederé a los medios
				alternativos definidos por aquel. El Banco no será
				responsable de los daños y perjuicios que llegaren a
				causárseme por la falta de disponibilidad de los
				medios electrónicos de comunicación. El Banco se
				reserva el derecho a modificar aquellos métodos de
				acceso, inhibirlos y/o restringir la habilitación o uso a
				determinadas funcionalidades y/o servicios actuales
				o que en un futuro se habiliten.
				<fo:block padding-bottom="0.5mm" />
				Asumo la obligación de no divulgar los
				elementos que constituyen o conforman las claves
				personales o de firma electrónica antedichas,
				obligándome así también a actuar en el uso de las
				mismas con el mayor sigilo a fin de que nadie se
				imponga de aquéllas. Libero desde ya al Banco de
				Crédito e Inversiones de toda responsabilidad
				relacionada con una o más de las operaciones a que
				se refiere este mandato, realizadas mediante el uso
				de mis claves personales, o respecto de aquéllas
				que en cada caso impartiere, así se derivaren en mi
				contra consecuencias de índole civil, patrimonial o
				penal.
				<fo:block padding-bottom="0.5mm" />
				El Banco se entenderá especial y ampliamente
				facultado para que en mi nombre y representación
				concurra, solicite y obtenga de alguna entidad
				prestadora de servicios de certificación de firma
				electrónica acreditada por la Subsecretaría de
				Economía, Fomento y Reconstrucción o quien
				cumpla la función de acreditación, una firma
				electrónica avanzada en los términos establecidos
				en la Ley sobre Documentos Electrónicos, Firma
				Electrónica y Servicios de Certificación de dicha
				Firma, sus Reglamentos y posteriores
				modificaciones.
				<fo:block padding-bottom="0.5mm" />
				En el cumplimiento del presente mandato, el Banco
				podrá firmar y suscribir todos los documentos e
				instrumentos, realizar todos los actos y presentar
				todos los instrumentos públicos y/o privados
				requeridos por el Certificador y/o la Subsecretaría de
				Economía, Fomento y Reconstrucción o quien lo
				reemplace con el objeto de obtener efectivamente
				para mí, la firma electrónica avanzada. En caso que
				el procedimiento establecido para obtener firma
				electrónica avanzada demandare mi comparecencia
				personal, esta dicha circunstancia no obstará para
				<fo:block break-after="page" />
				a lo previsto en el artículo 2169 del Código Civil. La
				suscripción del presente instrumento no revoca otros
				otorgados al Banco de Crédito e Inversiones con
				anterioridad a éste, si los hubiese. Libero desde ya
				al Banco de la obligación de rendir cuenta de las
				gestiones realizadas con arreglo o al amparo de los
				mencionados mandatos.
				<fo:block padding-bottom="0.5mm" />
				Para el evento de que decidiere operar algún
				producto del Banco en forma conjunta con otro
				cliente, dicho cliente deberá también suscribir un
				mandato como el presente, situación que
				comunicaremos al Banco. En tal caso desde ya
				confiero mandato irrestricto a dicho
				tercero, quien a su vez habrá de otorgarme mandato
				en las mismas condiciones, para que uno cualquiera
				de nosotros, en representación de todos, operemos
				en forma individual en todos los productos y
				servicios del Banco, pudiendo en consecuencia
				impartir instrucciones en dicha forma al Banco, girar
				cheques y en general obligándonos solidariamente
				en los créditos contraídos por cualquiera de
				nosotros, cualquiera sea la naturaleza de éstos.
				<fo:block padding-bottom="0.5mm" />
				El Banco podrá en cualquier tiempo modificar las
				condiciones, modalidades u operatoria de los
				canales remotos, con el objeto de obtener un mejor
				aprovechamiento de éstos, lo cual me será
				comunicado por cualquier medio remoto con
				anticipación a su entrada en vigencia. Importará
				aceptación expresa la realización por mi parte de
				alguna transacción, operación o servicio objeto de
				modificación, procedimiento que acepto desde ya.
		</fo:block>
		<fo:block text-align="justify" padding-bottom="3mm">
				<fo:inline font-weight="bold">NOVENO.-</fo:inline>
				Para todos los efectos derivados del
				presente contrato, fijo mi domicilio en la ciudad y
				comuna indicada en la comparecencia, y me someto
				a la jurisdicción de sus tribunales de justicia.
		</fo:block>
		<fo:block text-align="justify" padding-bottom="3mm">
				<fo:inline font-weight="bold">PERSONERIA.-</fo:inline>
				La personería del compareciente
				por su representada consta de la escritura pública
				otorgada ante la Notaría de don_________________
				___________________________, con fecha
				____________ (no debe completarse si el suscriptor
				del mandato actúa por sí).
		</fo:block>
		<fo:block text-align="justify" padding-bottom="10mm">
				El presente contrato se firma en dos ejemplares de
				idéntico tenor, quedando uno en poder de cada una
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