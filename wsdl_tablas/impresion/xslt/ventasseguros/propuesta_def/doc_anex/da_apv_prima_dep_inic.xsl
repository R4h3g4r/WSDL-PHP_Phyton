<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format">
	<xsl:template name="temp_da_apv_prima_dep_inic">
		<xsl:if test="../../../../pago/primerpago/formadepago != '' ">
			<fo:block padding-before="{$varEspacioExtreSecciones}">
				<fo:table table-layout="fixed" width="100%">
					<fo:table-column column-width="proportional-column-width(38)"/>
					<fo:table-column column-width="proportional-column-width(12)"/>
					<fo:table-column column-width="proportional-column-width(12)"/>
					<fo:table-column column-width="proportional-column-width(38)"/>
					<fo:table-body>
						<fo:table-row>
							<fo:table-cell padding="2pt" border-style="solid" border-width="1.0pt" border-color="#000000" number-columns-spanned="4" display-align="before" background-color="{$varTablaTituloColor}" padding-left="5pt">
								<fo:block font-weight="bold" color="{$varTablaTituloTextColor}" font-size="12pt">
									<fo:inline font-weight="bold">PRIMA DEPOSITO INICIAL</fo:inline>
								</fo:block>
							</fo:table-cell>
						</fo:table-row>
						<fo:table-row>
							<fo:table-cell padding="2pt" border-style="solid" border-width="1.0pt" border-color="#000000" number-columns-spanned="2" display-align="before">
								<fo:block>
									<fo:block>Monto de la prima en depósito:</fo:block>
									<fo:block>
									En UF <xsl:value-of select="../../../../pago/primerpago/valor"/>
										<xsl:if test=" ../../../../pago/primerpago/valorpesos != '' ">
										En pesos <xsl:value-of select="../../../../pago/primerpago/valorpesos"/>
										</xsl:if>
									</fo:block>
								</fo:block>
							</fo:table-cell>
							<fo:table-cell padding="2pt" border-style="solid" border-width="1.0pt" border-color="#000000" number-columns-spanned="2" display-align="before">
								<fo:block>Fecha valor de conversión: <xsl:value-of select="../../../../pago/primerpago/fecha"/>
								</fo:block>
							</fo:table-cell>
						</fo:table-row>
						<fo:table-row>
							<fo:table-cell padding="2pt" border-style="solid" border-width="1.0pt" border-color="#000000" display-align="before">
								<fo:block>
									<fo:block>Modalidad de pago: </fo:block>
									<fo:block>
										<xsl:value-of select="../../../../pago/primerpago/formadepago"/>
									</fo:block>
								</fo:block>
							</fo:table-cell>
							<fo:table-cell padding="2pt" border-style="solid" border-width="1.0pt" border-color="#000000" number-columns-spanned="2" display-align="before">
								<fo:block>
									<fo:block>
										<xsl:value-of select="../../../../pago/primerpago/tiponocuenta"/>:</fo:block>
									<fo:block>
										<xsl:value-of select="../../../../pago/primerpago/nocuenta"/>
									</fo:block>
								</fo:block>
							</fo:table-cell>
							<fo:table-cell padding="2pt" border-style="solid" border-width="1.0pt" border-color="#000000" display-align="before">
								<fo:block>
									<xsl:if test=" ../../../../pago/primerpago/banco != '' ">
										<fo:block>Banco:</fo:block>
										<fo:block>
											<xsl:value-of select="../../../../pago/primerpago/banco"/>
										</fo:block>
									</xsl:if>
								</fo:block>
							</fo:table-cell>
						</fo:table-row>
						<fo:table-row>
							<fo:table-cell padding="2pt" border-style="solid" border-width="1.0pt" border-color="#000000" number-columns-spanned="4" display-align="before">
								<fo:block text-align="justify">
									<fo:block>Si la prima en depósito es pagada mediante cargo en tarjeta de crédito, se entenderá cancelada solo una vez que la Administradora de Tarjeta de Créditos apruebe el cargo en dicha tarjeta.</fo:block>
									<fo:block padding-before="5pt">La presente propuesta de seguro es a la vez un Certificado de Cobertura Provisoria por el riesgo de muerte causada por accidente, con vigencia por el término máximo de 30 días contados desde la fecha de recepción de este documento en la compañía, únicamente si se ha pagado la prima de depósito inicial.</fo:block>
									<fo:block padding-before="5pt">En todo caso, la cobertura provisoria cesará automáticamente en la fecha en que la compañía acepte o rechace el riesgo de la presente propuesta.</fo:block>
									<fo:block padding-before="5pt">Se entenderá que hay aceptación del riesgo por el solo hecho de la emisión de la póliza solicitada en virtud de esta propuesta. En caso de rechazo, la compañía comunicará por escrito al contratante, al domicilio arriba señalado, devolviéndole la prima en depósito recibida.</fo:block>
									<fo:block padding-before="5pt">Capital asegurado: El monto de la cobertura provisoria por accidente será igual al capital de la cobertura por fallecimiento solicitado en la propuesta, pero con tope máximo de UF 1.000.</fo:block>
									<fo:block padding-before="5pt">El contratante acepta que la cobertura provisoria derivada de la presente propuesta es absolutamente incompatible con cualquier otra en tramitación o vigente en la compañía aseguradora, teniendo validez sólo aquella que primero se hubiere solicitado.</fo:block>
									<fo:block padding-before="5pt">Serán aplicables las Condiciones Generales del Beneficio de Muerte Accidental registradas bajo el código POL 2 92 015 de la S.V.S.</fo:block>
								</fo:block>
							</fo:table-cell>
						</fo:table-row>
					</fo:table-body>
				</fo:table>
			</fo:block>
		</xsl:if>
	</xsl:template>
</xsl:stylesheet>
