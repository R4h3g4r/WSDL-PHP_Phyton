<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format">

<xsl:param name="RUTAIMAGEN"/>

<xsl:variable name="bgcolor">#E7E5EF</xsl:variable>
<xsl:variable name="lineas">#CCCCCC</xsl:variable>
<xsl:variable name="txt">#000000</xsl:variable>
<xsl:variable name="txt-azul-claro">#0061A5</xsl:variable>
<xsl:variable name="txt-azul-oscuro">#1069B5</xsl:variable>
<xsl:variable name="bg-amarillo">#FFFFDE</xsl:variable>
<xsl:variable name="bg-plomo">#E7E7E7</xsl:variable>

<xsl:template match="/">
<fo:root xmlns:fo="http://www.w3.org/1999/XSL/Format">





<!-- propiedades pagina -->
<fo:layout-master-set>
	<fo:simple-page-master master-name="pagina"
	page-height="28cm"
	page-width="24cm"
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
	    <fo:external-graphic src="url({$RUTAIMAGEN}/02-logo-bci.gif)"/>
	</fo:block>
	<!-- imagen bci -->
</fo:static-content>

<fo:static-content flow-name="xsl-region-after">
	<!-- Separador -->
	<fo:block space-after="1mm">
		<fo:leader color="{$lineas}" leader-pattern="rule" leader-length="20cm"/>
	</fo:block>
	<!-- Separador -->
	<fo:block font-size="9pt" font-weight="normal" space-after="1mm" text-align="left" color="{$txt}">
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
	<fo:table-column column-width="15cm"/>
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
	<fo:leader color="{$lineas}" leader-pattern="rule" leader-length="20cm"/>
</fo:block>

<!-- Separador -->




<!-- Cartola -->
<fo:block>
	<fo:table table-layout="fixed">
	<fo:table-column column-width="5cm"/>
	<fo:table-column column-width="15cm"/>
	<fo:table-body>
		<fo:table-row >
		<fo:table-cell >

			<!-- titulo -->
				<fo:block font-size="15pt" font-weight="bold" text-align="left" color="{$txt-azul-claro}">
					Estado de Cuenta
				</fo:block>
			<!-- titulo -->
		
		</fo:table-cell>
		<fo:table-cell >
	
			<!-- nro tarjeta -->
				<fo:block font-size="10pt" text-align="right" color="{$txt}">
				<fo:inline font-weight="normal">N� Tarjeta: </fo:inline>
				<fo:inline font-weight="bold"><xsl:value-of select="info/nroTarjeta"/></fo:inline>
				</fo:block>
			<!-- nro tarjeta -->

		</fo:table-cell>
		</fo:table-row>
	</fo:table-body>
	</fo:table>
</fo:block>
<!-- Cartola -->




<!-- Separador -->
<fo:block>
	<fo:leader color="{$lineas}" leader-pattern="rule" leader-length="20cm"/>
</fo:block>
<!-- Separador -->




<!-- tabla detalle -->
<fo:block font-size="7pt" space-after="1mm" text-align="right">
<fo:table table-layout="fixed">
<fo:table-column column-width="5cm" />
<fo:table-column column-width="3cm" />
<fo:table-column column-width="7cm" />
<fo:table-column column-width="5cm" />
                           
	<fo:table-body>
	<fo:table-row>

		<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
		<fo:block font-weight="normal" color="{$txt}" padding-before="2mm" padding-after="2mm" text-align="center">
		N� del Documento</fo:block>
		</fo:table-cell>

		<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
		<fo:block font-weight="normal" color="{$txt}" padding-before="2mm" padding-after="2mm" text-align="center">
		Fecha Compra</fo:block>
		</fo:table-cell>

		<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
		<fo:block font-weight="normal" color="{$txt}" padding-before="2mm" padding-after="2mm" text-align="center">
		Descripci�n</fo:block>
		</fo:table-cell>

		<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
		<fo:block font-weight="normal" color="{$txt}" padding-before="2mm" padding-after="2mm" text-align="center">
		Monto en Pesos</fo:block>
		</fo:table-cell>

	</fo:table-row>
	
	<xsl:for-each select="info/detalle">
	<fo:table-row text-align="right">

		<fo:table-cell border="0.5pt solid {$lineas}">
		<fo:block font-weight="normal" padding-before="1mm" padding-after="1mm" text-align="left">
		&#0160;<xsl:value-of select="numeroDocumento"/>
		</fo:block>
		</fo:table-cell>

		<fo:table-cell border="0.5pt solid {$lineas}">
		<fo:block font-weight="normal" padding-before="1mm" padding-after="1mm" text-align="left">
		&#0160;<xsl:value-of select="fechaCompra"/>
		</fo:block>
		</fo:table-cell>

		<fo:table-cell border="0.5pt solid {$lineas}">
		<fo:block font-weight="normal" padding-before="1mm" padding-after="1mm" text-align="left">
		&#0160;<xsl:value-of select="descripcion"/>
		</fo:block>
		</fo:table-cell>

		<fo:table-cell border="0.5pt solid {$lineas}">
		<fo:block font-weight="normal" padding-before="1mm" padding-after="1mm" text-align="left">
		&#0160;<xsl:value-of select="montoPesos"/>
		</fo:block>
		</fo:table-cell>


	</fo:table-row>
	</xsl:for-each>
                            
	</fo:table-body>
