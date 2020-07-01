<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format" version="1.0">
	<xsl:template match="certificado">	
		<fo:root xmlns:fo="http://www.w3.org/1999/XSL/Format">
			<fo:layout-master-set>
				<fo:simple-page-master master-name="first"
							          margin-right="1.5cm"
							          margin-left="1.5cm"
							          margin-bottom="2cm"
							          margin-top="1cm"
							          page-width="21cm"
							          page-height="29.7cm">
					<fo:region-body margin-top="1cm" />
					<fo:region-before extent="1cm" />
					<fo:region-after extent="1.5cm" />
				</fo:simple-page-master>
			</fo:layout-master-set>
  
			<fo:page-sequence master-reference="first">
				<fo:static-content flow-name="xsl-region-before">
					<fo:block line-height="14pt" font-size="10pt" text-align="end"></fo:block>
				</fo:static-content>
				<fo:static-content flow-name="xsl-region-after">
					<fo:block line-height="14pt" font-size="10pt" text-align="end"><fo:page-number/></fo:block>
				</fo:static-content>
			
				<fo:flow flow-name="xsl-region-body">
					<fo:block padding-top="3pt" text-align="center" space-after.optimum="15pt" line-height="24pt" font-family="sans-serif" font-size="18pt" text-decoration="underline"> CONSTANCIA</fo:block>
					<fo:block padding-top="15pt"  text-align="justify">
				    	El Banco de Crédito e Inversiones deja constancia que, el/la señor(a): <fo:inline font-weight="bold"><xsl:value-of select='nombres'/></fo:inline><fo:inline font-weight="bold"><xsl:value-of select='apellidos' /></fo:inline>, 
				    	RUT <xsl:value-of select='rut' />, registra la(s) siguiente(s) deuda(s) vigente(s), a la fecha en esta institución.
					</fo:block>
				
					<!-- Linea Sobre giro -->
					<xsl:if test="LineaSobreGiro">
						<fo:table border-collapse="collapse" table-layout="fixed"  padding-top="20pt">
							<fo:table-column column-width="18cm" />
							<fo:table-body>
								<fo:table-row>
									<fo:table-cell><fo:block text-align="left" font-size="10pt" margin-left="5pt" font-weight="bold">Linea de Sobregiro</fo:block></fo:table-cell>
								</fo:table-row>
							</fo:table-body>
						</fo:table>
						<fo:table border-collapse="collapse" table-layout="fixed"  padding-top="3pt">
							<fo:table-column column-width="4.5cm"/>
							<fo:table-column column-width="4.5cm"/>
							<fo:table-column column-width="4.5cm"/>
							<fo:table-column column-width="4.5cm"/>
							<fo:table-body>
								<fo:table-row>
									<fo:table-cell background-color="#f0f0f0">
										<fo:block text-align="left" font-size="9pt" margin-left="5pt">Número Cuenta</fo:block>
									</fo:table-cell>
									<fo:table-cell background-color="#f0f0f0">
										<fo:block text-align="right" font-size="9pt" margin-right="5pt">Monto Autorizado</fo:block>
									</fo:table-cell>
									<fo:table-cell background-color="#f0f0f0">
										<fo:block text-align="right" font-size="9pt" margin-right="5pt">Monto Utilizado</fo:block>
									</fo:table-cell>
									<fo:table-cell background-color="#f0f0f0">
										<fo:block text-align="right" font-size="9pt" margin-right="5pt">Intereses</fo:block>
									</fo:table-cell>
								</fo:table-row>
								<xsl:for-each select="LineaSobreGiro/linea">
									<fo:table-row>
										<fo:table-cell>
											<fo:block text-align="left" font-size="9pt" margin-left="5pt"><xsl:value-of select="nroLsg" /></fo:block>
										</fo:table-cell>
										<fo:table-cell>
											<fo:block text-align="right" font-size="9pt" margin-right="5pt">$ <xsl:value-of select="valAutorizado" /></fo:block>
										</fo:table-cell>
										<fo:table-cell>
											<fo:block text-align="right" font-size="9pt" margin-right="5pt">$ <xsl:value-of select="montoUtili" /></fo:block>
										</fo:table-cell>
										<fo:table-cell>
											<fo:block text-align="right" font-size="9pt" margin-right="5pt">$ <xsl:value-of select="datoInteres" /></fo:block>
										</fo:table-cell>
									</fo:table-row>
								</xsl:for-each>
							</fo:table-body>
						</fo:table>
					</xsl:if>
					<!-- tarjeta de Crédito Visa -->
					<xsl:if test="SaldoVisa">
						<fo:table border-collapse="collapse" table-layout="fixed" padding-top="20pt">
					    		<fo:table-column column-width="18cm" />
					    		<fo:table-body>
					    			<fo:table-row>
					    				<fo:table-cell><fo:block text-align="left" font-size="10pt" margin-left="5pt" font-weight="bold">Tarjeta de Crédito Nacional</fo:block></fo:table-cell>
					    			</fo:table-row>
					    		</fo:table-body>
					    	</fo:table>
						<fo:table border-collapse="collapse" table-layout="fixed"  padding-top="3pt">
					    		<fo:table-column column-width="7.5cm"/>
					    		<fo:table-column column-width="4.5cm"/>
					    		<fo:table-column column-width="4.5cm"/>
					    		<fo:table-body>
					    			<fo:table-row>
					    				<fo:table-cell background-color="#f0f0f0">
					    					<fo:block text-align="left" font-size="9pt" margin-left="5pt">Número Cuenta</fo:block>
					    				</fo:table-cell>
					    				<fo:table-cell background-color="#f0f0f0">
					    					<fo:block text-align="right" font-size="9pt" margin-right="5pt">Monto Autorizado</fo:block>
					    				</fo:table-cell>
					    				<fo:table-cell background-color="#f0f0f0">
					    					<fo:block text-align="right" font-size="9pt" margin-right="5pt">Monto Utilizado</fo:block>
					    				</fo:table-cell>
					    			</fo:table-row>
					    			<xsl:for-each select="SaldoVisa/visa">
					    				<fo:table-row>
					    					<fo:table-cell>
					    						<fo:block text-align="left" font-size="9pt" margin-left="5pt"><xsl:value-of select="numero_cuenta" /></fo:block>
					    					</fo:table-cell>
					    					<fo:table-cell>
					    						<fo:block text-align="right" font-size="9pt" margin-right="5pt">$ <xsl:value-of select="monto_autorizado" /></fo:block>
					    					</fo:table-cell>
					    					<fo:table-cell>
					    						<fo:block text-align="right" font-size="9pt" margin-right="5pt">$ <xsl:value-of select="monto_utilizado" /></fo:block>
					    					</fo:table-cell>
					    				</fo:table-row>
					    			</xsl:for-each>
					    		</fo:table-body>
					    	</fo:table>
				    	</xsl:if>    		
					<!-- Linea Sobre giro Banco Nova -->
					<xsl:if test="LineaSobreGiroNova">
						<fo:table border-collapse="collapse" table-layout="fixed" padding-top="20pt">
					    		<fo:table-column column-width="18cm" />
					    		<fo:table-body>
					    			<fo:table-row>
					    				<fo:table-cell><fo:block text-align="left" font-size="10pt" margin-left="5pt" font-weight="bold">Línea de Sobregiro Nova</fo:block></fo:table-cell>
					    			</fo:table-row>
					    		</fo:table-body>
					    	</fo:table>
						<fo:table border-collapse="collapse" table-layout="fixed"  padding-top="3pt">
					    		<fo:table-column column-width="4.5cm"/>
					    		<fo:table-column column-width="4.5cm"/>
					    		<fo:table-column column-width="4.5cm"/>
					    		<fo:table-body>
					    			<fo:table-row  background-color="#f0f0f0">
					    				<fo:table-cell>
					    					<fo:block text-align="left" font-size="9pt" margin-left="5pt">Número Cuenta</fo:block>
					    				</fo:table-cell>
					    				<fo:table-cell>
					    					<fo:block text-align="right" font-size="9pt" margin-right="5pt">Monto Autorizado</fo:block>
					    				</fo:table-cell>
					    				<fo:table-cell>
					    					<fo:block text-align="right" font-size="9pt" margin-right="5pt">Monto Utilizado</fo:block>
					    				</fo:table-cell>
					    			</fo:table-row>
					    			<xsl:for-each select="LineaSobreGiroNova/lineaNova">
					    				<fo:table-row>
					    					<fo:table-cell>
					    						<fo:block text-align="left" font-size="9pt" margin-left="5pt"><xsl:value-of select="numero_cuenta" /></fo:block>
					    					</fo:table-cell>
					    					<fo:table-cell>
					    						<fo:block text-align="right" font-size="9pt" margin-right="5pt">$ <xsl:value-of select="monto_autorizado" /></fo:block>
					    					</fo:table-cell>
					    					<fo:table-cell>
					    						<fo:block text-align="right" font-size="9pt" margin-right="5pt">$ <xsl:value-of select="monto_utilizado" /></fo:block>
					    					</fo:table-cell>
					    				</fo:table-row>
					    			</xsl:for-each>
					    		</fo:table-body>
					    	</fo:table>
					</xsl:if>    		
					<!-- Tarjeta de Crédito MasterCard (Banco Nova) -->
					<xsl:if test="TarjetaCreditoNova">
						<fo:table border-collapse="collapse" table-layout="fixed" padding-top="20pt">
					    		<fo:table-column column-width="18cm" />
					    		<fo:table-body>
					    			<fo:table-row>
					    				<fo:table-cell><fo:block text-align="left" font-size="10pt" margin-left="5pt" font-weight="bold">Tarjeta de Crédito Nova</fo:block></fo:table-cell>
					    			</fo:table-row>
					    		</fo:table-body>
					    	</fo:table>
						<fo:table border-collapse="collapse" table-layout="fixed"  padding-top="3pt">
					    		<fo:table-column column-width="7.5cm"/>
					    		<fo:table-column column-width="4.5cm"/>
					    		<fo:table-column column-width="4.5cm"/>
					    		<fo:table-body>
					    			<fo:table-row>
					    				<fo:table-cell background-color="#f0f0f0">
					    					<fo:block text-align="left" font-size="9pt" margin-left="5pt">Número Cuenta</fo:block>
					    				</fo:table-cell>
					    				<fo:table-cell background-color="#f0f0f0">
					    					<fo:block text-align="right" font-size="9pt" margin-right="5pt">Monto Autorizado</fo:block>
					    				</fo:table-cell>
					    				<fo:table-cell background-color="#f0f0f0">
					    					<fo:block text-align="right" font-size="9pt" margin-right="5pt">Monto Utilizado</fo:block>
					    				</fo:table-cell>
					    			</fo:table-row>
					    			<xsl:for-each select="DetalleCredito/credito">
					    				<fo:table-row>
					    					<fo:table-cell>
					    						<fo:block text-align="left" font-size="9pt" margin-left="5pt"><xsl:value-of select="numero_cuenta" /></fo:block>
					    					</fo:table-cell>
					    					<fo:table-cell>
					    						<fo:block text-align="right" font-size="9pt" margin-right="5pt">$ <xsl:value-of select="monto_autorizado" />	</fo:block>
					    					</fo:table-cell>
					    					<fo:table-cell>
					    						<fo:block text-align="right" font-size="9pt" margin-right="5pt">$ <xsl:value-of select="monto_utilizado" /></fo:block>
					    					</fo:table-cell>
					    				</fo:table-row>
					    			</xsl:for-each>
					    		</fo:table-body>
					    	</fo:table>
					</xsl:if>    		
					<!-- Créditos Vigentes -->
					<xsl:if test="DetalleCredito">
						<fo:table border-collapse="collapse" table-layout="fixed" padding-top="20pt">
					    		<fo:table-column column-width="18cm" />
					    		<fo:table-body>
					    			<fo:table-row>
					    				<fo:table-cell><fo:block text-align="left" font-size="10pt" margin-left="5pt" font-weight="bold">Créditos Vigentes</fo:block></fo:table-cell>
					    			</fo:table-row>
					    		</fo:table-body>
					    	</fo:table>
						<fo:table border-collapse="collapse" table-layout="fixed"  padding-top="3pt">
					    		<fo:table-column column-width="7.5cm"/>
					    		<fo:table-column column-width="4.5cm"/>
					    		<fo:table-column column-width="4.5cm"/>
					    		<fo:table-body>
					    			<fo:table-row>
					    				<fo:table-cell background-color="#f0f0f0">
					    					<fo:block text-align="left" font-size="9pt" margin-left="5pt">Número Cuenta</fo:block>
					    				</fo:table-cell>
					    				<fo:table-cell background-color="#f0f0f0">
					    					<fo:block text-align="right" font-size="9pt" margin-right="5pt">Monto Crédito</fo:block>
					    				</fo:table-cell>
					    				<fo:table-cell background-color="#f0f0f0">
					    					<fo:block text-align="right" font-size="9pt" margin-right="5pt">Saldo Insoluto Crédito</fo:block>
					    				</fo:table-cell>
					    			</fo:table-row>
					    			<xsl:for-each select="DetalleCredito/credito">
					    				<fo:table-row>
					    					<fo:table-cell>
					    						<fo:block text-align="left" font-size="9pt" margin-left="5pt"><xsl:value-of select="numero_cuenta" /></fo:block>
					    					</fo:table-cell>
					    					<fo:table-cell>
					    						<fo:block text-align="right" font-size="9pt" margin-right="5pt">$ <xsl:value-of select="monto_credito" />	</fo:block>
					    					</fo:table-cell>
					    					<fo:table-cell>
					    						<fo:block text-align="right" font-size="9pt" margin-right="5pt">$ <xsl:value-of select="saldo_insoluto" /></fo:block>
					    					</fo:table-cell>
					    				</fo:table-row>
					    			</xsl:for-each>
					    		</fo:table-body>
					    	</fo:table>
					</xsl:if>    		
					<!-- Créditos Vigentes (Banco Nova)-->
					<xsl:if test="DetalleCreditoNova">
						<fo:table border-collapse="collapse" table-layout="fixed" padding-top="20pt">
					    		<fo:table-column column-width="18cm" />
					    		<fo:table-body>
					    			<fo:table-row>
					    				<fo:table-cell><fo:block text-align="left" font-size="10pt" margin-left="5pt" font-weight="bold">Créditos Vigentes</fo:block></fo:table-cell>
					    			</fo:table-row>
					    		</fo:table-body>
					    	</fo:table>
						<fo:table border-collapse="collapse" table-layout="fixed"  padding-top="3pt">
					    		<fo:table-column column-width="7.5cm"/>
					    		<fo:table-column column-width="4.5cm"/>
					    		<fo:table-column column-width="4.5cm"/>
					    		<fo:table-body>
					    			<fo:table-row>
					    				<fo:table-cell background-color="#f0f0f0">
					    					<fo:block text-align="left" font-size="9pt" margin-left="5pt">Número Cuenta</fo:block>
					    				</fo:table-cell>
					    				<fo:table-cell background-color="#f0f0f0">
					    					<fo:block text-align="right" font-size="9pt" margin-right="5pt">Monto Crédito</fo:block>
					    				</fo:table-cell>
					    				<fo:table-cell background-color="#f0f0f0">
					    					<fo:block text-align="right" font-size="9pt" margin-right="5pt">Saldo Insoluto Crédito</fo:block>
					    				</fo:table-cell>
					    			</fo:table-row>
					    			<xsl:for-each select="DetalleCreditoNova/credito">
					    				<fo:table-row>
					    					<fo:table-cell>
					    						<fo:block text-align="left" font-size="9pt" margin-left="5pt"><xsl:value-of select="numero_cuenta" /></fo:block>
					    					</fo:table-cell>
					    					<fo:table-cell>
					    						<fo:block text-align="right" font-size="9pt" margin-right="5pt">$ <xsl:value-of select="monto_credito" />	</fo:block>
					    					</fo:table-cell>
					    					<fo:table-cell>
					    						<fo:block text-align="right" font-size="9pt" margin-right="5pt">$ <xsl:value-of select="saldo_insoluto" /></fo:block>
					    					</fo:table-cell>
					    				</fo:table-row>
					    			</xsl:for-each>
					    		</fo:table-body>
					    	</fo:table>
					</xsl:if>    		
					<!-- Créditos Hipotecarios -->
					<xsl:if test="DetalleHipotecario">
						<fo:table border-collapse="collapse" table-layout="fixed" padding-top="20pt">
					    		<fo:table-column column-width="18cm" />
					    		<fo:table-body>
					    			<fo:table-row>
					    				<fo:table-cell><fo:block text-align="left" font-size="10pt" margin-left="5pt" font-weight="bold">Créditos Hipotecarios</fo:block></fo:table-cell>
					    			</fo:table-row>
					    		</fo:table-body>
					    	</fo:table>
						<fo:table border-collapse="collapse" table-layout="fixed"  padding-top="3pt">
					    		<fo:table-column column-width="7.5cm"/>
					    		<fo:table-column column-width="4.5cm"/>
					    		<fo:table-column column-width="4.5cm"/>
					    		<fo:table-body>
					    			<fo:table-row>
					    				<fo:table-cell background-color="#f0f0f0">
					    					<fo:block text-align="left" font-size="9pt" margin-left="5pt">Número Cuenta - Producto</fo:block>
					    				</fo:table-cell>
					    				<fo:table-cell background-color="#f0f0f0">
					    					<fo:block text-align="right" font-size="9pt" margin-right="5pt">Monto Crédito</fo:block>
					    				</fo:table-cell>
					    				<fo:table-cell background-color="#f0f0f0">
					    					<fo:block text-align="right" font-size="9pt" margin-right="5pt">Saldo Insoluto Crédito</fo:block>
					    				</fo:table-cell>
					    			</fo:table-row>
					    			<xsl:for-each select="DetalleHipotecario/credito">
					    				<fo:table-row>
					    					<fo:table-cell>
					    						<fo:block text-align="left" font-size="9pt" margin-left="5pt"><xsl:value-of select="numero_operacion" /></fo:block>
					    					</fo:table-cell>
					    					<fo:table-cell>
					    						<fo:block text-align="right" font-size="9pt" margin-right="5pt"><xsl:value-of select="monto_credito" />	</fo:block>
					    					</fo:table-cell>
					    					<fo:table-cell>
					    						<fo:block text-align="right" font-size="9pt" margin-right="5pt"><xsl:value-of select="saldo_insoluto" /></fo:block>
					    					</fo:table-cell>
					    				</fo:table-row>
					    			</xsl:for-each>
					    		</fo:table-body>
					    	</fo:table>
					</xsl:if>    		
					<fo:block padding-left="3pt" padding-top="20pt" text-align="left"  font-family="sans-serif" font-size="11pt" > <fo:inline font-weight="bold">Valores al  <xsl:value-of select='fecha_actual'/></fo:inline> </fo:block>    	
					<fo:block text-align="justify" padding-top="20pt"> Se extiende la presente constancia a petición del interesado, para los fines que estime conveniente, sin ulterior responsabilidad para este Banco. </fo:block>
					<fo:block font-weight="bold"  padding-top="30pt"> Banco Crédito e Inversiones </fo:block>
					<fo:block  padding-top="20pt" padding-left="3pt" text-align="left"  font-family="sans-serif" font-size="11pt" > Santiago, <xsl:value-of select='dia_actual'/> de <xsl:value-of select='mes_actual' /> del <xsl:value-of select='anho_actual' /> </fo:block>
					<xsl:if test="urlFirma">
						<fo:block padding-top="1pt" text-align="right">
							<fo:external-graphic width="120px" height="144px" scaling="uniform">
								<xsl:attribute name="src">
									<xsl:value-of select="urlFirma"/>                       
								</xsl:attribute>
							</fo:external-graphic>
						</fo:block>
					</xsl:if>
					
				</fo:flow>
			</fo:page-sequence>
		</fo:root>
	</xsl:template>
</xsl:stylesheet>
