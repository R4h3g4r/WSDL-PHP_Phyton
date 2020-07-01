<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format">

<!-- Parametros -->
	<xsl:param name="ctacte"/>
<!-- Parametros -->
<xsl:variable name="bgcolor">#E7E5EF</xsl:variable>
<xsl:variable name="lineas">#CCCCCC</xsl:variable>
<xsl:variable name="txt">#000000</xsl:variable>
<xsl:variable name="txt-azul-claro">#0061A5</xsl:variable>
<xsl:variable name="txt-azul-oscuro">#1069B5</xsl:variable>
<xsl:variable name="espacio-texto-celda-left">2mm</xsl:variable>
<xsl:variable name="espacio-texto-celda-top">1mm</xsl:variable>
<xsl:variable name="alto-filas">5mm</xsl:variable>

<xsl:template match="/">
<fo:root xmlns:fo="http://www.w3.org/1999/XSL/Format">
			<!-- Propiedades pagina -->
			<fo:layout-master-set>
				<fo:simple-page-master master-name="pagina"
					page-height="28cm"
					page-width="22cm"
					margin-top="1.5cm"
					margin-bottom="1.5cm"
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
				
					<!-- imagen bci -->
					<fo:block >
						<fo:table table-layout="fixed">
							<fo:table-column column-width="13cm"/>
							<fo:table-column column-width="5cm"/>
							<fo:table-body>
								<fo:table-row>
									<fo:table-cell padding-top="3mm">
										<fo:external-graphic>
											<xsl:attribute name="src">
												<xsl:value-of select="impresion/rutaImagen"/>02-logo-bci.gif
											</xsl:attribute>
										</fo:external-graphic>
									</fo:table-cell>
									<fo:table-cell padding-top="15mm">
										<fo:block font-size="9pt" font-weight="bold"  text-align="right" color="{$txt}">
										<xsl:value-of select="impresion/fechaImpresion"/>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
							</fo:table-body>
						</fo:table>
					</fo:block>
					<!-- imagen bci -->
					</fo:static-content>

<fo:static-content flow-name="xsl-region-after">
	<!-- Separador -->
	<fo:block space-after="1mm">
		<fo:leader color="{$lineas}" leader-pattern="rule" leader-length="18cm"/>
	</fo:block>
	<!-- Separador -->
	<fo:block font-size="9pt" font-weight="normal" space-after="1mm" text-align="left" color="{$txt}">
	Para Consultas o Comentarios Comuníquese al 600 6928000
	</fo:block>
	<fo:block font-size="5pt" font-weight="bold" space-after="1mm" text-align="right" color="{$txt}">
	Pagina <fo:page-number/>
	</fo:block>
</fo:static-content>

<fo:flow flow-name="xsl-region-body">
	<xsl:call-template name="contenido"/>
</fo:flow>

</fo:page-sequence> 
</fo:root>

</xsl:template>




