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
		<fo:region-body margin-top="2cm" margin-bottom="2.5cm" background-color="#ffffff"/> 
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
								<xsl:value-of select="info/dirImagen"/>02-logo-bci.gif
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
	</fo:block>
	<!-- imagen bci -->
</fo:static-content>

<fo:static-content flow-name="xsl-region-after">
	<!-- Separador -->
	<fo:block space-after="1mm">
		<fo:leader color="{$lineas}" leader-pattern="rule" leader-length="18cm"/>
	</fo:block>
	<!-- Separador -->
	<fo:block font-size="9pt" font-weight="bold" space-after="1mm" text-align="left" color="{$txt}">
	Para Consultas o Comentarios Comun�quese al 600 6928000
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
	<fo:table-column column-width="5cm"/>
	<fo:table-column column-width="13cm"/>
	<fo:table-body>
		<fo:table-row >
		<fo:table-cell >

			<!-- titulo -->
				<fo:block font-size="15pt" font-weight="bold" text-align="left" color="{$txt-azul-claro}">
					Detalle del Cr�dito
				</fo:block>
			<!-- titulo -->
		
		</fo:table-cell>
		<fo:table-cell >
	
			<!-- nro operacion -->
				<fo:block font-size="10pt" font-weight="bold" text-align="right" color="{$txt}">
					N� de Operacion: <xsl:value-of select="info/nroOperacion"/>
					&#0160;&#0160;tipo: <xsl:value-of select="info/tipo"/>
				</fo:block>
			<!-- nro operacion -->

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
	<fo:block font-size="9pt" font-weight="bold" text-align="left" color="{$txt}">
	<fo:inline space-before="30pt">Ejecutivo: <xsl:value-of select="info/ejecutivo"/>&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;</fo:inline>
	<fo:inline space-before="30pt">Oficina: <xsl:value-of select="info/oficinaEje"/></fo:inline>
	</fo:block>
<!-- ejecutivo -->




<!-- Separador -->
<fo:block space-after="1mm">
<fo:leader color="{$lineas}" leader-pattern="rule" leader-length="8.8cm"/>&#0160;&#0160;
<fo:leader color="{$lineas}" leader-pattern="rule" leader-length="8.8cm"/>
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



</xsl:template>



