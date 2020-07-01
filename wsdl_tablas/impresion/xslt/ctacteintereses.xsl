<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format">


<xsl:variable name="bgcolor">#E7E5EF</xsl:variable>
<xsl:variable name="lineas">#CCCCCC</xsl:variable>
<xsl:variable name="txt">#000000</xsl:variable>
<xsl:variable name="txt-azul-claro">#0061A5</xsl:variable>
<xsl:variable name="txt-azul-oscuro">#1069B5</xsl:variable>

<xsl:template match="/">
<fo:root xmlns:fo="http://www.w3.org/1999/XSL/Format">





<!-- propiedades pagina -->
<fo:layout-master-set>
	<fo:simple-page-master master-name="pagina"
	page-height="28cm"
	page-width="22cm"
	margin-top="1cm"
	margin-bottom="1cm"
	margin-left="2cm"
	margin-right="2cm">
		<fo:region-body margin-top="3cm" margin-bottom="2.5cm" background-color="#ffffff"/> 
		<fo:region-before extent="3cm"/>
		<fo:region-after extent="2cm"/>
	</fo:simple-page-master>
</fo:layout-master-set>
<!-- propiedades pagina -->






<fo:page-sequence master-reference="pagina" initial-page-number="1" language="en" country="us">

<fo:static-content flow-name="xsl-region-before">
	<!-- imagen bci -->
		<fo:block space-after="3mm">
			<fo:table table-layout="fixed">
				<fo:table-column column-width="13cm"/>
				<fo:table-column column-width="5cm"/>
				<fo:table-body>
				<fo:table-row>
				<fo:table-cell>
				<fo:external-graphic>
					<xsl:attribute name="src">
						<xsl:value-of select="info/rutaImagen"/>02-logo-bci.gif
					</xsl:attribute>
				</fo:external-graphic>
			</fo:table-cell>
			<fo:table-cell padding-before="1cm">
				<fo:block font-size="9pt" font-weight="bold" space-after="1mm" text-align="right" color="{$txt}">
					<xsl:value-of select="info/fechaImpresion"/>
				</fo:block>
			</fo:table-cell>
			</fo:table-row>
			</fo:table-body>
			</fo:table>
		<!-- Separador -->
		<fo:block space-after="1mm">
			<fo:leader color="{$lineas}" leader-pattern="rule" leader-length="18cm"/>
		</fo:block>
		<!-- Separador -->
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

<fo:block font-size="5pt" space-after="1mm">
	<fo:table table-layout="fixed">
	<fo:table-column column-width="13cm"/>
	<fo:table-column column-width="5cm"/>
	<fo:table-body>
		<fo:table-row>
		<fo:table-cell>

			<!-- nombre cliente -->
				<fo:block font-size="10pt" font-weight="bold" space-after="1mm" text-align="left" color="{$txt-azul-claro}">
					<xsl:value-of select="info/nombre"/>
				</fo:block>
			<!-- nombre cliente -->
		
		</fo:table-cell>
		<fo:table-cell>
	
			<!-- rut cliente -->
				<fo:block font-size="10pt" font-weight="bold" space-after="1mm" text-align="right" color="{$txt}">
					<fo:inline color="{$txt}">RUT: </fo:inline>
					<fo:inline color="{$txt-azul-claro}"><xsl:value-of select="info/rut"/></fo:inline>
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




<!-- Cartola -->
<fo:block>
	<fo:table table-layout="fixed">
	<fo:table-column column-width="8cm"/>
	<fo:table-column column-width="10cm"/>
	<fo:table-body>
		<fo:table-row >
		<fo:table-cell >

			<!-- titulo -->
				<fo:block font-size="15pt" font-weight="bold" text-align="left" color="{$txt-azul-claro}">
					Detalle Pago Intereses
				</fo:block>
			<!-- titulo -->
		
		</fo:table-cell>
		<fo:table-cell >
	
			<!-- nro cuenta -->
				<fo:block font-size="10pt" text-align="right" color="{$txt}">
				<fo:inline font-weight="normal">Período: </fo:inline>
				<fo:inline font-weight="bold"><xsl:value-of select="info/periodo"/></fo:inline>
				</fo:block>
			<!-- nro cuenta -->

		</fo:table-cell>
		</fo:table-row>
	</fo:table-body>
	</fo:table>
</fo:block>
<!-- Cartola -->




<!-- Separador -->
<fo:block space-after="2mm">
	<fo:leader color="{$lineas}" leader-pattern="rule" leader-length="18cm"/>
</fo:block>
<!-- Separador -->




