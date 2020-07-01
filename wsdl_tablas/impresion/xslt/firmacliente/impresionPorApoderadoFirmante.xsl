<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:fn="http://www.w3.org/2005/02/xpath-functions" xmlns:xdt="http://www.w3.org/2005/02/xpath-datatypes">
      <xsl:template match="ApoderadosFirmante">
      <fo:root>
      <fo:layout-master-set>
			<fo:simple-page-master master-name="formato-Pagina" page-height="27.9cm" page-width="21cm" margin-left="1.5cm" margin-right="1cm" margin-top="1cm" margin-bottom="1cm">
				<fo:region-body margin-top="0cm" margin-bottom="0cm"/>
				<fo:region-before region-name="header" extent="0cm" precedence="true"/>
				<fo:region-after extent="0cm" precedence="true"/>
			</fo:simple-page-master>
		</fo:layout-master-set>
      <!-- end: defines page layout -->
      <!-- actual layout -->
      <fo:page-sequence master-reference="formato-Pagina">
        <fo:flow flow-name="xsl-region-body">
		     <fo:block>
				<fo:table font-size="7pt" table-layout="fixed" width="100%" >
				    <fo:table-column column-width="proportional-column-width(100)"/>
					<fo:table-body>
					  <fo:table-row>
						<fo:table-cell text-align="start"  padding="1pt">
							<fo:block>
								<fo:table>
					    			<fo:table-column column-width="proportional-column-width(50)"/>
					    			<fo:table-column column-width="proportional-column-width(50)"/>
					    			<fo:table-body>
					    			<fo:table-row>
										<fo:table-cell text-align="start">
										  <fo:block font-weight="bold" font-size="12pt">Consulta firma por Apoderado o Firmante</fo:block>
										</fo:table-cell>
										<fo:table-cell text-align="right">
										  <fo:block font-weight="bold" ><xsl:value-of select="encabezado/fechaImpresion"/></fo:block>
										</fo:table-cell>
									</fo:table-row>
									</fo:table-body>
					    		</fo:table>
				    		</fo:block>
						</fo:table-cell>
					  </fo:table-row>
					  <fo:table-row>
						<fo:table-cell text-align="start"  padding="1pt">
						  <fo:block font-weight="bold" >Rut Apoderado o Firmante : <xsl:value-of select="encabezado/rutApoderadoFirmante"/></fo:block>
						</fo:table-cell>
					  </fo:table-row>
					  <fo:table-row>
						<fo:table-cell text-align="start"  padding="1pt">
						  <fo:block font-weight="bold" >Nombre : <xsl:value-of select="encabezado/nombre"/></fo:block>
						</fo:table-cell>
					  </fo:table-row>
					  <fo:table-row>
						<fo:table-cell text-align="start"  padding="1pt">
						  <fo:block font-weight="bold" >Facultad: <xsl:value-of select="encabezado/facultad"/></fo:block>
						</fo:table-cell>
					  </fo:table-row>
					  <fo:table-row>
						<fo:table-cell text-align="start"  padding="1pt">
						  <fo:block font-weight="bold" >Poderes</fo:block>
						</fo:table-cell>
					  </fo:table-row>
					</fo:table-body>
				 </fo:table>
			</fo:block>
					
			<fo:block>
				   <fo:table font-size="6pt" table-layout="fixed" width="100%" >
				    <fo:table-column column-width="proportional-column-width(15)"/>
					<fo:table-column column-width="proportional-column-width(15)"/>
					<fo:table-column column-width="proportional-column-width(15)"/>
					<fo:table-column column-width="proportional-column-width(10)"/>
					<fo:table-column column-width="proportional-column-width(10)"/>
					<fo:table-column column-width="proportional-column-width(10)"/>
					<fo:table-column column-width="proportional-column-width(10)"/>
					<fo:table-column column-width="proportional-column-width(10)"/>
					<fo:table-column column-width="proportional-column-width(10)"/>
					<fo:table-column column-width="proportional-column-width(10)"/>
					<fo:table-header>
					  <fo:table-row>
						<fo:table-cell text-align="center" display-align="center" border="0.5pt solid #000000" padding="2pt">
						  <fo:block font-weight="bold" >RUT EMPRESA o TITULAR</fo:block>
						</fo:table-cell>
						<fo:table-cell text-align="center" display-align="center" border="0.5pt solid #000000" padding="2pt">
						  <fo:block font-weight="bold" >RAZON SOCIAL O NOMBRE</fo:block>
						</fo:table-cell>
						<fo:table-cell text-align="center" display-align="center" border="0.5pt solid #000000" padding="2pt">
						  <fo:block font-weight="bold" >FACULTAD</fo:block>
						</fo:table-cell>
						<fo:table-cell text-align="center" display-align="center" border="0.5pt solid #000000" padding="2pt">
						  <fo:block font-weight="bold" >NOMBRE FACULTAD</fo:block>
						</fo:table-cell>
						<fo:table-cell text-align="center" display-align="center" border="0.5pt solid #000000" padding="2pt">
						  <fo:block font-weight="bold" >CUENTA CORRIENTE</fo:block>
						</fo:table-cell>
						<fo:table-cell text-align="center" display-align="center" border="0.5pt solid #000000" padding="2pt">
						  <fo:block font-weight="bold" >PODER</fo:block>
						</fo:table-cell>
						<fo:table-cell text-align="center" display-align="center" border="0.5pt solid #000000" padding="2pt">
						  <fo:block font-weight="bold" >MONTO MAX</fo:block>
						</fo:table-cell>
						<fo:table-cell text-align="center" display-align="center" border="0.5pt solid #000000" padding="2pt">
						  <fo:block font-weight="bold">MONEDA</fo:block>
						</fo:table-cell>
					    <fo:table-cell text-align="center" display-align="center" border="0.5pt solid #000000" padding="2pt">
						  <fo:block font-weight="bold" >RESTRICCION</fo:block>
						</fo:table-cell>
					     <fo:table-cell text-align="center" display-align="center" border="0.5pt solid #000000" padding="2pt">
						  <fo:block font-weight="bold" >LOCALIDAD</fo:block>
						</fo:table-cell>
					  </fo:table-row>
					</fo:table-header>

					<fo:table-body>
						<xsl:for-each select="poder">
							  <fo:table-row>
								<fo:table-cell border="0.5pt solid #000000" padding="2pt">
									<fo:block>
										<xsl:value-of select="rutEmpresaTitular"/>
									</fo:block>
								</fo:table-cell>
								<fo:table-cell border="0.5pt solid #000000" padding="2pt">
									<fo:block>
										<xsl:value-of select="razonSocial"/>
									</fo:block>
								</fo:table-cell>
								<fo:table-cell border="0.5pt solid #000000" padding="2pt">
									<fo:block>
										<xsl:value-of select="facultad"/>
									</fo:block>
								</fo:table-cell>
								<fo:table-cell border="0.5pt solid #000000" padding="2pt">
									<fo:block>
										<xsl:value-of select="nombreFacultad"/>
									</fo:block>
								</fo:table-cell>
								<fo:table-cell border="0.5pt solid #000000" padding="2pt">
									<fo:block>
										<xsl:value-of select="numeroCuenta"/>
									</fo:block>
								</fo:table-cell>
								<fo:table-cell border="0.5pt solid #000000" padding="2pt">
									<fo:block>
										<xsl:value-of select="poder"/>
									</fo:block>
								</fo:table-cell>
								<fo:table-cell border="0.5pt solid #000000" padding="2pt">
									<fo:block>
										<xsl:value-of select="montoMax"/>
									</fo:block>
								</fo:table-cell>
								<fo:table-cell border="0.5pt solid #000000" padding="2pt">
									<fo:block>
										<xsl:value-of select="moneda"/>
									</fo:block>
								</fo:table-cell>
							    <fo:table-cell border="0.5pt solid #000000" padding="2pt">
									<fo:block>
										<xsl:value-of select="restriccion"/>
									</fo:block>
								</fo:table-cell>
								<fo:table-cell border="0.5pt solid #000000" padding="2pt">
									<fo:block>
										<xsl:value-of select="localidad"/>
									</fo:block>
								</fo:table-cell>
							  </fo:table-row>
						</xsl:for-each>
					</fo:table-body>
				 </fo:table>
			</fo:block>
			<fo:block white-space-collapse="true">&#160;</fo:block>
			<fo:block>
				   <fo:table font-size="6pt" table-layout="fixed" width="100%" >
				    <fo:table-column column-width="proportional-column-width(30)"/>
					<fo:table-column column-width="proportional-column-width(15)"/>
					<fo:table-column column-width="proportional-column-width(26)"/>
					<fo:table-column column-width="proportional-column-width(18)"/>
					<fo:table-column column-width="proportional-column-width(15)"/>
					<fo:table-column column-width="proportional-column-width(28)"/>
					<fo:table-column column-width="proportional-column-width(8)"/>
					<fo:table-header>
					  <fo:table-row>
						<fo:table-cell text-align="center" display-align="center" border="0.5pt solid #000000" padding="2pt">
						  <fo:block font-weight="bold" >IMAGEN FIRMA</fo:block>
						</fo:table-cell>
						<fo:table-cell text-align="center" display-align="center" border="0.5pt solid #000000" padding="2pt">
						  <fo:block font-weight="bold" >FECHA VIGENCIA</fo:block>
						</fo:table-cell>
						<fo:table-cell text-align="center" display-align="center" border="0.5pt solid #000000" padding="2pt">
						  <fo:block font-weight="bold" >RAZON SOCIAL O NOMBRE</fo:block>
						</fo:table-cell>
						<fo:table-cell text-align="center" display-align="center" border="0.5pt solid #000000" padding="2pt">
						  <fo:block font-weight="bold" >CUENTA CORRIENTE</fo:block>
						</fo:table-cell>
						<fo:table-cell text-align="center" display-align="center" border="0.5pt solid #000000" padding="2pt">
						  <fo:block font-weight="bold" >RUT EMPRESA</fo:block>
						</fo:table-cell>
					    <fo:table-cell text-align="center" display-align="center" border="0.5pt solid #000000" padding="2pt">
						  <fo:block font-weight="bold" >NOMBRE APODERADO</fo:block>
						</fo:table-cell>
				        <fo:table-cell text-align="center" display-align="center" border="0.5pt solid #000000" padding="2pt">
						  <fo:block font-weight="bold" >GRUPO</fo:block>
						</fo:table-cell>
					  </fo:table-row>
					</fo:table-header>
					
					<fo:table-body>
						<xsl:for-each select="apoderado">
							  <fo:table-row>
								<fo:table-cell display-align="center" border="0.5pt solid #000000" padding="2pt">
									<fo:block>
										<fo:external-graphic src="{imagenFirma}"/>
									</fo:block>
								</fo:table-cell>
								<fo:table-cell display-align="center" border="0.5pt solid #000000" padding="2pt">
									<fo:block>
										<xsl:value-of select="fechaInicioVigencia"/>
									</fo:block>
								</fo:table-cell>
								<fo:table-cell display-align="center" border="0.5pt solid #000000" padding="2pt">
									<fo:block>
										<xsl:value-of select="razonSocialoNombre"/>
									</fo:block>
								</fo:table-cell>
								<fo:table-cell display-align="center" border="0.5pt solid #000000" padding="2pt">
									<fo:block>
										<xsl:value-of select="cuentaCorriente"/>
									</fo:block>
								</fo:table-cell>
								<fo:table-cell display-align="center" border="0.5pt solid #000000" padding="2pt">
									<fo:block>
										<xsl:value-of select="rutEmpresa"/>
									</fo:block>
								</fo:table-cell>
						        <fo:table-cell display-align="center" border="0.5pt solid #000000" padding="2pt">
									<fo:block>
										<xsl:value-of select="nombreApoderado"/>
									</fo:block>
								</fo:table-cell>
								<fo:table-cell display-align="center" border="0.5pt solid #000000" padding="2pt">
									<fo:block>
										<xsl:value-of select="grupo"/>
									</fo:block>
								</fo:table-cell>
							  </fo:table-row>
						</xsl:for-each>
					</fo:table-body>
				 </fo:table>
			</fo:block>
	     </fo:flow>
	</fo:page-sequence>
	</fo:root>
	</xsl:template>
</xsl:stylesheet>