<xsl:template name="contenido">
		<!-- cabecera cliente -->
		<fo:block font-size="5pt" >
			<fo:table table-layout="fixed">
				<fo:table-column column-width="13cm"/>
				<fo:table-column column-width="5cm"/>
				<fo:table-body>
					<fo:table-row>
						<fo:table-cell>
							<!-- nombre cliente -->
							<fo:block font-size="10pt" font-weight="bold" text-align="left" color="{$txt-azul-claro}">
								<xsl:value-of select="impresion/nombre"/>
							</fo:block>
							<!-- nombre cliente -->
						</fo:table-cell>
						<fo:table-cell>
							<!-- rut cliente -->
							<fo:block font-size="10pt" text-align="right" font-weight="bold" color="{$txt}">
								<fo:inline color="{$txt}">RUT: </fo:inline>
								<fo:inline color="{$txt-azul-claro}"><xsl:value-of select="impresion/rut"/></fo:inline>
							</fo:block>
							<!-- rut cliente -->
						</fo:table-cell>
					</fo:table-row>
				</fo:table-body>
			</fo:table>
		</fo:block>
		<!-- cabecera cliente -->
		<!-- Separador -->
		<fo:block space-after="2mm">
			<fo:leader color="{$lineas}" leader-pattern="rule" leader-length="18cm"/>
		</fo:block>
		<!-- Separador -->
		<!-- Titulo Modulo -->
		<fo:block>
			<fo:table table-layout="fixed">
				<fo:table-column column-width="12cm"/>
				<fo:table-column column-width="6cm"/>
				<fo:table-body>
					<fo:table-row >
						<fo:table-cell >
							<!-- titulo -->
							<fo:block font-size="15pt" font-weight="bold" text-align="left" color="{$txt-azul-claro}">
								Cta. Cte. / Documentos Retenidos Otro Banco SP/Plaza
							</fo:block>
							<!-- titulo -->
						</fo:table-cell>
						<fo:table-cell >
							<fo:block font-size="10pt" text-align="right" color="{$txt}">
								<fo:inline font-weight="normal">Cuenta N° : </fo:inline>
								<fo:inline font-weight="bold"><xsl:value-of select="$ctacte"/></fo:inline>
							</fo:block>
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
		
		<!-- ejecutivo -->
		<fo:block font-size="9pt" text-align="left" color="{$txt}">
			<fo:inline font-weight="normal" space-before="30pt">Ejecutivo: </fo:inline>
			<fo:inline font-weight="bold"><xsl:value-of select="impresion/ejecutivo"/>&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;</fo:inline>
			<fo:inline font-weight="normal" space-before="30pt">Plataforma/Sucursal: </fo:inline>
			<fo:inline font-weight="bold"><xsl:value-of select="impresion/oficina"/></fo:inline>
		</fo:block>
		<!-- ejecutivo -->
		
		<!-- Separador -->
		<fo:block space-after="2mm">
			<fo:leader color="{$lineas}" leader-pattern="rule" leader-length="18cm"/>
		</fo:block>
		<!-- Separador -->
		