<!-- ejecutivo -->
	<fo:block font-size="9pt" text-align="left" color="{$txt}">
	<fo:inline font-weight="normal" space-before="30pt">Ejecutivo: </fo:inline>
	<fo:inline font-weight="bold"><xsl:value-of select="info/ejecutivo"/>&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;</fo:inline>
	<fo:inline font-weight="normal" space-before="30pt">Oficina: </fo:inline>
	<fo:inline font-weight="bold"><xsl:value-of select="info/oficina"/></fo:inline>
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

			<xsl:call-template name="ladoizquierdo"/>

			
		</fo:table-cell>		
		<fo:table-cell>
		</fo:table-cell>
		
			<fo:table-cell background-color="{$lineas}" border="0pt solid">
		
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
<!-- division -->


<!-- Separador -->

<fo:block space-after="2mm">
	<fo:leader color="{$lineas}" leader-pattern="rule" leader-length="18cm"/>
</fo:block>

<!-- Separador -->



<!-- Saldos Diarios de su Cuenta  -->
	<xsl:call-template name="subTitulo">
		<xsl:with-param name="titulo" select="'Saldos Diarios de su Cuenta '"/>
 	</xsl:call-template>
<!-- Saldos Diarios de su Cuenta  -->




<!-- tabla saldos -->
		<fo:block font-size="7pt" space-after="1mm" text-align="right" padding-top="0.5cm">
		<!-- Separador -->
			<fo:block>
				<fo:leader color="{$lineas}" leader-pattern="rule" leader-length="18cm"/>
			</fo:block>
		<!-- Separador -->
			<fo:table table-layout="fixed">
				<fo:table-column column-width="6cm" />
				<fo:table-column column-width="6cm" />
				<fo:table-column column-width="6cm" />
				<fo:table-body>
					<fo:table-row>
						<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
							<fo:block font-weight="normal" color="{$txt}" padding-before="2mm" padding-after="2mm" text-align="center">
								Día del Mes 
							</fo:block>
						</fo:table-cell>
						<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
							<fo:block font-weight="normal" color="{$txt}" padding-before="2mm" padding-after="2mm" text-align="center">
								Saldo Contable $
							</fo:block>
						</fo:table-cell>
						<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
							<fo:block font-weight="normal" color="{$txt}" padding-before="2mm" padding-after="2mm" text-align="center">
								Saldo Disponible 
							</fo:block>
						</fo:table-cell>
						
					</fo:table-row>
					<xsl:for-each select="info/saldos-diarios/detalle-saldos">
						<fo:table-row text-align="right">
							<fo:table-cell border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" padding-before="1mm" padding-after="1mm" text-align="left">
									&#0160;<xsl:value-of select="diaMes"/>
								</fo:block>
							</fo:table-cell>
							<fo:table-cell border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" padding-before="1mm" padding-after="1mm" text-align="left">
									&#0160;<xsl:value-of select="saldoContable"/>
								</fo:block>
							</fo:table-cell>
							<fo:table-cell border="0.5pt solid {$lineas}">
								<fo:block font-weight="normal" padding-before="1mm" padding-after="1mm" text-align="left">
									&#0160;<xsl:value-of select="saldoDisponible"/>
								</fo:block>
							</fo:table-cell>
							
						</fo:table-row>
					</xsl:for-each>
				</fo:table-body>
			</fo:table>
		</fo:block>
<!-- tabla saldos -->


