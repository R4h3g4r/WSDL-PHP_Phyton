<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format">
	<!--Variables-->
    
	<xsl:variable name="bgcolor">#ECEDEF</xsl:variable>
	<xsl:variable name="lineas">#CCCCCC</xsl:variable>
	<xsl:variable name="txt">#000000</xsl:variable>
	<xsl:variable name="txt-azul-claro">#0061A5</xsl:variable>
	<xsl:variable name="txt-azul-oscuro">#1069B5</xsl:variable>
	<xsl:variable name="alto-filas">9mm</xsl:variable>
	<xsl:variable name="espacio-subtitulos">2mm</xsl:variable>
	<xsl:variable name="borde-tabla">#CCCCCC</xsl:variable>
	<xsl:variable name="espacio-texto-celda-left">2mm</xsl:variable>
	<xsl:variable name="espacio-texto-celda-top">1mm</xsl:variable>
	<xsl:variable name="espacio-celda-top">2mm</xsl:variable>
	<xsl:variable name="size-fuente-margen">7pt</xsl:variable>
	<xsl:decimal-format name="peso" decimal-separator="." grouping-separator="."/>

<xsl:decimal-format name="decimal" decimal-separator=',' grouping-separator='.' />

	<!-- Variables -->
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
					<fo:region-body margin-top="2.5cm" margin-bottom="2.5cm" background-color="#ffffff"/> 
					<fo:region-before extent="3cm"/>
					<fo:region-after extent="2cm"/>
				</fo:simple-page-master>
			</fo:layout-master-set>
			<!-- Propiedades pagina -->
			<fo:page-sequence master-reference="pagina" initial-page-number="1" language="en" country="us">

				<fo:flow flow-name="xsl-region-body">
					<xsl:call-template name="contenido"/>
				</fo:flow>
			</fo:page-sequence> 
		</fo:root>
	</xsl:template>
	
	<xsl:template name="contenido">

		<!-- Titulo Modulo -->
		<fo:block>
			<fo:table table-layout="fixed">
			<fo:table-column column-width="7cm"/>
			<fo:table-body>
				<fo:table-row >
				<fo:table-cell >

					<!-- titulo -->
						<fo:block font-size="15pt" font-weight="bold" text-align="left">
							<xsl:value-of select="Comprobante/Titulo"/>
						</fo:block>
					<!-- titulo -->
				
				</fo:table-cell>
				</fo:table-row>
			</fo:table-body>
			</fo:table>
		</fo:block>
		<!-- Titulo Modulo -->
		
		<!-- Separador -->
		<fo:block space-after="2mm">
			<fo:leader color="{$lineas}" leader-pattern="rule" leader-length="18cm"/>
		</fo:block>
		<!-- Separador -->
		<fo:block text-align="left" font-size="10pt">
        <fo:table border-color="#848484" border-style="solid" border-width="1pt" background-color="{$bgcolor}" >
                   <fo:table-column column-width="18.22cm" />
                    <fo:table-body>
                        <fo:table-row background-color="#848484">
                            <fo:table-cell>
                               <fo:block text-align="LEFT" font-size="12pt" font-weight="bold" color="white">
                       <xsl:value-of select="Comprobante/Subtitulo1"/>
						</fo:block>
                            </fo:table-cell>
                         </fo:table-row>
                     </fo:table-body>
                    
         </fo:table>
                </fo:block>
		<fo:block>
			 <fo:table border-color="#848484" border-style="solid" border-width="1pt" background-color="{$bgcolor}" >
				<fo:table-column column-width="10cm" />
				<fo:table-column column-width="1mm" />
				<fo:table-column column-width="0.1mm" />
				<fo:table-column column-width="1mm" />
				<fo:table-column column-width="8cm" />
				<fo:table-body>
					<fo:table-row >
						<fo:table-cell >
							<xsl:call-template name="ladoizquierdo"/>
						</fo:table-cell>
						<fo:table-cell>
						</fo:table-cell>
						<fo:table-cell>
						</fo:table-cell>
						<fo:table-cell>
						</fo:table-cell>
						<fo:table-cell>
							<xsl:call-template name="ladoderecho"/>
						</fo:table-cell >
					</fo:table-row >
				</fo:table-body>
			</fo:table>
		</fo:block>

		<!-- Separador -->
		<fo:block space-after="3mm">
			<fo:leader color="{$lineas}" leader-pattern="rule" leader-length="18cm"/>
		</fo:block>
		<!-- Separador -->
	</xsl:template>
	
	<xsl:template name="ladoizquierdo">
		<fo:block>
			<fo:table table-layout="fixed">
			<fo:table-column column-width="5cm" />
			<fo:table-column column-width="3.5cm" />
			<fo:table-body>
				<!-- FILA 1 -->
				<fo:table-row height="{$alto-filas}">
					<fo:table-cell  padding-left="{$espacio-texto-celda-left}" padding-top="{$espacio-texto-celda-top}">
					<!-- numero documento -->
						 <fo:block text-align="right" font-size="10pt" >
						<xsl:value-of select="Comprobante/numDoc"/>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell  padding-left="{$espacio-texto-celda-left}" padding-top="{$espacio-celda-top}">
						 <fo:block text-align="LEFT" font-size="10pt" >
							<xsl:value-of select="Comprobante/valorNumDoc"/>
						</fo:block>
					<!-- numero documento -->
					</fo:table-cell>

				</fo:table-row>
				<!-- FILA 1 -->


				<!-- FILA 2 -->
				<fo:table-row height="{$alto-filas}">
					<fo:table-cell  padding-left="{$espacio-texto-celda-left}" padding-top="{$espacio-texto-celda-top}">
					<!-- rut deudor -->
						<fo:block font-size="{$size-fuente-margen}" text-align="left" color="{$txt}">
							 <fo:block text-align="right" font-size="10pt">
						<xsl:value-of select='Comprobante/rutDeudor'/>
						</fo:block>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell  padding-left="{$espacio-texto-celda-left}" padding-top="{$espacio-celda-top}">
						 <fo:block text-align="LEFT" font-size="10pt" >
							<xsl:value-of select='format-number(Comprobante/valorRutDeudor, "###.###.###","decimal")'/> - <xsl:value-of select='Comprobante/valorDigitoVerificador'/>
						</fo:block>
					<!-- rut deudor -->
					</fo:table-cell>

				</fo:table-row>
				<!-- FILA 2 -->


				<!-- FILA 3 -->
				<fo:table-row height="{$alto-filas}">
					<fo:table-cell  padding-left="{$espacio-texto-celda-left}" padding-top="{$espacio-texto-celda-top}">
					<!-- razon social del deudor -->
						<fo:block font-size="{$size-fuente-margen}" text-align="left" color="{$txt}">
							 <fo:block text-align="right" font-size="10pt">
						<xsl:value-of select="Comprobante/razonSocialDeudor"/>
						</fo:block>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell  padding-left="{$espacio-texto-celda-left}" padding-top="{$espacio-celda-top}">
						 <fo:block text-align="LEFT" font-size="10pt" >
							<xsl:value-of select="Comprobante/valorRazonSocialDeudor"/>
						</fo:block>
					<!-- razon social del deudor -->
					</fo:table-cell>

				</fo:table-row>
				<!-- FILA 3 -->
                
                
                <!-- FILA 4 -->
				<fo:table-row height="{$alto-filas}">
					<fo:table-cell  padding-left="{$espacio-texto-celda-left}" padding-top="{$espacio-texto-celda-top}">
					<!-- Monto documento -->
						<fo:block font-size="{$size-fuente-margen}" text-align="left" color="{$txt}">
							 <fo:block text-align="right" font-size="10pt">
						<xsl:value-of select="Comprobante/montoDocumento"/>
						</fo:block>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell  padding-left="{$espacio-texto-celda-left}" padding-top="{$espacio-celda-top}">
						 <fo:block text-align="LEFT" font-size="10pt" >
							$<xsl:value-of select='format-number(Comprobante/valorMontoDocumento, "###.###.###","decimal")'/>
						</fo:block>
					<!-- Monto documento -->
					</fo:table-cell>

				</fo:table-row>
				<!-- FILA 4 -->
              	
                
                <!-- FILA 5 -->
				<fo:table-row height="{$alto-filas}">
					<fo:table-cell  padding-left="{$espacio-texto-celda-left}" padding-top="{$espacio-texto-celda-top}">
					<!-- Monto Anticipado -->
						<fo:block font-size="{$size-fuente-margen}" text-align="left" color="{$txt}">
							 <fo:block text-align="right" font-size="10pt">
						<xsl:value-of select="Comprobante/montoAnticipo"/>
						</fo:block>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell  padding-left="{$espacio-texto-celda-left}" padding-top="{$espacio-celda-top}">
						 <fo:block text-align="LEFT" font-size="10pt" >
							$<xsl:value-of select='format-number(Comprobante/valorMontoAnticipo, "###.###.###","decimal")'/>
						</fo:block>
					<!-- Monto Anticipado -->
					</fo:table-cell>

				</fo:table-row>
				<!-- FILA 5 -->

			</fo:table-body>
			</fo:table>
		</fo:block>
	</xsl:template>
	


	<xsl:template name="ladoderecho">
		<fo:block>
			<fo:table table-layout="fixed">
			<fo:table-column column-width="4cm" />
			<fo:table-column column-width="6cm" />
			<fo:table-body>
				<!-- FILA 1 -->
				<fo:table-row height="{$alto-filas}">
					<fo:table-cell  padding-left="{$espacio-texto-celda-left}" padding-top="{$espacio-texto-celda-top}">
					<!-- Fecha de Vencimiento -->
						 <fo:block text-align="right" font-size="10pt" >
                        <xsl:value-of select="Comprobante/fechaVencimiento"/>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell  padding-left="{$espacio-texto-celda-left}" padding-top="{$espacio-celda-top}">
						 <fo:block text-align="LEFT" font-size="10pt" >
							<xsl:value-of select="Comprobante/valorFechaVencimiento"/>
						</fo:block>
					<!-- Fecha de Vencimiento -->
					</fo:table-cell>

				</fo:table-row>
				<!-- FILA 1 -->


				<!-- FILA 2 -->
				<fo:table-row height="{$alto-filas}">
					<fo:table-cell  padding-left="{$espacio-texto-celda-left}" padding-top="{$espacio-texto-celda-top}">
					<!-- Diferencia de precio -->
						 <fo:block text-align="right" font-size="10pt" >
                        <xsl:value-of select="Comprobante/diferencia"/>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell  padding-left="{$espacio-texto-celda-left}" padding-top="{$espacio-celda-top}">
						 <fo:block text-align="LEFT" font-size="10pt" >
							$<xsl:value-of select='format-number(Comprobante/valorDiferencia, "###.###.###","decimal")'/>
						</fo:block>
					<!-- Diferencia de precio -->
					</fo:table-cell>

				</fo:table-row>
				<!-- FILA 2 -->


				<!-- FILA 3 -->
				<fo:table-row height="{$alto-filas}">
					<fo:table-cell  padding-left="{$espacio-texto-celda-left}" padding-top="{$espacio-texto-celda-top}">
					<!-- Comisión -->
						 <fo:block text-align="right" font-size="10pt" >
                          <xsl:value-of select="Comprobante/comision"/>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell  padding-left="{$espacio-texto-celda-left}" padding-top="{$espacio-celda-top}">
						 <fo:block text-align="LEFT" font-size="10pt" >
							$<xsl:value-of select='format-number(Comprobante/valorComision, "###.###.###","decimal")'/>
						</fo:block>
					<!-- Comisióno -->
					</fo:table-cell>

				</fo:table-row>
				<!-- FILA 3 -->
                <!-- FILA 4 -->
				<fo:table-row height="{$alto-filas}">
					<fo:table-cell  padding-left="{$espacio-texto-celda-left}" padding-top="{$espacio-texto-celda-top}">
					<!-- Saldo Pendiente -->
						 <fo:block text-align="right" font-size="10pt" >
                          <xsl:value-of select="Comprobante/saldoPendiente"/>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell  padding-left="{$espacio-texto-celda-left}" padding-top="{$espacio-celda-top}">
						 <fo:block text-align="LEFT" font-size="10pt" >
							$<xsl:value-of select='format-number(Comprobante/saldoPendienteExcede, "###.###.###","decimal")'/>
						</fo:block>
					<!-- Fin Saldo Pendiente  -->
					</fo:table-cell>

				</fo:table-row>
				<!-- END FILA 8 -->

			</fo:table-body>
			</fo:table>
		</fo:block>

	</xsl:template>

</xsl:stylesheet>