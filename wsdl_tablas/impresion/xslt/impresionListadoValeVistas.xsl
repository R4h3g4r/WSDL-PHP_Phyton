<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:fn="http://www.w3.org/2005/02/xpath-functions" xmlns:xdt="http://www.w3.org/2005/02/xpath-datatypes">
      <xsl:template match="pagosMasivos">
      <fo:root>
      <fo:layout-master-set>
			<fo:simple-page-master master-name="formato-Pagina" page-height="21cm" page-width="27.9cm" margin-left="1.5cm" margin-right="1cm" margin-top="1cm" margin-bottom="1cm">
				<fo:region-body margin-top="2cm" margin-bottom="0cm"/>
				<fo:region-before region-name="header" extent="2cm" precedence="true"/>
				<fo:region-after extent="0cm" precedence="true"/>
			</fo:simple-page-master>
		</fo:layout-master-set>
      <!-- end: defines page layout -->
      <!-- actual layout -->
      <fo:page-sequence master-reference="formato-Pagina">
	    <fo:static-content flow-name="header" display-align="before">
  				 <fo:block>
                        <fo:table font-size="7pt" table-layout="fixed" width="100%">
                            <fo:table-column  column-width="proportional-column-width(50)" />
                            <fo:table-column  column-width="proportional-column-width(50)" />
                            <fo:table-body>
								<fo:table-row>
                                    <fo:table-cell >
                                       <fo:block>
                                         <fo:external-graphic height="42pt" width="100pt" src="url('{encabezado/logoBci}')"/> 
                                       </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell text-align="right">
                                       <fo:block font-weight="bold" font-size="7pt">
                                           Santiago, <xsl:value-of select="encabezado/fechaImpresion"/>
                                       </fo:block>
                                    </fo:table-cell>
                                </fo:table-row>
							</fo:table-body>    
                        </fo:table>
                    </fo:block>

  				</fo:static-content>
	    
	  
	  
        <fo:flow flow-name="xsl-region-body">
		     <fo:block>
				<fo:table font-size="7pt" table-layout="fixed" width="100%" >
				    <fo:table-column column-width="proportional-column-width(100)"/>
					<fo:table-body>
					  <fo:table-row>
						<fo:table-cell text-align="start"  padding="1pt">
						  <fo:block  >Señores</fo:block>
						</fo:table-cell>
					  </fo:table-row>
					  <fo:table-row>
						<fo:table-cell text-align="start"  padding="1pt">
						  <fo:block  ><xsl:value-of select="parrafo/razonSocial"/></fo:block>
						</fo:table-cell>
					  </fo:table-row>
					<fo:table-row>
						<fo:table-cell text-align="start"  padding="1pt">
						  <fo:block font-weight="bold" >Presente</fo:block>
						</fo:table-cell>
					  </fo:table-row>
					  <fo:table-row>
						<fo:table-cell text-align="start"  padding="1pt">
						  <fo:block  >De mi consideración</fo:block>
						</fo:table-cell>
					  </fo:table-row>
					  <fo:table-row>
						<fo:table-cell text-align="justify"  padding="1pt">
						  <fo:block  >Por medio de la presente me permito informar a usted que de acuerdo a las instrucciones impartidas 
						  por la Empresa <xsl:value-of select="parrafo/razonSocial"/>, Rut <xsl:value-of select="parrafo/rutEmpresa"/>, y al amparo 
						  del convenio de pago vigente con el Banco Crédito Inversiones por los Servicios de Pagos Masivos, se ha procedido a 
						  efectuar los siguientes pagos de Vales a la Vista a las entidades, en las cuentas, en los montos y en las fechas que 
						  a continuación se indica.</fo:block>
						</fo:table-cell>
					  </fo:table-row>
					</fo:table-body>

				 </fo:table>
			</fo:block>
			<fo:block white-space-collapse="true">&#160;</fo:block>
			<fo:block>
				   <fo:table font-size="6pt" table-layout="fixed" width="100%" >
				    <fo:table-column column-width="proportional-column-width(15)"/>
					<fo:table-column column-width="proportional-column-width(15)"/>
					<fo:table-column column-width="proportional-column-width(15)"/>
					<fo:table-column column-width="proportional-column-width(7)"/>
					<fo:table-column column-width="proportional-column-width(10)"/>
					<fo:table-column column-width="proportional-column-width(10)"/>
					<fo:table-column column-width="proportional-column-width(15)"/>
					<fo:table-column column-width="proportional-column-width(15)"/>
					<fo:table-column column-width="proportional-column-width(10)"/>
					<fo:table-column column-width="proportional-column-width(10)"/>
					<fo:table-column column-width="proportional-column-width(15)"/>
					<fo:table-column column-width="proportional-column-width(15)"/>
					<fo:table-header>
					  <fo:table-row>
						<fo:table-cell text-align="center" border="0.5pt solid #000000" padding="2pt">
						  <fo:block font-weight="bold" >N° Folio</fo:block>
						</fo:table-cell>
						<fo:table-cell text-align="center" border="0.5pt solid #000000" padding="2pt">
						  <fo:block font-weight="bold" >N° Vale Vista</fo:block>
						</fo:table-cell>
						<fo:table-cell text-align="center" border="0.5pt solid #000000" padding="2pt">
						  <fo:block font-weight="bold" >Rut</fo:block>
						</fo:table-cell>
						<fo:table-cell text-align="center" border="0.5pt solid #000000" padding="2pt">
						  <fo:block font-weight="bold" >Oficina</fo:block>
						</fo:table-cell>
						<fo:table-cell text-align="center" border="0.5pt solid #000000" padding="2pt">
						  <fo:block font-weight="bold" >Fecha Entrega</fo:block>
						</fo:table-cell>
						<fo:table-cell text-align="center" border="0.5pt solid #000000" padding="2pt">
						  <fo:block font-weight="bold" >Fecha Caducidad</fo:block>
						</fo:table-cell>
						<fo:table-cell text-align="center" border="0.5pt solid #000000" padding="2pt">
						  <fo:block font-weight="bold" >Fecha Liquidación</fo:block>
						</fo:table-cell>
						<fo:table-cell text-align="center" border="0.5pt solid #000000" padding="2pt">
						  <fo:block font-weight="bold" >Monto</fo:block>
						</fo:table-cell>
						<fo:table-cell text-align="center" border="0.5pt solid #000000" padding="2pt">
						  <fo:block font-weight="bold" >Estado</fo:block>
						</fo:table-cell>
						<fo:table-cell text-align="center" border="0.5pt solid #000000" padding="2pt">
						  <fo:block font-weight="bold" >Rut Retirador</fo:block>
						</fo:table-cell>
						<fo:table-cell text-align="center" border="0.5pt solid #000000" padding="2pt">
						  <fo:block font-weight="bold" >Nombre Retirador</fo:block>
						</fo:table-cell>
						<fo:table-cell text-align="center" border="0.5pt solid #000000" padding="2pt">
						  <fo:block font-weight="bold" >Nombre Oficina Retiro</fo:block>
						</fo:table-cell>
					  </fo:table-row>
					</fo:table-header>

					<fo:table-body>
						<xsl:for-each select="datosVales">
							  <fo:table-row>
								<fo:table-cell border="0.5pt solid #000000" padding="2pt">
									<fo:block>
										<xsl:value-of select="numFolio"/>
									</fo:block>
								</fo:table-cell>
								<fo:table-cell border="0.5pt solid #000000" padding="2pt">
									<fo:block>
										<xsl:value-of select="numValeVista"/>
									</fo:block>
								</fo:table-cell>
								<fo:table-cell border="0.5pt solid #000000" padding="2pt">
									<fo:block>
										<xsl:value-of select="rut"/>
									</fo:block>
								</fo:table-cell>
								<fo:table-cell border="0.5pt solid #000000" padding="2pt">
									<fo:block>
										<xsl:value-of select="oficina"/>
									</fo:block>
								</fo:table-cell>
								<fo:table-cell border="0.5pt solid #000000" padding="2pt">
									<fo:block>
										<xsl:value-of select="fechaEntrega"/>
									</fo:block>
								</fo:table-cell>
								<fo:table-cell border="0.5pt solid #000000" padding="2pt">
									<fo:block>
										<xsl:value-of select="fechaCaducidad"/>
									</fo:block>
								</fo:table-cell>
								<fo:table-cell border="0.5pt solid #000000" padding="2pt">
									<fo:block>
										<xsl:value-of select="fechaLiquidacion"/>
									</fo:block>
								</fo:table-cell>
								<fo:table-cell border="0.5pt solid #000000" padding="2pt">
									<fo:block>
										$<xsl:value-of select="monto"/>
									</fo:block>
								</fo:table-cell>
								<fo:table-cell border="0.5pt solid #000000" padding="2pt">
									<fo:block>
										<xsl:value-of select="estado"/>
									</fo:block>
								</fo:table-cell>
								<fo:table-cell border="0.5pt solid #000000" padding="2pt">
									<fo:block>
										<xsl:value-of select="rutRetirador"/>
									</fo:block>
								</fo:table-cell>
								<fo:table-cell border="0.5pt solid #000000" padding="2pt">
									<fo:block>
										<xsl:value-of select="nombreRetirador"/>
									</fo:block>
								</fo:table-cell>
								<fo:table-cell border="0.5pt solid #000000" padding="2pt">
									<fo:block>
										<xsl:value-of select="oficinaRetiro"/>
									</fo:block>
								</fo:table-cell>
							  </fo:table-row>
						</xsl:for-each>
					</fo:table-body>
				 </fo:table>
			</fo:block>
			<fo:block white-space-collapse="true">&#160;</fo:block>
			<fo:block  font-size="7pt">Se extiende el presente certificado a expresa petición de <xsl:value-of select="parrafo/razonSocial"/> y para los fines 
			que estime convenientes y sin ulterior responsabilidad para el Banco.</fo:block>
			<fo:block white-space-collapse="true">&#160;</fo:block>
			<fo:block font-size="7pt" >Atentamente.</fo:block>
			<fo:block white-space-collapse="true">&#160;</fo:block>
			<fo:block>
			  <fo:external-graphic height="70pt" width="70pt" src="url('{pie/timbreBci}')"/> 
		    </fo:block>
			</fo:flow>
			</fo:page-sequence>
		</fo:root>
	</xsl:template>
</xsl:stylesheet>