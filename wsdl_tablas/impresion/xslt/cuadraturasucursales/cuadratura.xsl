<?xml version="1.0" encoding="ISO-8859-1"?>

<!-- <== version: 2014/01/28 12:00 ==> -->

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format">
<!--Variables-->
	<xsl:variable name="bgcolorD">#EB5339</xsl:variable>
	<xsl:variable name="bgcolorC">#0361A2</xsl:variable>
	
<!-- Fin Variables-->

<!-- formato de números -->
<xsl:decimal-format name="euro"
		   decimal-separator="," grouping-separator="."/>
		   
<!-- Fin formato números -->
<xsl:template match="/">


	<fo:root xmlns:fo="http://www.w3.org/1999/XSL/Format" xmlns:fox="http://xml.apache.org/fop/extensions">
		<!-- Definición de la página -->
		<fo:layout-master-set>
			<fo:simple-page-master margin-right="1.0cm" margin-left="1.0cm" margin-bottom="1.0cm"
			  margin-top="1.0cm" page-width="29.7cm" page-height="21cm" master-name="first">
				<fo:region-before extent="0cm"/>
				<fo:region-body margin-bottom="1cm" margin-top="0cm"/>
				<fo:region-after extent="0cm"/>
			</fo:simple-page-master>
		</fo:layout-master-set>	
		
		<!-- Cuerpo -->
		
		<fo:page-sequence master-reference="first" language="en" hyphenate="true">
			<fo:flow flow-name="xsl-region-body">
			
				<!-- cabecera con oficina y fecha -->
				<fo:table text-align="left" table-layout="fixed" margin-bottom="3pt" border-collapse="separate"
						border-spacing="2px" border-color= "gray">
					<fo:table-column column-width="15cm"/>
					<fo:table-column column-width="13cm"/>
					<fo:table-body>
						<fo:table-row>
							<fo:table-cell>
								<!-- Oficina -->
								<fo:block text-align="left" color= "#70A0C1" padding="2px 0px 6px 4px"  font-size="8pt">
									Oficina: <xsl:value-of select="cuadratura/oficina"/>	
								</fo:block>
							</fo:table-cell>
							<fo:table-cell>
								<!--  Fecha  -->
								<fo:block text-align="right" color= "#70A0C1" padding="2px 0px 6px 4px"  font-size="8pt">
									Fecha: <xsl:value-of select="cuadratura/fecha"/>	
								</fo:block>
							</fo:table-cell>
						</fo:table-row>
					</fo:table-body>
				</fo:table>
				
				<!-- Bloque vacio para dejar un hueco -->
				<fo:block line-height="12pt" font-size="11pt" color="white">VACIO</fo:block>
			
				<!-- titulo de la página -->
				<fo:block line-height="12pt" font-size="20pt"
						space-before="5pt" space-after="5pt"
						keep-together="always" color= "#70A0C1" font-weight="bold"
						margin-bottom="4px" border-bottom="1px solid #CCCCCC"
						padding="2px 0px 6px 4px" text-align="left">
					<fo:inline >Cuadratura de fin día sucursal</fo:inline>
				</fo:block>
				
				<!-- Se itera sobre el listado de objetos categorías -->
				<xsl:for-each select="cuadratura/categorias/categoria">
					<!-- Bloque vacio para dejar un hueco -->
					<fo:block line-height="12pt" font-size="11pt" color="white">VACIO</fo:block>
				
					<!-- Categoría  -->
					<fo:block line-height="12pt" font-size="11pt"
											  space-before.optimum="1.5pt" space-after.optimum="5pt"
											  keep-together="always" font-weight="bold" vertical-align="middle">
						<fo:external-graphic>
							<xsl:attribute name="src">
								<xsl:value-of select="imagen"/>01-bullet2-rj.gif
							</xsl:attribute>
						</fo:external-graphic>
						<!--  letra de color de fondo para que simule un espacio y que la imagen no se vea pegada a la glosa -->
						<fo:inline color="white">X</fo:inline>
						<xsl:value-of select="glosa"/>
					</fo:block>
				
					<!-- Tabla con items -->
					<fo:table text-align="left" table-layout="fixed" margin-bottom="3pt" border-collapse="separate"
							border-spacing="2px" border-color= "gray">
						<fo:table-column column-width="8cm"/>
						<fo:table-column column-width="1cm"/>
						<fo:table-column column-width="4cm"/>
						<fo:table-column column-width="1cm"/>
						<fo:table-column column-width="4cm"/>
						<fo:table-column column-width="1cm"/>
						<fo:table-column column-width="4cm"/>
						<fo:table-column column-width="1cm"/>
						<fo:table-column column-width="4cm"/>
						
						<fo:table-body>
							<fo:table-row>
							<!-- cabecera de la tabla de items -->
								<fo:table-cell>
									<!-- Hay que escribir algún caracter para que use el alto, escribimos del mismo color que el fondo -->
									<fo:block font-weight="bold" background-color="#F0F0F0" text-align="left" 
										padding="1px 2px 1px 2px" color= "#F0F0F0" border-right="1px solid #E2E2E2"
										border-bottom= "1px solid #E2E2E2" line-height= "12px" height= "20px;">VACIO</fo:block>
								</fo:table-cell>
								<fo:table-cell number-columns-spanned="3">
									<fo:block font-weight="bold" background-color="#F0F0F0" text-align="left" 
										padding="1px 2px 1px 2px" color= "#0361A2" border-right="1px solid #E2E2E2"
										border-bottom=" 1px solid #E2E2E2" line-height= "12px" height= "20px;">Debe</fo:block>
								</fo:table-cell>
								<fo:table-cell>
									<fo:block font-weight="bold" background-color="#F0F0F0" text-align="left" 
										padding="1px 2px 1px 2px" color= "#0361A2" border-right="1px solid #E2E2E2"
										border-bottom=" 1px solid #E2E2E2" line-height= "12px" height= "20px;">Status</fo:block>
								</fo:table-cell>
								<fo:table-cell number-columns-spanned="3">
									<fo:block font-weight="bold" background-color="#F0F0F0" text-align="left" 
										padding="1px 2px 1px 2px" color= "#0361A2" border-right="1px solid #E2E2E2"
										border-bottom=" 1px solid #E2E2E2" line-height= "12px" height= "20px;">Haber</fo:block>
								</fo:table-cell>
								<!--padding abajo,arriba-->
								<fo:table-cell>
									<fo:block font-weight="bold" background-color="#F0F0F0" text-align="left" 
										padding="1px 2px 1px 2px" color= "#0361A2" border-right="1px solid #E2E2E2"
										border-bottom=" 1px solid #E2E2E2" line-height= "12px" height= "20px;">Diferencia</fo:block>
								</fo:table-cell>
							</fo:table-row>
						
							<!-- Se pinta cada item -->
							<xsl:for-each select="hijos/item">
								<fo:table-row>
									<!-- Titulo del item -->
									<fo:table-cell>
										<fo:block text-align= "left" color= "#0361A2" line-height="12px" 
											background-color="#F0F0F0" border-right="1px solid #E2E2E2" padding="1px 2px 1px 2px"
											border-bottom= "1px solid #E2E2E2" height= "20px;" vertical-align="middle">
											<fo:external-graphic>
												<xsl:attribute name="src">
													<xsl:value-of select="imagen"/>01-bullet1-rj.gif
												</xsl:attribute>
											</fo:external-graphic>
											<!--  letra de color de fondo para que simule un espacio y que la imagen no se vea pegada a la glosa -->
											<fo:inline color="#F0F0F0">X</fo:inline>
											<xsl:value-of select="glosa"/>
										</fo:block>
									</fo:table-cell>
									<!-- Columna Debe -->
									<!-- Icono regla debe -->
									<xsl:for-each select="reglas/reglaCalDebe">
										<fo:table-cell>
											<fo:block text-align="center" vertical-align="top">
												<xsl:if test="automatico = 'true'">
													<fo:external-graphic>
														<xsl:attribute name="src">
															<xsl:value-of select="imagen"/>01-ico-carpeta-on2_imp.gif
														</xsl:attribute>
													</fo:external-graphic>
												</xsl:if>
												<xsl:if test="automatico = 'false'">
													<fo:external-graphic>
														<xsl:attribute name="src">
															<xsl:value-of select="imagen"/>01-ico-carpeta-off_imp.gif
														</xsl:attribute>
													</fo:external-graphic>
												</xsl:if>
											</fo:block>
										</fo:table-cell>
										<fo:table-cell>
											<fo:block text-align="right" height="14px" font-size= "11px" border="1px solid #000000"
													margin-right= "2px" background-color= "#FFFFCC" vertical-align= "middle" padding="1px 2px 1px 2px">
												<!-- valor debe, si es error no se puede formatear a número -->
												<xsl:if test="valor != 'ERROR'">
													<xsl:value-of select="format-number(valor, '#.##0,#', 'euro')"/>
												</xsl:if>
												<xsl:if test="valor = 'ERROR'">
													<xsl:value-of select="valor"/>
												</xsl:if>
											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
									<fo:table-cell>
										<!-- Icono regla validación debe -->
										<xsl:for-each select="reglas/reglaValDebe">
											<xsl:if test="valor > 0">
												<fo:block>
													<fo:external-graphic>
														<xsl:attribute name="src">
															<xsl:value-of select="imagen"/>00-bullet-alerta-r2.gif
														</xsl:attribute>
													</fo:external-graphic>
												</fo:block>
											</xsl:if>
										</xsl:for-each>
									</fo:table-cell>
									<!-- Columna Estado -->
									<fo:table-cell>
											<xsl:if test="estado = 'Diferencia'">
												<fo:block text-align="center" color="white" background-color="{$bgcolorD}"><xsl:value-of select="estado"/></fo:block>
											</xsl:if>
											<xsl:if test="estado = 'Cuadrado'">
												<fo:block text-align="center" color="white" background-color="{$bgcolorC}"><xsl:value-of select="estado"/></fo:block>
											</xsl:if>
									</fo:table-cell>
									<!-- Columna Haber -->
									
									<!-- Icono regla haber -->
									<xsl:for-each select="reglas/reglaCalHaber">
										<fo:table-cell>
											<fo:block  text-align="center">
												<xsl:if test="automatico = 'true'">
													<fo:external-graphic>
														<xsl:attribute name="src">
															<xsl:value-of select="imagen"/>01-ico-carpeta-on2_imp.gif
														</xsl:attribute>
													</fo:external-graphic>
												</xsl:if>
												<xsl:if test="automatico = 'false'">
													<fo:external-graphic>
														<xsl:attribute name="src">
															<xsl:value-of select="imagen"/>01-ico-carpeta-off_imp.gif
														</xsl:attribute>
													</fo:external-graphic>
												</xsl:if>
											</fo:block>
										</fo:table-cell>
										<fo:table-cell>
											<fo:block text-align="right" height="16px" font-size= "11px" border="1px solid #000000"
													margin-right= "2px" background-color= "#FFFFCC" vertical-align= "middle" padding="1px 2px 1px 2px">
												<!-- valor haber, si es error no se puede formatear a número -->
												<xsl:if test="valor != 'ERROR'">
													<xsl:value-of select="format-number(valor, '#.##0,#', 'euro')"/>
												</xsl:if>
												<xsl:if test="valor = 'ERROR'">
													<xsl:value-of select="valor"/>
												</xsl:if>
											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
									<!-- Icono regla validación haber -->
									<fo:table-cell>
										<xsl:for-each select="reglas/reglaValHaber">
											<xsl:if test="valor > 0">
												<fo:block>
													<fo:external-graphic>
														<xsl:attribute name="src">
															<xsl:value-of select="imagen"/>00-bullet-alerta-r2.gif
														</xsl:attribute>
													</fo:external-graphic>
												</fo:block>
											</xsl:if>
										</xsl:for-each>
									</fo:table-cell>
									<!-- Columna Diferencia -->
									<fo:table-cell>
										<fo:block text-align="right" height="16px" font-size= "11px" border="1px solid #000000"
													margin-right= "2px" background-color= "#FFFFCC" vertical-align= "middle" padding="1px 2px 1px 2px">
											<!-- valor Diferencia, si es error no se puede formatear a número -->
											<xsl:if test="diferencia != 'ERROR'">
												<xsl:value-of select="format-number(diferencia, '#.##0,#', 'euro')"/>
											</xsl:if>
											<xsl:if test="diferencia = 'ERROR'">
												<xsl:value-of select="diferencia"/>
											</xsl:if>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
							</xsl:for-each> <!-- fin iteración items -->
						</fo:table-body>
					</fo:table>
					
					<!-- Bloque vacio para dejar un hueco -->
					<fo:block line-height="12pt" font-size="11pt" color="white">VACIO
					</fo:block>
					
					<!-- Resumen de categoria -->
					<fo:table text-align="left" table-layout="fixed" margin-bottom="3pt">
						<fo:table-column column-width="24cm"/>
						<fo:table-column column-width="4cm"/>
						<fo:table-body background-color="#F0F0F0">
							<fo:table-row>
								<!-- Titulo Acumulado categoria -->
								<fo:table-cell>
									<fo:block text-align="left" font-weight= "bold" color= "#0361A2" line-height = "16px"
										padding= "1px 2px 1px 2px" border-right="1px solid #E2E2E2" border-bottom="1px solid #E2E2E2" height="20px">
										<fo:external-graphic>
											<xsl:attribute name="src">
												<xsl:value-of select="imagen"/>01-bullet1-rj.gif
											</xsl:attribute>
										</fo:external-graphic>
										<!--  letra de color de fondo para que simule un espacio y que la imagen no se vea pegada a la glosa -->
										<fo:inline color="#F0F0F0">X</fo:inline>
										SECCION <xsl:value-of select="glosa"/>
									</fo:block>
								</fo:table-cell>
								<!-- Diferencia categoria -->
								<fo:table-cell>
									<fo:block text-align="right" height="14px" font-size= "11px" border="1px solid #000000"
													margin-right= "2px" background-color= "#FFFFCC" vertical-align= "middle" padding="1px 2px 1px 2px">
										<!-- valor Diferencia, si es error no se puede formatear a número -->
										<xsl:if test="diferencia != 'ERROR'">
											<xsl:value-of select="format-number(diferencia, '#.##0,#', 'euro')"/>
										</xsl:if>
										<xsl:if test="diferencia = 'ERROR'">
											<xsl:value-of select="diferencia"/>
										</xsl:if>
									</fo:block>
								</fo:table-cell>
							</fo:table-row>
						</fo:table-body>
					</fo:table>
				</xsl:for-each>	<!-- Fin iteración categorias -->
				
				<!-- Bloque vacio para dejar un hueco -->
				<fo:block line-height="12pt" font-size="11pt" color="white">VACIO
				</fo:block>
				
				<!-- Bloque vacio para dejar un hueco -->
				<fo:block line-height="12pt" font-size="11pt" color="white">VACIO
				</fo:block>
				
				<!-- Resumen de cuadratura -->
				<fo:table text-align="left" table-layout="fixed" margin-bottom="3pt">
					<fo:table-column column-width="8cm"/>
					<fo:table-column column-width="6cm"/>
					<fo:table-column column-width="4cm"/>
					<fo:table-column column-width="1cm"/>
					<fo:table-column column-width="5cm"/>
					<fo:table-column column-width="4cm"/>
					<fo:table-body background-color="#F0F0F0">
						<fo:table-row>
							<fo:table-cell border-bottom="1px solid #E2E2E2">
								<!-- Hay que escribir algún caracter para que use el alto, escribimos del mismo color que el fondo -->
								<fo:block text-align="left" font-weight= "bold" color= "#F0F0F0" line-height = "16px"
										padding= "1px 2px 1px 2px" height="20px">VACIO</fo:block>
							</fo:table-cell>
							<!-- Titulo Estado -->
							<fo:table-cell border-bottom="1px solid #E2E2E2">
								<fo:block text-align="left" font-weight= "bold" color= "#0361A2" line-height = "16px" font-size= "11px"
										padding= "0px 2px 1px 2px" height="20px">
									<fo:external-graphic>
										<xsl:attribute name="src">
											<xsl:value-of select="cuadratura/imagen"/>01-bullet1-rj.gif
										</xsl:attribute>
									</fo:external-graphic>
									<!--  letra de color de fondo para que simule un espacio y que la imagen no se vea pegada a la glosa -->
									<fo:inline color="#F0F0F0">X</fo:inline>
									Estado
								</fo:block>
							</fo:table-cell>
							<!-- Valor Estado -->
							<fo:table-cell  border-bottom="1px solid #E2E2E2">
								<xsl:if test="cuadratura/estado = 'Diferencia'">
									<fo:block text-align="center" color="white" background-color="{$bgcolorD}" ><xsl:value-of select="cuadratura/estado"/></fo:block>
								</xsl:if>
								<xsl:if test="cuadratura/estado = 'Cuadrado'">
									<fo:block text-align="center" color="white" background-color="{$bgcolorC}"  ><xsl:value-of select="cuadratura/estado"/></fo:block>
								</xsl:if>
							</fo:table-cell>
							<!-- Hueco -->
							<fo:table-cell  border-bottom="1px solid #E2E2E2">
							</fo:table-cell>
							<!-- Titulo Diferencia -->
							<fo:table-cell  border-bottom="1px solid #E2E2E2">
								<fo:block text-align="left" font-weight= "bold" color= "#0361A2" line-height = "16px" font-size= "11px"
										padding= "0px 2px 1px 2px" height="20px">
										<fo:external-graphic>
											<xsl:attribute name="src">
												<xsl:value-of select="cuadratura/imagen"/>01-bullet1-rj.gif
											</xsl:attribute>
										</fo:external-graphic>
										<!--  letra de color de fondo para que simule un espacio y que la imagen no se vea pegada a la glosa -->
										<fo:inline color="#F0F0F0">X</fo:inline>
										Diferencia final oficina
								</fo:block>
							</fo:table-cell>
							<!-- Diferencia cuadratura -->
							<fo:table-cell  border-bottom="1px solid #E2E2E2">
								<fo:block text-align="right" height="14px" font-size= "11px" border="1px solid #000000"
													margin-right= "2px" background-color= "#FFFFCC" vertical-align= "middle" padding="1px 2px 1px 2px">
									<!-- valor Diferencia, si es error no se puede formatear a número -->
									<xsl:if test="cuadratura/diferencia != 'ERROR'">
										<xsl:value-of select="format-number(cuadratura/diferencia, '#.##0,#', 'euro')"/>
									</xsl:if>
									<xsl:if test="cuadratura/diferencia = 'ERROR'">
										<xsl:value-of select="cuadratura/diferencia"/>
									</xsl:if>
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