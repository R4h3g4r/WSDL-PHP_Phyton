<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="1.1" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format">	
	
  <xsl:param name="logoBci"/>
  <xsl:param name="firma"/> 
  
  <xsl:template match="raiz">
    <fo:root>
		<fo:layout-master-set>
			<fo:simple-page-master master-name="Letter" page-height="29.7cm" page-width="21.0cm" margin="2cm">
				<fo:region-body/>
			</fo:simple-page-master>
		</fo:layout-master-set>		
		
		<!--
			Iteramos sobre los recipientes. Un recipiente tiene todos los certificados MTM
			de un tipo de poducto (ejemplo: SWAP). 
		 -->
		<xsl:for-each select="//recipiente">
		
		<fo:page-sequence master-reference="Letter">			
			<fo:flow flow-name="xsl-region-body">
				
				<fo:block text-align="center" space-after="3mm">
					Certificado de Valorización a Mercado Derivados
				</fo:block>
				
				<fo:block text-align="left">
					   <fo:external-graphic scaling="uniform" height="30pt" width="120pt" src="{$logoBci}"/>
				</fo:block>
					
				<fo:block space-after="3mm" text-align="left">
					<xsl:value-of select="fechaCreacion"/>
				</fo:block>
				
				<fo:block text-align="left">
					Señor(es).
				</fo:block>
				
				<fo:block text-align="left" font-weight="bold">
					<xsl:value-of select="nombreCliente"/>
				</fo:block>
				
				<fo:block text-align="left">
					Presente.
				</fo:block>
				
				<fo:block space-before="3mm" text-align="right">
					At: Resultado por valorización de Mercado.
				</fo:block>
				
				<fo:block space-before="10mm" text-align="left">
					Informo a usted que según los registros de Banco de Crédito e Inversiones, el 
					cliente <xsl:value-of select="nombreCliente"/> Rut: 
					<fo:inline font-weight="bold">
						<xsl:value-of select="substring(rutCliente,string-length(rutCliente)-8,3)"/>.<xsl:value-of select="substring(rutCliente,string-length(rutCliente)-5,3)"/>.<xsl:value-of select="substring(rutCliente,string-length(rutCliente)-2,3)"/>-<xsl:value-of select="dvCliente"/>
					</fo:inline>
					registró las siguientes operaciones	de derivados a la fecha <xsl:value-of select="fechaMesAnterior"/>.
				</fo:block> 

				<fo:block space-before="15mm" text-align="left" font-size="8pt">
					Tipo de Certificado: <xsl:value-of select="certificado/tipoProducto"/>.
				</fo:block>
				
				<fo:block text-align="left" font-size="6pt">					
					<fo:table border-style="solid" border-width="0.5pt">
						
						<!-- 
							En caso que el tag numeroOperacion hijo del tag certificado no sea nulo,
							se agregara una columna para mostrar su contenido. Lo mismo se hara para 
							los demas campos.
						 -->
						<xsl:if test="certificado/numeroOperacion">
							<fo:table-column column-width="10mm"/>
						</xsl:if>
						
						<xsl:if test="certificado/fechaInicio"> 
							<fo:table-column column-width="13mm"/>
						</xsl:if>
						
						<xsl:if test="certificado/fechaVencimiento">
							<fo:table-column column-width="13mm"/>
						</xsl:if>
						
						<xsl:if test="certificado/moneda1">
							<fo:table-column column-width="8mm"/>
						</xsl:if>						
						
						<xsl:if test="certificado/nominal">
							<fo:table-column/>
						</xsl:if>
						
						<xsl:if test="certificado/moneda2">
							<fo:table-column column-width="8mm"/>
						</xsl:if>
						
						<xsl:if test="certificado/montoCotizacion">
							<fo:table-column/>
						</xsl:if>
						
						<xsl:if test="certificado/tasa">
							<fo:table-column column-width="10mm"/>
						</xsl:if>
						
						<xsl:if test="certificado/precioMercado">
							<fo:table-column column-width="12mm"/>
						</xsl:if>
						
						<xsl:if test="certificado/valorComercial">
							<fo:table-column />
						</xsl:if>
						
						<xsl:if test="certificado/modalidadDePago">
							<fo:table-column/>
						</xsl:if>
						<xsl:if test="certificado/compraVende">
							<fo:table-column/>
						</xsl:if>
						
						<!-- Se elimina a petición de Francisco Diaz 12/10/2010
						<xsl:if test="certificado/contratoVencido">
							<fo:table-column column-width="5mm"/> 
						</xsl:if>
						-->
						
						<fo:table-header>
							<fo:table-row>
							
								<!-- 
									En caso que el tag numeroOperacion hijo del tag certificado no sea nulo,
									se agregara una celda para mostrar el titulo de la columna. Lo mismo se 
									hara para los demas campos. Lo mismo se hara para los demas campos.
								 -->
								<xsl:if test="certificado/numeroOperacion">
									<fo:table-cell background-color="silver" border-style="solid" border-width="0.5pt"><fo:block text-align="center">Número Operación</fo:block></fo:table-cell>
								</xsl:if>
								
								<xsl:if test="certificado/fechaInicio">
									<fo:table-cell background-color="silver" border-style="solid" border-width="0.5pt"><fo:block  text-align="center">Fecha Inicio</fo:block></fo:table-cell>
								</xsl:if>
								
								<xsl:if test="certificado/fechaVencimiento">
									<fo:table-cell background-color="silver" border-style="solid" border-width="0.5pt"><fo:block  text-align="center">Fecha Vencimiento</fo:block></fo:table-cell>
								</xsl:if>
								
								<xsl:if test="certificado/moneda1">
									<fo:table-cell background-color="silver" border-style="solid" border-width="0.5pt"><fo:block  text-align="center">Moneda</fo:block></fo:table-cell>
								</xsl:if>
								
								<xsl:if test="certificado/nominal">
									<fo:table-cell background-color="silver" border-style="solid" border-width="0.5pt"><fo:block  text-align="center">Nominal</fo:block></fo:table-cell>
								</xsl:if>
								
								<xsl:if test="certificado/moneda2">
									<fo:table-cell background-color="silver" border-style="solid" border-width="0.5pt">
										<fo:block  text-align="center">
											Moneda
										</fo:block></fo:table-cell>
									
								</xsl:if>
								
								<xsl:if test="certificado/montoCotizacion">
									<fo:table-cell background-color="silver" border-style="solid" border-width="0.5pt"><fo:block  text-align="center">Monto Cotización</fo:block></fo:table-cell>
								</xsl:if>
								
								<xsl:if test="certificado/tasa">
									<fo:table-cell background-color="silver" border-style="solid" border-width="0.5pt"><fo:block  text-align="center">Tasa</fo:block></fo:table-cell>
								</xsl:if>
								
								<xsl:if test="certificado/precioMercado">
									<fo:table-cell background-color="silver" border-style="solid" border-width="0.5pt"><fo:block  text-align="center">Precio mercado</fo:block></fo:table-cell>
								</xsl:if>
								
								<xsl:if test="certificado/valorComercial">
									<fo:table-cell background-color="silver" border-style="solid" border-width="0.5pt"><fo:block  text-align="center">Valor Comercial ($)</fo:block></fo:table-cell>
								</xsl:if>
								
								<xsl:if test="certificado/modalidadDePago">
									<fo:table-cell background-color="silver" border-style="solid" border-width="0.5pt"><fo:block  text-align="center">Modalidad Pago</fo:block></fo:table-cell>
								</xsl:if>
								<xsl:if test="certificado/compraVende">
									<fo:table-cell background-color="silver" border-style="solid" border-width="0.5pt"><fo:block  text-align="center">Compra/Venta</fo:block></fo:table-cell>
								</xsl:if>
								
								<!-- Se elimina a petición de Francisco Diaz 12/10/2010
								<xsl:if test="certificado/contratoVencido">
									<fo:table-cell background-color="silver" border-style="solid" border-width="0.5pt"><fo:block>C.V.</fo:block></fo:table-cell>
								</xsl:if>
								 -->
								
							</fo:table-row>
						</fo:table-header>

						<!--
							Iteramos sobre los certificados. 
						 -->
						<xsl:for-each select="certificados/certificado">	

						
						<fo:table-body>
							<fo:table-row>
								<!--
									Si el numero de operacion NO es nulo, mostramos el contenido en una
									celda. haremos lo mismo con los demas tags.
								 -->
								<xsl:if test="numeroOperacion">
									<fo:table-cell border-style="solid" border-width="0.5pt">
										<fo:block text-align="right">
											<xsl:value-of select="numeroOperacion"/>
										</fo:block>
									</fo:table-cell>
								</xsl:if>
								
								<xsl:if test="fechaInicio">								
									<fo:table-cell border-style="solid" border-width="0.5pt">
										<fo:block text-align="center">
											<xsl:value-of select="fechaInicio"/>
										</fo:block>
									</fo:table-cell>
								</xsl:if>
								
								<xsl:if test="fechaVencimiento">
									<fo:table-cell border-style="solid" border-width="0.5pt">
										<fo:block text-align="center">
											<xsl:value-of select="fechaVencimiento"/>
										</fo:block>
									</fo:table-cell>
								</xsl:if>
								
								<xsl:if test="moneda1">
									<fo:table-cell border-style="solid" border-width="0.5pt">
										<fo:block text-align="left">
											<xsl:value-of select="moneda1"/>
										</fo:block>
									</fo:table-cell>
								</xsl:if>
								
								<xsl:if test="nominal">
									<fo:table-cell border-style="solid" border-width="0.5pt">
										<fo:block text-align="right">
											<xsl:value-of select="format-number(nominal, '#,##0.00')"/>
										</fo:block>
									</fo:table-cell>
								</xsl:if>
								
								<xsl:if test="moneda2">
									<fo:table-cell border-style="solid" border-width="0.5pt">
										<fo:block text-align="left">
											<xsl:value-of select="moneda2"/>
										</fo:block>
									</fo:table-cell>
								</xsl:if>
								
								<xsl:if test="montoCotizacion">								
									<fo:table-cell border-style="solid" border-width="0.5pt">
										<fo:block text-align="right">
											<xsl:value-of select="format-number(montoCotizacion, '#,##0.00')"/>
										</fo:block>
									</fo:table-cell>
								</xsl:if>
								
								<xsl:if test="tasa">
									<fo:table-cell border-style="solid" border-width="0.5pt">
										<fo:block text-align="right">
											<xsl:value-of select="format-number(tasa, '#,##0.0000')"/>
										</fo:block>
									</fo:table-cell>
								</xsl:if>
								
								<xsl:if test="precioMercado">
									<fo:table-cell border-style="solid" border-width="0.5pt">
										<fo:block text-align="right">
											<xsl:value-of select="format-number(precioMercado, '#,##0.0000')"/>
										</fo:block>
									</fo:table-cell>
								</xsl:if>
								
								<xsl:if test="valorComercial">
									<fo:table-cell border-style="solid" border-width="0.5pt">
										<fo:block text-align="right">
											<xsl:value-of select="format-number(valorComercial, '#,##0.00')"></xsl:value-of>
										</fo:block>
									</fo:table-cell>
								</xsl:if>
								
								<xsl:if test="modalidadDePago">
									<xsl:if test="( modalidadDePago = 'COMP' )">
										<fo:table-cell border-style="solid" border-width="0.5pt">
											<fo:block text-align="left">
												<xsl:text>COMPENSACIÓN</xsl:text>
											</fo:block>
										</fo:table-cell>
									</xsl:if>
									<xsl:if test="( modalidadDePago != 'COMP' )">
										<fo:table-cell border-style="solid" border-width="0.5pt">
											<fo:block text-align="left">
												<xsl:value-of select="modalidadDePago"/>
											</fo:block>
										</fo:table-cell>
									</xsl:if>
								</xsl:if>
								<xsl:if test="compraVende">
									<fo:table-cell border-style="solid" border-width="0.5pt">
										<fo:block text-align="left">
											<xsl:value-of select="compraVende"/>
										</fo:block>
									</fo:table-cell>
								</xsl:if>
								<!-- Se elimina a petición de Francisco Diaz 12/10/2010
								<xsl:if test="contratoVencido">
									<fo:table-cell border-style="solid" border-width="0.5pt">
										<fo:block text-align="center">
											<xsl:value-of select="contratoVencido"/>
										</fo:block>
									</fo:table-cell>
								</xsl:if>
								-->
								
							</fo:table-row>
						</fo:table-body>

						</xsl:for-each>
						
					</fo:table>
				</fo:block>
				
				<!-- Se elimina a petición de Francisco Diaz 12/10/2010
				<fo:block space-after="15mm" text-align="left" font-size="8pt">
					C.V.: Indica si el certificado tiene contratos vencidos o no.
				</fo:block>
				-->
				
				
				<fo:block space-before="10mm" space-after="10mm" text-align="left">
					Resultado por valor de mercado corresponde al valor resultante de aplicar cotizaciones
					vigentes a la fecha de valorización al vencimiento de la operación y aplicar una tasa
					de descuento de mercado para obtener el valor presente de dicho valor.
				</fo:block>
				
				<fo:block space-after="10mm" text-align="left">
					Se extiende el presente documento sin ulterior responsabilidad para la institución.
				</fo:block>
				
				<fo:table>
					<fo:table-column column-width="50mm"/>
					<fo:table-column column-width="80mm"/>
					<fo:table-body>
						<fo:table-row>
							<fo:table-cell>
								<fo:block text-align="left">Atentamente,</fo:block>
							</fo:table-cell>
							<fo:table-cell>
								<fo:block text-align="center"><fo:external-graphic width="75" height="75" src="{$firma}"/></fo:block>
							</fo:table-cell>
						</fo:table-row>
						<fo:table-row>
							<fo:table-cell>
								<fo:block text-align="left"></fo:block>
							</fo:table-cell>
							<fo:table-cell>
								<fo:block text-align="center">Eduardo González Miranda.</fo:block>
								<fo:block text-align="center">Jefe Middle Office Mesa Dinero.</fo:block>
							</fo:table-cell>
						</fo:table-row>
					</fo:table-body>
				</fo:table>
				
			</fo:flow>
			
		</fo:page-sequence>
		
		</xsl:for-each>		
            
    </fo:root>
  </xsl:template>
</xsl:stylesheet>
