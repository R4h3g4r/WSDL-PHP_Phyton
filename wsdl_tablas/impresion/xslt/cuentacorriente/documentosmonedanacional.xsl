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
								Cta. Cte. / Protestos, Retenciones, Dev...
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


<!-- division -->
<fo:block>
	<fo:table table-layout="fixed" >
	<fo:table-column column-width="8.8cm" />
	<fo:table-column column-width="2mm" />
	<fo:table-column column-width="0.1mm" />
	<fo:table-column column-width="2mm" />
	<fo:table-column column-width="8.8cm" />

	<fo:table-body>

		<fo:table-row >
		<fo:table-cell >

			<!--xsl:call-template name="ladoizquierdo"/-->

		</fo:table-cell>

		<fo:table-cell>
		
		</fo:table-cell>
		
		<fo:table-cell background-color="{$lineas}" border="0pt solid">
		
		</fo:table-cell>

		<fo:table-cell>
		
		</fo:table-cell>

		<fo:table-cell>

			<!--xsl:call-template name="ladoderecho"/-->

		</fo:table-cell >
		</fo:table-row >

	</fo:table-body>
	</fo:table>
</fo:block>
<!-- division -->


<!-- lista Protestos -->
<xsl:call-template name="subTitulo">
		<xsl:with-param name="titulo" select="'Protestos'"/>
 </xsl:call-template>

<fo:block font-size="7pt" space-after="1mm" padding-top="0.5cm" text-align="right" break-after="page">
<fo:table table-layout="fixed">
<fo:table-column column-width="2cm" />
<fo:table-column column-width="3cm" />
<fo:table-column column-width="2cm" />
<fo:table-column column-width="2.5cm" />
<fo:table-column column-width="2cm" />
<fo:table-column column-width="2cm" />
<fo:table-column column-width="3cm" />
<fo:table-column column-width="1.5cm" />                          
	<fo:table-body>
	<fo:table-row>

		<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}" >
		<fo:block font-weight="normal" color="{$txt}" padding-before="2mm" padding-after="2mm" text-align="center">
		Serial</fo:block>
		</fo:table-cell>

		<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}" >
		<fo:block font-weight="normal" color="{$txt}" padding-before="2mm" padding-after="2mm" text-align="center">
		Origen</fo:block>
		</fo:table-cell>

		<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
		<fo:block font-weight="normal" color="{$txt}" padding-before="2mm" padding-after="2mm" text-align="center">
		Estado</fo:block>
		</fo:table-cell>

		<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
		<fo:block font-weight="normal" color="{$txt}" padding-before="2mm" padding-after="2mm" text-align="center">
		Oficina</fo:block>
		</fo:table-cell>

		<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
		<fo:block font-weight="normal" color="{$txt}" padding-before="2mm" padding-after="2mm" text-align="center">
		Monto $</fo:block>
		</fo:table-cell>

		<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
		<fo:block font-weight="normal" color="{$txt}" padding-before="2mm" padding-after="2mm" text-align="center">
		Fecha</fo:block>
		</fo:table-cell>

		<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
		<fo:block font-weight="normal" color="{$txt}" padding-before="2mm" padding-after="2mm" text-align="center">
		Motivo</fo:block>
		</fo:table-cell>

		<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
		<fo:block font-weight="normal" color="{$txt}" padding-before="2mm" padding-after="2mm" text-align="center">
		Aclaración</fo:block>
		</fo:table-cell>

	</fo:table-row>
	<xsl:choose>
	<xsl:when test="impresion/errorprotesto != ''">
		<fo:table-row text-align="center">
			<fo:table-cell  border="0.5pt solid {$lineas}" number-columns-spanned="8">
			<fo:block font-weight="normal" padding-before="1mm" text-align="left">
			&#0160;<xsl:value-of select="impresion/errorprotesto"/>
			</fo:block>
			</fo:table-cell>
		</fo:table-row>
	</xsl:when>
	<xsl:otherwise>
	<xsl:for-each select="impresion/detalleprotestos">
	<fo:table-row text-align="right">
		<fo:table-cell border="0.5pt solid {$lineas}" >
		<fo:block font-weight="normal" padding-before="1mm" padding-after="1mm" text-align="left">
		&#0160;<xsl:value-of select="serial"/>
		</fo:block>
		</fo:table-cell>

		<fo:table-cell border="0.5pt solid {$lineas}">
		<fo:block font-weight="normal" padding-before="1mm" padding-after="1mm" text-align="left">
		&#0160;<xsl:value-of select="origen"/>
		</fo:block>
		</fo:table-cell>

		<fo:table-cell border="0.5pt solid {$lineas}">
		<fo:block font-weight="normal" padding-before="1mm" padding-after="1mm" text-align="left">
		&#0160;<xsl:value-of select="estado"/>
		</fo:block>
		</fo:table-cell>

		<fo:table-cell border="0.5pt solid {$lineas}">
		<fo:block font-weight="normal" padding-before="1mm" padding-after="1mm" text-align="left">
		&#0160;<xsl:value-of select="oficinareceptora"/>
		</fo:block>
		</fo:table-cell>

		<fo:table-cell border="0.5pt solid {$lineas}">
		<fo:block font-weight="normal" padding-before="1mm" padding-after="1mm" text-align="left">
		&#0160;<xsl:value-of select="monto"/>
		</fo:block>
		</fo:table-cell>

		<fo:table-cell border="0.5pt solid {$lineas}">
		<fo:block font-weight="normal" padding-before="1mm" padding-after="1mm" text-align="left">
		&#0160;<xsl:value-of select="fechaformateada"/>
		</fo:block>
		</fo:table-cell>

		<fo:table-cell border="0.5pt solid {$lineas}">
		<fo:block font-weight="normal" padding-before="1mm" padding-after="1mm" text-align="left">
		&#0160;<xsl:value-of select="motivo"/>
		</fo:block>
		</fo:table-cell>
		
		<fo:table-cell border="0.5pt solid {$lineas}">
		<fo:block font-weight="normal" padding-before="1mm" padding-after="1mm" text-align="left">
		&#0160;<xsl:value-of select="aclaracion"/>
		</fo:block>
		</fo:table-cell>
	</fo:table-row>
	</xsl:for-each>
	</xsl:otherwise>
    </xsl:choose>                   
	</fo:table-body>
