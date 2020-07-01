<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format">
    <xsl:template match="/">
        <xsl:variable name="titulos">#FFFFFF</xsl:variable>
        <xsl:variable name="lineas">#EBEBEB</xsl:variable>
        <xsl:variable name="txt">#000000</xsl:variable>
        <xsl:variable name="sombreadoTablas">#CFCFCF</xsl:variable>
        
		<fo:root xmlns:fo="http://www.w3.org/1999/XSL/Format">
            <fo:layout-master-set>
                <fo:simple-page-master master-name="all-pages" page-width="210mm" page-height="297mm" margin-top="30mm">
                    <fo:region-body padding="0" margin="0.7in" region-name="xsl-region-body" column-gap="0.25in"/>
                    <fo:region-before region-name="xsl-region-before" extent="7in"/>
                    <fo:region-after padding="0" region-name="xsl-region-after" display-align="before" extent="0.7in"/>
                </fo:simple-page-master>
                <fo:page-sequence-master master-name="default-page">
                    <fo:repeatable-page-master-reference master-reference="all-pages"/>
                </fo:page-sequence-master>
            </fo:layout-master-set>
            
            <fo:page-sequence master-reference="default-page" initial-page-number="1" format="1">
                <fo:static-content flow-name="xsl-region-before" >
                    <fo:block>
                        <fo:table width="21cm" space-after="4mm">
                            <fo:table-column column-width="2cm" /> 
                            <fo:table-column column-width="14cm" />
                            <fo:table-column />                     
                            <fo:table-body>
                                <fo:table-row>
                                    <fo:table-cell>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:external-graphic width="100pt" >
											<xsl:attribute name="src">
												url('<xsl:value-of select="factoring/rutaLogoCabecera" />')
											</xsl:attribute>
										</fo:external-graphic>
									</fo:table-cell>
                                    <fo:table-cell>
                                        <fo:external-graphic width="100pt">
                                            <xsl:attribute name="src">
                                               url('<xsl:value-of select="factoring/rutaLogoSelloAgua" />')
                                            </xsl:attribute>
                                        </fo:external-graphic>
                                    </fo:table-cell>
                                </fo:table-row>
                            </fo:table-body>
                        </fo:table>
                    </fo:block>
                </fo:static-content>
                <fo:static-content flow-name="xsl-region-after" margin-left="18.7cm" font-size="12pt" >
                    <fo:block font-weight="bold" font-size="8pt" color="{$txt}" >
                        Página                         <fo:page-number/>
                    </fo:block>
                </fo:static-content>
                <fo:flow flow-name="xsl-region-body">
                    <fo:block background-position="center" margin-left="0.4cm">
                        <fo:block space-before="2cm" font-size="10pt" margin-left="0.4cm" >
                            Estimado Cliente,
                        </fo:block>
                        <fo:block space-before="0cm" font-size="10pt" margin-left="0.4cm" >
                            el comprobante de su Anticipo:
                        </fo:block>
						<fo:block margin-left="0.4cm" width="200pt" height="200pt" space-before="1cm" >
							<fo:block >
								<fo:block space-before="0.5cm" font-size="12pt" margin-left="0.4cm" font-weight="bold">
									Comprobante de Anticipo 
								</fo:block>

	<fo:table width="18cm" space-after="1cm" >
		<fo:table-column column-width="8cm"/>
		<fo:table-column column-width="10cm"/>
		<fo:table-body>
			<fo:table-row>
				<fo:table-cell>
					<fo:block>
						<fo:external-graphic vertical-align="middle">
							<xsl:attribute name="src">url('<xsl:value-of select="factoring/rutaImgConfirmacion" />')</xsl:attribute>
						</fo:external-graphic>
					</fo:block>
				</fo:table-cell>
				<fo:table-cell>
					<fo:block>
								<fo:table width="10cm" space-after="1cm" >
									<fo:table-column column-width="5.5cm"/>
									<fo:table-column column-width="4cm"/>
									<fo:table-column column-width="0.5cm"/>
									<fo:table-body>
										<fo:table-row>
											<fo:table-cell>
												<fo:block space-before="4mm" font-size="10pt" margin-left="0.1cm" font-weight="bold">
													<fo:inline color="{$txt}">Comprobante : </fo:inline>
												</fo:block>
											</fo:table-cell>
											<fo:table-cell>
												<fo:block space-before="4mm" font-size="10pt" font-weight="bold" text-align="left">
													<fo:inline><xsl:value-of select="factoring/numeroDeSolicitud"/></fo:inline>
												</fo:block>
											</fo:table-cell>
											<fo:table-cell>&#0160;</fo:table-cell>
										</fo:table-row>
										<fo:table-row>
											<fo:table-cell>
												<fo:block space-before="4mm" font-size="10pt" margin-left="0.1cm" font-weight="bold">
													<fo:inline color="{$txt}">Fecha : </fo:inline>
												</fo:block>
											</fo:table-cell>
											<fo:table-cell>
												<fo:block space-before="4mm" font-size="10pt" font-weight="bold" text-align="left">
													<fo:inline><xsl:value-of select="factoring/fechaTransaccion" />&#0160;<xsl:value-of select="factoring/horaTransaccion" /></fo:inline>
												</fo:block>												
											</fo:table-cell>
											<fo:table-cell>&#0160;</fo:table-cell>
										</fo:table-row>
										<fo:table-row>
											<fo:table-cell>
												<fo:block space-before="4mm" font-size="10pt" margin-left="0.1cm" font-weight="bold"> 
													<fo:inline color="{$txt}">Monto a financiar : </fo:inline>
												</fo:block>
											</fo:table-cell>
											<fo:table-cell>
												<fo:block space-before="4mm" font-size="10pt" font-weight="bold" text-align="left">
													<fo:inline color="{$txt}">$ </fo:inline>
													<fo:inline><xsl:value-of select="factoring/montoTotalAnticipado"/></fo:inline>
												</fo:block>
											</fo:table-cell>
											<fo:table-cell>&#0160;</fo:table-cell>
										</fo:table-row>
										<fo:table-row>
											<fo:table-cell>
												<fo:block space-before="4mm" font-size="10pt" margin-left="0.1cm" font-weight="bold" >
													<fo:inline color="{$txt}">Tasa de descuento : </fo:inline>
												</fo:block>
											</fo:table-cell>
											<fo:table-cell>
												<fo:block space-before="4mm" font-size="10pt" font-weight="bold" text-align="left">
													<fo:inline><xsl:value-of select="factoring/tasaDescuento"/></fo:inline>
													<fo:inline color="{$txt}"> %</fo:inline>
												</fo:block>
											</fo:table-cell>
											<fo:table-cell>&#0160;</fo:table-cell>
										</fo:table-row>
										<fo:table-row>
											<fo:table-cell>
												<fo:block space-before="4mm" font-size="10pt" margin-left="0.1cm" font-weight="bold">
													<fo:inline color="{$txt}">Diferencia de precio : </fo:inline>
												</fo:block>
											</fo:table-cell>
											<fo:table-cell>
												<fo:block space-before="4mm" font-size="10pt" font-weight="bold" text-align="left">
													<fo:inline color="{$txt}">-$ </fo:inline>
													<fo:inline><xsl:value-of select="factoring/diferenciaPrecio"/></fo:inline>
												</fo:block>
											</fo:table-cell>
											<fo:table-cell>&#0160;</fo:table-cell>
										</fo:table-row>
										<fo:table-row>
											<fo:table-cell>
												<fo:block space-before="4mm" font-size="10pt" margin-left="0.1cm" font-weight="bold">
													<fo:inline color="{$txt}">Comisión por operación : </fo:inline>
												</fo:block>
											</fo:table-cell>
											<fo:table-cell>
												<fo:block space-before="4mm" font-size="10pt" font-weight="bold" text-align="left">
													<fo:inline color="{$txt}">-$ </fo:inline>
													<fo:inline><xsl:value-of select="factoring/comisionOperacion"/></fo:inline>
												</fo:block>
											</fo:table-cell>
											<fo:table-cell>&#0160;</fo:table-cell>
										</fo:table-row>  
										<fo:table-row>
											<fo:table-cell>
												<fo:block space-before="4mm" font-size="10pt" margin-left="0.1cm" font-weight="bold" >
													<fo:inline color="{$txt}">IVA comisión por operación : </fo:inline>
												</fo:block>
											</fo:table-cell>
											<fo:table-cell>
												<fo:block space-before="4mm" font-size="10pt" font-weight="bold" text-align="left">
													<fo:inline color="{$txt}">-$ </fo:inline>
													<fo:inline><xsl:value-of select="factoring/iVAComisionOperacion"/></fo:inline>
												</fo:block>
											</fo:table-cell>
											<fo:table-cell>&#0160;</fo:table-cell>
										</fo:table-row>
										<fo:table-row>
											<fo:table-cell>
												<fo:block space-before="4mm" font-size="10pt" margin-left="0.1cm" font-weight="bold">
													<fo:inline color="{$txt}">Comisión por forma de pago : </fo:inline>
												</fo:block>
											</fo:table-cell>
											<fo:table-cell>
												<fo:block space-before="4mm" font-size="10pt" font-weight="bold" text-align="left">
													<fo:inline color="{$txt}">-$ </fo:inline>
													<fo:inline><xsl:value-of select="factoring/comisionFormaPago"/></fo:inline>
												</fo:block>
											</fo:table-cell>
											<fo:table-cell>&#0160;</fo:table-cell>
										</fo:table-row>  
										<fo:table-row>
											<fo:table-cell>
												<fo:block space-before="4mm" font-size="10pt" margin-left="0.1cm" font-weight="bold">
													<fo:inline color="{$txt}">IVA comisión forma de pago : </fo:inline>
												</fo:block>
											</fo:table-cell>
											<fo:table-cell>
												<fo:block space-before="4mm" font-size="10pt" font-weight="bold" text-align="left">
													<fo:inline color="{$txt}">-$ </fo:inline>
													<fo:inline><xsl:value-of select="factoring/iVAComisionFormaPago"/></fo:inline>
												</fo:block>
											</fo:table-cell>
											<fo:table-cell>&#0160;</fo:table-cell>
										</fo:table-row>  
										<fo:table-row>
											<fo:table-cell>
												<fo:block space-before="4mm" font-size="10pt" margin-left="0.1cm" font-weight="bold">
													<fo:inline color="{$txt}">Monto a Pagar : </fo:inline>
												</fo:block>
											</fo:table-cell>
											<fo:table-cell>
												<fo:block space-before="4mm" font-size="10pt" font-weight="bold" text-align="left">
													<fo:inline color="{$txt}">$ </fo:inline>
													<fo:inline><xsl:value-of select="factoring/montoAPagar"/></fo:inline>
												</fo:block>
											</fo:table-cell>
											<fo:table-cell>&#0160;</fo:table-cell>
										</fo:table-row>
									</fo:table-body>
								</fo:table>
					</fo:block>
				</fo:table-cell>
			</fo:table-row>
		</fo:table-body>
	</fo:table>
	
												<fo:block space-before="1mm" font-size="10pt" margin-left="0.4cm" font-weight="bold"> 
													<fo:inline color="{$txt}">Medio de Pago es </fo:inline>
													<fo:inline><xsl:value-of select="factoring/nombreBcoPrimario"/></fo:inline>
												</fo:block>

												<fo:block space-before="5mm" font-size="10pt" margin-left="0.4cm" font-weight="bold">
													<fo:inline color="{$txt}">Su pago estará disponible el </fo:inline>
													<fo:inline><xsl:value-of select="factoring/fechaPagoFact"/></fo:inline>
												</fo:block>

												<fo:block space-before="10mm" font-size="8pt" margin-left="0.4cm" font-weight="bold">
													<fo:inline color="{$txt}">NOTA:</fo:inline>
													<fo:inline>Para abonos en cuentas BCI sus fondos estarán disponibles en linea para transacciones realizadas hasta las 11:00 hrs. y al día hábil siguiente para transacciones realizadas hasta las 24:00 hrs. Para abonos en otros bancos sus fondos estarán disponibles al día hábil siguiente para transacciones realizadas hasta las 9:00 hrs y al día hábil subsiguiente para operaciones realizadas hasta las 24:00 hrs.</fo:inline>
												</fo:block>
							</fo:block>
						</fo:block>
						<xsl:if test="position() = last()"> 
							<fo:table space-after="7cm">
								<fo:table-column column-width="0.5cm"/>
								<fo:table-column column-width="2cm"/>
								<fo:table-body>
									<fo:table-row>
										<fo:table-cell  margin-left="16.7cm">
											<fo:block font-size="8pt" font-weight="bold">
											</fo:block>
										</fo:table-cell>
										<fo:table-cell margin-left="17.2cm">
											<fo:block font-size="8pt" font-weight="bold">
											</fo:block>
										</fo:table-cell>
									</fo:table-row>
								</fo:table-body>
							</fo:table>
						</xsl:if>  
						<xsl:if test="position() != last()"> 
							<fo:table space-after="7cm">
								<fo:table-column column-width="0.5cm"/>
								<fo:table-column column-width="2cm"/>
								<fo:table-body>
									<fo:table-row>
										<fo:table-cell  margin-left="16.7cm">
											<fo:block font-size="8pt" font-weight="bold">
											</fo:block>
										</fo:table-cell>
										<fo:table-cell margin-left="17.2cm">
											<fo:block font-size="8pt" font-weight="bold">
											</fo:block>
										</fo:table-cell>
									</fo:table-row>
								</fo:table-body>
							</fo:table>
						</xsl:if>
                    </fo:block> 
                </fo:flow>
            </fo:page-sequence>
        </fo:root>
    </xsl:template>
</xsl:stylesheet>