<xsl:choose>
    <xsl:when test="impresion/errordetalle != ''">
      <fo:table table-layout="fixed">
        <fo:table-column column-width="6cm"/>
        <fo:table-column column-width="3cm"/>
        <fo:table-body>
        <fo:table-row text-align="center">
            <fo:table-cell  border="0.5pt solid {$lineas}" number-columns-spanned="2">
            <fo:block font-weight="normal" padding-before="1mm" text-align="left">
            &#0160;<xsl:value-of select="impresion/errordetalle"/>
            </fo:block>
            </fo:table-cell>
        </fo:table-row>
        </fo:table-body>
      </fo:table>
    </xsl:when>
    <xsl:otherwise>
		<!-- Documentos Retenidos -->
		<fo:block>
		    <fo:table table-layout="fixed">
		        <fo:table-column column-width="6cm"/>
		        <fo:table-column column-width="3cm"/>
		        <fo:table-body >
		            <!-- FILA 1 -->
		            <fo:table-row height="{$alto-filas}">
		                <fo:table-cell border="0.5pt solid {$lineas}" padding-left="{$espacio-texto-celda-left}" padding-top="{$espacio-texto-celda-top}">
		                    <fo:block font-size="7pt" text-align="left" color="{$txt}">
		                        <xsl:call-template name="subTitulo">
		                            <xsl:with-param name="titulo" select="'Otros Bancos CP/Plaza $:'"/>
		                        </xsl:call-template>
		                    </fo:block>
		                </fo:table-cell>
		                <fo:table-cell border="0.5pt solid {$lineas}" padding-left="{$espacio-texto-celda-left}" padding-top="{$espacio-texto-celda-top}">
		                    <fo:block font-size="7pt" padding-before="1mm" padding-after="1mm" font-weight="bold" text-align="left" color="{$txt-azul-claro}">
		                        <xsl:value-of select="impresion/retencionBancos"/>
		                    </fo:block>
		                </fo:table-cell>
		
		            </fo:table-row>
		            <!-- FILA 1 -->
		
		            <!-- FILA 2 -->
		            <fo:table-row height="{$alto-filas}">
		                <fo:table-cell border="0.5pt solid {$lineas}" padding-left="{$espacio-texto-celda-left}" padding-top="{$espacio-texto-celda-top}">
		                    <fo:block font-size="7pt" text-align="left" color="{$txt}">
		                        <xsl:call-template name="subTitulo">
		                            <xsl:with-param name="titulo" select="'Bci $:'"/>
		                        </xsl:call-template>
		                    </fo:block>
		                </fo:table-cell>
		                <fo:table-cell border="0.5pt solid {$lineas}" padding-left="{$espacio-texto-celda-left}" padding-top="{$espacio-texto-celda-top}">
		                    <fo:block font-size="7pt" padding-before="1mm" padding-after="1mm" font-weight="bold" text-align="left" color="{$txt-azul-claro}">
		                        <xsl:value-of select="impresion/retencionBCI"/>
		                    </fo:block>
		                </fo:table-cell>
		
		            </fo:table-row>
		            <!-- FILA 2 -->
		
		
		            <!-- FILA 3 -->
		            <fo:table-row height="{$alto-filas}">
		                <fo:table-cell border="0.5pt solid {$lineas}" padding-left="{$espacio-texto-celda-left}" padding-top="{$espacio-texto-celda-top}">
		                    <fo:block font-size="7pt" text-align="left" color="{$txt}">
		                        <xsl:call-template name="subTitulo">
		                            <xsl:with-param name="titulo" select="'Otros Bancos SP/Plaza $:'"/>
		                        </xsl:call-template>
		                    </fo:block>
		                </fo:table-cell>
		                <fo:table-cell border="0.5pt solid {$lineas}" padding-left="{$espacio-texto-celda-left}" padding-top="{$espacio-texto-celda-top}">
		                    <fo:block font-size="7pt" padding-before="1mm" padding-after="1mm" font-weight="bold" text-align="left" color="{$txt-azul-claro}">
		                        <xsl:value-of select="impresion/retencionBancosOP"/>
		                    </fo:block>
		                </fo:table-cell>
		
		            </fo:table-row>
		            <!-- FILA 3 -->
		
		            <!-- FILA 4 -->
		            <fo:table-row height="{$alto-filas}">
		                <fo:table-cell border="0.5pt solid {$lineas}" padding-left="{$espacio-texto-celda-left}" padding-top="{$espacio-texto-celda-top}">
		                <!-- RETENCION HASTA 3 DÍAS -->
		                    <fo:block font-size="7pt" text-align="left" color="{$txt}">
		                        <xsl:call-template name="subTitulo">
		                            <xsl:with-param name="titulo" select="'Valor Ret. hasta 3 días $:'"/>
		                        </xsl:call-template>
		                    </fo:block>
		                </fo:table-cell>
		                <fo:table-cell border="0.5pt solid {$lineas}" padding-left="{$espacio-texto-celda-left}" padding-top="{$espacio-texto-celda-top}">
		                    <fo:block font-size="7pt" padding-before="1mm" padding-after="1mm" font-weight="bold" text-align="left" color="{$txt-azul-claro}">
		                        <xsl:value-of select="impresion/retencionHasta3dias"/>
		                    </fo:block>
		                <!-- RETENCION HASTA 3 DÍAS -->
		                </fo:table-cell>
		
		            </fo:table-row>
		            <!-- FILA 4 -->
		
		            <!-- FILA 5 -->
		            <fo:table-row height="{$alto-filas}">
		                <fo:table-cell border="0.5pt solid {$lineas}" padding-left="{$espacio-texto-celda-left}" padding-top="{$espacio-texto-celda-top}">
		                <!-- RETENCIÓN MAS DE 3 DÍAS -->
		                    <fo:block font-size="7pt" text-align="left" color="{$txt}">
		                        <xsl:call-template name="subTitulo">
		                            <xsl:with-param name="titulo" select="'Valor Ret. más de 3 días $:'"/>
		                        </xsl:call-template>
		                    </fo:block>
		                </fo:table-cell>
		                <fo:table-cell border="0.5pt solid {$lineas}" padding-left="{$espacio-texto-celda-left}" padding-top="{$espacio-texto-celda-top}">
		                    <fo:block font-size="7pt" padding-before="1mm" padding-after="1mm" font-weight="bold" text-align="left" color="{$txt-azul-claro}">
		                        <xsl:value-of select="impresion/retencionMas3dias"/>
		                    </fo:block>
		                <!-- RETENCIÓN MAS DE 3 DÍAS -->
		                </fo:table-cell>
		
		            </fo:table-row>
		            <!-- FILA 5 -->
		
		            <!-- FILA 6 -->
		            <fo:table-row height="{$alto-filas}">
		                <fo:table-cell border="0.5pt solid {$lineas}" padding-left="{$espacio-texto-celda-left}" padding-top="{$espacio-texto-celda-top}">
		                <!-- Depósito en cajero -->
		                    <fo:block font-size="7pt" text-align="left" color="{$txt}">
		                        <xsl:call-template name="subTitulo">
		                            <xsl:with-param name="titulo" select="'Cajeros Automáticos $:'"/>
		                        </xsl:call-template>
		                    </fo:block>
		                </fo:table-cell>
		                <fo:table-cell border="0.5pt solid {$lineas}" padding-left="{$espacio-texto-celda-left}" padding-top="{$espacio-texto-celda-top}">
		                    <fo:block font-size="7pt" padding-before="1mm" padding-after="1mm" font-weight="bold" text-align="left" color="{$txt-azul-claro}">
		                        <xsl:value-of select="impresion/cajeroAutomatico"/>
		                    </fo:block>
		                <!-- Depósito en cajero -->
		                </fo:table-cell>
		
		            </fo:table-row>
		            <!-- FILA 6 -->
		        </fo:table-body>
		    </fo:table>
		</fo:block>
		<fo:block space-after="5mm">
		    <fo:leader color="{$lineas}" leader-pattern="rule" leader-length="18cm"/>
		</fo:block>
    </xsl:otherwise>
