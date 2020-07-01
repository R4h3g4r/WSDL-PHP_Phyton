<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format" version="1.0">
	<xsl:param name="img1"/>   
	<xsl:decimal-format name="european" decimal-separator=',' grouping-separator='.' />
	<xsl:template match="certificadoXml">
		<fo:root xmlns:fo="http://www.w3.org/1999/XSL/Format">
			
			<fo:layout-master-set>
				<fo:simple-page-master master-name="all" page-height="11in" page-width="8.5in"
					margin-top="2.5cm" margin-bottom="2.5cm" margin-left="3.0cm" margin-right="3.0cm"
					border="thick solid red">
					<fo:region-body />
					<fo:region-before extent="4cm" />
					<fo:region-after extent="2cm" />
				</fo:simple-page-master>
			</fo:layout-master-set>

			<fo:page-sequence master-reference="all" format="1">
			
				<fo:static-content flow-name="xsl-region-before">
				</fo:static-content>				 
				<fo:static-content flow-name="xsl-region-after">
					<fo:block text-align="start" font-size="8pt" font-family="Times New Roman" line-height="1em + 2pt">
					</fo:block>
				</fo:static-content>
				 
				<fo:flow flow-name="xsl-region-body">
				
				<fo:block text-align="left" padding-after="2em">
					<xsl:element name="fo:external-graphic">
						<xsl:attribute name="src">
							url('<xsl:value-of select="$img1"/>')
						</xsl:attribute>
						<xsl:attribute name="height">1.5cm</xsl:attribute>
						<xsl:attribute name="width">3.5cm</xsl:attribute>
					</xsl:element>
				</fo:block>
					
					<fo:table font-family="Times New Roman" font-size="12pt" padding-after="2em" line-height="1.5em">
						<fo:table-column></fo:table-column>
						<fo:table-body>
							<fo:table-row  text-align="center">
								<fo:table-cell>
									<fo:block font-weight="bold" text-decoration="none">
										CONSTANCIA
									</fo:block>
								</fo:table-cell>
							</fo:table-row>
						</fo:table-body>
					</fo:table>
					
					<fo:table font-family="Times New Roman" font-size="11pt" padding-after="2em" line-height="1.5em">
						<fo:table-column ></fo:table-column>
						<fo:table-body>
							<fo:table-row text-align="justify">
								<fo:table-cell>
									<fo:block>
										<fo:inline>El Banco de Crédito e Inversiones deja constancia que, el/la señor(a): </fo:inline>
                                        <xsl:for-each select="nombreCliente">
    	                                    <fo:inline font-size="11pt" font-weight="bold">
	    	                                    <xsl:apply-templates/>
                                        	</fo:inline>
                                        </xsl:for-each>
										<fo:inline>, RUT </fo:inline>
                                        <xsl:for-each select="rutCliente">
    	                                    <fo:inline font-size="11pt" font-weight="bold">
	    	                                    <xsl:apply-templates/>
                                        	</fo:inline>
                                        </xsl:for-each>
										<fo:inline>, mantiene la(s) siguiente cuenta(s) vigente(s), a la fecha en esta institución.</fo:inline>
									</fo:block>
								</fo:table-cell>
							</fo:table-row>
						</fo:table-body>
					</fo:table>
					
					<fo:table font-family="Times New Roman" font-size="11pt" padding-after="2em"  line-height="2.5em">
						<fo:table-column column-width="proportional-column-width(33)"></fo:table-column>
						<fo:table-column column-width="proportional-column-width(35)"></fo:table-column>
						<fo:table-column column-width="proportional-column-width(32)"></fo:table-column>
						<fo:table-body>
							<fo:table-row>
								<fo:table-cell border-width="1px" border-style="solid">
									<fo:block font-weight="bold" text-align="center">
										Número Cuenta
									</fo:block>
								</fo:table-cell>
								<fo:table-cell border-width="1px" border-style="solid">
									<fo:block font-weight="bold" text-align="center">
										Tipo Cuenta
									</fo:block>
								</fo:table-cell>
								<fo:table-cell border-width="1px" border-style="solid">
									<fo:block font-weight="bold" text-align="center">
										Fecha Apertura
									</fo:block>
								</fo:table-cell>
							</fo:table-row>
							<fo:table-row>
								<fo:table-cell border-width="1px" border-style="solid">
									<xsl:for-each select="numeroCuenta">
									<fo:block text-align="center">
										<xsl:apply-templates/>
									</fo:block>
									</xsl:for-each>								
								</fo:table-cell>
								
								<fo:table-cell border-width="1px" border-style="solid">
									<xsl:for-each select="tipoCuenta">
									<fo:block text-align="center">
										<xsl:apply-templates/>
									</fo:block>
									</xsl:for-each>								
								</fo:table-cell>
								
								<fo:table-cell border-width="1px" border-style="solid">
									<xsl:for-each select="fechaApertura">
									<fo:block text-align="center">
										<xsl:apply-templates/>
									</fo:block>
									</xsl:for-each>															
								</fo:table-cell>
							 </fo:table-row>
						</fo:table-body>
					</fo:table>
					
					<fo:table font-family="Times New Roman" font-size="11pt" padding-after="2em"  line-height="2em">
						<fo:table-column></fo:table-column>
						<fo:table-body>
							<fo:table-row text-align="justify">
								<fo:table-cell>
									<fo:block>
										Se extiende la presente constancia a petición del interesado, para los fines que estime conveniente, sin ulterior responsabilidad para este Banco.
									</fo:block>
								</fo:table-cell>
							</fo:table-row>
						</fo:table-body>
					</fo:table>

					<fo:table font-family="Times New Roman" font-size="11pt" padding-after="5em" line-height="2em" text-align="right">
						<fo:table-column></fo:table-column>
						<fo:table-body>
							<fo:table-row>
								<fo:table-cell>
									<fo:block>
										<fo:inline>
										Santiago, 
										</fo:inline>
										<xsl:for-each select="fechaActual">
    	                            	<fo:inline font-size="11pt">
			    	                        <xsl:apply-templates/>
        	                            </fo:inline>
                                    </xsl:for-each>
									</fo:block>
								</fo:table-cell>
							</fo:table-row>
						</fo:table-body>
					</fo:table>
					
					<fo:table font-family="Times New Roman" font-size="11pt" padding-after="2em"  line-height="2.5em" text-align="left">
						<fo:table-column column-width="proportional-column-width(50)"></fo:table-column>
						<fo:table-body>
							<fo:table-row>
								<fo:table-cell >
									<xsl:if test="urlFirma">
										<fo:block padding-top="2pt" text-align="center">
										<fo:external-graphic  width="182px" height="133px" scaling="uniform">
											<xsl:attribute name="src">
												<xsl:value-of select="urlFirma"/>                       
											</xsl:attribute>
										</fo:external-graphic>
										</fo:block>
									</xsl:if>
								</fo:table-cell>
							</fo:table-row>
						</fo:table-body>
					</fo:table>

				</fo:flow>
			</fo:page-sequence>
		</fo:root>
	</xsl:template>
</xsl:stylesheet>