</xsl:template>





	<xsl:template name="ladoizquierdo">
		<fo:block font-size="9pt" font-weight="bold" space-after="1mm" text-align="left" color="black" >
			<xsl:call-template name="subTitulo">
				<xsl:with-param name="titulo" select="'Información de su Cuenta'"/>
			</xsl:call-template>
			<fo:leader color="{$lineas}" leader-pattern="rule" leader-length="8.8cm"/>
			<!-- tabla A -->
			<fo:table table-layout="fixed">
				<fo:table-column column-width="4.4cm" />
				<fo:table-column column-width="4.4cm" />
				<fo:table-body>
					<fo:table-row>
						<fo:table-cell  border="0.5pt solid {$lineas}">
							<xsl:call-template name="itemTitulo">
								<xsl:with-param name="titulo" select="'RUT :'"/>
							</xsl:call-template>
						</fo:table-cell>
						<fo:table-cell  border="0.5pt solid {$lineas}">
							<fo:block font-weight="bold" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="left">
								&#0160;<xsl:value-of select="info/intereses-detalle/rutDetalle"/>
							</fo:block>
						</fo:table-cell> 
					</fo:table-row>  
					<fo:table-row>
						<fo:table-cell  background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
							<xsl:call-template name="itemTitulo">
								<xsl:with-param name="titulo" select="'Nº Cuenta :'"/>
							</xsl:call-template>
						</fo:table-cell>
						<fo:table-cell  background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
							<fo:block font-weight="bold" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="left">
								&#0160;<xsl:value-of select="info/intereses-detalle/nroCuentaDetalle"/>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
					<fo:table-row>
						<fo:table-cell border="0.5pt solid {$lineas}">
							<xsl:call-template name="itemTitulo">
								<xsl:with-param name="titulo" select="'Oficina :'"/>
							</xsl:call-template>
						</fo:table-cell>
						<fo:table-cell border="0.5pt solid {$lineas}">
							<fo:block font-weight="bold" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="left">
								&#0160;<xsl:value-of select="info/intereses-detalle/oficinaDetalle"/>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
					<fo:table-row>
						<fo:table-cell  background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
							<xsl:call-template name="itemTitulo">
								<xsl:with-param name="titulo" select="'Ejecutivo :'"/>
							</xsl:call-template>
						</fo:table-cell>
						<fo:table-cell  background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
							<fo:block font-weight="bold" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="left">
								&#0160;<xsl:value-of select="info/intereses-detalle/ejecutivoDetalle"/>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
				</fo:table-body>
			</fo:table>
		</fo:block>
		<!-- tabla A -->
	</xsl:template>


	
	<xsl:template name="ladoderecho">
		<fo:block font-size="9pt" font-weight="bold" space-after="1mm" text-align="left" color="black">
			<xsl:call-template name="subTitulo">
				<xsl:with-param name="titulo" select="'Interés de su Cuenta'"/>
			</xsl:call-template>
			<fo:leader color="{$lineas}" leader-pattern="rule" leader-length="8.8cm"/>
			<!-- tabla A -->
			<fo:table table-layout="fixed">
				<fo:table-column column-width="5.4cm" />
				<fo:table-column column-width="3.4cm" />
				<fo:table-body>
					<fo:table-row>
						<fo:table-cell border="0.5pt solid {$lineas}">
							<xsl:call-template name="itemTitulo">
								<xsl:with-param name="titulo" select="'Saldo Disponible Promedio MES :'"/>
							</xsl:call-template>
						</fo:table-cell>
						<fo:table-cell border="0.5pt solid {$lineas}">
							<fo:block font-weight="bold" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="left">
								&#0160;<xsl:value-of select="info/intereses-detalle/saldoPromedioMes"/>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>  
					<fo:table-row>
						<fo:table-cell  background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
							<xsl:call-template name="itemTitulo">
								<xsl:with-param name="titulo" select="'Intereses Ganados $:'"/>
							</xsl:call-template>
						</fo:table-cell>
						<fo:table-cell  background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
							<fo:block font-weight="bold" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="left">
								&#0160;<xsl:value-of select="info/intereses-detalle/interesGanados"/>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
					<fo:table-row>
						<fo:table-cell border="0.5pt solid {$lineas}">
							<xsl:call-template name="itemTitulo">
								<xsl:with-param name="titulo" select="'Tasa Anual según su Saldo:'"/>
							</xsl:call-template>
						</fo:table-cell>
						<fo:table-cell border="0.5pt solid {$lineas}">
							<fo:block font-weight="bold" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="left">
								&#0160;<xsl:value-of select="info/intereses-detalle/tasaAnualSaldo"/>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
					<fo:table-row>
						<fo:table-cell  background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
							<xsl:call-template name="itemTitulo">
								<xsl:with-param name="titulo" select="'Tasa Mes según su Saldo:'"/>
							</xsl:call-template>
						</fo:table-cell>
						<fo:table-cell  background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
							<fo:block font-weight="bold" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="left">
								&#0160;<xsl:value-of select="info/intereses-detalle/tasaMesSaldo"/>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
				</fo:table-body>
			</fo:table>
		</fo:block>
		<!-- tabla A -->
	</xsl:template>

<xsl:template name="itemTitulo">
<xsl:param name="titulo"/> 

	<fo:block font-size="9pt" font-weight="normal" color="{$txt-azul-claro}" padding-before="1mm" padding-after="1mm" text-align="left">
	<fo:table table-layout="fixed">
	<fo:table-column column-width="0.5cm" />
	<fo:table-column column-width="8cm" />
	<fo:table-body>

	<fo:table-row>
	<fo:table-cell padding-left="2mm" padding-before="1mm" >
	<fo:external-graphic height="1mm" width="1mm">
		<xsl:attribute name="src">
			<xsl:value-of select="info/rutaImagen"/>01-bullet1-rj.gif
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


<xsl:template name="subTitulo">
<xsl:param name="titulo"/> 

	<fo:block font-size="9pt" font-weight="bold" text-align="left" color="black" padding-top="0.5cm" >
	<fo:table table-layout="fixed">
	<fo:table-column column-width="0.3cm" />
	<fo:table-column column-width="8cm" />
	<fo:table-body>

	<fo:table-row>
	<fo:table-cell padding-before="1mm">
	<fo:external-graphic>
			<xsl:attribute name="src">
				<xsl:value-of select="info/rutaImagen"/>01-bullet2-rj.gif
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