</fo:table>
</fo:block>
<!-- tabla detalle -->




<!-- sin movimientos -->
	<fo:block font-size="7pt" font-weight="normal" text-align="left" color="{$txt}">
	<xsl:value-of select="info/sinMovimiento"/>
	</fo:block>
<!-- sin movimientos -->





<!-- Separador -->
<fo:block space-after="1mm">
<fo:leader color="{$lineas}" leader-pattern="rule" leader-length="12.8cm"/>&#0160;&#0160;
<fo:leader color="{$lineas}" leader-pattern="rule" leader-length="6.8cm"/>
</fo:block>
<!-- Separador -->




<!-- division -->
<fo:block>
	<fo:table table-layout="fixed" >
	<fo:table-column column-width="12.8cm" />
	<fo:table-column column-width="2mm" />
	<fo:table-column column-width="0.1mm" />
	<fo:table-column column-width="2mm" />
	<fo:table-column column-width="6.8cm" />

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






</xsl:template>





<xsl:template name="ladoizquierdo">
	<fo:block font-size="9pt" font-weight="bold" space-after="1mm" text-align="left" color="black">

	<xsl:call-template name="subTitulo">
		<xsl:with-param name="titulo" select="'Resumen de Cuenta'"/>
 	</xsl:call-template>

	<fo:leader color="{$lineas}" leader-pattern="rule" leader-length="12.8cm"/>
	
	<!-- tabla A -->
	<fo:table table-layout="fixed">
	<fo:table-column column-width="4.4cm" />
	<fo:table-column column-width="2cm" />
	<fo:table-column column-width="4.4cm" />
	<fo:table-column column-width="2cm" />
	<fo:table-body>

	<fo:table-row>
	<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
	<fo:block font-weight="normal" color="{$txt-azul-claro}" padding-before="1mm" padding-after="1mm" text-align="left">
	<xsl:call-template name="itemTitulo">
		<xsl:with-param name="titulo" select="'Deuda en Mora :'"/>
 	</xsl:call-template>
	</fo:block>
	</fo:table-cell>

	<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
	<fo:block font-weight="bold" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="left">
	&#0160;<xsl:value-of select="info/deudaMora"/></fo:block>
	</fo:table-cell>

	<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
	<fo:block font-weight="normal" color="{$txt-azul-claro}" padding-before="1mm" padding-after="1mm" text-align="left">
	<xsl:call-template name="itemTitulo">
		<xsl:with-param name="titulo" select="'Intereses de Mora :'"/>
 	</xsl:call-template>
	</fo:block>
	</fo:table-cell>

	<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
	<fo:block font-weight="bold" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="left">
	&#0160;<xsl:value-of select="info/interesMora"/></fo:block>
	</fo:table-cell>

	</fo:table-row>  
	<fo:table-row>

	<fo:table-cell border="0.5pt solid {$lineas}">
	<fo:block font-weight="normal" color="{$txt-azul-claro}" padding-before="1mm" padding-after="1mm" text-align="left">
	<xsl:call-template name="itemTitulo">
		<xsl:with-param name="titulo" select="'Deuda Anterior :'"/>
 	</xsl:call-template>
	</fo:block>
	</fo:table-cell>

	<fo:table-cell border="0.5pt solid {$lineas}">
	<fo:block font-weight="bold" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="left">
	&#0160;<xsl:value-of select="info/deudaAnterior"/></fo:block>
	</fo:table-cell>

	<fo:table-cell border="0.5pt solid {$lineas}">
	<fo:block font-weight="normal" color="{$txt-azul-claro}" padding-before="1mm" padding-after="1mm" text-align="left">
	<xsl:call-template name="itemTitulo">
		<xsl:with-param name="titulo" select="'Impuestos :'"/>
 	</xsl:call-template>
	</fo:block>
	</fo:table-cell>

	<fo:table-cell border="0.5pt solid {$lineas}">
	<fo:block font-weight="bold" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="left">
	&#0160;<xsl:value-of select="info/impuestos"/></fo:block>
	</fo:table-cell>

	</fo:table-row>
	<fo:table-row>

	<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
	<fo:block font-weight="normal" color="{$txt-azul-claro}" padding-before="1mm" padding-after="1mm" text-align="left">
	<xsl:call-template name="itemTitulo">
		<xsl:with-param name="titulo" select="'Compras y Cargos :'"/>
 	</xsl:call-template>
	</fo:block>
	</fo:table-cell>

	<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
	<fo:block font-weight="bold" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="left">
	&#0160;<xsl:value-of select="info/comprasYCargos"/></fo:block>
	</fo:table-cell>

	<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
	<fo:block font-weight="normal" color="{$txt-azul-claro}" padding-before="1mm" padding-after="1mm" text-align="left">
	<xsl:call-template name="itemTitulo">
		<xsl:with-param name="titulo" select="'Facturado Total Per�odo :'"/>
 	</xsl:call-template>
	</fo:block>
	</fo:table-cell>

	<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
	<fo:block font-weight="bold" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="left">
	&#0160;<xsl:value-of select="info/factTotalPeriodo"/></fo:block>
	</fo:table-cell>

	</fo:table-row>
	<fo:table-row>

	<fo:table-cell border="0.5pt solid {$lineas}">
	<fo:block font-weight="normal" color="{$txt-azul-claro}" padding-before="1mm" padding-after="1mm" text-align="left">
	<xsl:call-template name="itemTitulo">
		<xsl:with-param name="titulo" select="'Pagos Y Abonos :'"/>
 	</xsl:call-template>
	</fo:block>
	</fo:table-cell>

	<fo:table-cell border="0.5pt solid {$lineas}">
	<fo:block font-weight="bold" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="left">
	&#0160;<xsl:value-of select="info/pagosYAbonos"/>
	</fo:block>
	</fo:table-cell>

	<fo:table-cell border="0.5pt solid {$lineas}">
	<fo:block font-weight="normal" color="{$txt-azul-claro}" padding-before="1mm" padding-after="1mm" text-align="left">
	<xsl:call-template name="itemTitulo">
		<xsl:with-param name="titulo" select="'Pago M�nimo :'"/>
 	</xsl:call-template>
	</fo:block>
	</fo:table-cell>

	<fo:table-cell border="0.5pt solid {$lineas}">
	<fo:block font-weight="bold" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="left">
	&#0160;<xsl:value-of select="info/pagoMinimo"/>
	</fo:block>
	</fo:table-cell>

	</fo:table-row>
	<fo:table-row>

	<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
	<fo:block font-weight="normal" color="{$txt-azul-claro}" padding-before="1mm" padding-after="1mm" text-align="left">
	<xsl:call-template name="itemTitulo">
		<xsl:with-param name="titulo" select="'Intereses Corrientes :'"/>
 	</xsl:call-template>
	</fo:block>
	</fo:table-cell>

	<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
	<fo:block font-weight="bold" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="left">
	&#0160;<xsl:value-of select="info/interesesCorrientes"/>
	</fo:block>
	</fo:table-cell>

	<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
	<fo:block font-weight="normal" color="{$txt-azul-claro}" padding-before="1mm" padding-after="1mm" text-align="left">
	<xsl:call-template name="itemTitulo">
		<xsl:with-param name="titulo" select="'Cancelar Hasta :'"/>
 	</xsl:call-template>
	</fo:block>
	</fo:table-cell>

	<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
	<fo:block font-weight="bold" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="left">
	&#0160;<xsl:value-of select="info/cancelarHasta"/>
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

	<xsl:call-template name="subTitulo">
		<xsl:with-param name="titulo" select="'Informativos'"/>
 	</xsl:call-template>
	
	<fo:leader color="{$lineas}" leader-pattern="rule" leader-length="6.8cm"/>
	
	<!-- tabla B -->
	<fo:table table-layout="fixed">
	<fo:table-column column-width="4.6cm" />
	<fo:table-column column-width="2.2cm" />
	<fo:table-body>

		<fo:table-row>
		<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
		<fo:block font-weight="normal" color="{$txt-azul-claro}" padding-before="1mm" padding-after="1mm" text-align="left">
		<xsl:call-template name="itemTitulo">
			<xsl:with-param name="titulo" select="'Saldo en Cuotas Contado :'"/>
 		</xsl:call-template>
		</fo:block>
		</fo:table-cell>

		<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
		<fo:block font-weight="bold" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="left">
		&#0160;<xsl:value-of select="info/saldoCuotaContado"/></fo:block>
		</fo:table-cell>

		</fo:table-row>  
		<fo:table-row>

		<fo:table-cell border="0.5pt solid {$lineas}">
		<fo:block font-weight="normal" color="{$txt-azul-claro}" padding-before="1mm" padding-after="1mm" text-align="left">
		<xsl:call-template name="itemTitulo">
			<xsl:with-param name="titulo" select="'Saldo en Cuotas Normales :'"/>
 		</xsl:call-template>
		</fo:block>
		</fo:table-cell>

		<fo:table-cell border="0.5pt solid {$lineas}">
		<fo:block font-weight="bold" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="left">
		&#0160;<xsl:value-of select="info/saldoCuotaNormal"/>
		</fo:block>
		</fo:table-cell>

		</fo:table-row>
		<fo:table-row>

		<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
		<fo:block font-weight="normal" color="{$txt-azul-claro}" padding-before="1mm" padding-after="1mm" text-align="left">
		<xsl:call-template name="itemTitulo">
			<xsl:with-param name="titulo" select="'Deuda Total :'"/>
 		</xsl:call-template>
		</fo:block>
		</fo:table-cell>

		<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
		<fo:block font-weight="bold" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="left">
		&#0160;<xsl:value-of select="info/deudaTotal"/>
		</fo:block>
		</fo:table-cell>

		</fo:table-row>
		<fo:table-row>

		<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}" number-columns-spanned="2">
		<fo:block font-weight="bold" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="left">
		<xsl:call-template name="itemTitulo">
			<xsl:with-param name="titulo" select="'Pr�ximo Cobro de Administraci�n :'"/>
 		</xsl:call-template>
		</fo:block>
		</fo:table-cell>

		<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
		<fo:block font-weight="bold" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="left">
		
		</fo:block>
		</fo:table-cell>

		</fo:table-row>
		<fo:table-row>

		<fo:table-cell background-color="{$bg-amarillo}" border="0.5pt solid {$lineas}">
		<fo:block font-weight="normal" color="{$txt-azul-claro}" padding-before="1mm" padding-after="1mm" text-align="left">
		<xsl:call-template name="itemTitulo">
			<xsl:with-param name="titulo" select="'Consumo del Mes $:'"/>
 		</xsl:call-template>
		</fo:block>
		</fo:table-cell>

		<fo:table-cell background-color="{$bg-amarillo}" border="0.5pt solid {$lineas}">
		<fo:block font-weight="bold" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="left">
		&#0160;<xsl:value-of select="info/consumoMes"/>
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
	<fo:external-graphic height="1.2mm" width="1.2mm"  src="url({$RUTAIMAGEN}/01-bullet2-rj.gif)"/>
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
	<fo:external-graphic height="1mm" width="1mm" src="url({$RUTAIMAGEN}/01-bullet1-rj.gif)"/>
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







