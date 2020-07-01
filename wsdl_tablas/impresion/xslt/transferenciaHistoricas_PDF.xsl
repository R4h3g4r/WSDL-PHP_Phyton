<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="1.1" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format">	
	
  <xsl:param name="logoBci"/>
   
  <xsl:param name="firma"/> 
  
  <xsl:variable name="bgcolor">#E7E5EF</xsl:variable>
	<xsl:variable name="lineas">#CCCCCC</xsl:variable>
	<xsl:variable name="txt">#000000</xsl:variable>
	<xsl:variable name="txt-azul-claro">#0061A5</xsl:variable>
	<xsl:variable name="txt-azul-oscuro">#1069B5</xsl:variable>
	<xsl:variable name="alto-filas">5mm</xsl:variable>
	<xsl:variable name="espacio-subtitulos">2mm</xsl:variable>
	<xsl:variable name="borde-tabla">#CCCCCC</xsl:variable>
	<xsl:variable name="espacio-texto-celda-left">2mm</xsl:variable>
	<xsl:variable name="espacio-texto-celda-top">1mm</xsl:variable>
	<xsl:variable name="espacio-celda-top">2mm</xsl:variable>
	<xsl:variable name="size-fuente-margen">7pt</xsl:variable>
	
  
  <xsl:template match="raiz">
    <fo:root>
		<fo:layout-master-set>
			<fo:simple-page-master master-name="Letter" page-height="29.7cm" page-width="21.0cm" margin="2cm">
				<fo:region-body/>
			</fo:simple-page-master>
		</fo:layout-master-set>		
		
		
		
		<fo:page-sequence master-reference="Letter">

		
			<fo:flow flow-name="xsl-region-body">
			
			
			<fo:block text-align="left" space-before="3mm">
								   <fo:external-graphic scaling="uniform"   height="30pt" width="120pt">
								       <xsl:attribute name="src">tablas/impresion/imagenes/logo.jpg</xsl:attribute>
							      </fo:external-graphic>
							    </fo:block>
						
			
			
			
			
			<fo:block font-size="7pt" space-after="2mm"   text-align="right">
			<fo:table table-layout="fixed" >
				<fo:table-column column-width="17.79cm" />
				<fo:table-body>
					<fo:table-row>
						<fo:table-cell  border="0.5pt solid {$lineas}">
							<fo:block color="{$txt}" padding-before="1mm" padding-after="1mm"  font-size="9pt" text-align="left">
								<fo:inline font-weight="bold">Nombre:&#0160;<xsl:value-of select="nombreEmpresa"/></fo:inline>
									&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;<fo:inline font-weight="bold">Rut:&#0160;<xsl:value-of select="rutEmpresa"/>-<xsl:value-of select="dvEmpresa"/> </fo:inline>
							</fo:block>
						
						  <fo:block color="{$txt}" padding-before="1mm" padding-after="1mm" font-size="9pt" text-align="left">
								<fo:inline font-weight="bold"><xsl:value-of select="tipoTransferencia"/></fo:inline><fo:inline font-weight="bold">&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;Periodo:&#0160;<xsl:value-of select="fechaInicial"/>-<xsl:value-of select="fechaFinal"/> </fo:inline><fo:inline font-weight="bold">&#0160;&#0160;&#0160;&#0160;&#0160;Generado:&#0160;<xsl:value-of select="fechaCalendario"/></fo:inline>
							</fo:block>
						    
                								
			
                 	
			
			
						
						</fo:table-cell>
						</fo:table-row>

				</fo:table-body>
			</fo:table>
		</fo:block>
		
			
			
			
			<fo:block text-align="center" space-before="3mm">
				Cartola de transferencias históricas 
			</fo:block>
			<xsl:choose>
				<xsl:when test="detalles">		
					
					<fo:block text-align="left" space-before="3mm" font-size="7pt">
									
						<fo:table  border-style="solid" border-width="0.5pt">
							<fo:table-column column-width="40mm"/>
							<fo:table-column column-width="58mm"/>
							<fo:table-column column-width="58mm"/>
							<xsl:if test="todasREA">">
								<fo:table-column column-width="15mm"/>
							</xsl:if>
							<xsl:if test="todasREC">">
								<fo:table-column column-width="15mm"/>
							</xsl:if>
							<xsl:if test="tipoEnvio">">
								<fo:table-column column-width="20mm"/>
							</xsl:if>
							
							<xsl:if test="etiq4">">
								<fo:table-column column-width="20mm"/>
							</xsl:if>
							
							
							<fo:table-header>
								<fo:table-row>
									<xsl:if test="etiq4">
									<fo:table-cell background-color="silver" border-style="solid" border-width="0.5pt" space-before="1mm">
										<fo:block text-align="center"><xsl:value-of select="etiq4"/></fo:block>
									</fo:table-cell>
									</xsl:if>
									<fo:table-cell background-color="silver" border-style="solid" border-width="0.5pt" space-before="1mm">
										<fo:block text-align="center"><xsl:value-of select="etiq1"/></fo:block>
									</fo:table-cell>
									<fo:table-cell background-color="silver" border-style="solid" border-width="0.5pt" space-before="1mm">
										<fo:block text-align="center"><xsl:value-of select="etiq2"/></fo:block>
									</fo:table-cell>
									<fo:table-cell background-color="silver" border-style="solid" border-width="0.5pt" space-before="1mm">
										<fo:block text-align="center"><xsl:value-of select="etiq3"/></fo:block>
									</fo:table-cell>
									<xsl:if test="todasREA">
										<fo:table-cell background-color="silver" border-style="solid" border-width="0.5pt" space-before="1mm">
											<fo:block text-align="center">
												<xsl:value-of select="todasREA"/>
											</fo:block>
										</fo:table-cell>
									</xsl:if>
									<xsl:if test="todasREC">
										<fo:table-cell background-color="silver" border-style="solid" border-width="0.5pt" space-before="1mm">
											<fo:block text-align="center">
												<xsl:value-of select="todasREC"/>
											</fo:block>
										</fo:table-cell>
									</xsl:if>
									
									<xsl:if test="tipoEnvio">
										<fo:table-cell background-color="silver" border-style="solid" border-width="0.5pt" space-before="1mm">
											<fo:block text-align="center"><xsl:value-of select="tipoEnvio"/></fo:block>
										</fo:table-cell>
									</xsl:if>
																		
								</fo:table-row>
							</fo:table-header>
							<xsl:for-each select="//detalles/detalle">
								<fo:table-body>
									<fo:table-row >
										<fo:table-cell border-style="solid" border-width="0.5pt">
											<fo:block text-align="center" space-before="1mm">
												<xsl:value-of select="fechaCreacion"/>
											</fo:block>
										</fo:table-cell>
										<fo:table-cell  border-style="solid" border-width="0.5pt">
											<fo:block text-align="center" space-before="1mm">
												<xsl:value-of select="nombreTransferencia"/>
											</fo:block>
										</fo:table-cell>
										<fo:table-cell  border-style="solid" border-width="0.5pt">
											<fo:block text-align="center" space-before="1mm">
												<xsl:value-of select="nombreDestinatario"/>									
											</fo:block>
										</fo:table-cell>
										<xsl:if test="monto">
										<fo:table-cell  border-style="solid" border-width="0.5pt">
											<fo:block text-align="right" space-before="1mm">
												$ <xsl:value-of select="monto"/>							
											</fo:block>
										</fo:table-cell>
										</xsl:if>
										<xsl:if test="montoRea">
											<fo:table-cell border-style="solid" border-width="0.5pt" space-before="1mm">
												<fo:block text-align="center"><xsl:value-of select="montoRea"/></fo:block>
											</fo:table-cell>
									    </xsl:if>
										<xsl:if test="montoRec">
											<fo:table-cell border-style="solid" border-width="0.5pt" space-before="1mm">
												<fo:block text-align="center"><xsl:value-of select="montoRec"/></fo:block>
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
