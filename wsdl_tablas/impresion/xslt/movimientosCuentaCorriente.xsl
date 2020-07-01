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
		
		<fo:page-sequence master-reference="Letter">			
			<fo:flow flow-name="xsl-region-body">
							
				<fo:block text-align="left">
						Nombre: 
					    <fo:inline font-weight="bold" font-size="9pt"> 
						
								<xsl:value-of select="nombres"/><xsl:text> </xsl:text>
								<xsl:value-of select="apellidoPaterno"/><xsl:text> </xsl:text>
								<xsl:value-of select="apellidoMaterno"/>
						
						</fo:inline>
				</fo:block>
				
				<fo:block text-align="left">
						Rut: 
					    <fo:inline font-weight="bold" font-size="9pt">
							<xsl:value-of select="rut"/>-<xsl:value-of select="digitoVerificador"/>
						</fo:inline>
				</fo:block>
				
				<fo:block text-align="left">
						Fecha: 
					    <fo:inline font-weight="bold" font-size="9pt">
							<xsl:value-of select="fechaCreacion"/>
						</fo:inline>
				</fo:block>
											
				<fo:block text-align="left">
					Movimientos de Cuenta Corriente Nº: 
					<fo:inline font-weight="bold" font-size="9pt">
						<xsl:value-of select="cuentaCorrienteSeleccionada"/>
					</fo:inline>
				</fo:block>
				
				
			<fo:block space-before="3mm" text-align="left">
				Saldos y Retenciones
			</fo:block>
			<fo:block border-style="solid" border-after-color="BLACK" padding="0.5mm"> 

				<fo:block  text-align-last="justify" space-before="1mm" font-size="9pt">
					Saldo Contable 9:00 AM:
					<fo:inline font-weight="bold">
						$<xsl:value-of select="saldoContable9AM"/>
					</fo:inline>
					<fo:leader leader-pattern="space" />
					Retenciones 1 Día:
					<fo:inline font-weight="bold">
						$<xsl:value-of select="retHasta3dias"/>
					</fo:inline>
				</fo:block>
				
				<fo:block text-align-last="justify" space-before="1mm" font-size="9pt">
					Saldo Contable:
					<fo:inline font-weight="bold">
						$<xsl:value-of select="saldoContable"/>
					</fo:inline>
					<fo:leader leader-pattern="space" />
					Retenciones + 1 Día:
					<fo:inline font-weight="bold">
						$<xsl:value-of select="retMas3dias"/>
					</fo:inline>
				</fo:block>
								
				<fo:block text-align="left" space-before="1mm" font-size="9pt">
					Saldo Disponible : 	
					<fo:inline font-weight="bold">
						$<xsl:value-of select="saldoDisponible"/>
					</fo:inline>
				</fo:block>
				
				<fo:block text-align-last="justify" space-before="1mm" font-size="9pt">
					Depósitos y Abonos:	
					<fo:inline font-weight="bold">
						$<xsl:value-of select="abonos"/>
					</fo:inline>
					<fo:leader leader-pattern="space" />
					Sobregiro Disponible:
					<fo:inline font-weight="bold">
						$<xsl:value-of select="sobregiroDisp"/>
					</fo:inline>
				</fo:block>
				
				<fo:block text-align-last="justify" space-before="1mm" font-size="9pt">
					Cheques y Cargos:	
					<fo:inline font-weight="bold">
						$<xsl:value-of select="cargos"/>
					</fo:inline>
					<fo:leader leader-pattern="space" />
					Sobregiro Utilizado:
					<fo:inline font-weight="bold">
						$<xsl:value-of select="sobregiroUtil"/>
					</fo:inline>
				</fo:block>
				
				<fo:block text-align="right" space-before="1mm" font-size="9pt">
					Interés Sobregiro: 	
					<fo:inline font-weight="bold">
						$<xsl:value-of select="interesSobregiro"/>
					</fo:inline>
				</fo:block>
								
				<fo:block text-align="left" space-before="1mm" font-size="9pt">
					Últimos Cheques Cobrados:	
					<fo:inline font-weight="bold">
						<xsl:value-of select="ultCheques"/>
					</fo:inline>
				</fo:block>
			</fo:block>
				
			<fo:block text-align="center" space-before="3mm">
				Movimientos
			</fo:block>
			<xsl:choose>
				<xsl:when test="//movimientos">		
					
					<fo:block text-align="left" space-before="3mm" font-size="7pt">
									
						<fo:table  border-style="solid" border-width="0.5pt">
							<fo:table-column column-width="15mm"/>
							<fo:table-column column-width="15mm"/>
							<xsl:choose>
								<xsl:when test="movimientos/movimiento/saldo">
									<fo:table-column column-width="58mm"/>
								</xsl:when>
								<xsl:otherwise>
									<fo:table-column column-width="79mm"/>
								</xsl:otherwise>
							</xsl:choose>
							<fo:table-column column-width="20mm"/>
							<fo:table-column column-width="21mm"/>
							<fo:table-column column-width="21mm"/>
							<xsl:if test="movimientos/movimiento/saldo">">
								<fo:table-column column-width="21mm"/>
							</xsl:if>
							<fo:table-header>
								<fo:table-row>
									<fo:table-cell background-color="silver" border-style="solid" border-width="0.5pt" space-before="1mm">
										<fo:block text-align="center">Fecha</fo:block>
									</fo:table-cell>
									<fo:table-cell background-color="silver" border-style="solid" border-width="0.5pt" space-before="1mm">
										<fo:block text-align="center">Oficina</fo:block>
									</fo:table-cell>
									<fo:table-cell background-color="silver" border-style="solid" border-width="0.5pt" space-before="1mm">
										<fo:block text-align="center">Movimiento</fo:block>
									</fo:table-cell>
									<fo:table-cell background-color="silver" border-style="solid" border-width="0.5pt" space-before="1mm">
										<fo:block text-align="center">Nº Documento</fo:block>
									</fo:table-cell>
									<fo:table-cell background-color="silver" border-style="solid" border-width="0.5pt" space-before="1mm">
										<fo:block text-align="center">Cargo</fo:block>
									</fo:table-cell>
									<fo:table-cell background-color="silver" border-style="solid" border-width="0.5pt" space-before="1mm">
										<fo:block text-align="center">Abono</fo:block>
									</fo:table-cell>
									<xsl:if test="movimientos/movimiento/saldo">
										<fo:table-cell background-color="silver" border-style="solid" border-width="0.5pt" space-before="1mm">
											<fo:block text-align="center">Saldo</fo:block>
										</fo:table-cell>
									</xsl:if>
								</fo:table-row>
							</fo:table-header>
							<xsl:for-each select="//movimientos/movimiento">
								<fo:table-body>
									<fo:table-row >
										<fo:table-cell border-style="solid" border-width="0.5pt">
											<fo:block text-align="center" space-before="1mm">
												<xsl:value-of select="fechaMovimiento"/>
											</fo:block>
										</fo:table-cell>
										<fo:table-cell  border-style="solid" border-width="0.5pt">
											<fo:block text-align="center" space-before="1mm">
												<xsl:value-of select="oficina"/>
											</fo:block>
										</fo:table-cell>
										<fo:table-cell  border-style="solid" border-width="0.5pt">
											<fo:block text-align="center" space-before="1mm">
												<xsl:value-of select="movimiento"/>									
											</fo:block>
										</fo:table-cell>
										<fo:table-cell  border-style="solid" border-width="0.5pt">
											<fo:block text-align="center" space-before="1mm">
												<xsl:value-of select="nroDocumento"/>							
											</fo:block>
										</fo:table-cell>
										<fo:table-cell  border-style="solid" border-width="0.5pt">
											<fo:block text-align="center" space-before="1mm">
												<xsl:value-of select="cargo"/>							
											</fo:block>
										</fo:table-cell>
										<fo:table-cell  border-style="solid" border-width="0.5pt">
											<fo:block text-align="center" space-before="1mm">
												<xsl:value-of select="abono"/>
											</fo:block>
										</fo:table-cell>
										<xsl:if test="saldo">
											<fo:table-cell  border-style="solid" border-width="0.5pt">
												<fo:block text-align="center" space-before="1mm">
													<xsl:value-of select="saldo"/>							
												</fo:block>
											</fo:table-cell>										
										</xsl:if>
									</fo:table-row>
								</fo:table-body>
							</xsl:for-each>
						</fo:table>
					
					</fo:block>
					
				</xsl:when>
				
				<xsl:otherwise>
							
					<fo:block text-align="center" border-style="solid" border-after-color="BLACK" padding="0.5mm">
						No existen movimientos
					</fo:block>
				
				</xsl:otherwise>
				
			</xsl:choose>
				
			</fo:flow>
			
		</fo:page-sequence>
            
    </fo:root>
  </xsl:template>
</xsl:stylesheet>