<xsl:template name="ladoizquierdo">

	<fo:block font-size="9pt" font-weight="bold" space-after="1mm" text-align="left" color="black">

	<fo:leader color="{$lineas}" leader-pattern="rule" leader-length="8.8cm"/>
	
	<!-- tabla A -->
	<fo:table table-layout="fixed">
	<fo:table-column column-width="4.4cm" />
	<fo:table-column column-width="4.4cm" />
	<fo:table-body>

	<fo:table-row>

	<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
	<xsl:call-template name="itemTitulo">
		<xsl:with-param name="titulo" select="'Oficina :'"/>
 	</xsl:call-template>
	</fo:table-cell>
	<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
	<fo:block font-weight="bold" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="left">
	&#0160;<xsl:value-of select="info/oficina"/></fo:block>
	</fo:table-cell>

	</fo:table-row>  

	<fo:table-row>

	<fo:table-cell border="0.5pt solid {$lineas}">
	<xsl:call-template name="itemTitulo">
		<xsl:with-param name="titulo" select="'Monto Cursado :'"/>
 	</xsl:call-template>
	</fo:table-cell>
	<fo:table-cell border="0.5pt solid {$lineas}">
	<fo:block font-weight="bold" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="left">
	&#0160;<xsl:value-of select="info/montoCursado"/></fo:block>
	</fo:table-cell>

	</fo:table-row>  
	
	<fo:table-row>

	<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
	<xsl:call-template name="itemTitulo">
		<xsl:with-param name="titulo" select="'Monto Abonado :'"/>
 	</xsl:call-template>
	</fo:table-cell>
	<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
	<fo:block font-weight="bold" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="left">
	&#0160;<xsl:value-of select="info/montoAbonado"/></fo:block>
	</fo:table-cell>

	</fo:table-row>  
	
	<fo:table-row>

	<fo:table-cell border="0.5pt solid {$lineas}">
	<xsl:call-template name="itemTitulo">
		<xsl:with-param name="titulo" select="'Deuda Actual :'"/>
 	</xsl:call-template>
	</fo:table-cell>
	<fo:table-cell border="0.5pt solid {$lineas}">
	<fo:block font-weight="bold" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="left">
	&#0160;<xsl:value-of select="info/deudaActual"/></fo:block>
	</fo:table-cell>

	</fo:table-row>  
	
	<fo:table-row>

	<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
	<xsl:call-template name="itemTitulo">
		<xsl:with-param name="titulo" select="'Saldo Insoluto :'"/>
 	</xsl:call-template>
	</fo:table-cell>
	<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
	<fo:block font-weight="bold" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="left">
	&#0160;<xsl:value-of select="info/saldoInsoluto"/></fo:block>
	</fo:table-cell>

	</fo:table-row>  
	
	<fo:table-row>

	<fo:table-cell border="0.5pt solid {$lineas}">
	<xsl:call-template name="itemTitulo">
		<xsl:with-param name="titulo" select="'Monto Pr�xima Cuota :'"/>
 	</xsl:call-template>
	</fo:table-cell>
	<fo:table-cell border="0.5pt solid {$lineas}">
	<fo:block font-weight="bold" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="left">
	&#0160;<xsl:value-of select="info/montoProximaCuota"/></fo:block>
	</fo:table-cell>

	</fo:table-row>  
	
	<fo:table-row>

	<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
	<xsl:call-template name="itemTitulo">
		<xsl:with-param name="titulo" select="'Pr�xima Cuota a Pagar :'"/>
 	</xsl:call-template>
	</fo:table-cell>
	<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
	<fo:block font-weight="bold" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="left">
	&#0160;<xsl:value-of select="info/proximaCuotaAPagar"/></fo:block>
	</fo:table-cell>

	</fo:table-row>  
	
	<fo:table-row>

	<fo:table-cell border="0.5pt solid {$lineas}">
	<xsl:call-template name="itemTitulo">
		<xsl:with-param name="titulo" select="'Tipo Tasa Inter�s :'"/>
 	</xsl:call-template>
	</fo:table-cell>
	<fo:table-cell border="0.5pt solid {$lineas}">
	<fo:block font-weight="bold" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="left">
	&#0160;<xsl:value-of select="info/tipoTasaInteres"/></fo:block>
	</fo:table-cell>

	</fo:table-row>  
	
	<fo:table-row>

	<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
	<xsl:call-template name="itemTitulo">
		<xsl:with-param name="titulo" select="'% Tasa Inter�s :'"/>
 	</xsl:call-template>
	</fo:table-cell>
	<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
	<fo:block font-weight="bold" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="left">
	&#0160;<xsl:value-of select="info/porcentajeTasaInteres"/></fo:block>
	</fo:table-cell>

	</fo:table-row>  
	
	<fo:table-row>

	<fo:table-cell border="0.5pt solid {$lineas}">
	<xsl:call-template name="itemTitulo">
		<xsl:with-param name="titulo" select="'Seguro Cesantia :'"/>
 	</xsl:call-template>
	</fo:table-cell>
	<fo:table-cell border="0.5pt solid {$lineas}">
	<fo:block font-weight="bold" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="left">
	&#0160;<xsl:value-of select="info/seguroCesantia"/></fo:block>
	</fo:table-cell>

	</fo:table-row>  
	




	
	<fo:table-row>
	
	<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
	<fo:block font-weight="normal" color="{$txt-azul-claro}" padding-before="1mm" padding-after="1mm" text-align="left">&#0160;
		<fo:external-graphic>
	 	    <xsl:attribute name="src">
			<xsl:value-of select="info/dirImagen"/>01-bullet1-rj.gif
		    </xsl:attribute>
		</fo:external-graphic>
		&#0160;<xsl:value-of select="info/textoOtroSeguro"/> :
	</fo:block>
	</fo:table-cell>

	<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
	<fo:block font-weight="bold" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="left">
	&#0160;<xsl:value-of select="info/valorOtroSeguro"/></fo:block>
	</fo:table-cell>

	</fo:table-row>  
	



	
	
	<fo:table-row>

	<fo:table-cell border="0.5pt solid {$lineas}">
	<xsl:call-template name="itemTitulo">
		<xsl:with-param name="titulo" select="'N� Cuotas Morosas :'"/>
 	</xsl:call-template>
	</fo:table-cell>
	<fo:table-cell border="0.5pt solid {$lineas}">
	<fo:block font-weight="bold" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="left">
	&#0160;<xsl:value-of select="info/nroCuotasMorosas"/></fo:block>
	</fo:table-cell>

	</fo:table-row>  

	<fo:table-row>

	<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
	<xsl:call-template name="itemTitulo">
		<xsl:with-param name="titulo" select="'RUT Deudor Indirecto :'"/>
 	</xsl:call-template>
	</fo:table-cell>
	<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
	<fo:block font-weight="bold" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="left">
	&#0160;<xsl:value-of select="info/rutDeudorIndirecto"/></fo:block>
	</fo:table-cell>

	</fo:table-row>  


	<fo:table-row>

	<fo:table-cell border="0.5pt solid {$lineas}">
	<fo:block font-weight="bold" color="{$txt-azul-claro}" space-after="5.5mm">
	</fo:block>
	</fo:table-cell>

	<fo:table-cell border="0.5pt solid {$lineas}">
	<fo:block font-weight="bold" color="{$txt-azul-claro}" >
	</fo:block>
	</fo:table-cell>

	</fo:table-row>




	</fo:table-body>
	</fo:table>
	</fo:block>
	<!-- tabla A -->
