<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format" version="1.0">
	<xsl:param name="img1"/>
	<xsl:decimal-format NaN="" decimal-separator=',' grouping-separator='.' />
	<xsl:decimal-format name="european" decimal-separator="," grouping-separator="."/>
	<xsl:template match="certificadoDeudasVigentes">
		<xsl:variable name="nulo"/>
		<fo:root xmlns:fo="http://www.w3.org/1999/XSL/Format">
			<fo:layout-master-set>
				<fo:simple-page-master master-name="all" page-height="11in" page-width="8.5in" margin-top="2.5cm" margin-bottom="2.5cm" margin-left="2.0cm" margin-right="2.0cm" border="thick solid red">
					<fo:region-body/>
					<fo:region-before extent="4cm"/>
					<fo:region-after extent="2cm"/>
				</fo:simple-page-master>
			</fo:layout-master-set>
			<fo:page-sequence master-reference="all" format="1">
				<fo:static-content flow-name="xsl-region-before">
				</fo:static-content>
				<fo:static-content flow-name="xsl-region-after">
					<fo:block text-align="start" font-size="8pt" font-family="Courier" line-height="1em + 2pt">
					</fo:block>
				</fo:static-content>
				<fo:flow flow-name="xsl-region-body" background-color="#FFFFFF">
					<fo:table padding-bottom="2em">
						<fo:table-column column-width="proportional-column-width(5)"/>
						<fo:table-body>
							<fo:table-row >
								<fo:table-cell>
									<fo:block font-weight="bold" font-size="14px" text-align="center">
										Certificado Deudas Vigentes
									</fo:block>
								</fo:table-cell>
							</fo:table-row>
							<fo:table-row  font-size="10px">
								<fo:table-cell>
									<fo:block font-weight="bold" font-size="10px" padding-top="4em" padding-bottom="1.5em">
										Estimado <xsl:value-of select="DatosBasicosCliente/nombre"/>:
									</fo:block>
									<fo:block>
										A presente documento entrega el detalle de las deudas vigentes que posee a la fecha:
									</fo:block>
								</fo:table-cell>
							</fo:table-row>
						</fo:table-body>
					</fo:table>
					<fo:table padding-top="2em" font-size="10px">
						<fo:table-column column-width="proportional-column-width(25)"/>
						<fo:table-column column-width="proportional-column-width(25)"/>
						<fo:table-column column-width="proportional-column-width(25)"/>
						<fo:table-column column-width="proportional-column-width(25)"/>
						<fo:table-body>
						
							<fo:table-row background-color="#DEDEDE" height="10px"  vertical-align="middle">
								<fo:table-cell font-size="10px">
									<fo:block padding-right="2em">Línea de Sobregiro</fo:block>
								</fo:table-cell>
							</fo:table-row>
							
							<fo:table-row height="10px" font-size="10px" vertical-align="middle" text-align="center"> 
							
								<fo:table-cell background-color="#999999">
									<fo:block>
										Número Cuenta
									</fo:block>
								</fo:table-cell>
								
								<fo:table-cell background-color="#999999">
									<fo:block>
										Monto Autorizado
									</fo:block>
								</fo:table-cell>
								
								<fo:table-cell background-color="#999999">
									<fo:block>
										Monto Utilizado
									</fo:block>
								</fo:table-cell>
								
								<fo:table-cell background-color="#999999">
									<fo:block>
										Intereses
									</fo:block>
								</fo:table-cell>
							</fo:table-row>
														
							<xsl:if test="normalize-space(./LineaSobregiro) != $nulo">
												
						<xsl:for-each select="./LineaSobregiro">
							<fo:table-row height="8px" font-size="8px" vertical-align="middle" text-align="center">
							
								<fo:table-cell>
									<fo:block>
										<xsl:value-of select="ctaSobregiro"/>
									</fo:block>
															
								</fo:table-cell>
								
								<fo:table-cell>
									<fo:block>
										$ <xsl:value-of select="format-number(valAutorizado,'###.####.###,##')"/>
									</fo:block>									
									
								</fo:table-cell>
								
								<fo:table-cell>
									<fo:block>
										$ <xsl:value-of select="format-number(montoUtilizado,'###.####.###,##')"/>
									</fo:block>									
								</fo:table-cell>
								<fo:table-cell>
									<fo:block>
										$ <xsl:value-of select="format-number(montoUtilizado2,'###.####.###,##')"/>
									</fo:block>									
								</fo:table-cell>
							</fo:table-row>
							</xsl:for-each>
						
						
						
						
	
							</xsl:if>
						</fo:table-body>
					</fo:table>
					
					<xsl:if test="normalize-space(./LineaSobregiro) = $nulo" >
						<fo:table font-size="8px">
							<fo:table-column column-width="proportional-column-width(100)"></fo:table-column>
							<fo:table-body>
							<fo:table-row background-color="#FFFFFF" text-align="center" height="8px" vertical-align="middle">								
							<fo:table-cell>
								<fo:block>
									Sin deudas en línea de Sobregiro
								</fo:block>
							</fo:table-cell>
						</fo:table-row>
						</fo:table-body>
						</fo:table>
					</xsl:if>
					
					
						<!-- 
							Tarjeta de Crédito
						-->
					
					<fo:table padding-top="2em" font-size="10px">
						<fo:table-column column-width="proportional-column-width(33)"/>
						<fo:table-column column-width="proportional-column-width(33)"/>
						<fo:table-column column-width="proportional-column-width(34)"/>
						<fo:table-body>
						
							<fo:table-row background-color="#DEDEDE" font-size="10px" height="10px" vertical-align="middle">
								<fo:table-cell>
									<fo:block padding-left="2em">Tarjeta de Crédito</fo:block>
								</fo:table-cell>
							</fo:table-row>
							
							<fo:table-row height="10px" font-size="10px" vertical-align="middle" text-align="center">
							
								<fo:table-cell background-color="#999999">
									<fo:block>
										Número Cuenta
									</fo:block>
								</fo:table-cell>
								
								<fo:table-cell background-color="#999999">
									<fo:block>
										Monto Autorizado
									</fo:block>
								</fo:table-cell>
								
								<fo:table-cell background-color="#999999">
									<fo:block>
										Monto Utilizado
									</fo:block>
								</fo:table-cell>
								
							</fo:table-row>
														
							<xsl:if test="normalize-space(./CuentaVO) != $nulo">
							<xsl:for-each select="./CuentaVO">
							<fo:table-row height="8px" font-size="8px" vertical-align="middle" text-align="center">
							
								<fo:table-cell>
									<fo:block>
										<xsl:value-of select="numeroTarjetaTitular"/>
									</fo:block>
									
									<fo:block>
										<xsl:value-of select="numeroTarjetaTitular"/>
									</fo:block>
									
								</fo:table-cell>
								
								<fo:table-cell>
									<fo:block>
										$ <xsl:value-of select="format-number(monto1,'###.####.###,##0')"/>
									</fo:block>									
									<fo:block>
										USD <xsl:value-of select="monto2"/>
									</fo:block>
								</fo:table-cell>
								
								<fo:table-cell>
									<fo:block>
										$ <xsl:value-of select="format-number(numero1,'###.####.###,##0')"/>
									</fo:block>									
									<fo:block>
										USD <xsl:value-of select="numero2"/>
									</fo:block>
								</fo:table-cell>

							</fo:table-row>
							</xsl:for-each>
							</xsl:if>
						</fo:table-body>
					</fo:table>
					
					<xsl:if test="normalize-space(./CuentaVO) = $nulo">
						<fo:table font-size="8px">
							<fo:table-column column-width="proportional-column-width(100)"></fo:table-column>
							<fo:table-body>
							<fo:table-row background-color="#FFFFFF" text-align="center" height="8px" vertical-align="middle">								
							<fo:table-cell font-size="8px">
								<fo:block>
									Sin deudas en Tarjeta de Crédito
								</fo:block>
							</fo:table-cell>
						</fo:table-row>
						</fo:table-body>
						</fo:table>
					</xsl:if>	
					
					<!-- 
							  Créditos Vigentes
					-->	
					
					<fo:table padding-top="2em" font-size="10px">
						<fo:table-column column-width="proportional-column-width(33)"/>
						<fo:table-column column-width="proportional-column-width(33)"/>
						<fo:table-column column-width="proportional-column-width(34)"/>
						<fo:table-body>
						
							<fo:table-row background-color="#DEDEDE" height="10px" font-size="10px" vertical-align="middle">
								<fo:table-cell>
									<fo:block padding-left="2em">  Créditos Vigentes</fo:block>
								</fo:table-cell>
							</fo:table-row>
							
							<fo:table-row height="10px" font-size="10px" vertical-align="middle" text-align="center">
							
								<fo:table-cell background-color="#999999">
									<fo:block>
										Número Cuenta - Glosa
									</fo:block>
								</fo:table-cell>
								
								<fo:table-cell background-color="#999999">
									<fo:block>
										Monto Crédito
									</fo:block>
								</fo:table-cell>
								
								<fo:table-cell background-color="#999999">
									<fo:block>
										Saldo Insoluto Crédito
									</fo:block>
								</fo:table-cell>
								
							</fo:table-row>
														
							<xsl:if test="normalize-space(./DetalleCreditoVigente) != $nulo">
						
						<xsl:for-each select="./DetalleCreditoVigente">
							<fo:table-row height="8px" font-size="8px" vertical-align="middle" text-align="center">
							
								<fo:table-cell>
									<fo:block>
										<xsl:value-of select="ctaCargo"/>
									</fo:block>
															
								</fo:table-cell>
								
								<fo:table-cell>
									<fo:block>
										 <xsl:value-of select="codigoMoneda"/>
									</fo:block>									
									
								</fo:table-cell>
								
								<fo:table-cell>
									<fo:block>
										 <xsl:value-of select="codigoCargo"/>
										 
									</fo:block>									
								</fo:table-cell>
								
							</fo:table-row>
							</xsl:for-each>
						
						
						
							</xsl:if>
						</fo:table-body>
					</fo:table>
					
					<xsl:if test="normalize-space(./DetalleCreditoVigente) = $nulo">
						<fo:table font-size="8px">
							<fo:table-column column-width="proportional-column-width(100)"></fo:table-column>
							<fo:table-body>
							<fo:table-row background-color="#FFFFFF" text-align="center" height="8px" font-size="10px" vertical-align="middle">								
							<fo:table-cell>
								<fo:block>
									Sin deudas en Créditos Vigentes
								</fo:block>
							</fo:table-cell>
						</fo:table-row>
						</fo:table-body>
						</fo:table>
					</xsl:if>	
					
					<!-- 
						  Créditos Hipotecarios
					-->
					
					<fo:table padding-top="2em" font-size="10px">
						<fo:table-column column-width="proportional-column-width(33)"/>
						<fo:table-column column-width="proportional-column-width(33)"/>
						<fo:table-column column-width="proportional-column-width(34)"/>
						<fo:table-body>
						
							<fo:table-row background-color="#DEDEDE" height="10px" font-size="10px" vertical-align="middle">
								<fo:table-cell>
									<fo:block padding-left="2em">Créditos Hipotecarios</fo:block>
								</fo:table-cell>
							</fo:table-row>
							
							<fo:table-row height="10px" font-size="10px" vertical-align="middle" text-align="center">
							
								<fo:table-cell background-color="#999999">
									<fo:block>
										Producto
									</fo:block>
								</fo:table-cell>
								
								<fo:table-cell background-color="#999999">
									<fo:block>
										Monto Crédito
									</fo:block>
								</fo:table-cell>
								
								<fo:table-cell background-color="#999999">
									<fo:block>
										Saldo Insoluto Crédito
									</fo:block>
								</fo:table-cell>
								
							</fo:table-row>
														
							<xsl:if test="normalize-space(./DeudaHipotecariaTO) != $nulo">
						<xsl:for-each select="./DeudaHipotecariaTO">
							<fo:table-row height="8px" font-size="8px" vertical-align="middle" text-align="center">
							
								<fo:table-cell>
									<fo:block>
										<xsl:value-of select="titulo"/>
									</fo:block>
															
								</fo:table-cell>
								
								<fo:table-cell>
									<fo:block>
										$ <xsl:value-of select="format-number(mtoCapital,'###.####.###,##')"/>
									</fo:block>									
									
								</fo:table-cell>
								
								<fo:table-cell>
									<fo:block>
										$ <xsl:value-of select="format-number(montoImpagos,'###.####.###,##')"/>
									</fo:block>									
								</fo:table-cell>
								
							</fo:table-row>
							</xsl:for-each>
								
							</xsl:if>
						</fo:table-body>
					</fo:table>
					
					<xsl:if test="normalize-space(./DeudaHipotecariaTO) = $nulo">
						<fo:table font-size="8px">
							<fo:table-column column-width="proportional-column-width(100)"></fo:table-column>
							<fo:table-body>
							<fo:table-row background-color="#FFFFFF" text-align="center" height="8px" vertical-align="middle">								
							<fo:table-cell>
								<fo:block>
									Sin deudas en Créditos Hipotecarios
								</fo:block>
							</fo:table-cell>
						</fo:table-row>
						</fo:table-body>
						</fo:table>				
					</xsl:if>
					
					<!-- 
							Línea de Sobregiro Nova
					-->
					<fo:table padding-top="2em" font-size="10px">
						<fo:table-column column-width="proportional-column-width(33)"/>
						<fo:table-column column-width="proportional-column-width(33)"/>
						<fo:table-column column-width="proportional-column-width(34)"/>
						<fo:table-body>
						
							<fo:table-row background-color="#DEDEDE" height="10px" font-size="10px" vertical-align="middle">
								<fo:table-cell>
									<fo:block padding-left="2em">Línea de Sobregiro Nova</fo:block>
								</fo:table-cell>
							</fo:table-row>
							
							<fo:table-row height="10px" font-size="10px" vertical-align="middle" text-align="center">
							
								<fo:table-cell background-color="#999999">
									<fo:block>
										Número Operación
									</fo:block>
								</fo:table-cell>
								
								<fo:table-cell background-color="#999999">
									<fo:block>
										Monto Autorizado
									</fo:block>
								</fo:table-cell>
								
								<fo:table-cell background-color="#999999">
									<fo:block>
										Monto Utilizado
									</fo:block>
								</fo:table-cell>
								
							</fo:table-row>
														
							<xsl:if test="normalize-space(./ListaConRecLcc) != $nulo">
							
							<xsl:for-each select="./ListaConRecLcc">
							<fo:table-row height="8px" font-size="10px" vertical-align="middle" text-align="center">
							
								<fo:table-cell>
									<fo:block>
										<xsl:value-of select="numOperacion"/>
									</fo:block>									
								</fo:table-cell>
								
								<fo:table-cell>
									<fo:block>
										$ <xsl:value-of select="cupoDisponible"/>
									</fo:block>									
								</fo:table-cell>
								
								<fo:table-cell>
									<fo:block>
										$ <xsl:value-of select="cupoUtilizado"/>
									</fo:block>								
								</fo:table-cell>

							</fo:table-row>
							</xsl:for-each>
							</xsl:if>
						</fo:table-body>
					</fo:table>
					
					<xsl:if test="normalize-space(./ListaConRecLcc) = $nulo">
						<fo:table font-size="10px">
							<fo:table-column column-width="proportional-column-width(100)"></fo:table-column>
							<fo:table-body>
							<fo:table-row background-color="#FFFFFF" text-align="center" height="14px" vertical-align="middle">								
							<fo:table-cell>
								<fo:block>
									Sin deudas en Línea de Sobregiro Nova
								</fo:block>
							</fo:table-cell>
						</fo:table-row>
						</fo:table-body>
						</fo:table>				
					</xsl:if>
										
										
					<!-- 
							  Tarjeta de Crédito Nova
						-->
						
					<fo:table padding-top="2em" font-size="10px">
						<fo:table-column column-width="proportional-column-width(33)"/>
						<fo:table-column column-width="proportional-column-width(33)"/>
						<fo:table-column column-width="proportional-column-width(34)"/>
						<fo:table-body>
						
							<fo:table-row background-color="#DEDEDE" height="14px" vertical-align="middle">
								<fo:table-cell>
									<fo:block padding-left="2em">Tarjeta de Crédito Nova</fo:block>
								</fo:table-cell>
							</fo:table-row>
							
							<fo:table-row height="14px" vertical-align="middle" text-align="center">
							
								<fo:table-cell background-color="#999999">
									<fo:block>
										Número Cuenta
									</fo:block>
								</fo:table-cell>
								
								<fo:table-cell background-color="#999999">
									<fo:block>
										Monto Autorizado
									</fo:block>
								</fo:table-cell>
								
								<fo:table-cell background-color="#999999">
									<fo:block>
										Monto Utilizado
									</fo:block>
								</fo:table-cell>
								
							</fo:table-row>
														
							<xsl:if test="normalize-space(./ListaConRecTcr) != $nulo">
							
							<xsl:for-each select="./ListaConRecTcr">
							<fo:table-row height="14px" vertical-align="middle" text-align="center">
							
								<fo:table-cell>
									<fo:block>
										<xsl:value-of select="tipoTarjCred"/>     <xsl:value-of select="tarjetaCredito"/>
									</fo:block>									
								</fo:table-cell>
								
								<fo:table-cell>
									<fo:block>
										$ <xsl:value-of select="cupoTotal"/>
									</fo:block>									
								</fo:table-cell>
								
								<fo:table-cell>
									<fo:block>
										$ <xsl:value-of select="deudaTotal"/>
									</fo:block>								
								</fo:table-cell>

							</fo:table-row>
							</xsl:for-each>
							</xsl:if>
						</fo:table-body>
					</fo:table>
					
					<xsl:if test="normalize-space(./ListaConRecTcr) = $nulo">
						<fo:table font-size="10px">
							<fo:table-column column-width="proportional-column-width(100)"></fo:table-column>
							<fo:table-body>
							<fo:table-row background-color="#FFFFFF" text-align="center" height="14px" vertical-align="middle">								
							<fo:table-cell>
								<fo:block>
									Sin deudas en Tarjeta de Crédito Nova
								</fo:block>
							</fo:table-cell>
						</fo:table-row>
						</fo:table-body>
						</fo:table>				
					</xsl:if>					
					
					<!-- 
								Créditos Vigentes Nova
					-->
					
				<fo:table padding-top="2em" font-size="10px">
						<fo:table-column column-width="proportional-column-width(33)"/>
						<fo:table-column column-width="proportional-column-width(33)"/>
						<fo:table-column column-width="proportional-column-width(34)"/>
						<fo:table-body>
						
							<fo:table-row background-color="#DEDEDE" height="14px" vertical-align="middle">
								<fo:table-cell>
									<fo:block padding-left="2em">Créditos Vigentes Nova</fo:block>
								</fo:table-cell>
							</fo:table-row>
							
							<fo:table-row height="14px" vertical-align="middle" text-align="center">
							
								<fo:table-cell background-color="#999999">
									<fo:block>
										Número Operación
									</fo:block>
								</fo:table-cell>
								
								<fo:table-cell background-color="#999999">
									<fo:block>
										Monto Crédito
									</fo:block>
								</fo:table-cell>
								
								<fo:table-cell background-color="#999999">
									<fo:block>
										Saldo Insoluto Crédito
									</fo:block>
								</fo:table-cell>
								
							</fo:table-row>
														
							<xsl:if test="normalize-space(./ListaConRecCredPer) != $nulo">
							
							<xsl:for-each select="./ListaConRecCredPer">
							<fo:table-row height="14px" vertical-align="middle" text-align="center">
							
								<fo:table-cell>
									<fo:block>
										<xsl:value-of select="numOperacion"/> 
									</fo:block>									
								</fo:table-cell>
								
								<fo:table-cell>
									<fo:block>
										$ <xsl:value-of select="monto"/>
									</fo:block>									
								</fo:table-cell>
								
								<fo:table-cell>
									<fo:block>
										$ <xsl:value-of select="cuota"/>
									</fo:block>								
								</fo:table-cell>

							</fo:table-row>
							</xsl:for-each>
							</xsl:if>
						</fo:table-body>
					</fo:table>
					
					<xsl:if test="normalize-space(./ListaConRecTcr) = $nulo">
						<fo:table font-size="10px">
							<fo:table-column column-width="proportional-column-width(100)"></fo:table-column>
							<fo:table-body>
							<fo:table-row background-color="#FFFFFF" text-align="center" height="14px" vertical-align="middle">								
							<fo:table-cell>
								<fo:block>
									Sin deudas en Créditos Vigentes Nova
								</fo:block>
							</fo:table-cell>
						</fo:table-row>
						</fo:table-body>
						</fo:table>				
					</xsl:if>	
						<fo:table font-family="Courier" font-size="6px" line-height="2em">
						<fo:table-column></fo:table-column>
						
						<fo:table-body>
							<fo:table-row>
								<fo:table-cell>
									   	<fo:external-graphic width="80px" height="80px">
								   		<xsl:attribute name="src">
								   			<xsl:value-of select="DatosBasicosCliente/domicilio"/>
								   		</xsl:attribute>
								   	</fo:external-graphic>	
								 
									<fo:block>
										Banco de Crédito e Inversiones.
									</fo:block>
									
								 </fo:table-cell> 	
							</fo:table-row>
						</fo:table-body>
					</fo:table>				
					
					<fo:table font-family="Courier" font-size="6px" padding-after="12em" line-height="2em">
						<fo:table-column></fo:table-column>
						<fo:table-body>
							<fo:table-row>
								<fo:table-cell>
									<fo:block>
										<fo:inline>
										Santiago, 
										</fo:inline>
										<fo:inline>
											<xsl:value-of select="DatosBasicosCliente/fecNacimiento"/>
										</fo:inline>
									</fo:block>
								</fo:table-cell>
							</fo:table-row>
						</fo:table-body>
					</fo:table>
					
						
					</fo:flow>
			</fo:page-sequence>
		</fo:root>
	</xsl:template>
</xsl:stylesheet>
