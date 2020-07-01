<?xml version="1.0" encoding="iso-8859-1"?>

<xsl:stylesheet version="1.1" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format" exclude-result-prefixes="fo">
    <xsl:output method="xml" version="1.0" omit-xml-declaration="no" indent="yes"/>

    <xsl:template match="mandato">
        <fo:root xmlns:fo="http://www.w3.org/1999/XSL/Format">
            <fo:layout-master-set>
                <fo:simple-page-master master-name="miCarta" page-width="210mm" page-height="300mm" margin-top="25mm" margin-bottom="30mm" margin-left="30mm" margin-right="30mm">
                    <fo:region-body/>
                </fo:simple-page-master>
            </fo:layout-master-set>

                <fo:page-sequence master-reference="miCarta">
                    <fo:flow flow-name="xsl-region-body">
                            <fo:block font-family="Helvetica" font-size="10pt" text-align="center" ><fo:inline font-weight="bold">MANDATO PAC PREVIO</fo:inline></fo:block>

                            <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                            <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>

                            <fo:block font-family="Helvetica" font-size="10pt" text-align="justify" >En Santiago, a <fo:inline font-weight="bold"><xsl:value-of select="diaActual"/></fo:inline> 
                             de <fo:inline font-weight="bold"><xsl:value-of select="mesActual"/></fo:inline> de <fo:inline font-weight="bold"><xsl:value-of select="anyoActual"/></fo:inline>, 
                             comparece don(ña) <fo:inline font-weight="bold"><xsl:value-of select="nombreCliente"/></fo:inline>, chileno(a), cédula de identidad N° <fo:inline font-weight="bold"><xsl:value-of select="rutCliente"/></fo:inline>, 
                             domiciliado(a) en esta ciudad, calle <fo:inline font-weight="bold"><xsl:value-of select="direccionCliente"/></fo:inline>, de la comuna de <fo:inline font-weight="bold"><xsl:value-of select="comunaCliente"/></fo:inline> 
                             en adelante "el(la) mandante", mayor de edad y expone:</fo:block>
                             
                             <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                             
                            <fo:block font-family="Helvetica" font-size="10pt" text-align="justify" > <fo:inline font-weight="bold">PRIMERO: </fo:inline> Que por este instrumento, confiero mandato especial y gratuito a
                             <fo:inline font-weight="bold"><xsl:value-of select="empresaConvenio"/></fo:inline>, en adelante "La Empresa", para que proceda a depositar mensualmente mis remuneraciones en la cuenta 
                             corriente/cuenta vista o chequera electrónica N° <fo:inline font-weight="bold"><xsl:value-of select="nroCuenta"/></fo:inline>, que mantengo en el Banco de Crédito e Inversiones, en adelante "El Banco".</fo:block>

														<fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
														
														<fo:block font-family="Helvetica" font-size="10pt" text-align="justify">Por este mismo acto, faculto a "El Banco" para que descuente mensualmente de la cuenta   corriente/cuenta vista o chequera electrónica antes 
															singularizada, las cantidades que fueren necesarias para pagar los préstamos que me hubiere otorgado "El Banco", el mismo día en que mi remuneración sea depositada por la Empresa en la indicada cuenta, aun cuando 
															dicho día sea anterior a la fecha de vencimiento de la cuota respectiva del o los créditos otorgados por el Banco.</fo:block>

														<fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
														
														<fo:block font-family="Helvetica" font-size="10pt" text-align="justify">Lo anterior, en virtud del Convenio de Financiamiento a Trabajadores suscrito entre el Banco y la Empresa, de 
															fecha <fo:inline font-weight="bold"><xsl:value-of select="diaConvenio"/></fo:inline> de <fo:inline font-weight="bold"><xsl:value-of select="mesConvenio"/></fo:inline> 
															de <fo:inline font-weight="bold"><xsl:value-of select="anyoConvenio"/></fo:inline> que el mandante declara conocer y aceptar en todas sus partes.</fo:block>
														
														<fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>

														 <xsl:variable name="tieneClausula" select="tieneClausula" />															
														<fo:block font-family="Helvetica" font-size="10pt" text-align="justify">El cierre de mi cuenta corriente/cuenta vista o chequera electrónica, ya individualizada, o el cierre de la cuenta corriente que "La Empresa" 
															mantiene en el Banco de Crédito e Inversiones para el pago de mis remuneraciones, en modo alguno me exime o me libera de mi obligación de dar fiel, oportuno y cabal cumplimiento a las obligaciones de crédito 
															contraídas para con "El Banco". 
															<xsl:if test="$tieneClausula = 'N'">
															Tampoco quedo liberado de cumplir mis obligaciones para con el Banco en el evento de terminar mi relación laboral con "La Empresa".
															</xsl:if>
															</fo:block>
														
														<fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
														
														<xsl:if test="$tieneClausula = 'S'">
														<fo:block font-family="Helvetica" font-size="10pt" text-align="justify"><fo:inline font-weight="bold">SEGUNDO: </fo:inline>Asimismo, cuando corresponda, en caso de terminar mi relación laboral con "La Empresa", por cualquier 
														causa, vengo en conferir mandato especial a mi empleadora, para que retenga de los montos que me correspondan en virtud del término de la relación laboral, las sumas adeudadas por mi parte al Banco. Asimismo, le 
														confiero poder y mandato al Banco para que, previa solicitud escrita a mi empleadora, perciba de ésta los montos retenidos a fin de imputar dichas sumas al pago del o los préstamos que El Banco me hubiere otorgado, 
														incluyendo en dicho pago, cuando corresponda, las comisiones de prepago que procedieren en conformidad a lo establecido en el artículo 10 de la Ley N° 18.010.</fo:block>
														
														<fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
														</xsl:if>
														
														<fo:block font-family="Helvetica" font-size="10pt" text-align="justify">"La Empresa" estará facultada para efectuar las gestiones que fueren necesarias para dar cumplimiento a lo señalado precedentemente.</fo:block>
														
														<fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
														
														<fo:block font-family="Helvetica" font-size="10pt" text-align="justify">Sin perjuicio de lo anterior, declaro que en el evento de terminar mi relación laboral con "La Empresa", en modo alguno quedo liberado de mi 
															obligación de cumplir mis obligaciones de crédito contraídas para con "El Banco".</fo:block>
														
														<fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
														
														<fo:block font-family="Helvetica" font-size="10pt" text-align="justify">
															<fo:inline font-weight="bold">
																<xsl:if test="$tieneClausula = 'S'">
																	TERCERO:
																</xsl:if>
																<xsl:if test="$tieneClausula = 'N'">
																	SEGUNDO:
																</xsl:if>		
															</fo:inline>
															Para el eficaz cumplimiento de este mandato faculto a mi empleador para solicitar, y al Banco para entregar, 
														la información necesaria acerca de los productos otorgados y para firmar los recibos y cancelaciones que el cumplimiento del presente encargo requiera.</fo:block>
														
														<fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
														
														<fo:block font-family="Helvetica" font-size="10pt" text-align="justify">Igualmente, faculto a "El Banco" para solicitar y a "La Empresa" para proporcionar a aquél, las informaciones relacionadas con mis remuneraciones, 
															antigüedad laboral, importe de gratificaciones y anticipos a cuenta de estas remuneraciones o beneficios y, en su caso, la terminación del contrato de trabajo y los términos de la liquidación de los haberes asociados.</fo:block>
															
														<fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
														
														<fo:block font-family="Helvetica" font-size="10pt" text-align="justify">															
															<fo:inline font-weight="bold">
																<xsl:if test="$tieneClausula = 'S'">
																	CUARTO:
																</xsl:if>
																<xsl:if test="$tieneClausula = 'N'">
																	TERCERO:
																</xsl:if>		
															</fo:inline>El presente mandato y las autorizaciones precedentes, ceden en beneficio del cliente y del Banco 
														y, por tal razón, sólo podrán ser revocadas una vez que estén totalmente extinguidas las obligaciones que mantenga pendiente de pago con el Banco. Tal revocación deberá comunicarse por escrito al Banco en cualquiera de 
														sus sucursales y producirá sus efectos transcurridos 15 días de haberse notificado la revocación al Banco.</fo:block>
														
														<fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>

														<fo:block font-family="Helvetica" font-size="10pt" text-align="justify">
															<fo:inline font-weight="bold">
																<xsl:if test="$tieneClausula = 'S'">
																	QUINTO:
																</xsl:if>
																<xsl:if test="$tieneClausula = 'N'">
																	CUARTO:
																</xsl:if>		
															</fo:inline>
															Declaro que el no cumplimiento del presente mandato no me libera, en caso alguno, de mi obligación 
														de dar fiel, oportuno y cabal cumplimiento a las obligaciones de crédito contraídas para con "El Banco".</fo:block>
																												
														<fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>

														<fo:block font-family="Helvetica" font-size="10pt" text-align="justify">En este contexto, en el evento de incurrir en atraso o mora en el cumplimiento de mis obligaciones para con el Banco, declaro y acepto, desde ya, que 
															es facultad de este último efectuar por sí o a través de la Empresa que encargue al efecto, la cobranza extrajudicial de la(s) cuota(s) en mora, en cualquier momento desde el retraso o mora y mientras ésta subsista.</fo:block>
															
														<fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>

														<fo:block font-family="Helvetica" font-size="10pt" text-align="justify">
															<fo:inline font-weight="bold">
																<xsl:if test="$tieneClausula = 'S'">
																	SEXTO:
																</xsl:if>
																<xsl:if test="$tieneClausula = 'N'">
																	QUINTO:
																</xsl:if>		
															</fo:inline>
															Por este instrumento me obligo a mantener siempre en la cuenta corriente/cuenta vista o chequera 
														electrónica contratada con el Banco, los fondos disponibles necesarios para que este último pueda realizar los descuentos de las cuotas del crédito otorgado. Con todo, en cualquier evento que no corresponda el pago de 
														remuneración por parte de la Empresa, ya sea por encontrarme con licencia médica, permiso sin goce de sueldo o que por cualquier otro motivo no corresponda el depósito de remuneración por parte de mi empleador en la 
														respectiva cuenta y por tal motivo no existan saldos disponibles en la misma para hacer efectivo los referidos descuentos, me obligo a pagar directamente en cualquier oficina del Banco, la o las cuotas del crédito que 
														se devenguen durante el período en que no se produzca el pago de mis remuneraciones o no se disponga de los saldos suficientes en mi Cuenta.</fo:block>
														
														<fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>

														<fo:block font-family="Helvetica" font-size="10pt" text-align="justify">
															<fo:inline font-weight="bold">
																<xsl:if test="$tieneClausula = 'S'">
																	SÉPTIMO:
																</xsl:if>
																<xsl:if test="$tieneClausula = 'N'">
																	SEXTO:
																</xsl:if>		
															</fo:inline>
															Otorgo el presente mandato, declarando estar en conocimiento íntegro y cabal de la documentación 
														principal y accesoria necesaria para formalizar el otorgamiento del crédito que motiva el otorgamiento de este mandato, así como del hecho de habérseme otorgado el referido crédito en virtud del Convenio de Financiamiento 
														existente entre mi empleador y Banco de Crédito e Inversiones.</fo:block>
																												
														<fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
														<fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
														<fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>

														<fo:block font-family="Helvetica" font-size="10pt" text-align="justify"><fo:inline font-weight="bold">Firma: </fo:inline>____________________</fo:block>
														<fo:block font-family="Helvetica" font-size="10pt" text-align="justify"><fo:inline font-weight="bold">Nombre(s): </fo:inline><fo:inline font-weight="bold"><xsl:value-of select="nombreCliente"/></fo:inline></fo:block>
														<fo:block font-family="Helvetica" font-size="10pt" text-align="justify"><fo:inline font-weight="bold">Rut(s): <xsl:value-of select="rutCliente"/></fo:inline></fo:block>
														<fo:block font-family="Helvetica" font-size="10pt" text-align="justify"><fo:inline font-weight="bold">Tipo de Cuenta:
														<xsl:variable name="tipoCuenta" select="tipoCuenta" />
														 <xsl:if test="$tipoCuenta = 'CCT'">
														 Corriente 
														 </xsl:if>
														 <xsl:if test="$tipoCuenta = 'CPR'">
														 Vista
														 </xsl:if>
														 </fo:inline></fo:block>
														<fo:block font-family="Helvetica" font-size="10pt" text-align="justify"><fo:inline font-weight="bold">N° de Cuenta: <xsl:value-of select="nroCuenta"/></fo:inline></fo:block>
																												
                            <fo:block><fo:leader leader-pattern="space" leader-length="17cm"/></fo:block>
                      

            </fo:flow>
        </fo:page-sequence>

        </fo:root>
    </xsl:template>
</xsl:stylesheet>