</fo:table>
</fo:block>
<!-- lista Protestos -->





<!-- Documentos Retenidos -->

<xsl:call-template name="subTitulo">
		<xsl:with-param name="titulo" select="'Documentos Retenidos'"/>
</xsl:call-template>

<fo:block font-size="7pt" space-after="1mm" padding-top="0.5cm" text-align="right" break-after="page">
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



<!-- Documentos Devueltos -->

<xsl:call-template name="subTitulo">
		<xsl:with-param name="titulo" select="'Devoluciones'"/>
</xsl:call-template>

<fo:block font-size="7pt" space-after="1mm" padding-top="0.5cm" text-align="right" break-after="page">
<fo:table table-layout="fixed">
<fo:table-column column-width="2cm" />
<fo:table-column column-width="2cm" />
<fo:table-column column-width="2cm" />
<fo:table-column column-width="2cm" />
<fo:table-column column-width="2cm" />
<fo:table-column column-width="2cm" />
<fo:table-column column-width="2cm" />
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
		Cuenta Girador</fo:block>
		</fo:table-cell>

		<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
		<fo:block font-weight="normal" color="{$txt}" padding-before="2mm" padding-after="2mm" text-align="center">
		Banco</fo:block>
		</fo:table-cell>

		<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
		<fo:block font-weight="normal" color="{$txt}" padding-before="2mm" padding-after="2mm" text-align="center">
		Plaza</fo:block>
		</fo:table-cell>

		<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
		<fo:block font-weight="normal" color="{$txt}" padding-before="2mm" padding-after="2mm" text-align="center">
		Monto $</fo:block>
		</fo:table-cell>

		<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
		<fo:block font-weight="normal" color="{$txt}" padding-before="2mm" padding-after="2mm" text-align="center">
		Motivo Devolución</fo:block>
		</fo:table-cell>

		<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
		<fo:block font-weight="normal" color="{$txt}" padding-before="2mm" padding-after="2mm" text-align="center">
		Oficina Retiro</fo:block>
		</fo:table-cell>

		<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
		<fo:block font-weight="normal" color="{$txt}" padding-before="2mm" padding-after="2mm" text-align="center">
		Fecha Retiro</fo:block>
		</fo:table-cell>

		<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
		<fo:block font-weight="normal" color="{$txt}" padding-before="2mm" padding-after="2mm" text-align="center">
		Sucursal</fo:block>
		</fo:table-cell>
	</fo:table-row>
	
	<xsl:choose>
	<xsl:when test="impresion/errordevuelto != ''">
		<fo:table-row text-align="center">
			<fo:table-cell  border="0.5pt solid {$lineas}" number-columns-spanned="9">
			<fo:block font-weight="normal" padding-before="1mm" text-align="left">
			&#0160;<xsl:value-of select="impresion/errordevuelto"/>
			</fo:block>
			</fo:table-cell>
		</fo:table-row>
	</xsl:when>
	<xsl:otherwise>
	<xsl:for-each select="impresion/detalledevueltos">
	<fo:table-row text-align="right">

		<fo:table-cell border="0.5pt solid {$lineas}">
		<fo:block font-weight="normal" padding-before="1mm" padding-after="1mm" text-align="left">
		&#0160;<xsl:value-of select="serial"/>
		</fo:block>
		</fo:table-cell>

		<fo:table-cell border="0.5pt solid {$lineas}">
		<fo:block font-weight="normal" padding-before="1mm" padding-after="1mm" text-align="left">
		&#0160;<xsl:value-of select="cuentacorriente"/>
		</fo:block>
		</fo:table-cell>

		<fo:table-cell border="0.5pt solid {$lineas}">
		<fo:block font-weight="normal" padding-before="1mm" padding-after="1mm" text-align="left">
		&#0160;<xsl:value-of select="codigobanco"/>
		</fo:block>
		</fo:table-cell>

		<fo:table-cell border="0.5pt solid {$lineas}">
		<fo:block font-weight="normal" padding-before="1mm" padding-after="1mm" text-align="left">
		&#0160;<xsl:value-of select="plaza"/>
		</fo:block>
		</fo:table-cell>

		<fo:table-cell border="0.5pt solid {$lineas}">
		<fo:block font-weight="normal" padding-before="1mm" padding-after="1mm" text-align="left">
		&#0160;<xsl:value-of select="monto"/>
		</fo:block>
		</fo:table-cell>

		<fo:table-cell border="0.5pt solid {$lineas}">
		<fo:block font-weight="normal" padding-before="1mm" padding-after="1mm" text-align="left">
		&#0160;<xsl:value-of select="motivo"/>
		</fo:block>
		</fo:table-cell>

		<fo:table-cell border="0.5pt solid {$lineas}">
		<fo:block font-weight="normal" padding-before="1mm" padding-after="1mm" text-align="left">
		&#0160;<xsl:value-of select="oficinaretiro"/>
		</fo:block>
		</fo:table-cell>

		<fo:table-cell border="0.5pt solid {$lineas}">
		<fo:block font-weight="normal" padding-before="1mm" padding-after="1mm" text-align="left">
		&#0160;<xsl:value-of select="fecharetiroformateado"/>
		</fo:block>
		</fo:table-cell>

		<fo:table-cell border="0.5pt solid {$lineas}">
		<fo:block font-weight="normal" padding-before="1mm" padding-after="1mm" text-align="left">
		&#0160;<xsl:value-of select="sucursal"/>
		</fo:block>
		</fo:table-cell>

	</fo:table-row>
	</xsl:for-each>
    </xsl:otherwise>
    </xsl:choose>                 
	</fo:table-body>
