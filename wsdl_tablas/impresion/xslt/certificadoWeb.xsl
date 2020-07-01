<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format" version="1.0">
	<xsl:param name="img1"/>   
	<xsl:decimal-format name="european" decimal-separator=',' grouping-separator='.' />
	<xsl:template match="certificado">
		<fo:root xmlns:fo="http://www.w3.org/1999/XSL/Format">
			<xsl:variable name="tipoCertificado">
				<xsl:value-of select="ProtestosPorCuenta/codEstadoProtesto"/>
			</xsl:variable>
			
			<fo:layout-master-set>
				<fo:simple-page-master master-name="all" page-height="11in" page-width="8.5in"
					margin-top="2.5cm" margin-bottom="2.5cm" margin-left="2.0cm" margin-right="2.0cm"
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
					<fo:block text-align="start" font-size="8pt" font-family="Courier" line-height="1em + 2pt">
					</fo:block>
				</fo:static-content>
				 
				<fo:flow flow-name="xsl-region-body">
					
					<fo:table font-family="Courier" font-size="8pt" padding-after="5em" line-height="1.5em">
						<fo:table-column></fo:table-column>
						<fo:table-body>
							<fo:table-row  text-align="center">
								<fo:table-cell>
									<fo:block font-weight="bold" text-decoration="underline">
										CONSTANCIA
									</fo:block>
								</fo:table-cell>
							</fo:table-row>
						</fo:table-body>
					</fo:table>
					
					<fo:table font-family="Courier" font-size="6px" padding-after="3em" line-height="2em">
						<fo:table-column ></fo:table-column>
						<fo:table-body>
							<fo:table-row text-align="justify">
								<fo:table-cell>
									<fo:block>
										<fo:inline>El Banco de Crédito e Inversiones deja constancia que, el/la señor(a): </fo:inline>
    	                                    <fo:inline font-weight="bold">
	    	                                    <xsl:value-of select="DatosBasicosCliente/nombre"/>
                                        	</fo:inline>
										<fo:inline>, RUT </fo:inline>
    	                                    <fo:inline font-weight="bold">
	    	                                    <xsl:value-of select="DatosBasicosCliente/cic"/>
                                        	</fo:inline>
										<fo:inline>, mantiene la(s) siguiente cuenta(s) vigente(s), a la fecha en esta institución.</fo:inline>
									</fo:block>
								</fo:table-cell>
							</fo:table-row>
						</fo:table-body>
					</fo:table>
					
					<xsl:if test="$tipoCertificado != &quot;PT&quot;">
					<fo:table font-family="Courier" font-size="6px" padding-after="3em"  line-height="2.5em">
						<fo:table-column column-width="proportional-column-width(14)"></fo:table-column>
						<fo:table-column column-width="proportional-column-width(14)"></fo:table-column>
						<fo:table-column column-width="proportional-column-width(14)"></fo:table-column>
						<fo:table-column column-width="proportional-column-width(14)"></fo:table-column>
						<fo:table-column column-width="proportional-column-width(14)"></fo:table-column>
						<fo:table-body>
							<fo:table-row text-align="center">
								<fo:table-cell>
									<fo:block  font-weight="bold">
										Monto
									</fo:block>
								</fo:table-cell>
								<fo:table-cell>
									<fo:block font-weight="bold">
										Banco Liberador
									</fo:block>
								</fo:table-cell>
								<fo:table-cell>
									<fo:block font-weight="bold">
										Localidad
									</fo:block>
								</fo:table-cell>
								<fo:table-cell>
									<fo:block font-weight="bold">
										Fecha Protesto
									</fo:block>
								</fo:table-cell>
								<fo:table-cell>
									<fo:block font-weight="bold">
										Fecha Cancelación
									</fo:block>
								</fo:table-cell>
							</fo:table-row>
					
					
					    <xsl:for-each select="ProtestosPorCuenta">
							<fo:table-row text-align="center">
									<fo:table-cell>
									<fo:block>
										<xsl:value-of select="codMotivoProtesto"/><xsl:value-of select="mtoProtesto"/>
									</fo:block>
								</fo:table-cell>
								<fo:table-cell>
									<fo:block>
										<xsl:value-of select="descOficinaReceptora"/>
									</fo:block>
								</fo:table-cell>
								
								<fo:table-cell>
									<fo:block>
										<xsl:value-of select="origenProtesto"/>
									</fo:block>
								</fo:table-cell>
								
								<fo:table-cell>
									<fo:block>
										<xsl:value-of select="fechaProtesto"/>
									</fo:block>
								</fo:table-cell>
								<fo:table-cell>
									<fo:block>
										<xsl:value-of select="descMotivoProtesto"/>
									</fo:block>
								</fo:table-cell>
							 </fo:table-row>
							</xsl:for-each>

						</fo:table-body>
					</fo:table>
					</xsl:if>
					<xsl:if test="$tipoCertificado = &quot;PT&quot;">					
					<fo:table font-family="Courier" font-size="6px" padding-after="3em"  line-height="2.5em">
						<fo:table-column column-width="proportional-column-width(12.5)"></fo:table-column>
						<fo:table-column column-width="proportional-column-width(12.5)"></fo:table-column>
						<fo:table-column column-width="proportional-column-width(12.5)"></fo:table-column>
						<fo:table-column column-width="proportional-column-width(12.5)"></fo:table-column>
						<fo:table-column column-width="proportional-column-width(12.5)"></fo:table-column>
						<fo:table-column column-width="proportional-column-width(12.5)"></fo:table-column>
						<fo:table-column column-width="proportional-column-width(12.5)"></fo:table-column>
						<fo:table-column column-width="proportional-column-width(12.5)"></fo:table-column>
						
						
					 <fo:table-body>
						<fo:table-row text-align="left">
							<fo:table-cell>
								<fo:block  font-weight="bold">
									Cuenta: <xsl:value-of select="DatosBasicosCliente/plan"/>
								</fo:block>
							</fo:table-cell>
						</fo:table-row>
					  </fo:table-body>
						
						
						<fo:table-body>
							<fo:table-row text-align="center">
								<fo:table-cell>
									<fo:block  font-weight="bold">
										Origen
									</fo:block>
								</fo:table-cell>
								<fo:table-cell>
									<fo:block font-weight="bold">
										Serial
									</fo:block>
								</fo:table-cell>
								<fo:table-cell>
									<fo:block font-weight="bold">
										Oficina
									</fo:block>
								</fo:table-cell>
								<fo:table-cell>
									<fo:block font-weight="bold">
										Monto
									</fo:block>
								</fo:table-cell>
								<fo:table-cell>
									<fo:block font-weight="bold">
										Fecha
									</fo:block>
								</fo:table-cell>
								<fo:table-cell>
									<fo:block font-weight="bold">
										Motivo
									</fo:block>
								</fo:table-cell>
								<fo:table-cell>
									<fo:block font-weight="bold">
										Aclaraciones
									</fo:block>
								</fo:table-cell>
							</fo:table-row>
							
						<xsl:for-each select="ProtestosPorCuenta">			
							<fo:table-row text-align="center">
								<fo:table-cell>
									<fo:block>
										<xsl:value-of select="origenProtesto"/>
									</fo:block>
								</fo:table-cell>
								<fo:table-cell>
									<fo:block>
										<xsl:value-of select="serialProtesto"/>
									</fo:block>
								</fo:table-cell>
								
								<fo:table-cell>
									<fo:block>
										<xsl:value-of select="descOrigenProtesto"/>
									</fo:block>
								</fo:table-cell>
								
								<fo:table-cell>
									<fo:block>
										<xsl:value-of select="mtoProtesto"/>
									</fo:block>
								</fo:table-cell>
								
								<fo:table-cell>
									<fo:block>
										<xsl:value-of select="ctaCargo"/>
									</fo:block>
								</fo:table-cell>
								
								<fo:table-cell>
									<fo:block>
										<xsl:value-of select="codMotivoProtesto"/>
									</fo:block>
								</fo:table-cell>
								
								<fo:table-cell>
									<fo:block>
										<xsl:value-of select="descMotivoProtesto"/>
									</fo:block>
								</fo:table-cell>
								
							 </fo:table-row>
							 </xsl:for-each>
						</fo:table-body>
					</fo:table>
					</xsl:if>
					
					<fo:table font-family="Courier" font-size="6px" padding-after="5em"  line-height="2em">
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