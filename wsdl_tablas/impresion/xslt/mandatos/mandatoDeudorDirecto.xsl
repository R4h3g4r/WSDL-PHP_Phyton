<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:fo="http://www.w3.org/1999/XSL/Format" version="1.0">
	<xsl:template match="mandatoDeudorDirecto">
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
						<fo:table-column column-width="10cm" />
						<fo:table-column column-width="5cm" />
						<fo:table-column column-width="3cm" />
						<fo:table-header>
						</fo:table-header>
						<fo:table-body>
							<fo:table-row>
								<fo:table-cell>
									<fo:block> </fo:block>
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
                                            <xsl:text>MANDATO PARA SUSCRIBIR Y DOCUMENTAR DEUDA CLIENTE.</xsl:text>
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
                                            <xsl:text>En el contexto de la contratación de financiamientos que Banco de Crédito e Inversiones (en adelante el “Banco” o “BCI”) ofrece a sus clientes, en moneda nacional o en moneda extranjera, 
                                           			  reajustables o no, u otras colocaciones, efectivas y contingentes, el suscrito acuerda comunicarse e interconectarse con el Banco, a través de sus apoderados y/o representantes debidamente 
                                           			  facultados, presencialmente o a través de medios o canales remotos, tales como: internet, aplicaciones móviles, telefonía u otros medios electrónicos que se dispongan en lo sucesivo, y en 
                                           			  este último caso, mediante el ingreso de la correspondiente clave secreta personal e intransferible que es de su exclusivo conocimiento.
											</xsl:text>
                                        </fo:block>  
                                        <fo:block text-align="justify" font-size="12pt" line-height="14.75pt">
                                        	<xsl:text>En este contexto, se entenderán convenidas las operaciones y transacciones recibidas por el Banco y que hayan sido cursadas utilizando la clave secreta asignada al Cliente y/o a sus 
													  apoderados debidamente facultados, según corresponda.</xsl:text>
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
                                            <xsl:text>En este acto, el suscrito otorga mandato especial y gratuito a Banco de Crédito e Inversiones y/o a Servicios de Normalización y Cobranza - Normaliza S.A/ 
                                            Normaliza, filial del BCI, para que – con ocasión de los servicios y productos bancarios indicados en la cláusula primera precedente – actuando en mi nombre y representación suscriba, 
                                            sin ánimo de novar, junto a la documentación que fuere menester para la contratación de los mismos, aún autocontratando, y a través de cualesquiera de sus apoderados y actuando indistintamente, 
                                            suscriba y/o complete pagarés, sin ánimo de novar sus obligaciones; y reconozca deudas en beneficio y a la orden del Banco, &#160;por los montos de capital, intereses, costas y comisiones de las sumas adeudadas, 
                                            pudiendo establecer en los pagarés, todas las menciones exigidas por la Ley N° 18.092. El mandatario podrá renunciar a la obligación de protesto y autorizar la firma de los apoderados que suscriban los pagarés, 
                                            ante Notario Público, de tal modo que éstos documentos constituyan títulos ejecutivos en conformidad con las normas del Código de Procedimiento Civil.
											</xsl:text>
                                        </fo:block>  
                                        <fo:block text-align="justify" font-size="12pt" line-height="14.75pt">
                                        	<xsl:text>Al efecto, en el evento de no pago integro ni oportuno de una cualquiera de las cuotas de capital y/o de interés u otras sumas adeudadas en conformidad al o los pagarés que sean suscritos en 
                                        	conformidad al presente mandato, el Cliente faculta al Banco a exigir de inmediato y anticipadamente el monto total del saldo insoluto adeudado a esa fecha, el que desde esa misma fecha se considerará 
                                        	de plazo vencido y devengará en favor del Banco o de quien sus derechos represente, el interés máximo convencional.</xsl:text>
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
                                            <xsl:text>En este acto, declaro conocer y aceptar que la rendición de cuentas 
                                            del ejercicio del presente mandato, se verificará mediante el envío de los comprobantes, 
                                            copias de los pagarés u otros documentos (en copia u original según corresponda) que el 
                                            Banco hubiere suscrito en nuestra representación, y se remitirán al correo electrónico 
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
                                            <xsl:text>Asimismo, y por este instrumento, reconozco expresamente que el otorgamiento del 
                                            presente mandato no obliga al Banco al curse del (los) financiamientos, el (los) cual(es) se 
                                            sujetarán a las políticas de crédito vigente de Banco de Crédito e Inversiones.
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
                                        <fo:block font-size="11.04pt">10005092016</fo:block>                                   
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
                                            <xsl:text>Para efectos de los financiamientos a convenirse con cobertura o garantía estatal, incluyendo sin limitación, 
                                            el Fondo de Garantía para Pequeños Empresarios (FOGAPE) o Fondo de Garantía para Inversión y Capital de Trabajo (FOGAIN), 
                                            me obligo a destinar los recursos crediticios a ser recibidos del Banco a los fines establecidos en sus respectivos programas 
                                            estatales y además a facilitar al Banco y/o a la entidad estatal que otorga la respectiva cobertura, &#160;el control del destino 
                                            &#160;de&#160; dichos recursos en caso de que así lo estimasen conveniente.
											</xsl:text>
                                        </fo:block>
                                        <fo:block text-align="justify" font-size="12pt" line-height="14.75pt">
                                        	<xsl:text>De la misma manera y por este instrumento, autorizo al Banco a hacer entrega de todos 
                                        	los antecedentes necesarios a la entidad estatal que otorga la respectiva cobertura, para la adecuada 
                                        	aprobación de cada operación de crédito, y para que entregue en cuanto sea requerido, toda la información 
                                        	sobre las operaciones de crédito en particular.</xsl:text>
                                        </fo:block>
                                        <fo:block text-align="justify" font-size="12pt" line-height="14.75pt">
                                        	<xsl:text>Por último, autorizo al Banco a cobrar&#160; la&#160; respectiva comisión a favor de la entidad estatal que otorga 
                                        	la cobertura, en los términos indicados en los manuales y reglamentos del respectivo programa estatal.</xsl:text>
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
                                            <xsl:text>Del mismo modo y en este mismo acto, el suscrito otorga poder a 
                                            Banco de Crédito e Inversiones para que en su nombre y representación, a solicitud expresa, 
                                            y a través de los medios que el Banco dispone al efecto, contrate todo tipo de seguros 
                                            colectivos o individuales, de prima única o recurrente, específicos para cada financiamiento o colocación.
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
                                        	<fo:inline font-weight="bold">SÉPTIMO. VIGENCIA. &#160;</fo:inline>
                                            <xsl:text>Los mandatos otorgados con ocasión del presente instrumento 
                                            serán revocables, una vez que estén totalmente extinguidas las obligaciones 
                                            a favor de BCI. Con todo, su revocación deberá&#160; comunicarse &#160;por&#160; escrito&#160;  al &#160; Banco 
                                            en&#160;  cualquiera de sus sucursales, y producirá sus efectos, transcurridos 15 días 
                                            de haberse notificado la revocación al Banco.
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
                                        	<fo:inline font-weight="bold">OCTAVO. CONSTANCIA. &#160; </fo:inline>
                                            <xsl:text>Estos mandatos no revocan y son complementarios de otros conferidos al Banco con anterioridad.
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
                                        	<fo:inline font-weight="bold">NOVENO. COSTOS Y GASTOS. &#160; </fo:inline>
                                            <xsl:text>Serán de cargo del suscrito los costos de autorización notarial y protocolización 
                                            de este instrumento, impuestos y demás gastos que se originen con ocasión de la suscripción del presente.
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
                                        <fo:block font-size="11.04pt">10005092016</fo:block>                                   
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
                                            <xsl:text>El presente instrumento se firma en dos ejemplares de idéntico tenor, 
                                            quedando uno en poder de cada una de las partes.
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
                                        <fo:block font-size="12pt" line-height="14.75pt">
                                            <xsl:text>
                                            NOMBRE O RAZON SOCIAL
                                            </xsl:text><fo:inline font-size="10pt"><xsl:value-of select="DatosEmpresa/nombreCliente"/></fo:inline>
                                        </fo:block>  
                                          <fo:block> &#160; </fo:block>                                         
                                    </fo:table-cell>
                                </fo:table-row>
                            </fo:table-body>
                            <fo:table-body>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block>   <xsl:text>
                                            RUT
                                            </xsl:text><fo:inline font-size="10pt"><xsl:value-of select="DatosEmpresa/rutCliente"/></fo:inline></fo:block>
                                              <fo:block> &#160; </fo:block>                                        
                                    </fo:table-cell>
                                </fo:table-row>
                            </fo:table-body>
                            <fo:table-body>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block>   <xsl:text>
                                            DOMICILIO
                                            </xsl:text><fo:inline font-size="10pt"><xsl:value-of select="DatosEmpresa/domicilio"/></fo:inline></fo:block>
                                              <fo:block> &#160; </fo:block>                                        
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
                                                <xsl:value-of select="DatosEmpresa/comuna" />
                                            </fo:inline>
                                        </fo:block>
                                        <fo:block> &#160; </fo:block>
                                    </fo:table-cell>
                                </fo:table-row>
                            </fo:table-body>
                            <fo:table-body>
                                <fo:table-row>
                                	<fo:table-cell>
                                        <fo:block>   <xsl:text>
                                            REPRESENTANTE LEGAL(1)
                                            </xsl:text><fo:inline font-size="10pt"><xsl:value-of select="DatosEmpresa/nombreRepLegal1"/></fo:inline></fo:block>
                                             <fo:block> &#160; </fo:block> 
                                    </fo:table-cell>
                                </fo:table-row>
                            </fo:table-body>
                            <fo:table-body>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block>   <xsl:text>
                                            RUT
                                            </xsl:text><fo:inline font-size="10pt"><xsl:value-of select="DatosEmpresa/rutRepLegal1"/></fo:inline></fo:block>
                                              <fo:block> &#160; </fo:block>                                        
                                    </fo:table-cell>
                                </fo:table-row>
                            </fo:table-body>
                            <fo:table-body>
                                <fo:table-row>
                                	<fo:table-cell>
                                        <fo:block>   <xsl:text>
                                            REPRESENTANTE LEGAL(2)
                                            </xsl:text><fo:inline font-size="10pt"><xsl:value-of select="DatosEmpresa/nombreRepLegal2"/></fo:inline></fo:block>
                                             <fo:block> &#160; </fo:block> 
                                    </fo:table-cell>
                                </fo:table-row>
                            </fo:table-body>
                            <fo:table-body>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block>   <xsl:text>
                                            RUT
                                            </xsl:text><fo:inline font-size="10pt"><xsl:value-of select="DatosEmpresa/rutRepLegal2"/></fo:inline></fo:block>
                                              <fo:block> &#160; </fo:block>                                        
                                    </fo:table-cell>
                                </fo:table-row>
                            </fo:table-body>
                            <fo:table-body>
                                <fo:table-row>
                                	<fo:table-cell>
                                        <fo:block>   <xsl:text>
                                            REPRESENTANTE LEGAL(3)
                                            </xsl:text><fo:inline font-size="10pt"><xsl:value-of select="DatosEmpresa/nombreRepLegal3"/></fo:inline></fo:block>
                                             <fo:block> &#160; </fo:block> 
                                    </fo:table-cell>
                                </fo:table-row>
                            </fo:table-body>
                            <fo:table-body>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block>   <xsl:text>
                                            RUT
                                            </xsl:text><fo:inline font-size="10pt"><xsl:value-of select="DatosEmpresa/rutRepLegal3"/></fo:inline></fo:block>
                                              <fo:block> &#160; </fo:block>                                        
                                    </fo:table-cell>
                                </fo:table-row>
                            </fo:table-body>
                            <fo:table-body>
                                <fo:table-row>
                                	<fo:table-cell>
                                        <fo:block>   <xsl:text>
                                            REPRESENTANTE LEGAL(4)
                                            </xsl:text><fo:inline font-size="10pt"><xsl:value-of select="DatosEmpresa/nombreRepLegal4"/></fo:inline></fo:block>
                                             <fo:block> &#160; </fo:block> 
                                    </fo:table-cell>
                                </fo:table-row>
                            </fo:table-body>
                            <fo:table-body>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block>   <xsl:text>
                                            RUT
                                            </xsl:text><fo:inline font-size="10pt"><xsl:value-of select="DatosEmpresa/rutRepLegal4"/></fo:inline></fo:block>
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
                                        <fo:block text-align="left" font-size="12pt" line-height="14.75pt">
                                            <xsl:text>
                                            En__________________, a_________de________________________de_____.
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
                                        <fo:block margin-left="10pt" text-align="center" font-size="12pt" line-height="14.75pt">
                                            <xsl:text>
                                           _______________________________ &#160; &#160; &#160;&#160; &#160; &#160;&#160; &#160; &#160;&#160; _______________________________
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
                                            Firma del Suscriptor (1) &#160; &#160; &#160;&#160; &#160; &#160;&#160; &#160; &#160;&#160; &#160; &#160; &#160; &#160; &#160;&#160; &#160; &#160;&#160; &#160; &#160;&#160;Firma del Suscriptor (2)
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
                                        <fo:block margin-left="10pt" text-align="center" font-size="12pt" line-height="14.75pt">
                                            <xsl:text>
                                           _______________________________ &#160; &#160; &#160;&#160; &#160; &#160;&#160; &#160; &#160;&#160; _______________________________
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
                                            Firma del Suscriptor (3) &#160; &#160; &#160;&#160; &#160; &#160;&#160; &#160; &#160;&#160; &#160; &#160; &#160; &#160; &#160;&#160; &#160; &#160;&#160; &#160; &#160;&#160;Firma del Suscriptor (4)
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
                                        <fo:block margin-left="10pt" text-align="center" font-size="12pt" line-height="14.75pt">
                                            <xsl:text>
												___________________________________											</xsl:text>
                                        </fo:block>                                      
                                    </fo:table-cell>
                                </fo:table-row>
                            </fo:table-body>
                            <fo:table-body>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block text-align="center" font-size="12pt" line-height="14.75pt">
                                            <xsl:text>
En señal de aceptación, firma en representación de Banco de Crédito e Inversiones											</xsl:text>
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
                                        <fo:block font-size="11.04pt">10005092016</fo:block>                                   
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