</xsl:template>


<xsl:template name="ladoderecho">
	<fo:block font-size="9pt" font-weight="bold" color="black">

	<fo:leader color="{$lineas}" leader-pattern="rule" leader-length="8.8cm"/>
	
	<!-- tabla B -->
	<fo:table table-layout="fixed">
	<fo:table-column column-width="4.8cm" />
	<fo:table-column column-width="4cm" />
	<fo:table-body>

	<fo:table-row>
	<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
	<xsl:call-template name="itemTitulo">
	<xsl:with-param name="titulo" select="'Ejecutivo Comercial :'"/>
	</xsl:call-template>
	</fo:table-cell>
	<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
	<fo:block font-weight="bold" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="left">
	&#0160;<xsl:value-of select="info/ejecutivoComercial"/></fo:block>
	</fo:table-cell>

	</fo:table-row>  
	


	<fo:table-row>
	<fo:table-cell border="0.5pt solid {$lineas}">
	<xsl:call-template name="itemTitulo">
	<xsl:with-param name="titulo" select="'Moneda :'"/>
	</xsl:call-template>
	</fo:table-cell>
	<fo:table-cell border="0.5pt solid {$lineas}">
	<fo:block font-weight="bold" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="left">
	&#0160;<xsl:value-of select="info/moneda"/></fo:block>
	</fo:table-cell>

	</fo:table-row>  

	<fo:table-row>
	<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
	<xsl:call-template name="itemTitulo">
	<xsl:with-param name="titulo" select="'Fecha de Curse :'"/>
	</xsl:call-template>
	</fo:table-cell>
	<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
	<fo:block font-weight="bold" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="left">
	&#0160;<xsl:value-of select="info/fechaCurse"/></fo:block>
	</fo:table-cell>

	</fo:table-row>  

	<fo:table-row>
	<fo:table-cell border="0.5pt solid {$lineas}">
	<xsl:call-template name="itemTitulo">
	<xsl:with-param name="titulo" select="'Fecha Pr�xima Cuota :'"/>
	</xsl:call-template>
	</fo:table-cell>
	<fo:table-cell border="0.5pt solid {$lineas}">
	<fo:block font-weight="bold" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="left">
	&#0160;<xsl:value-of select="info/fechaProximaCuota"/></fo:block>
	</fo:table-cell>

	</fo:table-row>  

	<fo:table-row>
	<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
	<xsl:call-template name="itemTitulo">
	<xsl:with-param name="titulo" select="'Fecha Vencimiento M�ximo :'"/>
	</xsl:call-template>
	</fo:table-cell>
	<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
	<fo:block font-weight="bold" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="left">
	&#0160;<xsl:value-of select="info/fechaVencimientoMaximo"/></fo:block>
	</fo:table-cell>

	</fo:table-row>  

	<fo:table-row>
	<fo:table-cell border="0.5pt solid {$lineas}">
	<xsl:call-template name="itemTitulo">
	<xsl:with-param name="titulo" select="'Cuenta Abono :'"/>
	</xsl:call-template>
	</fo:table-cell>
	<fo:table-cell border="0.5pt solid {$lineas}">
	<fo:block font-weight="bold" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="left">
	&#0160;<xsl:value-of select="info/cuentaAbono"/></fo:block>
	</fo:table-cell>

	</fo:table-row>  

	<fo:table-row>
	<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
	<xsl:call-template name="itemTitulo">
	<xsl:with-param name="titulo" select="'Cuenta Cargo :'"/>
	</xsl:call-template>
	</fo:table-cell>
	<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
	<fo:block font-weight="bold" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="left">
	&#0160;<xsl:value-of select="info/cuentaCargo"/></fo:block>
	</fo:table-cell>

	</fo:table-row>  

	<fo:table-row>
	<fo:table-cell border="0.5pt solid {$lineas}">
	<xsl:call-template name="itemTitulo">
	<xsl:with-param name="titulo" select="'Tipo Cargo :'"/>
	</xsl:call-template>
	</fo:table-cell>
	<fo:table-cell border="0.5pt solid {$lineas}">
	<fo:block font-weight="bold" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="left">
	&#0160;<xsl:value-of select="info/tipoCargo"/></fo:block>
	</fo:table-cell>

	</fo:table-row>  

	<fo:table-row>
	<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
	<xsl:call-template name="itemTitulo">
	<xsl:with-param name="titulo" select="'Seguro Desgravamen :'"/>
	</xsl:call-template>
	</fo:table-cell>
	<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
	<fo:block font-weight="bold" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="left">
	&#0160;<xsl:value-of select="info/seguroDesgravamen"/></fo:block>
	</fo:table-cell>

	</fo:table-row>  

	<fo:table-row>
	<fo:table-cell border="0.5pt solid {$lineas}">
	<xsl:call-template name="itemTitulo">
	<xsl:with-param name="titulo" select="'Meses de Gracia :'"/>
	</xsl:call-template>
	</fo:table-cell>
	<fo:table-cell border="0.5pt solid {$lineas}">
	<fo:block font-weight="bold" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="left">
	&#0160;<xsl:value-of select="info/mesesGracia"/></fo:block>
	</fo:table-cell>

	</fo:table-row>  

	<fo:table-row>
	<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
	<xsl:call-template name="itemTitulo">
	<xsl:with-param name="titulo" select="'Tipo de Cancelacion :'"/>
	</xsl:call-template>
	</fo:table-cell>
	<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
	<fo:block font-weight="bold" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="left">
	&#0160;<xsl:value-of select="info/tipoCancelacion"/></fo:block>
	</fo:table-cell>

	</fo:table-row>  

	<fo:table-row>
	<fo:table-cell border="0.5pt solid {$lineas}">
	<xsl:call-template name="itemTitulo">
	<xsl:with-param name="titulo" select="'Nombre Deudor Indirecto :'"/>
	</xsl:call-template>
	</fo:table-cell>
	<fo:table-cell border="0.5pt solid {$lineas}">
	<fo:block font-weight="bold" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="left">
	&#0160;<xsl:value-of select="info/nombreDeudorIndirecto"/></fo:block>
	</fo:table-cell>

	</fo:table-row>  

	<fo:table-row>

	<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
	<fo:block font-weight="bold" color="{$txt-azul-claro}" space-after="5.5mm">
	</fo:block>
	</fo:table-cell>

	<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
	<fo:block font-weight="bold" color="{$txt-azul-claro}" >
	</fo:block>
	</fo:table-cell>

	</fo:table-row>





	

	<fo:table-row>

	<fo:table-cell border="0.5pt solid {$lineas}">
	<fo:block font-weight="bold" color="{$txt-azul-claro}" space-after="5.5mm">
	</fo:block>
	</fo:table-cell>

	<fo:table-cell border="0.5pt solid {$lineas}">
	<fo:block font-weight="bold" color="{$txt-azul-claro}" >
	</fo:block>
	</fo:table-cell>

	</fo:table-row>


	</fo:table-body>
	</fo:table>
	</fo:block>
	<!-- tabla B -->
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
		<xsl:value-of select="info/dirImagen"/>01-bullet2-rj.gif
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





<xsl:template name="itemTitulo">
<xsl:param name="titulo"/> 

	<fo:block font-size="9pt" font-weight="normal" color="{$txt-azul-claro}" padding-before="1mm" padding-after="1mm" text-align="left">
	<fo:table table-layout="fixed">
	<fo:table-column column-width="0.5cm" />
	<fo:table-column column-width="8cm" />
	<fo:table-body>

	<fo:table-row>
	<fo:table-cell padding-left="2mm" padding-before="1mm" >
	
		<fo:external-graphic>
	 	    <xsl:attribute name="src">
			<xsl:value-of select="info/dirImagen"/>01-bullet1-rj.gif
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







