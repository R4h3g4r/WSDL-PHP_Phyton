<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format">
	<!--Variables-->
	<xsl:variable name="bgcolor">#ECEDEF</xsl:variable>
	<xsl:variable name="lineas">#000000</xsl:variable>
	<xsl:variable name="txt">#000000</xsl:variable>
	<xsl:variable name="txt-azul-claro">#0061A5</xsl:variable>
	<xsl:variable name="txt-azul-oscuro">#1069B5</xsl:variable>
	<xsl:variable name="alto-filas">9mm</xsl:variable>
	<xsl:variable name="espacio-subtitulos">2mm</xsl:variable>
	<xsl:variable name="borde-tabla">#000000</xsl:variable>
	<xsl:variable name="espacio-texto-celda-left">2mm</xsl:variable>
	<xsl:variable name="espacio-texto-celda-top">1mm</xsl:variable>
	<xsl:variable name="espacio-celda-top">2mm</xsl:variable>
	<xsl:variable name="size-fuente-margen">6pt</xsl:variable>	
	<xsl:decimal-format name="peso" decimal-separator="," grouping-separator="." minus-sign=" "/>
    <xsl:decimal-format name="decimal" decimal-separator=',' grouping-separator='.' />
	<!-- Variables -->

	<!-- Template -->
	<xsl:template match="/">
		<fo:root xmlns:fo="http://www.w3.org/1999/XSL/Format">
			<!-- Propiedades pagina -->
			<fo:layout-master-set>
				<fo:simple-page-master master-name="pagina"
					page-height="28cm"
					page-width="22cm"
					margin-top="1cm"
					margin-bottom="1cm"
					margin-left="2cm"
					margin-right="2cm">
					<fo:region-body margin-top="2cm" margin-bottom="2.5cm" background-color="#ffffff"/> 
					<fo:region-before extent="3cm"/>
					<fo:region-after extent="2cm"/>
				</fo:simple-page-master>
			</fo:layout-master-set>
			<!-- Propiedades pagina -->
			<fo:page-sequence master-reference="pagina" initial-page-number="1" language="en" country="us">
			<fo:static-content flow-name="xsl-region-before">
					<xsl:call-template name="encabezado"/>
					</fo:static-content>
				<fo:flow flow-name="xsl-region-body">
					<xsl:call-template name="contenido"/>
				</fo:flow>
			</fo:page-sequence> 
		</fo:root>
	</xsl:template>
	<!-- Template -->
	
	<xsl:template name="encabezado">
	<fo:block font-size="9pt" font-weight="bold" text-align="right" space-after="3mm">
		<xsl:value-of select="Comprobante/numPag"/><fo:page-number/>
	</fo:block>
	<fo:block font-size="9pt" font-weight="bold" text-align="left" space-after="3mm">
		<xsl:value-of select="Comprobante/Titulo"/>
	</fo:block>
	<fo:block>
			<fo:table table-layout="fixed">
				<fo:table-column column-width="2cm"/>
				<fo:table-column column-width="1cm"/>
				<fo:table-column column-width="13cm"/>
				<fo:table-column column-width="2cm"/>
				<fo:table-body>
					<fo:table-row >
						<fo:table-cell >
							<fo:block font-size="9pt" font-weight="bold" text-align="right" >
							</fo:block>							
							<!--cliente-->
							<fo:block font-size="9pt" font-weight="bold" text-align="left" >
								<xsl:value-of select="Comprobante/nomSenor"/>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell >
							<fo:block font-size="9pt" font-weight="bold" text-align="right">
							</fo:block>							
							<!--cliente-->
							<fo:block font-size="9pt" font-weight="bold" text-align="left">
								:
							</fo:block>
						</fo:table-cell>
						<fo:table-cell >
							<fo:block font-size="9pt" font-weight="bold" text-align="right" >
							</fo:block>
							<!--cliente-->
							<fo:block font-size="9pt" font-weight="bold" text-align="left" >
								<xsl:value-of select="Comprobante/nomCliente"/>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
				</fo:table-body>
			</fo:table>
		</fo:block>	
		<!-- ENTER -->
		<fo:block space-after="7mm">
			<fo:leader leader-length="18cm"/>
		</fo:block>
		<!-- ENTER -->
	</xsl:template>
		
	<xsl:template name="contenido">
	<!-- PAG 1-->
		<!-- INICIO CONTENIDO DEL CLIENTE-->		
		<fo:block>
			<fo:table table-layout="fixed">
				<fo:table-column column-width="2cm"/>
				<fo:table-column column-width="1cm"/>
				<fo:table-column column-width="15cm"/>
				<fo:table-body>
					<fo:table-row >
						<fo:table-cell >
							<!--rut--> 
							<fo:block font-size="9pt" font-weight="bold" text-align="left" space-before="1mm" space-after="1mm">
								Rut
							</fo:block>
							<!--direccion-->
							<fo:block font-size="9pt" font-weight="bold" text-align="left" space-after="1mm"> 
								
							</fo:block>
							<!--ciudad-->
							<fo:block font-size="9pt" font-weight="bold" text-align="left" space-after="1mm">
							</fo:block>
						</fo:table-cell>
						<fo:table-cell >
							<!--rut-->
							<fo:block font-size="9pt" font-weight="bold" text-align="left" space-before="1mm" space-after="1mm">
								:
							</fo:block>
							<!--direccion-->
							<fo:block font-size="9pt" font-weight="bold" text-align="left" space-after="1mm"> 
								
							</fo:block>
							<!--ciudad-->
							<fo:block font-size="9pt" font-weight="bold" text-align="left" space-after="1mm">
								
							</fo:block>
						</fo:table-cell>
						<fo:table-cell >
							<!--rut-->
							<fo:block font-size="9pt" font-weight="bold" text-align="left" space-before="1mm" space-after="1mm">
								<xsl:value-of select='format-number(Comprobante/rutCliente,"###.###.##0","decimal")'/>
								<xsl:value-of select="Comprobante/dvCliente"/>
							</fo:block>
							<!--direccion-->
							<fo:block font-size="9pt" font-weight="bold" text-align="left" space-after="1mm"> 
								<xsl:value-of select="Comprobante/dirCliente"/>
							</fo:block>
							<!--ciudad-->
							<fo:block font-size="9pt" font-weight="bold" text-align="left" space-after="1mm">
								<xsl:value-of select="Comprobante/ciuCliente"/>
							</fo:block>
						</fo:table-cell>					
					</fo:table-row>
				</fo:table-body>
			</fo:table>
		</fo:block>
		<!-- FIN CONTENIDO DEL CLIENTE-->
		
		<!-- ENTER -->
		<fo:block space-after="4mm">
			<fo:leader leader-length="18cm"/>
		</fo:block>
		<!-- ENTER -->
		
		<!-- INICIO SUBTITULO-->
		<fo:block>
			<fo:table table-layout="fixed">
				<fo:table-column/>
				<fo:table-body>
					<fo:table-row >
						<fo:table-cell >
							<!-- titulo centrado mas fecha-->
							<fo:block font-size="9pt" font-weight="bold" text-align="center">
								<xsl:value-of select="Comprobante/subtitulo"/>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
				</fo:table-body>
			</fo:table>
		</fo:block>		
		<!-- FIN SUBTITULO-->
		
		<!-- ENTER -->
		<fo:block space-after="4mm">
			<fo:leader leader-length="18cm"/>
		</fo:block>
		<!-- ENTER -->
		
		<!-- INICIO CONTENIDO EJECUTIVO-->
		<fo:block>
			<fo:table table-layout="fixed">
				<fo:table-column column-width="2cm"/>
				<fo:table-column column-width="1cm"/>
				<fo:table-column column-width="5cm"/>
				<fo:table-column column-width="2cm"/>
				<fo:table-column column-width="8cm"/>
				<fo:table-body>
					<fo:table-row >
						<fo:table-cell >
							<!-- oficina-->
							<fo:block font-size="9pt" font-weight="bold" text-align="left">
								&#0160;Oficina
							</fo:block>
						</fo:table-cell >
						<fo:table-cell >
							<!-- oficina-->
							<fo:block font-size="9pt" font-weight="bold" text-align="left">
								:
							</fo:block>
						</fo:table-cell >
						<fo:table-cell >
							<!-- oficina-->
							<fo:block font-size="9pt" font-weight="bold" text-align="left">
								<xsl:value-of select="Comprobante/oficina"/>
							</fo:block>
						</fo:table-cell >
						<fo:table-cell >
							<!-- ejecutivo-->
							<fo:block font-size="9pt" font-weight="bold" text-align="left">
								<xsl:value-of select="Comprobante/ejecutivo"/>
							</fo:block>					
						</fo:table-cell>
						<fo:table-cell >
							<!-- ejecutivo-->
							<fo:block font-size="9pt" font-weight="bold" text-align="left">
								:&#0160;&#0160;<xsl:value-of select="Comprobante/ejecutivoNombre"/>
							</fo:block>						
						</fo:table-cell>
					</fo:table-row>
				</fo:table-body>
			</fo:table>
		</fo:block>
		
		<fo:block>
			<fo:table table-layout="fixed">
				<fo:table-column column-width="8cm"/>
				<fo:table-column column-width="2cm"/>
				<fo:table-column column-width="8cm"/>
				
				<fo:table-body>
					<fo:table-row >
					<fo:table-cell >
							<fo:block font-size="9pt" font-weight="bold" text-align="left">
								
							</fo:block>							
							<!-- fono-->					
						</fo:table-cell>
						<fo:table-cell >
							<fo:block font-size="9pt" font-weight="bold" text-align="left">
								
							</fo:block>							
							<!-- fono-->
							<fo:block font-size="9pt" font-weight="bold" text-align="left">
								<xsl:value-of select="Comprobante/fono"/>
							</fo:block>							
						</fo:table-cell>
						<fo:table-cell >
							<!-- ejecutivo-->
							<fo:block font-size="9pt" font-weight="bold" text-align="left">
								
							</fo:block>							
							<!-- fono-->
							<fo:block font-size="9pt" font-weight="bold" text-align="left">
								:&#0160;&#0160;<xsl:value-of select="Comprobante/fonoEjecutivo"/>
							</fo:block>							
						</fo:table-cell>
					</fo:table-row>
				</fo:table-body>
			</fo:table>
		</fo:block>
		<!-- FIN CONTENIDO EJECUTIVO-->
		
		<!-- ENTER -->
		<fo:block space-after="4mm">
			<fo:leader leader-length="18cm"/>
		</fo:block>
		<!-- ENTER -->
		
		<!-- INICIO CONTENIDO CUENTA CORRIENTE Y/O CUENTAPRIMA-->
		<fo:block>
			<fo:table table-layout="fixed">
				<fo:table-column/>
				<fo:table-body>
					<fo:table-row >
						<fo:table-cell >
							<fo:block font-size="9pt" font-weight="bold" text-align="left">
								&#0160;CUENTA CORRIENTE Y/O CUENTAPRIMA
							</fo:block>					
						</fo:table-cell>
					</fo:table-row>
				</fo:table-body>
			</fo:table>
		</fo:block>
			
		<!-- Detalle: CUENTA CORRIENTE Y/O CUENTAPRIMA-->
		<fo:block font-size="6pt" space-after="2mm" text-align="right">
			<fo:table table-layout="fixed" >
				<fo:table-column column-width="2cm" />
				<fo:table-column column-width="5cm" />
				<fo:table-column column-width="5cm" />
				<fo:table-column column-width="1cm" />
				<fo:table-column column-width="4cm" />
				<fo:table-column column-width="1cm" />
				<fo:table-body>
					<fo:table-row>
						<fo:table-cell border-bottom="1pt solid {$lineas}" border-top="1pt solid {$lineas}">
							<fo:block font-weight="normal"  padding-before="0.5mm" padding-after="0.5mm" text-align="left">
								&#0160;Num.Cuenta
							</fo:block>
						</fo:table-cell>
						<fo:table-cell border-bottom="1pt solid {$lineas}" border-top="1pt solid {$lineas}">
							<fo:block font-weight="normal"  padding-before="0.5mm" padding-after="0.5mm" text-align="left">
								&#0160;T.Operación
							</fo:block>
						</fo:table-cell>
						<fo:table-cell border-bottom="1pt solid {$lineas}" border-top="1pt solid {$lineas}">
							<fo:block font-weight="normal"  padding-before="0.5mm" padding-after="0.5mm" text-align="left">
								&#0160;Oficina
							</fo:block>
						</fo:table-cell>
						<fo:table-cell border-bottom="1pt solid {$lineas}" border-top="1pt solid {$lineas}">
							<fo:block font-weight="normal"  padding-before="0.5mm" padding-after="1mm" text-align="left">
								&#0160;Moneda
							</fo:block>
						</fo:table-cell>
						<fo:table-cell border-bottom="1pt solid {$lineas}" border-top="1pt solid {$lineas}">
							<fo:block font-weight="normal"  padding-before="0.5mm" padding-after="0.5mm" text-align="right">
								&#0160;S A L D O
							</fo:block>
						</fo:table-cell>
						<fo:table-cell border-bottom="1pt solid {$lineas}" border-top="1pt solid {$lineas}" >
							<fo:block font-weight="normal"  padding-before="0.5mm" padding-after="0.5mm" text-align="right">
							</fo:block>
						</fo:table-cell>
					</fo:table-row>				
					
					<xsl:for-each select="//Comprobante/tablaCC">
					<fo:table-row>
						<fo:table-cell>
							<fo:block font-weight="normal" text-align="left" font-size="6pt" padding-before="0.5mm">
								&#0160;<xsl:value-of select="numCuentaCC"/> 
							</fo:block>
						</fo:table-cell>
						<fo:table-cell>
							<fo:block font-weight="normal" text-align="left" font-size="6pt" padding-before="0.5mm">
								&#0160;<xsl:value-of select='tipoOperacionCC'/> 
							</fo:block>
						</fo:table-cell>
						<fo:table-cell >
							<fo:block font-weight="normal" text-align="left" font-size="6pt" padding-before="0.5mm">
								&#0160;<xsl:value-of select='oficinaCC'/> 
							</fo:block>
						</fo:table-cell>
						<fo:table-cell>
							<fo:block font-weight="normal" text-align="left" font-size="6pt" padding-before="0.5mm">
								&#0160;<xsl:value-of select='monedaCC'/> 
							</fo:block>
						</fo:table-cell>
						<fo:table-cell>
							<fo:block font-weight="normal" text-align="right" font-size="6pt" padding-before="0.5mm">
								&#0160;<xsl:value-of select='saldoCC'/> 								
							</fo:block>
						</fo:table-cell>
						<fo:table-cell >						
							<fo:block font-weight="normal" text-align="left" font-size="6pt" padding-before="0.5mm">
								&#0160;<xsl:value-of select='negativoCC'/> 	
							</fo:block>					
						</fo:table-cell>
					</fo:table-row>
					</xsl:for-each>		
			
				</fo:table-body>
			</fo:table>
		</fo:block>
		<fo:block>
			<fo:table table-layout="fixed">
			<fo:table-column column-width="13cm" />
			<fo:table-column column-width="4cm" />
			<fo:table-column column-width="1cm" />
				<fo:table-body>
					<fo:table-row >
					<fo:table-cell >
							<!-- TOTAL: CUENTA CORRIENTE Y/O CUENTAPRIMA-->
							<fo:block font-size="6pt" text-align="right" padding-before="0.5mm">
								TOTAL:
							</fo:block>								
						</fo:table-cell>
						<fo:table-cell >							
							<fo:block font-size="6pt" text-align="right" padding-before="0.5mm">	
									&#0160;<xsl:value-of select='Comprobante/totalCC'/>	
								
							</fo:block>					
						</fo:table-cell>
						<fo:table-cell >						
							<fo:block font-size="6pt" text-align="left" padding-before="0.5mm">
									&#0160;<xsl:value-of select='Comprobante/totalNegativoCC'/>	
							</fo:block>					
						</fo:table-cell>
					</fo:table-row>
				</fo:table-body>
			</fo:table>
		</fo:block>
		<!-- FIN CONTENIDO TABLA CUENTA CORRIENTE Y/O CUENTAPRIMA-->
		
		<!-- ENTER -->
		<fo:block space-after="5mm">
			<fo:leader leader-length="18cm"/>
		</fo:block>
		<!-- ENTER -->
		
		<!-- INICIO CONTENIDO TABLA CUENTA CORRIENTE Y/O CUENTAPRIMA-->
		<fo:block>
			<fo:table table-layout="fixed">
				<fo:table-column/>
				<fo:table-body>
					<fo:table-row >
						<fo:table-cell >
							<fo:block font-size="9pt" font-weight="bold" text-align="left">
								&#0160;DEPOSITOS A PLAZO
							</fo:block>					
						</fo:table-cell>
					</fo:table-row>
				</fo:table-body>
			</fo:table>
		</fo:block>
		<!-- Detalle: DEPOSITO A PLAZO -->
		<fo:block font-size="6pt" space-after="2mm" text-align="right">
		
		<fo:table table-layout="fixed" >
				<fo:table-column column-width="2.5cm" />
				<fo:table-column column-width="2.5cm" />
				<fo:table-column column-width="1.8cm" />
				<fo:table-column column-width="2.2cm" />
				<fo:table-column column-width="2cm" />
				<fo:table-column column-width="0.2cm" /><!-- | -->
				<fo:table-column column-width="1.5cm" />
				<fo:table-column column-width="0.4cm" /><!-- | -->
				<fo:table-column column-width="1cm" />
				<fo:table-column column-width="0.3cm" /><!-- | -->
				<fo:table-column column-width="2cm" />
				<fo:table-column column-width="0.2cm" /><!-- | -->
				<fo:table-column column-width="1cm" />
				<fo:table-column column-width="0.4cm" /><!-- | -->
				<fo:table-body>
		<fo:table-row>
						<fo:table-cell border-bottom="1pt solid {$lineas}" border-top="1pt solid {$lineas}">
							<fo:block font-weight="normal"  padding-before="0.5mm" padding-after="0.5mm" text-align="left" >
								&#0160;Documento
							</fo:block>
						</fo:table-cell>
						<fo:table-cell border-bottom="1pt solid {$lineas}" border-top="1pt solid {$lineas}">
							<fo:block font-weight="normal"  padding-before="0.5mm" padding-after="0.5mm" text-align="left">
								&#0160;T.Operación
							</fo:block>
						</fo:table-cell>
						<fo:table-cell border-bottom="1pt solid {$lineas}" border-top="1pt solid {$lineas}">
							<fo:block font-weight="normal"  padding-before="0.5mm" padding-after="0.5mm" text-align="left">
								&#0160;Oficina
							</fo:block>
						</fo:table-cell>
						<fo:table-cell border-bottom="1pt solid {$lineas}" border-top="1pt solid {$lineas}">
							<fo:block font-weight="normal"  padding-before="0.5mm" padding-after="0.5mm" text-align="left">
								&#0160;Moneda
							</fo:block>
						</fo:table-cell>
						<fo:table-cell border-bottom="1pt solid {$lineas}" border-top="1pt solid {$lineas}">
							<fo:block font-weight="normal"  padding-before="0.5mm" padding-after="0.5mm" text-align="center">
								&#0160;M O N T O
								&#0160;Deposito
							</fo:block>
						</fo:table-cell>
						<fo:table-cell border-bottom="1pt solid {$lineas}" border-top="1pt solid {$lineas}">
							<fo:block font-weight="normal"  padding-before="0.5mm" padding-after="0.5mm" text-align="center">
								
							</fo:block>
						</fo:table-cell>
						<fo:table-cell border-bottom="1pt solid {$lineas}" border-top="1pt solid {$lineas}">
							<fo:block font-weight="normal"  padding-before="0.5mm" padding-after="0.5mm" text-align="center">
								&#0160;F e c h a
								&#0160;Deposito
							</fo:block>
						</fo:table-cell>
						<fo:table-cell border-bottom="1pt solid {$lineas}" border-top="1pt solid {$lineas}">
							<fo:block font-weight="normal"  padding-before="0.5mm" padding-after="0.5mm" text-align="center">
								
							</fo:block>
						</fo:table-cell>
						<fo:table-cell border-bottom="1pt solid {$lineas}" border-top="1pt solid {$lineas}">
							<fo:block font-weight="normal"  padding-before="0.5mm" padding-after="0.5mm" text-align="center">
								&#0160;T A S A 
								&#0160;Interés
							</fo:block>
						</fo:table-cell>
						<fo:table-cell border-bottom="1pt solid {$lineas}" border-top="1pt solid {$lineas}">
							<fo:block font-weight="normal"  padding-before="0.5mm" padding-after="0.5mm" text-align="center">
								
							</fo:block>
						</fo:table-cell>
						<fo:table-cell border-bottom="1pt solid {$lineas}" border-top="1pt solid {$lineas}">
							<fo:block font-weight="normal"  padding-before="0.5mm" padding-after="0.5mm" text-align="center">
								&#0160;M O N T O
								&#0160;Vencimiento
							</fo:block>
						</fo:table-cell>
						<fo:table-cell border-bottom="1pt solid {$lineas}" border-top="1pt solid {$lineas}">
							<fo:block font-weight="normal"  padding-before="0.5mm" padding-after="0.5mm" text-align="center">
								
							</fo:block>
						</fo:table-cell>
						<fo:table-cell border-bottom="1pt solid {$lineas}" border-top="1pt solid {$lineas}">
							<fo:block font-weight="normal"  padding-before="0.5mm" padding-after="0.5mm" text-align="center">
								&#0160;Fecha
								&#0160;Vencto.
							</fo:block>
						</fo:table-cell>
						<fo:table-cell border-bottom="1pt solid {$lineas}" border-top="1pt solid {$lineas}">
							<fo:block font-weight="normal"  padding-before="0.5mm" padding-after="0.5mm" text-align="center">
								
							</fo:block>
						</fo:table-cell>
					</fo:table-row>	
					</fo:table-body>
			</fo:table>
					
					
			<fo:table table-layout="fixed" >
				<fo:table-column column-width="2cm" />
				<fo:table-column column-width="2.5cm" />
				<fo:table-column column-width="2.3cm" />
				<fo:table-column column-width="1cm" />
				<fo:table-column column-width="3cm" />
				<fo:table-column column-width="2cm" />
				<fo:table-column column-width="1cm" />
				<fo:table-column column-width="2.2cm" />
				<fo:table-column column-width="2cm" />
				<fo:table-body>
						
					<xsl:for-each select="//Comprobante/tablaDP">
					<fo:table-row>
						<fo:table-cell>
							<fo:block font-weight="normal" text-align="left" font-size="6pt" padding-before="0.5mm">
								&#0160;<xsl:value-of select='documentoDP'/> 
							</fo:block>
						</fo:table-cell>
						<fo:table-cell>
							<fo:block font-weight="normal" text-align="left" font-size="6pt" padding-before="0.5mm">
								&#0160;<xsl:value-of select='tipoOperacionDP'/> 
							</fo:block>
						</fo:table-cell>
						<fo:table-cell >
							<fo:block font-weight="normal" text-align="left" font-size="6pt" padding-before="0.5mm">
								&#0160;<xsl:value-of select='oficinaDP'/> 
							</fo:block>
						</fo:table-cell>
						<fo:table-cell>
							<fo:block font-weight="normal" text-align="left" font-size="6pt" padding-before="0.5mm">
								&#0160;<xsl:value-of select='monedaDP'/> 
							</fo:block>
						</fo:table-cell>
						<fo:table-cell>
							<fo:block font-weight="normal" text-align="right" font-size="6pt" padding-before="0.5mm">
								&#0160;<xsl:value-of select='montoDepositoDP'/>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell>
							<fo:block font-weight="normal" text-align="center" font-size="6pt" padding-before="0.5mm">
								&#0160;<xsl:value-of select='fechaDepositoDP'/> 
							</fo:block>
						</fo:table-cell>
						<fo:table-cell>
							<fo:block font-weight="normal" text-align="right" font-size="6pt" padding-before="0.5mm">
								&#0160;<xsl:value-of select='tasaInteresDP'/> 
							</fo:block>
						</fo:table-cell>
						<fo:table-cell>
							<fo:block font-weight="normal" text-align="right" font-size="6pt" padding-before="0.5mm">
								&#0160;<xsl:value-of select='montoVencimientoDP'/>							
							</fo:block>
						</fo:table-cell>
						<fo:table-cell>
							<fo:block font-weight="normal" text-align="center" font-size="6pt" padding-before="0.5mm">
								&#0160;<xsl:value-of select='fechaVencimientoDP'/> 
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
					</xsl:for-each>
				</fo:table-body>
			</fo:table>
		</fo:block>	
		
		<fo:block>
			<fo:table table-layout="fixed">
			<fo:table-column column-width="7.76cm" />
			<fo:table-column column-width="3.0cm" />
			<fo:table-column column-width="2cm" />
				<fo:table-body>
					<fo:table-row >
					<fo:table-cell >
							<!-- TOTAL: DEPOSITO A PLAZO-->
							<fo:block font-size="6pt" text-align="right" padding-before="0.5mm" >
								TOTAL:
							</fo:block>								
						</fo:table-cell>
						<fo:table-cell >							
							<fo:block font-size="6pt" text-align="right" padding-before="0.5mm" > 
								&#0160;<xsl:value-of select='Comprobante/totalDP'/>		
							</fo:block>					
						</fo:table-cell>
						<fo:table-cell >						
							<fo:block font-size="6pt" text-align="right" padding-before="0.5mm" >
							</fo:block>					
						</fo:table-cell>
					</fo:table-row>
				</fo:table-body>
			</fo:table>
		</fo:block>
		<!-- FIN CONTENIDO TABLA DEPOSITO A PLAZO-->

		<!-- ENTER -->
		<fo:block space-after="5mm">
			<fo:leader leader-length="18cm"/>
		</fo:block>
		<!-- ENTER -->
		
		<!-- INICIO CONTENIDO TABLA DEUDA DIRECTAS POR PRESTAMOS, ACEPTACIÓN.. ETC-->
		<fo:block>
			<fo:table table-layout="fixed">
				<fo:table-column/>
				<fo:table-body>
					<fo:table-row >
						<fo:table-cell >
							<fo:block font-size="9pt" font-weight="bold" text-align="left">
								&#0160;DEUDAS DIRECTAS POR PTMOS., ACEPTAC., ETC
							</fo:block>					
						</fo:table-cell>
					</fo:table-row>
				</fo:table-body>
			</fo:table>
		</fo:block>
		<!-- Detalle: DEUDA DIRECTAS POR PRESTAMOS, ACEPTACIÓN.. ETC -->
		<fo:block font-size="6pt" space-after="2mm" text-align="right">
			<fo:table table-layout="fixed" >
				<fo:table-column column-width="2cm" />
				<fo:table-column column-width="4cm" />
				<fo:table-column column-width="3cm" />
				<fo:table-column column-width="1cm" />
				<fo:table-column column-width="3cm" />
				<fo:table-column column-width="2cm" />
				<fo:table-column column-width="2cm" />
				<fo:table-column column-width="1cm" />
				<fo:table-body>
					<fo:table-row>
						<fo:table-cell  border-bottom="1pt solid {$lineas}" border-top="1pt solid {$lineas}">
							<fo:block font-weight="normal"  padding-before="0.5mm" padding-after="0.5mm" text-align="left" font-size="6pt">
								&#0160;Documento
							</fo:block>
						</fo:table-cell>
						<fo:table-cell  border-bottom="1pt solid {$lineas}" border-top="1pt solid {$lineas}">
							<fo:block font-weight="normal"  padding-before="0.5mm" padding-after="0.5mm" text-align="left" font-size="6pt">
								&#0160;T.Operación
							</fo:block>
						</fo:table-cell>
						<fo:table-cell  border-bottom="1pt solid {$lineas}" border-top="1pt solid {$lineas}">
							<fo:block font-weight="normal"  padding-before="0.5mm" padding-after="0.5mm" text-align="left" font-size="6pt">
								&#0160;Oficina
							</fo:block>
						</fo:table-cell>
						<fo:table-cell  border-bottom="1pt solid {$lineas}" border-top="1pt solid {$lineas}">
							<fo:block font-weight="normal"  padding-before="0.5mm" padding-after="0.5mm" text-align="left" font-size="6pt">
								&#0160;Moneda
							</fo:block>
						</fo:table-cell>
						<fo:table-cell border-bottom="1pt solid {$lineas}" border-top="1pt solid {$lineas}">
							<fo:block font-weight="normal"  padding-before="0.5mm" padding-after="0.5mm" text-align="right" font-size="6pt">
								&#0160;S A L D O
								&#0160;PESOS
							</fo:block>
						</fo:table-cell>
						<fo:table-cell  border-bottom="1pt solid {$lineas}" border-top="1pt solid {$lineas}">
							<fo:block font-weight="normal"  padding-before="0.5mm" padding-after="0.5mm" text-align="center" font-size="6pt">
								&#0160;Fecha
								&#0160;Curso
							</fo:block>
						</fo:table-cell>
						<fo:table-cell  border-bottom="1pt solid {$lineas}" border-top="1pt solid {$lineas}">
							<fo:block font-weight="normal"  padding-before="0.5mm" padding-after="0.5mm" text-align="center" font-size="6pt">
								&#0160;Fecha
								&#0160;Vencimiento
							</fo:block>
						</fo:table-cell>
						<fo:table-cell  border-bottom="1pt solid {$lineas}" border-top="1pt solid {$lineas}">
							<fo:block font-weight="normal"  padding-before="0.5mm" padding-after="0.5mm" text-align="left" font-size="6pt">
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
				</fo:table-body>
			</fo:table>
		</fo:block>
		<fo:block>
			<fo:table table-layout="fixed">
				<fo:table-column/>
				<fo:table-body>
					<fo:table-row >
						<fo:table-cell >
							<fo:block font-size="6pt" text-align="center" space-after="3mm" font-weight="bold">
								&#0160;SALDO INCLUYE CAPITAL, REAJ E INT.DEVENGADOS, MOROSOS CALCULADOS HASTA FECHA VENCIMIENTO
							</fo:block>					
						</fo:table-cell>
					</fo:table-row>
				</fo:table-body>
			</fo:table>
		</fo:block>
		<fo:block font-size="6pt" space-after="2mm" text-align="right">
			<fo:table table-layout="fixed" >
				<fo:table-column column-width="2cm" />
				<fo:table-column column-width="4cm" />
				<fo:table-column column-width="3cm" />
				<fo:table-column column-width="1cm" />
				<fo:table-column column-width="3cm" />
				<fo:table-column column-width="2cm" />
				<fo:table-column column-width="2cm" />

				<fo:table-body>
					<xsl:for-each select="//Comprobante/tablaDS">
					<fo:table-row>
						<fo:table-cell>
							<fo:block font-weight="normal" text-align="left" padding-before="0.5mm" font-size="6pt">
								&#0160;<xsl:value-of select='documentoDS'/> 
							</fo:block>
						</fo:table-cell>
						<fo:table-cell>
							<fo:block font-weight="normal" text-align="left" padding-before="0.5mm" font-size="6pt">
								&#0160;<xsl:value-of select='tipoOperacionDS'/> 
							</fo:block>
						</fo:table-cell>
						<fo:table-cell >
							<fo:block font-weight="normal" text-align="left" padding-before="0.5mm" font-size="6pt">
								&#0160;<xsl:value-of select='oficinaDS'/> 
							</fo:block>
						</fo:table-cell>
						<fo:table-cell>
							<fo:block font-weight="normal"  text-align="left" padding-before="0.5mm" font-size="6pt"> 
								&#0160;<xsl:value-of select='monedaDS'/> 
							</fo:block>
						</fo:table-cell>
						<fo:table-cell>
							<fo:block font-weight="normal" text-align="right" padding-before="0.5mm" font-size="6pt">
								&#0160;<xsl:value-of select='saldoPesosDS'/>
							</fo:block>
						</fo:table-cell>
						
						<fo:table-cell>
							<fo:block font-weight="normal" text-align="center" padding-before="0.5mm" font-size="6pt">
								&#0160;<xsl:value-of select='fechaCursoDS'/> 
							</fo:block>
						</fo:table-cell>
						<fo:table-cell>
							<fo:block font-weight="normal" text-align="center" padding-before="0.5mm" font-size="6pt">
								&#0160;<xsl:value-of select='fechaVencimientoDS'/> 
							</fo:block>
						</fo:table-cell>
						<fo:table-cell>
							<fo:block font-weight="normal"  text-align="left" padding-before="0.5mm" font-size="6pt">
								
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
					</xsl:for-each>
				</fo:table-body>
			</fo:table>
		</fo:block>				
		<fo:block>
			<fo:table table-layout="fixed">
			<fo:table-column column-width="10cm" />
			<fo:table-column column-width="3cm" />
			<fo:table-column column-width="2cm" />
				<fo:table-body>
					<fo:table-row >
					<fo:table-cell >
							<!--TOTAL: DEUDA DIRECTAS POR PRESTAMOS, ACEPTACIÓN.. ETC-->
							<fo:block font-size="6pt" text-align="right" >
								TOTAL:
							</fo:block>								
						</fo:table-cell>
						<fo:table-cell >							
							<fo:block font-size="6pt" text-align="right">
								&#0160;<xsl:value-of select='Comprobante/totalDS'/> 
							</fo:block>					
						</fo:table-cell>
						<fo:table-cell >						
							<fo:block font-size="6pt" text-align="right">
							</fo:block>					
						</fo:table-cell>
					</fo:table-row>
				</fo:table-body>
			</fo:table>
		</fo:block>
		<!-- FIN CONTENIDO TABLA DEUDA DIRECTAS POR PRESTAMOS, ACEPTACIÓN.. ETC-->

		<!-- ENTER -->
		<fo:block space-after="5mm">
			<fo:leader leader-length="18cm"/>
		</fo:block>
		<!-- ENTER -->
		
	<!-- PAG 2-->	
					
		<!-- INICIO CONTENIDO TABLA CUENTA DE AHORRO-->
		<fo:block>
			<fo:table table-layout="fixed">
				<fo:table-column/>
				<fo:table-body>
					<fo:table-row >
						<fo:table-cell >
							<fo:block font-size="9pt" font-weight="bold" text-align="left">
								&#0160;CUENTAS DE AHORRO
							</fo:block>					
						</fo:table-cell>
					</fo:table-row>
				</fo:table-body>
			</fo:table>
		</fo:block>
		<!-- Detalle: CUENTA DE AHORRO -->
		<fo:block font-size="6pt" space-after="2mm" text-align="right">
			<fo:table table-layout="fixed" >
				<fo:table-column column-width="2cm" />
				<fo:table-column column-width="4cm" />
				<fo:table-column column-width="3cm" />
				<fo:table-column column-width="1cm" />
				<fo:table-column column-width="4cm" />
				<fo:table-column column-width="4cm" />
				<fo:table-body>
					<fo:table-row>
						<fo:table-cell border-bottom="1pt solid {$lineas}" border-top="1pt solid {$lineas}">
							<fo:block font-weight="normal"  padding-before="0.5mm" padding-after="0.5mm" text-align="left">
								&#0160;Operación
							</fo:block>
						</fo:table-cell>
						<fo:table-cell border-bottom="1pt solid {$lineas}" border-top="1pt solid {$lineas}">
							<fo:block font-weight="normal"  padding-before="0.5mm" padding-after="0.5mm" text-align="left">
								&#0160;T.Operación
							</fo:block>
						</fo:table-cell>
						<fo:table-cell  border-bottom="1pt solid {$lineas}" border-top="1pt solid {$lineas}">
							<fo:block font-weight="normal"  padding-before="0.5mm" padding-after="0.5mm" text-align="left">
								&#0160;Oficina
							</fo:block>
						</fo:table-cell>
						<fo:table-cell  border-bottom="1pt solid {$lineas}" border-top="1pt solid {$lineas}">
							<fo:block font-weight="normal"  padding-before="0.5mm" padding-after="0.5mm" text-align="left">
								&#0160;Moneda
							</fo:block>
						</fo:table-cell>
						<fo:table-cell  border-bottom="1pt solid {$lineas}" border-top="1pt solid {$lineas}">
							<fo:block font-weight="normal"  padding-before="0.5mm" padding-after="0.5mm" text-align="center">
								&#0160;S A L D O
							</fo:block>
						</fo:table-cell>
						<fo:table-cell  border-bottom="1pt solid {$lineas}" border-top="1pt solid {$lineas}">
							<fo:block font-weight="normal"  padding-before="0.5mm" padding-after="0.5mm" text-align="center">
								&#0160;Fecha Apertura
							</fo:block>
						</fo:table-cell>
						<fo:table-cell  border-bottom="1pt solid {$lineas}" border-top="1pt solid {$lineas}">
							<fo:block font-weight="normal"  padding-before="0.5mm" padding-after="0.5mm" text-align="center">
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
					<xsl:for-each select="//Comprobante/tablaCA">
					<fo:table-row>
						<fo:table-cell>
							<fo:block font-weight="normal"  padding-before="0.5mm" padding-after="0.5mm" text-align="left" font-size="6pt">
								&#0160;<xsl:value-of select='operacionCA'/> 
							</fo:block>
						</fo:table-cell>
						<fo:table-cell>
							<fo:block font-weight="normal"  padding-before="0.5mm" padding-after="0.5mm" text-align="left" font-size="6pt">
								&#0160;<xsl:value-of select='tipoOperacionCA'/> 
							</fo:block>
						</fo:table-cell>
						<fo:table-cell >
							<fo:block font-weight="normal"  padding-before="0.5mm" padding-after="0.5mm" text-align="left" font-size="6pt">
								&#0160;<xsl:value-of select='oficinaCA'/> 
							</fo:block>
						</fo:table-cell>
						<fo:table-cell>
							<fo:block font-weight="normal"  padding-before="0.5mm" padding-after="0.5mm" text-align="left" font-size="6pt">
								&#0160;<xsl:value-of select='monedaCA'/> 
							</fo:block>
						</fo:table-cell>
						<fo:table-cell>
							<fo:block font-weight="normal"  padding-before="0.5mm" padding-after="0.5mm" text-align="right" font-size="6pt">
								&#0160;<xsl:value-of select='saldoCA'/>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell>
							<fo:block font-weight="normal"  padding-before="0.5mm" padding-after="0.5mm" text-align="center" font-size="6pt">
								&#0160;<xsl:value-of select='fechaAperturaCA'/> 
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
					</xsl:for-each>
				</fo:table-body>
			</fo:table>
		</fo:block>			
		<fo:block>
			<fo:table table-layout="fixed">
			<fo:table-column column-width="10cm" />
			<fo:table-column column-width="4cm" />
			<fo:table-column column-width="2cm" />
				<fo:table-body>
					<fo:table-row >
					<fo:table-cell >
							<!-- TOTAL: CUENTA DE AHORRO-->
							<fo:block font-size="6pt" text-align="right">
								TOTAL:
							</fo:block>								
						</fo:table-cell>
						<fo:table-cell >							
							<fo:block font-size="6pt" text-align="right">
								&#0160;<xsl:value-of select='Comprobante/totalCA'/> 
							</fo:block>					
						</fo:table-cell>
						<fo:table-cell >						
							<fo:block font-size="6pt" text-align="right">
							</fo:block>					
						</fo:table-cell>
					</fo:table-row>
				</fo:table-body>
			</fo:table>
		</fo:block>
		<!-- FIN CONTENIDO TABLA CUENTA DE AHORRO-->
		<!-- ENTER -->
		<fo:block space-after="5mm">
			<fo:leader leader-length="18cm"/>
		</fo:block>
		<!-- ENTER -->
							
		<!-- INICIO CONTENIDO TABLA GARANTIAS-->
		<fo:block>
			<fo:table table-layout="fixed">
				<fo:table-column/>
				<fo:table-body>
					<fo:table-row >
						<fo:table-cell >
							<fo:block font-size="9pt" font-weight="bold" text-align="left">
								&#0160;GARANTIAS
							</fo:block>					
						</fo:table-cell>
					</fo:table-row>
				</fo:table-body>
			</fo:table>
		</fo:block>
		<!-- Detalle: GARANTIAS -->
		<fo:block font-size="6pt" space-after="2mm" text-align="right">
			<fo:table table-layout="fixed" >
				<fo:table-column column-width="2cm" />
				<fo:table-column column-width="5cm" />
				<fo:table-column column-width="3cm" />
				<fo:table-column column-width="1cm" />
				<fo:table-column column-width="3cm" />
				<fo:table-column column-width="4cm" />
				
				<fo:table-body>
					<fo:table-row>
						<fo:table-cell  border-bottom="1pt solid {$lineas}" border-top="1pt solid {$lineas}">
							<fo:block font-weight="normal"  padding-before="0.5mm" padding-after="0.5mm" text-align="left">
								&#0160;Operación
							</fo:block>
						</fo:table-cell>
						<fo:table-cell  border-bottom="1pt solid {$lineas}" border-top="1pt solid {$lineas}">
							<fo:block font-weight="normal"  padding-before="0.5mm" padding-after="0.5mm" text-align="left">
								&#0160;T.Operación
							</fo:block>
						</fo:table-cell>
						<fo:table-cell border-bottom="1pt solid {$lineas}" border-top="1pt solid {$lineas}">
							<fo:block font-weight="normal"  padding-before="0.5mm" padding-after="0.5mm" text-align="left">
								&#0160;Oficina
							</fo:block>
						</fo:table-cell>
						<fo:table-cell  border-bottom="1pt solid {$lineas}" border-top="1pt solid {$lineas}">
							<fo:block font-weight="normal"  padding-before="0.5mm" padding-after="0.5mm" text-align="left">
								&#0160;Moneda
							</fo:block>
						</fo:table-cell>
						<fo:table-cell border-bottom="1pt solid {$lineas}" border-top="1pt solid {$lineas}">
							<fo:block font-weight="normal"  padding-before="0.5mm" padding-after="0.5mm" text-align="center">
								&#0160;VALOR
								&#0160;Liquidación
							</fo:block>
						</fo:table-cell>
						<fo:table-cell  border-bottom="1pt solid {$lineas}" border-top="1pt solid {$lineas}">
							<fo:block font-weight="normal"  padding-before="0.5mm" padding-after="0.5mm" text-align="center">
								&#0160;Fecha
								&#0160;Constitución
							</fo:block>
						</fo:table-cell>
						<fo:table-cell  border-bottom="1pt solid {$lineas}" border-top="1pt solid {$lineas}">
							<fo:block font-weight="normal"  padding-before="0.5mm" padding-after="0.5mm" text-align="center">
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
					<xsl:for-each select="//Comprobante/tablaGT">
					<fo:table-row>
						<fo:table-cell>
							<fo:block font-weight="normal"  padding-before="0.5mm" padding-after="0.5mm" text-align="left">
								&#0160;<xsl:value-of select='operacionGT'/> 
							</fo:block>
						</fo:table-cell>
						<fo:table-cell>
							<fo:block font-weight="normal"  padding-before="0.5mm" padding-after="0.5mm" text-align="left">
								&#0160;<xsl:value-of select='tipoOperacionGT'/> 
							</fo:block>
						</fo:table-cell>
						<fo:table-cell >
							<fo:block font-weight="normal"  padding-before="0.5mm" padding-after="0.5mm" text-align="left">
								&#0160;<xsl:value-of select='oficinaGT'/> 
							</fo:block>
						</fo:table-cell>
						<fo:table-cell>
							<fo:block font-weight="normal"  padding-before="0.5mm" padding-after="0.5mm" text-align="left">
								&#0160;<xsl:value-of select='monedaGT'/> 
							</fo:block>
						</fo:table-cell>
						<fo:table-cell>
							<fo:block font-weight="normal"  padding-before="0.5mm" padding-after="0.5mm" text-align="right">
								&#0160;<xsl:value-of select='valorLiquidacionGT'/>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell>
							<fo:block font-weight="normal"  padding-before="0.5mm" padding-after="0.5mm" text-align="center">
								&#0160;<xsl:value-of select='fechaConstitucionGT'/> 
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
					</xsl:for-each>					
				</fo:table-body>
			</fo:table>
		</fo:block>
		<fo:block>
			<fo:table table-layout="fixed">
			<fo:table-column column-width="11cm" />
			<fo:table-column column-width="3cm" />
			<fo:table-column column-width="4cm" />
				<fo:table-body>
					<fo:table-row >
					<fo:table-cell >
							<!-- TOTAL: GARANTIAS-->
							<fo:block font-size="6pt" text-align="right">
								TOTAL:
							</fo:block>								
						</fo:table-cell>
						<fo:table-cell >							
							<fo:block font-size="6pt" text-align="right">
								&#0160;<xsl:value-of select='Comprobante/totalGT'/> 
							</fo:block>					
						</fo:table-cell>
						<fo:table-cell >						
							<fo:block font-size="6pt" text-align="right">
							</fo:block>					
						</fo:table-cell>
					</fo:table-row>
				</fo:table-body>
			</fo:table>
		</fo:block>
				<!-- FIN CONTENIDO TABLA GARANTIAS-->
		<!-- ENTER -->
		<fo:block space-after="5mm">
			<fo:leader leader-length="18cm"/>
		</fo:block>
		<!-- ENTER -->
		
		<!-- INICIO CONTENIDO TABLA COBRANZA EXTRANJERA-->
		<fo:block>
			<fo:table table-layout="fixed">
				<fo:table-column/>
				<fo:table-body>
					<fo:table-row >
						<fo:table-cell >
							<fo:block font-size="9pt" font-weight="bold" text-align="left">
								&#0160;COBRANZA EXTRANJERA
							</fo:block>					
						</fo:table-cell>
					</fo:table-row>
				</fo:table-body>
			</fo:table>
		</fo:block>
		<!-- Detalle: COBRANZA EXTRANJERA -->
		<fo:block font-size="6pt" space-after="2mm" text-align="right">
			<fo:table table-layout="fixed" >
				<fo:table-column column-width="2cm" />
				<fo:table-column column-width="6cm" />
				<fo:table-column column-width="4cm" />
				<fo:table-column column-width="1cm" />
				<fo:table-column column-width="4cm" />
				<fo:table-column column-width="1cm" />
				<fo:table-body>
					<fo:table-row>
						<fo:table-cell border-bottom="1pt solid {$lineas}" border-top="1pt solid {$lineas}">
							<fo:block font-weight="normal"  padding-before="0.5mm" padding-after="0.5mm" text-align="left">
								&#0160;Operación
							</fo:block>
						</fo:table-cell>
						<fo:table-cell border-bottom="1pt solid {$lineas}" border-top="1pt solid {$lineas}">
							<fo:block font-weight="normal"  padding-before="0.5mm" padding-after="0.5mm" text-align="left">
								&#0160;T.Operación
							</fo:block>
						</fo:table-cell>
						<fo:table-cell  border-bottom="1pt solid {$lineas}" border-top="1pt solid {$lineas}">
							<fo:block font-weight="normal"  padding-before="0.5mm" padding-after="0.5mm" text-align="left">
								&#0160;Oficina
							</fo:block>
						</fo:table-cell>
						<fo:table-cell  border-bottom="1pt solid {$lineas}" border-top="1pt solid {$lineas}">
							<fo:block font-weight="normal"  padding-before="0.5mm" padding-after="0.5mm" text-align="left">
								&#0160;Moneda
							</fo:block>
						</fo:table-cell>
						<fo:table-cell  border-bottom="1pt solid {$lineas}" border-top="1pt solid {$lineas}">
							<fo:block font-weight="normal"  padding-before="0.5mm" padding-after="0.5mm" text-align="right">
								&#0160;S A L D O
							</fo:block>
						</fo:table-cell>
						<fo:table-cell border-bottom="1pt solid {$lineas}" border-top="1pt solid {$lineas}">
							<fo:block font-weight="normal"  padding-before="0.5mm" padding-after="0.5mm" text-align="center">
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
					<xsl:for-each select="//Comprobante/tablaCX">
					<fo:table-row>
						<fo:table-cell>
							<fo:block font-weight="normal"  padding-before="0.5mm" padding-after="0.5mm" text-align="left">
								&#0160;<xsl:value-of select='operacionCX'/> 
							</fo:block>
						</fo:table-cell>
						<fo:table-cell>
							<fo:block font-weight="normal"  padding-before="0.5mm" padding-after="0.5mm" text-align="left">
								&#0160;<xsl:value-of select='tipoOperacionCX'/> 
							</fo:block>
						</fo:table-cell>
						<fo:table-cell >
							<fo:block font-weight="normal"  padding-before="0.5mm" padding-after="0.5mm" text-align="left">
								&#0160;<xsl:value-of select='oficinaCX'/> 
							</fo:block>
						</fo:table-cell>
						<fo:table-cell>
							<fo:block font-weight="normal"  padding-before="0.5mm" padding-after="0.5mm" text-align="left">
								&#0160;<xsl:value-of select='monedaCX'/> 
							</fo:block>
						</fo:table-cell>
						
						<fo:table-cell>
							<fo:block font-weight="normal" text-align="right" font-size="6pt" padding-before="0.5mm">
								&#0160;<xsl:value-of select='saldoCX'/> 							
							</fo:block>
						</fo:table-cell>

						<fo:table-cell >						
							<fo:block font-weight="normal" text-align="left" font-size="6pt" padding-before="0.5mm">
							&#0160;<xsl:value-of select='negativoCX'/> 
							</fo:block>					
						</fo:table-cell>
					</fo:table-row>
					</xsl:for-each>				
				</fo:table-body>
			</fo:table>
		</fo:block>
		<fo:block>
			<fo:table table-layout="fixed">
			<fo:table-column column-width="13cm" />
			<fo:table-column column-width="4cm" />
			<fo:table-column column-width="1cm" />
				<fo:table-body>
					<fo:table-row >
						<fo:table-cell >	
						<!-- modificado-->
						<!-- TOTAL: COBRANZA EXTRANJERA-->
							<fo:block font-size="6pt" text-align="right">
								TOTAL:
							</fo:block>
						</fo:table-cell>
						<fo:table-cell >		
							<fo:block font-size="6pt" text-align="right" padding-before="0.5mm">
								&#0160;<xsl:value-of select='Comprobante/totalCX'/>							
							</fo:block>					
						</fo:table-cell>
						<fo:table-cell >						
							<fo:block font-size="6pt" text-align="left" padding-before="0.5mm">
								&#0160;<xsl:value-of select='Comprobante/totalNegativoCX'/>
							</fo:block>					
						</fo:table-cell>
						<!-- modificado-->
					</fo:table-row>
				</fo:table-body>
			</fo:table>
		</fo:block>
		<!-- FIN CONTENIDO TABLA COBRANZA EXTRANJERA-->
		
		<!-- ENTER -->
		<fo:block space-after="5mm">
			<fo:leader leader-length="18cm"/>
		</fo:block>
		<!-- ENTER -->
		
		<!-- FIN CONTENIDO TABLA LEASING-->
		<fo:block>
			<fo:table table-layout="fixed">
				<fo:table-column/>
				<fo:table-body>
					<fo:table-row >
						<fo:table-cell >
							<fo:block font-size="9pt" font-weight="bold" text-align="left">
								&#0160;LEASING
							</fo:block>					
						</fo:table-cell>
					</fo:table-row>
				</fo:table-body>
			</fo:table>
		</fo:block>
		<!-- Detalle: LEASING -->
		<fo:block font-size="6pt" space-after="2mm" text-align="right">
			<fo:table table-layout="fixed" >
				<fo:table-column column-width="2cm" />
				<fo:table-column column-width="4cm" />
				<fo:table-column column-width="2.5cm" />
				<fo:table-column column-width="1cm" />
				<fo:table-column column-width="3cm" />
				<fo:table-column column-width="3cm" />
				<fo:table-column column-width="1.5cm" />
				<fo:table-column column-width="1cm" />
				<fo:table-body>
					<fo:table-row>
						<fo:table-cell  border-bottom="1pt solid {$lineas}" border-top="1pt solid {$lineas}">
							<fo:block font-weight="normal"  padding-before="0.5mm" padding-after="0.5mm" text-align="left">
								&#0160;Operación
							</fo:block>
						</fo:table-cell>
						<fo:table-cell  border-bottom="1pt solid {$lineas}" border-top="1pt solid {$lineas}">
							<fo:block font-weight="normal"  padding-before="0.5mm" padding-after="0.5mm" text-align="left">
								&#0160;T.Operación
							</fo:block>
						</fo:table-cell>
						<fo:table-cell  border-bottom="1pt solid {$lineas}" border-top="1pt solid {$lineas}">
							<fo:block font-weight="normal"  padding-before="0.5mm" padding-after="0.5mm" text-align="left">
								&#0160;Oficina
							</fo:block>
						</fo:table-cell>
						<fo:table-cell border-bottom="1pt solid {$lineas}" border-top="1pt solid {$lineas}">
							<fo:block font-weight="normal"  padding-before="0.5mm" padding-after="0.5mm" text-align="left">
								&#0160;Moneda
							</fo:block>
						</fo:table-cell>
						<fo:table-cell  border-bottom="1pt solid {$lineas}" border-top="1pt solid {$lineas}">
							<fo:block font-weight="normal"  padding-before="0.5mm" padding-after="0.5mm" text-align="right">
								&#0160;S A L D O
							</fo:block>
						</fo:table-cell>
						<fo:table-cell  border-bottom="1pt solid {$lineas}" border-top="1pt solid {$lineas}">
							<fo:block font-weight="normal"  padding-before="0.5mm" padding-after="0.5mm" text-align="center">
								&#0160;Fecha Apertura
							</fo:block>
						</fo:table-cell>
						<fo:table-cell border-bottom="1pt solid {$lineas}" border-top="1pt solid {$lineas}">
							<fo:block font-weight="normal"  padding-before="0.5mm" padding-after="0.5mm" text-align="center">
								&#0160;Fecha Próximo Vencimiento
							</fo:block>
						</fo:table-cell>
						<fo:table-cell border-bottom="1pt solid {$lineas}" border-top="1pt solid {$lineas}">
							<fo:block font-weight="normal"  padding-before="0.5mm" padding-after="0.5mm" text-align="center">
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
					<xsl:for-each select="//Comprobante/tablaLS">
					<fo:table-row>
					<fo:table-cell>
							<fo:block font-weight="normal"  padding-before="0.5mm" padding-after="0.5mm" text-align="left">
								&#0160;<xsl:value-of select='operacionLS'/> 
							</fo:block>
						</fo:table-cell>
						<fo:table-cell>
							<fo:block font-weight="normal"  padding-before="0.5mm" padding-after="0.5mm" text-align="left">
								&#0160;<xsl:value-of select='tipoOperacionLS'/> 
							</fo:block>
						</fo:table-cell>
						<fo:table-cell>
							<fo:block font-weight="normal"  padding-before="0.5mm" padding-after="0.5mm" text-align="left">
								&#0160;<xsl:value-of select='oficinaLS'/> 
							</fo:block>
						</fo:table-cell>
						<fo:table-cell>
							<fo:block font-weight="normal"  padding-before="0.5mm" padding-after="0.5mm" text-align="left">
								&#0160;<xsl:value-of select='monedaLS'/> 
							</fo:block>
						</fo:table-cell>
						<fo:table-cell >
							<fo:block font-weight="normal"  padding-before="0.5mm" padding-after="0.5mm" text-align="right">
								&#0160;<xsl:value-of select='saldoLS'/>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell>
							<fo:block font-weight="normal"  padding-before="0.5mm" padding-after="0.5mm" text-align="center">
								&#0160;<xsl:value-of select='fechaAperturaLS'/> 
							</fo:block>
						</fo:table-cell>
						<fo:table-cell>
							<fo:block font-weight="normal"  padding-before="0.5mm" padding-after="0.5mm" text-align="center">
								&#0160;<xsl:value-of select='fechaVencimientoLS'/> 
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
					</xsl:for-each>					
				</fo:table-body>
			</fo:table>
		</fo:block>
		<fo:block>
			<fo:table table-layout="fixed">
			<fo:table-column column-width="9.5cm" />
			<fo:table-column column-width="3cm" />
			<fo:table-column column-width="1cm" />
				<fo:table-body>
					<fo:table-row >
					<fo:table-cell >
							<!-- TOTAL: LEASING-->
							<fo:block font-size="6pt" text-align="right">
								TOTAL:
							</fo:block>								
						</fo:table-cell>
						<fo:table-cell >							
							<fo:block font-size="6pt" text-align="right">
									&#0160;<xsl:value-of select='Comprobante/totalLS'/>
							</fo:block>					
						</fo:table-cell>
						<fo:table-cell >						
							<fo:block font-size="6pt" text-align="right">
							</fo:block>					
						</fo:table-cell>
					</fo:table-row>
				</fo:table-body>
			</fo:table>
		</fo:block>
		<!-- FIN CONTENIDO TABLA LEASING-->

		<!-- ENTER -->
		<fo:block space-after="5mm">
			<fo:leader leader-length="18cm"/>
		</fo:block>
		<!-- ENTER -->
		
		<!-- INICIO CONTENIDO TABLA VALORES DE CAMBIO-->
		<fo:block>
			<fo:table table-layout="fixed">
				<fo:table-column/>
				<fo:table-body>
					<fo:table-row >
						<fo:table-cell >
							<fo:block font-size="9pt" text-align="left" font-weight="bold" border-bottom="1pt solid {$lineas}">
								<xsl:value-of select="Comprobante/fechaCB"/>
							</fo:block>					
						</fo:table-cell>
					</fo:table-row>
				</fo:table-body>
			</fo:table>
			
		</fo:block>
		<!-- Detalle: VALORES DE CAMBIO-->
		<fo:block font-size="6pt" text-align="right" padding-before="1mm">
			<fo:table table-layout="fixed" >
				<fo:table-column column-width="4cm" />
				<fo:table-column column-width="3cm" />
				<fo:table-column column-width="11cm" />
				<fo:table-body>
				<xsl:for-each select="//Comprobante/tablaCB">
					<fo:table-row>
					<fo:table-cell>
							<fo:block font-weight="bold" text-align="left">
								&#0160;<xsl:value-of select='monedaCB'/> 
							</fo:block>
						</fo:table-cell>
						<fo:table-cell>
							<fo:block font-weight="normal" text-align="right">
									&#0160;<xsl:value-of select='valorCB'/> 
							</fo:block>
						</fo:table-cell>
						<fo:table-cell >						
							<fo:block font-size="6pt" text-align="right">
							</fo:block>					
						</fo:table-cell>
					</fo:table-row>
					</xsl:for-each>									
				</fo:table-body>
			</fo:table>
		</fo:block>
		<!-- FIN CONTENIDO TABLA VALORES DE CAMBIO-->
		
		<!-- Separador -->
		<fo:block space-after="3mm">
			<fo:leader color="{$lineas}" leader-pattern="rule" leader-length="18cm"/>
		</fo:block>
		<!-- Separador -->

		<fo:block>
			<fo:table table-layout="fixed">
				<fo:table-column column-width="1cm" />
				<fo:table-column column-width="16cm" />
				<fo:table-column column-width="1cm" />
				<fo:table-body>
					<fo:table-row >
					<fo:table-cell >
							<fo:block font-size="9pt" font-weight="bold" text-align="left">
							</fo:block>					
						</fo:table-cell>
						<fo:table-cell >
							<!-- MENSAJE PIE PAGINA-->
							<fo:block font-size="8pt" font-weight="bold" text-align="left">
								CONSIDERAMOS COMO APROBADO ESTE CERTIFICADO DE SALDOS. SI DENTRO DE LOS PROXIMOS 15 DIAS  
								NO HEMOS RECIBIDO AVISO EN CONTRARIO. EN CASO DE DISCONFORMIDAD, ROGAMOS EFECTUAR SU
								RECLAMO POR ESCRITO A GERENCIA AREA CONTRALORIA, CASILLA 136-D, SANTIAGO.
							</fo:block>					
						</fo:table-cell>
						<fo:table-cell >
							<fo:block font-size="9pt" font-weight="bold" text-align="left">
							</fo:block>					
						</fo:table-cell>
					</fo:table-row>
				</fo:table-body>
			</fo:table>
		</fo:block>
		
		<!-- Separador -->
		<fo:block space-after="3mm">
			<fo:leader color="{$lineas}" leader-pattern="rule" leader-length="18cm"/>
		</fo:block>
		<!-- Separador -->

	</xsl:template>
</xsl:stylesheet>