</fo:table>
</fo:block>

<!-- Documentos Devueltos -->



<!-- Ordenes de No Pago -->

<xsl:call-template name="subTitulo">
		<xsl:with-param name="titulo" select="'ONP'"/>
 </xsl:call-template>

<fo:block font-size="7pt" space-after="1mm" padding-top="0.5cm" text-align="right" >
<fo:table table-layout="fixed">
<fo:table-column column-width="1.0cm" />
<fo:table-column column-width="1.7cm" />
<fo:table-column column-width="1.7cm" />
<fo:table-column column-width="1.7cm" />
<fo:table-column column-width="1.7cm" />
<fo:table-column column-width="1.3cm" />
<fo:table-column column-width="2.3cm" />
<fo:table-column column-width="2cm" /> 
<fo:table-column column-width="1.7cm" /> 
<fo:table-column column-width="1.7cm" /> 
<fo:table-column column-width="1.2cm" />  
	<fo:table-body>
	<fo:table-row>

		<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
		<fo:block font-weight="normal" color="{$txt}" padding-before="2mm" padding-after="2mm" text-align="center">
		Serie</fo:block>
		</fo:table-cell>

		<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
		<fo:block font-weight="normal" color="{$txt}" padding-before="2mm" padding-after="2mm" text-align="center">
		Serial Ini</fo:block>
		</fo:table-cell>

		<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
		<fo:block font-weight="normal" color="{$txt}" padding-before="2mm" padding-after="2mm" text-align="center">
		Serial Fin</fo:block>
		</fo:table-cell>

		<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
		<fo:block font-weight="normal" color="{$txt}" padding-before="2mm" padding-after="2mm" text-align="center">
		Fecha</fo:block>
		</fo:table-cell>

		<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
		<fo:block font-weight="normal" color="{$txt}" padding-before="2mm" padding-after="2mm" text-align="center">
		Hora</fo:block>
		</fo:table-cell>

		<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
		<fo:block font-weight="normal" color="{$txt}" padding-before="2mm" padding-after="2mm" text-align="center">
		Estado</fo:block>
		</fo:table-cell>

		<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
		<fo:block font-weight="normal" color="{$txt}" padding-before="2mm" padding-after="2mm" text-align="center">
		Oficina</fo:block>
		</fo:table-cell>

		<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
		<fo:block font-weight="normal" color="{$txt}" padding-before="2mm" padding-after="2mm" text-align="center">
		Motivo</fo:block>
		</fo:table-cell>

		<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
		<fo:block font-weight="normal" color="{$txt}" padding-before="2mm" padding-after="2mm" text-align="center">
		Monto $</fo:block>
		</fo:table-cell>

		<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
		<fo:block font-weight="normal" color="{$txt}" padding-before="2mm" padding-after="2mm" text-align="center">
		Solicitante</fo:block>
		</fo:table-cell>

		<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
		<fo:block font-weight="normal" color="{$txt}" padding-before="2mm" padding-after="2mm" text-align="center">
		Publicado</fo:block>
		</fo:table-cell>

	</fo:table-row>
	
	<xsl:choose>
	<xsl:when test="impresion/erroronp != ''">
		<fo:table-row text-align="center">
			<fo:table-cell  border="0.5pt solid {$lineas}" number-columns-spanned="11">
			<fo:block font-weight="normal" padding-before="1mm" text-align="left">
			&#0160;<xsl:value-of select="impresion/erroronp"/>
			</fo:block>
			</fo:table-cell>
		</fo:table-row>
	</xsl:when>
	<xsl:otherwise>
	<xsl:for-each select="impresion/detalleonp">
	<fo:table-row text-align="right">

		<fo:table-cell border="0.5pt solid {$lineas}">
		<fo:block font-weight="normal" padding-before="1mm" padding-after="1mm" text-align="left">
		&#0160;<xsl:value-of select="serial"/>
		</fo:block>
		</fo:table-cell>

		<fo:table-cell border="0.5pt solid {$lineas}">
		<fo:block font-weight="normal" padding-before="1mm" padding-after="1mm" text-align="left">
		&#0160;<xsl:value-of select="serialinicial"/>
		</fo:block>
		</fo:table-cell>

		<fo:table-cell border="0.5pt solid {$lineas}">
		<fo:block font-weight="normal" padding-before="1mm" padding-after="1mm" text-align="left">
		&#0160;<xsl:value-of select="serialfin"/>
		</fo:block>
		</fo:table-cell>

		<fo:table-cell border="0.5pt solid {$lineas}">
		<fo:block font-weight="normal" padding-before="1mm" padding-after="1mm" text-align="left">
		&#0160;<xsl:value-of select="fechaonpformateada"/>
		</fo:block>
		</fo:table-cell>

		<fo:table-cell border="0.5pt solid {$lineas}">
		<fo:block font-weight="normal" padding-before="1mm" padding-after="1mm" text-align="left">
		&#0160;<xsl:value-of select="horaformateada"/>
		</fo:block>
		</fo:table-cell>

		<fo:table-cell border="0.5pt solid {$lineas}">
		<fo:block font-weight="normal" padding-before="1mm" padding-after="1mm" text-align="left">
		&#0160;<xsl:value-of select="estado"/>
		</fo:block>
		</fo:table-cell>

		<fo:table-cell border="0.5pt solid {$lineas}">
		<fo:block font-weight="normal" padding-before="1mm" padding-after="1mm" text-align="left">
		&#0160;<xsl:value-of select="oficinaonp"/>
		</fo:block>
		</fo:table-cell>

		<fo:table-cell border="0.5pt solid {$lineas}">
		<fo:block font-weight="normal" padding-before="1mm" padding-after="1mm" text-align="left">
		&#0160;<xsl:value-of select="motivoonp"/>
		</fo:block>
		</fo:table-cell>

		<fo:table-cell border="0.5pt solid {$lineas}">
		<fo:block font-weight="normal" padding-before="1mm" padding-after="1mm" text-align="left">
		&#0160;<xsl:value-of select="monto"/>
		</fo:block>
		</fo:table-cell>

		<fo:table-cell border="0.5pt solid {$lineas}">
		<fo:block font-weight="normal" padding-before="1mm" padding-after="1mm" text-align="left">
		&#0160;<xsl:value-of select="solicitante"/>
		</fo:block>
		</fo:table-cell>

		<fo:table-cell border="0.5pt solid {$lineas}">
		<fo:block font-weight="normal" padding-before="1mm" padding-after="1mm" text-align="left">
		&#0160;<xsl:value-of select="publicado"/>
		</fo:block>
		</fo:table-cell>

	</fo:table-row>
	</xsl:for-each>
	</xsl:otherwise>
    </xsl:choose>  
                            
	</fo:table-body>
</fo:table>
</fo:block>

<!-- Ordenes de No Pago -->
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