</xsl:choose>

<xsl:call-template name="subTitulo">
		<xsl:with-param name="titulo" select="'Retenciones'"/>
</xsl:call-template>
<fo:block font-size="7pt" font-weight="normal" space-after="1mm" text-align="left" color="{$txt}">
Detalle de Documentos Retenidos más de 3 días:
</fo:block>

<fo:block font-size="7pt" space-after="1mm" padding-top="0.5cm" text-align="right" >
<fo:table table-layout="fixed">
<fo:table-column column-width="2cm" />
<fo:table-column column-width="3cm" />
<fo:table-column column-width="3cm" />
<fo:table-column column-width="3cm" />
<fo:table-column column-width="3cm" />
<fo:table-column column-width="2cm" />
<fo:table-column column-width="2cm" />
 
	<fo:table-body>
	<fo:table-row>

		<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
		<fo:block font-weight="normal" color="{$txt}" padding-before="2mm" padding-after="2mm" text-align="center">
		Serial</fo:block>
		</fo:table-cell>

		<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
		<fo:block font-weight="normal" color="{$txt}" padding-before="2mm" padding-after="2mm" text-align="center">
		Fecha Depósito</fo:block>
		</fo:table-cell>

		<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
		<fo:block font-weight="normal" color="{$txt}" padding-before="2mm" padding-after="2mm" text-align="center">
		Fecha Liberación</fo:block>
		</fo:table-cell>

		<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
		<fo:block font-weight="normal" color="{$txt}" padding-before="2mm" padding-after="2mm" text-align="center">
		Días</fo:block>
		</fo:table-cell>

		<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
		<fo:block font-weight="normal" color="{$txt}" padding-before="2mm" padding-after="2mm" text-align="center">
		Monto $</fo:block>
		</fo:table-cell>

		<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
		<fo:block font-weight="normal" color="{$txt}" padding-before="2mm" padding-after="2mm" text-align="center">
		Tipo Documento</fo:block>
		</fo:table-cell>

		<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
		<fo:block font-weight="normal" color="{$txt}" padding-before="2mm" padding-after="2mm" text-align="center">
		Banco</fo:block>
		</fo:table-cell>

	</fo:table-row>
	<xsl:choose>
	<xsl:when test="impresion/errorretencion != ''">
		<fo:table-row text-align="center">
			<fo:table-cell  border="0.5pt solid {$lineas}" number-columns-spanned="7">
			<fo:block font-weight="normal" padding-before="1mm" text-align="left">
			&#0160;<xsl:value-of select="impresion/errorretencion"/>
			</fo:block>
			</fo:table-cell>
		</fo:table-row>
	</xsl:when>
	<xsl:otherwise>
	<xsl:for-each select="impresion/detalleretenidos">
	<fo:table-row text-align="right">

		<fo:table-cell border="0.5pt solid {$lineas}">
		<fo:block font-weight="normal" padding-before="1mm" padding-after="1mm" text-align="left">
		&#0160;<xsl:value-of select="serial"/>
		</fo:block>
		</fo:table-cell>

		<fo:table-cell border="0.5pt solid {$lineas}">
		<fo:block font-weight="normal" padding-before="1mm" padding-after="1mm" text-align="left">
		&#0160;<xsl:value-of select="fechadepositoformateado"/>
		</fo:block>
		</fo:table-cell>

		<fo:table-cell border="0.5pt solid {$lineas}">
		<fo:block font-weight="normal" padding-before="1mm" padding-after="1mm" text-align="left">
		&#0160;<xsl:value-of select="fechaliberadoformateado"/>
		</fo:block>
		</fo:table-cell>

		<fo:table-cell border="0.5pt solid {$lineas}">
		<fo:block font-weight="normal" padding-before="1mm" padding-after="1mm" text-align="left">
		&#0160;<xsl:value-of select="dias"/>
		</fo:block>
		</fo:table-cell>

		<fo:table-cell border="0.5pt solid {$lineas}">
		<fo:block font-weight="normal" padding-before="1mm" padding-after="1mm" text-align="left">
		&#0160;<xsl:value-of select="monto"/>
		</fo:block>
		</fo:table-cell>

		<fo:table-cell border="0.5pt solid {$lineas}">
		<fo:block font-weight="normal" padding-before="1mm" padding-after="1mm" text-align="left">
		&#0160;<xsl:value-of select="tipodocumento"/>
		</fo:block>
		</fo:table-cell>

		<fo:table-cell border="0.5pt solid {$lineas}">
		<fo:block font-weight="normal" padding-before="1mm" padding-after="1mm" text-align="left">
		&#0160;<xsl:value-of select="codigobanco"/>
		</fo:block>
		</fo:table-cell>

	</fo:table-row>
	</xsl:for-each>
    </xsl:otherwise>
    </xsl:choose>
    </fo:table-body>
</fo:table>
</fo:block>

<!-- Documentos Retenidos -->



</xsl:template>



<xsl:template name="subTitulo">
<xsl:param name="titulo"/> 

	<fo:block font-size="9pt" font-weight="bold" text-align="left" color="black" >
	<fo:table table-layout="fixed">
	<fo:table-column column-width="0.3cm" />
	<fo:table-column column-width="8cm" />
	<fo:table-body>

	<fo:table-row>
	<fo:table-cell padding-before="1mm">
	<fo:external-graphic>
			<xsl:attribute name="src">
				<xsl:value-of select="impresion/rutaImagen"/>01-bullet2-rj.gif
			</xsl:attribute>
	 </fo:external-graphic>
	</fo:table-cell>
	<fo:table-cell>
	<fo:block>
		<xsl:value-of select="$titulo"/>
	</fo:block>
	</fo:table-cell>
	</fo:table-row>

	</fo:table-body>
	</fo:table>
	</fo:block>

</xsl:template>

</xsl:stylesheet>







