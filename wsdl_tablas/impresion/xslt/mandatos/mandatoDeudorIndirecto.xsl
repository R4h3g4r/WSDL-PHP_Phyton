<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:fo="http://www.w3.org/1999/XSL/Format" version="1.0">
	<xsl:template match="mandatoDeudorIndirecto">
		<fo:root xmlns:fo="http://www.w3.org/1999/XSL/Format">
			<fo:layout-master-set>
				<!-- layout for the first page -->
				<fo:simple-page-master master-name="first"
					page-width="21cm" page-height="29.7cm" margin-bottom="49.68pt"
					margin-left="28.32pt" margin-right="28.32pt" border="thick solid red">
					<fo:region-body margin-top="2.55cm" />
					<fo:region-before extent="2cm" />
					<fo:region-after extent="1cm" />
				</fo:simple-page-master>
				<!-- layout for the other pages -->
			</fo:layout-master-set>
			<!-- end: defines page layout -->
			<!-- actual layout -->
			<fo:page-sequence master-reference="first">
			<fo:static-content flow-name="xsl-region-after">
					<fo:table>
						<fo:table-column column-width="10cm"/>
						<fo:table-column column-width="5cm" />
						<fo:table-column column-width="3cm" />
						<fo:table-header>
						</fo:table-header>
						<fo:table-body>
							<fo:table-row>
								<fo:table-cell>
                                        <fo:block> &#160; </fo:block> 
									<fo:block font-size="11.04pt">1000125072016</fo:block>
								</fo:table-cell>
								<fo:table-cell>
									<fo:block> &#160; </fo:block>
								</fo:table-cell>
								<fo:table-cell>
									<fo:block> &#160; </fo:block>
									<fo:block text-align="right"><fo:page-number /></fo:block>                                   
								</fo:table-cell>
							</fo:table-row>
						</fo:table-body>
					</fo:table>
				</fo:static-content>
				<fo:flow flow-name="xsl-region-body">
					<fo:block>
						<!-- folio -->
						<!-- titulo -->
						<fo:table>
							<fo:table-column />
							<fo:table-header>
								<fo:table-row>
									<fo:table-cell>
									</fo:table-cell>
								</fo:table-row>
							</fo:table-header>
                            <fo:table-body>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block text-align="center" font-weight="bold" font-size="12pt" line-height="14.75pt">
                                            <xsl:text>MANDATO PARA SUSCRIBIR Y DOCUMENTAR DEUDA AVAL.</xsl:text>
                                        </fo:block>                                     
                                    </fo:table-cell>
                                </fo:table-row>
                            </fo:table-body>
                            <fo:table-body>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block> &#160; </fo:block>                                   
                                    </fo:table-cell>
                                </fo:table-row>
                            </fo:table-body>
                            <fo:table-body>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block> &#160; </fo:block>                                   
                                    </fo:table-cell>
                                </fo:table-row>
                            </fo:table-body>
                            <fo:table-body>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block text-align="justify" font-size="12pt" line-height="14.75pt">
                                            <fo:inline font-weight="bold">PRIMERO. ANTECEDENTE. </fo:inline>
                                            <xsl:text>En el contexto de la contratación de financiamientos que Banco de 
                                                Crédito e Inversiones (en adelante el “Banco” o “BCI”) ofrece a su cliente </xsl:text>
                                            <fo:inline font-size="10pt">
                                                <xsl:value-of select="DatosDeudorIndirecto/nombreCliente" />
                                            </fo:inline>
                                            <xsl:text>, Rut N° </xsl:text>
                                            <fo:inline font-size="10pt">
                                                <xsl:value-of select="DatosDeudorIndirecto/rutCliente" />
                                            </fo:inline>
                                            <xsl:text>, (en adelante el “Cliente” o el “Deudor”), tanto en moneda 
                                            nacional como en moneda extranjera, reajustables o no, u otras colocaciones, efectivas y 
                                            contingentes, las partes acuerdan comunicarse e interconectarse con el Banco, a través de sus 
                                            apoderados y/o representantes debidamente facultados, presencialmente o a través de medios o 
                                            canales remotos, tales como: internet, aplicaciones móviles, telefonía u otros medios electrónicos 
                                            que se dispongan en lo sucesivo, y en este último caso, mediante el ingreso de la correspondiente 
                                            clave secreta personal e intransferible que es de su exclusivo conocimiento.</xsl:text>
                                            <fo:block text-align="justify" font-size="12pt" line-height="14.75pt">
                                                <xsl:text>En este contexto, se entenderán convenidas las operaciones y transacciones recibidas por el Banco 
                                                y que hayan sido cursadas utilizando la clave secreta asignada al Cliente y/o a sus apoderados 
                                                debidamente facultados, según corresponda.</xsl:text>
                                            </fo:block>
                                        </fo:block>
                                    </fo:table-cell>
                                </fo:table-row>
                            </fo:table-body>
                            <fo:table-body>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block> &#160; </fo:block>                                   
                                    </fo:table-cell>
                                </fo:table-row>
                            </fo:table-body>
                            <fo:table-body>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block text-align="justify" font-size="12pt" line-height="14.75pt">
                                        	<fo:inline font-weight="bold">SEGUNDO. MANDATO. </fo:inline>
                                            <xsl:text>En este acto, declaro (declaramos) que con ocasión de las obligaciones
                                                que contraiga en lo sucesivo el Deudor con el Banco -en virtud de los servicios y productos
                                                bancarios indicados en la cláusula primera precedente- me obligo desde ya en calidad de aval en
                                                favor del Banco. En este contexto, vengo en conferir mandato especial y gratuito a BCI y/o a
                                                Servicios de Normalización y Cobranza - Normaliza S.A/ Normaliza, filial del BCI, para que actuando
                                                en mi (nuestro) nombre y representación, incluso autocontratando, y a través de cualquiera de sus
                                                apoderados o en quien el Banco delegue, suscriba, sin ánimo de novar y en calidad de aval, el o los
                                                pagarés que sean necesarios para documentar las sumas que adeudare el Deudor a BCI, y
                                                reconozca deudas en beneficio y a la orden del Banco, por los montos de capital, intereses, costas y
                                                comisiones de las sumas adeudadas, pudiendo establecer en los pagarés, todas las menciones
                                                exigidas por la Ley N° 18.092. 
											</xsl:text>
                                        </fo:block>  
                                        <fo:block text-align="justify" font-size="12pt" line-height="14.75pt">
                                            <xsl:text>El mandatario podrá renunciar a la obligación de protesto y autorizar la firma de los apoderados que
                                                suscriban los pagarés ante Notario Público, de tal modo que éstos documentos constituyan títulos
                                                ejecutivos en conformidad con las normas del Código de Procedimiento Civil.</xsl:text>
                                        </fo:block>
                                        <fo:block text-align="justify" font-size="12pt" line-height="14.75pt">
                                            <xsl:text>Al efecto, en el evento de no pago integro ni oportuno de una cualquiera de las cuotas de capital y/o
                                                de interés u otras sumas adeudadas en conformidad al o los pagarés que sean suscritos en
                                                conformidad al presente mandato, faculto (facultamos) al Banco a exigir de inmediato y
                                                anticipadamente el monto total del saldo insoluto adeudado a esa fecha, el que desde esa misma
                                                fecha se considerará de plazo vencido y devengará en favor del Banco o de quien sus derechos
                                                represente, el interés máximo convencional.
                                            </xsl:text>
                                        </fo:block>                                      
                                    </fo:table-cell>
                                </fo:table-row>
                            </fo:table-body>
                            <fo:table-body>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block> &#160; </fo:block>                                   
                                    </fo:table-cell>
                                </fo:table-row>
                            </fo:table-body>
                            <fo:table-body>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block text-align="justify" font-size="12pt" line-height="14.75pt">
                                        	<fo:inline font-weight="bold">TERCERO. RENDICIÓN DE CUENTAS.&#160; </fo:inline>
                                            <xsl:text>En este acto, declaro (declaramos) conocer y aceptar que
                                                la rendición de cuentas del ejercicio del presente mandato, se verificará mediante el envío de los
                                                comprobantes, copias de los pagarés u otros documentos (en copia u original según corresponda)
                                                que el Banco hubiere suscrito en nuestra representación, y se remitirán al correo electrónico
                                                registrado en el Banco o, en su defecto, al domicilio registrado ante el Banco.
											</xsl:text>
                                        </fo:block>                                      
                                    </fo:table-cell>
                                </fo:table-row>
                            </fo:table-body>
                            <fo:table-body>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block> &#160; </fo:block>                                   
                                    </fo:table-cell>
                                </fo:table-row>
                            </fo:table-body>
                            <fo:table-body>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block text-align="justify" font-size="12pt" line-height="14.75pt">
                                        	<fo:inline font-weight="bold">CUARTO. RECONOCIMIENTO.&#160; </fo:inline>
                                            <xsl:text>Asimismo, y por este instrumento, reconozco (reconocemos)
                                                expresamente que el otorgamiento del presente mandato no obliga al Banco al curse del (los)
                                                financiamientos, los cuales se sujetarán a las políticas de crédito vigente de Banco de Crédito e
                                                Inversiones.
											</xsl:text>
                                        </fo:block>                                   
                                    </fo:table-cell>
                                </fo:table-row>
                            </fo:table-body>
                            <fo:table-body>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block> &#160; </fo:block>                                   
                                    </fo:table-cell>
                                </fo:table-row>
                            </fo:table-body>
                            <fo:table-body>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block> &#160; </fo:block>                                   
                                    </fo:table-cell>
                                </fo:table-row>
                            </fo:table-body>
                            <fo:table-body>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block> &#160; </fo:block>                                   
                                    </fo:table-cell>
                                </fo:table-row>
                            </fo:table-body>
                            <fo:table-body>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block> &#160; </fo:block>                                   
                                    </fo:table-cell>
                                </fo:table-row>
                            </fo:table-body>
                            <fo:table-body>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block text-align="right">&#160;</fo:block>                                   
                                    </fo:table-cell>
                                </fo:table-row>
                            </fo:table-body>
                            <fo:table-body>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block text-align="justify" font-size="12pt" line-height="14.75pt">
                                        	<fo:inline font-weight="bold">QUINTO. EN CASO DE CONVENIRSE CRÉDITOS CON GARANTÍA ESTATAL. &#160; </fo:inline>
                                            <xsl:text>Para efectos de
                                                los financiamientos a convenirse con cobertura o garantía estatal, incluyendo sin limitación, el Fondo
                                                de Garantía para Pequeños Empresarios (FOGAPE) o Fondo de Garantía para Inversión y Capital
                                                de Trabajo (FOGAIN), procuraré (procuraremos) que el Deudor destine los recursos crediticios a ser
                                                recibidos del Banco a los fines establecidos en sus respectivos programas estatales y además a
                                                facilitar al Banco y/o a la entidad estatal que otorga la respectiva cobertura, el control del destino
                                                de dichos recursos en caso de que así lo estimasen conveniente.
											</xsl:text>
                                        </fo:block>
                                        <fo:block text-align="justify" font-size="12pt" line-height="14.75pt">
                                        	<xsl:text>De la misma manera y por este instrumento, autorizo (autorizamos) al Banco a hacer entrega de
                                                todos los antecedentes necesarios a la entidad estatal que otorga la respectiva cobertura, para la
                                                adecuada aprobación de cada operación de crédito, y para que entregue en cuanto sea requerido,
                                                toda la información sobre las operaciones de crédito en particular. 
                                            </xsl:text>
                                        </fo:block>
                                        <fo:block text-align="justify" font-size="12pt" line-height="14.75pt">
                                        	<xsl:text>Por último, autorizo (autorizamos) al Banco a cobrar la respectiva comisión a favor de la entidad
                                                estatal que otorga la cobertura, en los términos indicados en los manuales y reglamentos del
                                                respectivo programa estatal.
                                            </xsl:text>
                                        </fo:block>                                     
                                    </fo:table-cell>
                                </fo:table-row>
                            </fo:table-body>
                            <fo:table-body>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block> &#160; </fo:block>                                   
                                    </fo:table-cell>
                                </fo:table-row>
                            </fo:table-body>
                            <fo:table-body>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block text-align="justify" font-size="12pt" line-height="14.75pt">
                                        	<fo:inline font-weight="bold">SEXTO. SEGUROS. &#160; </fo:inline>
                                            <xsl:text>Del mismo modo y en este mismo acto, el (los) suscrito(s) otorga (otorgamos)
                                                poder a Banco de Crédito e Inversiones para que en su nombre y representación, a solicitud
                                                expresa, y a través de los medios que el Banco dispone al efecto, contrate todo tipo de seguros
                                                colectivos o individuales, de prima única o recurrente, específicos para cada financiamiento o
                                                colocación.
											</xsl:text>
                                        </fo:block>                                      
                                    </fo:table-cell>
                                </fo:table-row>
                            </fo:table-body>
                            <fo:table-body>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block> &#160; </fo:block>                                   
                                    </fo:table-cell>
                                </fo:table-row>
                            </fo:table-body>
                            <fo:table-body>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block text-align="justify" font-size="12pt" line-height="14.75pt">
                                        	<fo:inline font-weight="bold">SÉPTIMO. AUTORIZACIÓN Y MANDATO DEL CÓNYUGE DE AVAL. &#160;</fo:inline>
                                            <xsl:text>En este acto, en mi
                                                condición de cónyuge, autorizo expresamente al suscrito para que conforme a lo dispuesto en el
                                                artículo 1749 y 1792-3 del Código Civil, se constituya como aval del Cliente en garantía del fiel,
                                                íntegro y oportuno cumplimiento de las obligaciones que emanan del (los) financiamiento(s) que el
                                                Banco otorgue al Cliente en conformidad a lo expresado precedentemente, sin límite de monto y sin
                                                expresión de plazo para su contratación. Asimismo, y en este mismo acto, vengo en conferir
                                                mandato especial a Banco de Crédito e Inversiones en iguales términos a los expresados en la
                                                cláusula segunda y siguientes.
											</xsl:text>
                                        </fo:block>                                      
                                    </fo:table-cell>
                                </fo:table-row>
                            </fo:table-body>
                            <fo:table-body>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block> &#160; </fo:block>                                   
                                    </fo:table-cell>
                                </fo:table-row>
                            </fo:table-body>
                            <fo:table-body>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block text-align="justify" font-size="12pt" line-height="14.75pt">
                                        	<fo:inline font-weight="bold">OCTAVO. VIGENCIA. &#160; </fo:inline>
                                            <xsl:text>Los mandatos otorgados con ocasión del presente instrumento serán
                                                revocables, una vez que estén totalmente extinguidas las obligaciones contraídas a favor de BCI.
                                                Con todo, la revocación de uno o algunos de aquellos, deberá comunicarse por escrito al Banco
                                                en cualquiera de sus sucursales, y producirá sus efectos, transcurridos 15 días de haberse
                                                notificado la revocación al Banco.
											</xsl:text>
                                        </fo:block>                                      
                                    </fo:table-cell>
                                </fo:table-row>
                            </fo:table-body>
                            <fo:table-body>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block> &#160; </fo:block>                                   
                                    </fo:table-cell>
                                </fo:table-row>
                            </fo:table-body>
                            <fo:table-body>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block text-align="justify" font-size="12pt" line-height="14.75pt">
                                        	<fo:inline font-weight="bold">NOVENO. CONSTANCIA. &#160; </fo:inline>
                                            <xsl:text>Estos mandatos no revocan y son complementarios de otros conferidos
                                                al Banco con anterioridad.
											</xsl:text>
                                        </fo:block>                                      
                                    </fo:table-cell>
                                </fo:table-row>
                            </fo:table-body>
                            <fo:table-body>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block> &#160; </fo:block>                                   
                                    </fo:table-cell>
                                </fo:table-row>
                            </fo:table-body>
                            <fo:table-body>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block text-align="justify" font-size="12pt" line-height="14.75pt">
                                            <fo:inline font-weight="bold">DÉCIMO. COSTOS Y GASTOS. &#160; </fo:inline>
                                            <xsl:text>Serán de cargo del (los) suscrito(s) los costos de autorización
                                                notarial y protocolización de este instrumento, impuestos y demás gastos que se originen con
                                                ocasión de la suscripción del presente.
                                            </xsl:text>
                                        </fo:block>                                      
                                    </fo:table-cell>
                                </fo:table-row>
                            </fo:table-body>
                            <fo:table-body>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block> &#160; </fo:block>                                   
                                    </fo:table-cell>
                                </fo:table-row>
                            </fo:table-body>
                            <fo:table-body>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block text-align="justify" font-size="12pt" line-height="14.75pt">
                                            <fo:inline font-weight="bold">UNDÉCIMO. &#160; </fo:inline>
                                            <xsl:text>Si por cualquier causa, una o más de las estipulaciones de este instrumento fueren
                                                declaradas nulas o ineficaces, total o parcialmente, dicha declaración no afectará la validez de las
                                                demás estipulaciones de este instrumento o cualesquiera otros documentos relacionados con los
                                                mismos.
                                            </xsl:text>
                                        </fo:block>                                      
                                    </fo:table-cell>
                                </fo:table-row>
                            </fo:table-body>
                            <fo:table-body>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block> &#160; </fo:block>                                   
                                    </fo:table-cell>
                                </fo:table-row>
                            </fo:table-body>
                            <fo:table-body>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block> &#160; </fo:block>                                   
                                    </fo:table-cell>
                                </fo:table-row>
                            </fo:table-body>
                            <fo:table-body>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block> &#160; </fo:block>                                   
                                    </fo:table-cell>
                                </fo:table-row>
                            </fo:table-body>
                            <fo:table-body>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block> &#160; </fo:block>                                   
                                    </fo:table-cell>
                                </fo:table-row>
                            </fo:table-body>
                            <fo:table-body>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block> &#160; </fo:block>                                   
                                    </fo:table-cell>
                                </fo:table-row>
                            </fo:table-body>
                            <fo:table-body>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block text-align="justify" font-size="12pt" line-height="14.75pt">
                                            <fo:inline font-weight="bold">EJEMPLARES. &#160; </fo:inline>
                                            <xsl:text>El presente instrumento se firma en dos ejemplares de idéntico tenor, quedando uno
                                                en poder de cada una de las partes.
                                            </xsl:text>
                                        </fo:block>                                      
                                    </fo:table-cell>
                                </fo:table-row>
                            </fo:table-body>
                            <fo:table-body>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block> &#160; </fo:block>                                   
                                    </fo:table-cell>
                                </fo:table-row>
                            </fo:table-body>
                            <fo:table-body>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block text-align="left" font-size="12pt" line-height="14.75pt">
                                            <xsl:text>
                                            En__________________, a_________de________________________de_____
                                            </xsl:text>
                                        </fo:block>                              
                                    </fo:table-cell>
                                </fo:table-row>
                            </fo:table-body>
                            <fo:table-body>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block> &#160; </fo:block>                                   
                                    </fo:table-cell>
                                </fo:table-row>
                            </fo:table-body>
                            <fo:table-body>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block> &#160; </fo:block>                                   
                                    </fo:table-cell>
                                </fo:table-row>
                            </fo:table-body>
                            <fo:table-body>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block> &#160; </fo:block>                                   
                                    </fo:table-cell>
                                </fo:table-row>
                            </fo:table-body>
                            <fo:table-body>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block> &#160; </fo:block>                                   
                                    </fo:table-cell>
                                </fo:table-row>
                            </fo:table-body>
                            <fo:table-body>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block margin-left="10pt" text-align="center" font-size="12pt" line-height="14.75pt">
                                            <xsl:text>
                                           _______________________________
                                            </xsl:text>
                                        </fo:block>                                      
                                    </fo:table-cell>
                                </fo:table-row>
                            </fo:table-body>
                            <fo:table-body>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block text-align="center" font-size="12pt" line-height="14.75pt">
                                            <xsl:text>
                                            Firma del Aval
                                            </xsl:text>
                                        </fo:block>                                      
                                    </fo:table-cell>
                                </fo:table-row>
                            </fo:table-body>
                            <fo:table-body>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block> &#160; </fo:block>                                   
                                    </fo:table-cell>
                                </fo:table-row>
                            </fo:table-body>
                            <fo:table-body>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block>
                                            <xsl:text>
                                                NOMBRE COMPLETO AVAL
                                            </xsl:text>
                                        </fo:block>                                   
                                    </fo:table-cell>
                                </fo:table-row>
                            </fo:table-body>
                            <fo:table-body>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block> 
                                            <fo:inline font-size="10pt">
                                                <xsl:value-of select="DatosDeudorIndirecto/nombreAval" />
                                            </fo:inline>
                                        </fo:block>                                   
                                    </fo:table-cell>
                                </fo:table-row>
                            </fo:table-body>
                            <fo:table-body>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block>
                                            <xsl:text>
                                                RUT
                                            </xsl:text>
                                            <fo:inline font-size="10pt">
                                                <xsl:value-of select="DatosDeudorIndirecto/rutAval" />
                                            </fo:inline>
                                        </fo:block>                                   
                                    </fo:table-cell>
                                </fo:table-row>
                            </fo:table-body>
                            <fo:table-body>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block>
                                            <xsl:text>
                                                DOMICILIO
                                            </xsl:text>
                                            <fo:inline font-size="10pt">
                                                <xsl:value-of select="DatosDeudorIndirecto/domicilioAval" />
                                            </fo:inline>
                                        </fo:block>                                   
                                    </fo:table-cell>
                                </fo:table-row>
                            </fo:table-body>
                            <fo:table-body>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block>
                                            <xsl:text>
                                                COMUNA
                                            </xsl:text>
                                            <fo:inline font-size="10pt">
                                                <xsl:value-of select="DatosDeudorIndirecto/comunaAval" />
                                            </fo:inline>
                                        </fo:block>                                  
                                    </fo:table-cell>
                                </fo:table-row>
                            </fo:table-body>
                            <fo:table-body>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block> &#160; </fo:block>                                   
                                    </fo:table-cell>
                                </fo:table-row>
                            </fo:table-body>
                            <fo:table-body>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block> &#160; </fo:block>                                   
                                    </fo:table-cell>
                                </fo:table-row>
                            </fo:table-body>
                            <fo:table-body>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block> &#160; </fo:block>                                   
                                    </fo:table-cell>
                                </fo:table-row>
                            </fo:table-body>
                            <fo:table-body>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block> &#160; </fo:block>                                   
                                    </fo:table-cell>
                                </fo:table-row>
                            </fo:table-body>
                            <fo:table-body>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block margin-left="10pt" text-align="center" font-size="12pt" line-height="14.75pt">
                                            <xsl:text>
                                           _______________________________
                                            </xsl:text>
                                        </fo:block>                                      
                                    </fo:table-cell>
                                </fo:table-row>
                            </fo:table-body>
                            <fo:table-body>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block text-align="center" font-size="12pt" line-height="14.75pt">
                                            <xsl:text>
                                            Firma del Conviviente Civil
                                            </xsl:text>
                                        </fo:block>                                      
                                    </fo:table-cell>
                                </fo:table-row>
                            </fo:table-body>
                            <fo:table-body>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block> &#160; </fo:block>                                   
                                    </fo:table-cell>
                                </fo:table-row>
                            </fo:table-body>
                            <fo:table-body>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block>
                                            <xsl:text>
                                                NOMBRE COMPLETO AVAL (CONVIVIENTE CIVIL)
                                            </xsl:text>
                                        </fo:block>                                   
                                    </fo:table-cell>
                                </fo:table-row>
                            </fo:table-body>
                            <fo:table-body>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block> 
                                            <fo:inline font-size="10pt">
                                                <xsl:value-of select="DatosDeudorIndirecto/nombreConviviente" />
                                            </fo:inline>
                                        </fo:block>                                   
                                    </fo:table-cell>
                                </fo:table-row>
                            </fo:table-body>
                            <fo:table-body>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block>
                                            <xsl:text>
                                                RUT
                                            </xsl:text>
                                            <fo:inline font-size="10pt">
                                                <xsl:value-of select="DatosDeudorIndirecto/rutConviviente" />
                                            </fo:inline>
                                        </fo:block>                                   
                                    </fo:table-cell>
                                </fo:table-row>
                            </fo:table-body>
                            <fo:table-body>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block>
                                            <xsl:text>
                                                DOMICILIO
                                            </xsl:text>
                                            <fo:inline font-size="10pt">
                                                <xsl:value-of select="DatosDeudorIndirecto/domicilioConviviente" />
                                            </fo:inline>
                                        </fo:block>                                   
                                    </fo:table-cell>
                                </fo:table-row>
                            </fo:table-body>
                            <fo:table-body>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block>
                                            <xsl:text>
                                                COMUNA
                                            </xsl:text>
                                            <fo:inline font-size="10pt">
                                                <xsl:value-of select="DatosDeudorIndirecto/comunaConviviente" />
                                            </fo:inline>
                                        </fo:block>                                  
                                    </fo:table-cell>
                                </fo:table-row>
                            </fo:table-body>
                            <fo:table-body>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block> &#160; </fo:block>                                   
                                    </fo:table-cell>
                                </fo:table-row>
                            </fo:table-body>
                            <fo:table-body>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block> &#160; </fo:block>                                   
                                    </fo:table-cell>
                                </fo:table-row>
                            </fo:table-body>
                            <fo:table-body>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block> &#160; </fo:block>                                   
                                    </fo:table-cell>
                                </fo:table-row>
                            </fo:table-body>
                            <fo:table-body>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block> &#160; </fo:block>                                   
                                    </fo:table-cell>
                                </fo:table-row>
                            </fo:table-body>
                            <fo:table-body>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block margin-left="10pt" text-align="center" font-size="12pt" line-height="14.75pt">
                                            <xsl:text>
                                           _______________________________
                                            </xsl:text>
                                        </fo:block>                                      
                                    </fo:table-cell>
                                </fo:table-row>
                            </fo:table-body>
                            <fo:table-body>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block text-align="center" font-size="12pt" line-height="14.75pt">
                                            <xsl:text>
                                            Firma del Cónyuge
                                            </xsl:text>
                                        </fo:block>                                      
                                    </fo:table-cell>
                                </fo:table-row>
                            </fo:table-body>
                            <fo:table-body>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block> &#160; </fo:block>                                   
                                    </fo:table-cell>
                                </fo:table-row>
                            </fo:table-body>
                            <fo:table-body>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block>
                                            <xsl:text>
                                                NOMBRE COMPLETO CONYUGE
                                            </xsl:text>
                                        </fo:block>                                   
                                    </fo:table-cell>
                                </fo:table-row>
                            </fo:table-body>
                            <fo:table-body>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block> 
                                            <fo:inline font-size="10pt">
                                                <xsl:value-of select="DatosDeudorIndirecto/nombreConyuge" />
                                            </fo:inline>
                                        </fo:block>                                   
                                    </fo:table-cell>
                                </fo:table-row>
                            </fo:table-body>
                            <fo:table-body>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block>
                                            <xsl:text>
                                                RUT
                                            </xsl:text>
                                            <fo:inline font-size="10pt">
                                                <xsl:value-of select="DatosDeudorIndirecto/rutConyuge" />
                                            </fo:inline>
                                        </fo:block>                                   
                                    </fo:table-cell>
                                </fo:table-row>
                            </fo:table-body>
                            <fo:table-body>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block>
                                            <xsl:text>
                                                DOMICILIO
                                            </xsl:text>
                                            <fo:inline font-size="10pt">
                                                <xsl:value-of select="DatosDeudorIndirecto/domicilioConyuge" />
                                            </fo:inline>
                                        </fo:block>                                   
                                    </fo:table-cell>
                                </fo:table-row>
                            </fo:table-body>
                            <fo:table-body>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block>
                                            <xsl:text>
                                                COMUNA
                                            </xsl:text>
                                            <fo:inline font-size="10pt">
                                                <xsl:value-of select="DatosDeudorIndirecto/comunaConyuge" />
                                            </fo:inline>
                                        </fo:block>                                  
                                    </fo:table-cell>
                                </fo:table-row>
                            </fo:table-body>
                            <fo:table-body>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block> &#160; </fo:block>                                   
                                    </fo:table-cell>
                                </fo:table-row>
                            </fo:table-body>
                            <fo:table-body>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block> &#160; </fo:block>                                   
                                    </fo:table-cell>
                                </fo:table-row>
                            </fo:table-body>
                            <fo:table-body>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block> &#160; </fo:block>                                   
                                    </fo:table-cell>
                                </fo:table-row>
                            </fo:table-body>
                            <fo:table-body>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block> &#160; </fo:block>                                   
                                    </fo:table-cell>
                                </fo:table-row>
                            </fo:table-body>
                            <fo:table-body>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block> &#160; </fo:block>                                   
                                    </fo:table-cell>
                                </fo:table-row>
                            </fo:table-body>
                            <fo:table-body>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block> &#160; </fo:block>                                   
                                    </fo:table-cell>
                                </fo:table-row>
                            </fo:table-body>
                            <fo:table-body>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block margin-left="10pt" font-weight="bold" text-align="center" font-size="12pt" line-height="14.75pt">
                                            <xsl:text>
												AUTORIZACIÓN NOTARIAL											</xsl:text>
                                        </fo:block>                                      
                                    </fo:table-cell>
                                </fo:table-row>
                            </fo:table-body>
                            <fo:table-body>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block> &#160; </fo:block>                                   
                                    </fo:table-cell>
                                </fo:table-row>
                            </fo:table-body>
                            <fo:table-body>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block> &#160; </fo:block>                                   
                                    </fo:table-cell>
                                </fo:table-row>
                            </fo:table-body>
                            <fo:table-body>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block> &#160; </fo:block>                                   
                                    </fo:table-cell>
                                </fo:table-row>
                            </fo:table-body>
                            <fo:table-body>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block> &#160; </fo:block>                                   
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
