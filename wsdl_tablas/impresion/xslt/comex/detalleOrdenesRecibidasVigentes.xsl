<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format">

<xsl:variable name="bgcolor">#E7E5EF</xsl:variable>
<xsl:variable name="lineas">#CCCCCC</xsl:variable>
<xsl:variable name="txt">#000000</xsl:variable>
<xsl:variable name="txt-azul-claro">#0061A5</xsl:variable>
<xsl:variable name="txt-azul-oscuro">#1069B5</xsl:variable>
<xsl:variable name="txt-celeste">#D9E4EF</xsl:variable>

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
		<fo:region-body margin-top="2.5cm" margin-bottom="2.5cm" background-color="#ffffff"/> 
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
						<xsl:value-of select="comex/rutaImagen"/>02-logo-bci.gif
					</xsl:attribute>
				</fo:external-graphic>
			</fo:table-cell>
			<fo:table-cell padding-before="1cm">
				<fo:block font-size="9pt" font-weight="bold" space-after="1mm" text-align="right" color="{$txt}">
					<xsl:value-of select="comex/fechaImpresion"/>
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

<fo:block font-size="5pt" space-after="1mm">
	<fo:table table-layout="fixed">
	<fo:table-column column-width="13cm"/>
	<fo:table-column column-width="5cm"/>
	<fo:table-body>
		<fo:table-row>
		<fo:table-cell>

			<!-- nombre cliente -->
				<fo:block font-size="10pt" font-weight="bold" space-after="1mm" text-align="left" color="{$txt-azul-claro}">
					<xsl:value-of select="comex/nombre"/>
				</fo:block>
			<!-- nombre cliente -->
		
		</fo:table-cell>
		<fo:table-cell>
	
			<!-- rut cliente -->
				<fo:block font-size="10pt" font-weight="bold" space-after="1mm" text-align="right" color="{$txt}">
					<fo:inline color="{$txt}">RUT: </fo:inline>
					<fo:inline color="{$txt-azul-claro}"><xsl:value-of select="comex/rut"/></fo:inline>
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

<!-- Titulo -->
<fo:block>
	<fo:table table-layout="fixed">
	<fo:table-column column-width="18cm"/>
	<fo:table-body>
		<fo:table-row >
		<fo:table-cell >

			<!-- titulo -->
				<fo:block font-size="15pt" font-weight="bold" text-align="left" color="{$txt-azul-claro}">
					Ordenes Recibidas Vigentes / Detalle 
				</fo:block>
			<!-- titulo -->
		
		</fo:table-cell>

		</fo:table-row>
	</fo:table-body>
	</fo:table>
</fo:block>
<!-- titulo -->


<!-- Separador -->
<fo:block space-after="2mm">
	<fo:leader color="{$lineas}" leader-pattern="rule" leader-length="18cm"/>
</fo:block>
<!-- Separador -->
<!-- ejecutivo -->

<fo:block font-size="5pt" space-after="1mm">
	<fo:table table-layout="fixed">
	<fo:table-column column-width="10cm"/>
	<fo:table-column column-width="8cm"/>
	<fo:table-body>
		<fo:table-row>
		<fo:table-cell>

			<fo:block font-size="9pt" text-align="left" color="{$txt}">
			<fo:external-graphic height="1mm" width="1mm">
			<xsl:attribute name="src">
				<xsl:value-of select="comex/rutaImagen"/>01-bullet1-rj.gif
			</xsl:attribute>
			</fo:external-graphic>
			&#0160;
			<fo:inline font-weight="normal" space-before="30pt">Ejecutivo: </fo:inline>
			<fo:inline font-weight="bold"><xsl:value-of select="comex/ejecutivo"/></fo:inline>
			</fo:block>
				
		</fo:table-cell>
		<fo:table-cell>
	
			<fo:block font-size="9pt" text-align="left" color="{$txt}">
			<fo:inline font-weight="normal" space-before="30pt">Plataforma/Sucursal: </fo:inline>
			<fo:inline font-weight="bold"><xsl:value-of select="comex/oficina"/></fo:inline>
			</fo:block>

		</fo:table-cell>
		</fo:table-row>
	</fo:table-body>
	</fo:table>
</fo:block>

<!-- ejecutivo -->


<!-- Separador -->
<fo:block space-after="2mm">
	<fo:leader color="{$lineas}" leader-pattern="rule" leader-length="18cm"/>
</fo:block>
<!-- Separador -->



<!-- tabla 1 -->
<fo:block font-size="7pt" space-after="1mm" text-align="left">
<fo:table table-layout="fixed" table-border="0pt">
<fo:table-column column-width="9.3cm" />
<fo:table-column column-width="9.3cm" />
	<fo:table-body>

	<fo:table-row>

		<fo:table-cell border="0" text-align="left">
<!-- TABLA IZQUIERDA -->
		<xsl:call-template name="tablaIzquierda"/>
<!-- FIN TABLA IZQUIERDA -->
		</fo:table-cell>

		<fo:table-cell border="0" text-align="right">
<!-- TABLA DERECHA -->		
		<xsl:call-template name="tablaDerecha"/>
<!-- FIN TABLA DERECHA -->
		</fo:table-cell>
		
	</fo:table-row>

	</fo:table-body>
</fo:table>
</fo:block>

<fo:block space-after="5mm" space-before="1mm">
   <fo:leader color="{$lineas}" leader-pattern="rule" leader-length="18cm"/>
</fo:block>

<!-- Separador -->

<!-- Sub-Titulo -->
<fo:block>
	<fo:table table-layout="fixed">
	<fo:table-column column-width="18cm"/>
	<fo:table-body>
		<fo:table-row >
		<fo:table-cell >

			<!-- titulo -->
				<fo:block font-size="10pt" font-weight="bold" text-align="left" color="{$txt-azul-claro}">
					Beneficiario
				</fo:block>
			<!-- titulo -->
		
		</fo:table-cell>

		</fo:table-row>
	</fo:table-body>
	</fo:table>
</fo:block>
<!-- Sub-titulo -->
<!-- Tablas Inferiores -->
<fo:block font-size="7pt" space-after="1mm" text-align="left">
<fo:table table-layout="fixed" table-border="0pt">
<fo:table-column column-width="9.3cm" />
<fo:table-column column-width="9.3cm" />
	<fo:table-body>

	<fo:table-row>

		<fo:table-cell border="0" text-align="left">
<!-- TABLA IZQUIERDA -->
		<xsl:call-template name="tablaBeneficiarioIzquierda"/>
<!-- FIN TABLA IZQUIERDA -->
		</fo:table-cell>

		<fo:table-cell border="0" text-align="right">
<!-- TABLA DERECHA -->		
		<xsl:call-template name="tablaBeneficiarioDerecha"/>
<!-- FIN TABLA DERECHA -->
		</fo:table-cell>
		
	</fo:table-row>

	</fo:table-body>
</fo:table>
</fo:block>

<fo:block space-after="5mm" space-before="1mm">
   <fo:leader color="{$lineas}" leader-pattern="rule" leader-length="18cm"/>
</fo:block>

<!-- Sub-Titulo -->
<fo:block>
	<fo:table table-layout="fixed">
	<fo:table-column column-width="18cm"/>
	<fo:table-body>
		<fo:table-row >
		<fo:table-cell >

			<!-- titulo -->
				<fo:block font-size="10pt" font-weight="bold" text-align="left" color="{$txt-azul-claro}">
					Ordenante
				</fo:block>
			<!-- titulo -->
		
		</fo:table-cell>

		</fo:table-row>
	</fo:table-body>
	</fo:table>
</fo:block>
<!-- Sub-titulo -->
<!-- Tablas Inferiores -->
<fo:block font-size="7pt" space-after="1mm" text-align="left">
<fo:table table-layout="fixed" table-border="0pt">
<fo:table-column column-width="9.3cm" />
<fo:table-column column-width="9.3cm" />
	<fo:table-body>

	<fo:table-row>

		<fo:table-cell border="0" text-align="left">
<!-- TABLA IZQUIERDA -->
		<xsl:call-template name="tablaOrdenanteIzquierda"/>
<!-- FIN TABLA IZQUIERDA -->
		</fo:table-cell>

		<fo:table-cell border="0" text-align="right">
<!-- TABLA DERECHA -->		
		<xsl:call-template name="tablaOrdenanteDerecha"/>
<!-- FIN TABLA DERECHA -->
		</fo:table-cell>
		
	</fo:table-row>

	</fo:table-body>
</fo:table>
</fo:block>

<!-- Tablas Inferiores -->

</xsl:template>



<xsl:template name="tablaIzquierda">

		<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="center">
<fo:table table-layout="fixed">
<fo:table-column column-width="4.3cm" />
<fo:table-column column-width="4.4cm" />
	<fo:table-body>

	<fo:table-row background-color="{$bgcolor}">

		<fo:table-cell border="0.5pt solid {$lineas}">
		<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="left">
		Nº Operación : 
		</fo:block>
		</fo:table-cell>

		<fo:table-cell border="0.5pt solid {$lineas}">
		<fo:block font-weight="normal" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="right">
		&#0160;<xsl:value-of select="comex/estaOrdendePagoRecibida/operacionID"/>
		</fo:block>
		</fo:table-cell>
		
	</fo:table-row>

	<fo:table-row>

		<fo:table-cell border="0.5pt solid {$lineas}">
		<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="left">
		Fecha : 
		</fo:block>
		</fo:table-cell>

		<fo:table-cell border="0.5pt solid {$lineas}">
		<fo:block font-weight="normal" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="right">
		&#0160;<xsl:value-of select="comex/estaOrdendePagoRecibida/fechaInstruccion"/>
		</fo:block>
		</fo:table-cell>

	</fo:table-row>
	

	<fo:table-row background-color="{$bgcolor}">

		<fo:table-cell border="0.5pt solid {$lineas}">
		<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="left">
		Hora : 
		</fo:block>
		</fo:table-cell>

		<fo:table-cell border="0.5pt solid {$lineas}">
		<fo:block font-weight="normal" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="right">
		&#0160;<xsl:value-of select="comex/estaOrdendePagoRecibida/hora"/>
		</fo:block>
		</fo:table-cell>

	</fo:table-row>
	
	<fo:table-row>

		<fo:table-cell border="0.5pt solid {$lineas}">
		<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="left">
		Fecha de Recepción : 
		</fo:block>
		</fo:table-cell>

		<fo:table-cell border="0.5pt solid {$lineas}">
		<fo:block font-weight="normal" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="right">
		&#0160;<xsl:value-of select="comex/estaOrdendePagoRecibida/fechaRecepcion"/>
		</fo:block>
		</fo:table-cell>

	</fo:table-row>
	
	<fo:table-row background-color="{$bgcolor}">

		<fo:table-cell border="0.5pt solid {$lineas}">
		<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="left">
		Moneda :
		</fo:block>
		</fo:table-cell>

		<fo:table-cell border="0.5pt solid {$lineas}">
		<fo:block font-weight="normal" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="right">
		&#0160;<xsl:value-of select="comex/estaOrdendePagoRecibida/divisaMonto"/>
		</fo:block>
		</fo:table-cell>

	</fo:table-row>
	


	</fo:table-body>
</fo:table>
</fo:block>
</xsl:template>



<xsl:template name="tablaDerecha">

<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="center">
<fo:table table-layout="fixed">
<fo:table-column column-width="4.3cm" />
<fo:table-column column-width="4.4cm" />
	<fo:table-body>

	<fo:table-row background-color="{$bgcolor}">

		<fo:table-cell border="0.5pt solid {$lineas}">
		<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="left">
		Monto : 
		</fo:block>
		</fo:table-cell>

		<fo:table-cell border="0.5pt solid {$lineas}">
		<fo:block font-weight="normal" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="right">
		&#0160;<xsl:value-of select="comex/estaOrdendePagoRecibida/cifra_Monto"/>
		</fo:block>
		</fo:table-cell>
		
	</fo:table-row>

	<fo:table-row>

		<fo:table-cell border="0.5pt solid {$lineas}">
		<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="left">
		Fecha Valuta :  
		</fo:block>
		</fo:table-cell>

		<fo:table-cell border="0.5pt solid {$lineas}">
		<fo:block font-weight="normal" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="right">
		&#0160;<xsl:value-of select="comex/estaOrdendePagoRecibida/fechaValuta"/>
		</fo:block>
		</fo:table-cell>

	</fo:table-row>
	

	<fo:table-row background-color="{$bgcolor}">

		<fo:table-cell border="0.5pt solid {$lineas}">
		<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="left">
		Gastos por Cuenta de : 
		</fo:block>
		</fo:table-cell>

		<fo:table-cell border="0.5pt solid {$lineas}">
		<fo:block font-weight="normal" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="right">
		&#0160;<xsl:value-of select="comex/estaOrdendePagoRecibida/gastosPorCuentaDe"/>
		</fo:block>
		</fo:table-cell>

	</fo:table-row>
	
	<fo:table-row>

		<fo:table-cell border="0.5pt solid {$lineas}">
		<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="left">
		Forma de Cuenta de las Divisas : 
		</fo:block>
		</fo:table-cell>

		<fo:table-cell border="0.5pt solid {$lineas}">
		<fo:block font-weight="normal" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="right">
		&#0160;<xsl:value-of select="comex/estaOrdendePagoRecibida/formaEntregaDivisas"/>
		</fo:block>
		</fo:table-cell>

	</fo:table-row>
	
	<fo:table-row background-color="{$bgcolor}">

		<fo:table-cell border="0.5pt solid {$lineas}">
		<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="left">
		Estado : 
		</fo:block>
		</fo:table-cell>

		<fo:table-cell border="0.5pt solid {$lineas}">
		<fo:block font-weight="normal" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="right">
		&#0160;<xsl:value-of select="comex/estaOrdendePagoRecibida/estado"/>
		</fo:block>
		</fo:table-cell>

	</fo:table-row>
	
	<fo:table-row>

		<fo:table-cell border="0.5pt solid {$lineas}">
		<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="left">
		Observaciones : 
		</fo:block>
		</fo:table-cell>

		<fo:table-cell border="0.5pt solid {$lineas}">
		<fo:block font-weight="normal" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="right">
		&#0160;<xsl:value-of select="comex/estaOrdendePagoRecibida/observaciones"/>
		</fo:block>
		</fo:table-cell>

	</fo:table-row>
	
	
	

	</fo:table-body>
</fo:table>
</fo:block>

</xsl:template>

<!-- Tablas Beneficiario -->
<xsl:template name="tablaBeneficiarioIzquierda">

		<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="center">
<fo:table table-layout="fixed">
<fo:table-column column-width="4.3cm" />
<fo:table-column column-width="4.4cm" />
	<fo:table-body>

	<fo:table-row background-color="{$bgcolor}">

		<fo:table-cell border="0.5pt solid {$lineas}">
		<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="left">
		Nombre : 
		</fo:block>
		</fo:table-cell>

		<fo:table-cell border="0.5pt solid {$lineas}">
		<fo:block font-weight="normal" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="right">
		&#0160;<xsl:value-of select="comex/estaOrdendePagoRecibida/beneficiarioNombre"/>
		</fo:block>
		</fo:table-cell>
		
	</fo:table-row>

	<fo:table-row>

		<fo:table-cell border="0.5pt solid {$lineas}">
		<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="left">
		Direccion : 
		</fo:block>
		</fo:table-cell>

		<fo:table-cell border="0.5pt solid {$lineas}">
		<fo:block font-weight="normal" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="right">
		&#0160;<xsl:value-of select="comex/estaOrdendePagoRecibida/beneficiarioDireccion"/>
		</fo:block>
		</fo:table-cell>

	</fo:table-row>
	

	<fo:table-row background-color="{$bgcolor}">

		<fo:table-cell border="0.5pt solid {$lineas}">
		<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="left">
		Ciudad : 
		</fo:block>
		</fo:table-cell>

		<fo:table-cell border="0.5pt solid {$lineas}">
		<fo:block font-weight="normal" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="right">
		&#0160;<xsl:value-of select="comex/estaOrdendePagoRecibida/beneficiarioCiudad"/>
		</fo:block>
		</fo:table-cell>

	</fo:table-row>
	
	
	


	</fo:table-body>
</fo:table>
</fo:block>
</xsl:template>


<xsl:template name="tablaBeneficiarioDerecha">

<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="center">
<fo:table table-layout="fixed">
<fo:table-column column-width="4.3cm" />
<fo:table-column column-width="4.4cm" />
	<fo:table-body>

	<fo:table-row background-color="{$bgcolor}">

		<fo:table-cell border="0.5pt solid {$lineas}">
		<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="left">
		País : 
		</fo:block>
		</fo:table-cell>

		<fo:table-cell border="0.5pt solid {$lineas}">
		<fo:block font-weight="normal" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="right">
		&#0160;<xsl:value-of select="comex/estaOrdendePagoRecibida/beneficiarioPais"/>
		</fo:block>
		</fo:table-cell>
		
	</fo:table-row>

	<fo:table-row>

		<fo:table-cell border="0.5pt solid {$lineas}">
		<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="left">
		Cuenta Corriente :  
		</fo:block>
		</fo:table-cell>

		<fo:table-cell border="0.5pt solid {$lineas}">
		<fo:block font-weight="normal" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="right">
		&#0160;<xsl:value-of select="comex/estaOrdendePagoRecibida/beneficiarioCuentaCorriente"/>
		</fo:block>
		</fo:table-cell>

	</fo:table-row>
	


	
	
	

	</fo:table-body>
</fo:table>
</fo:block>

</xsl:template>
<!-- Fin Tablas Beneficiario -->

<!-- Tablas Ordenante -->
<xsl:template name="tablaOrdenanteIzquierda">

		<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="center">
<fo:table table-layout="fixed">
<fo:table-column column-width="4.3cm" />
<fo:table-column column-width="4.4cm" />
	<fo:table-body>

	<fo:table-row background-color="{$bgcolor}">

		<fo:table-cell border="0.5pt solid {$lineas}">
		<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="left">
		Nombre : 
		</fo:block>
		</fo:table-cell>

		<fo:table-cell border="0.5pt solid {$lineas}">
		<fo:block font-weight="normal" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="right">
		&#0160;<xsl:value-of select="comex/estaOrdendePagoRecibida/ordenanteNombre"/>
		</fo:block>
		</fo:table-cell>
		
	</fo:table-row>

	<fo:table-row>

		<fo:table-cell border="0.5pt solid {$lineas}">
		<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="left">
		Direccion : 
		</fo:block>
		</fo:table-cell>

		<fo:table-cell border="0.5pt solid {$lineas}">
		<fo:block font-weight="normal" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="right">
		&#0160;<xsl:value-of select="comex/estaOrdendePagoRecibida/ordenanteDireccion"/>
		</fo:block>
		</fo:table-cell>

	</fo:table-row>
	

	<fo:table-row background-color="{$bgcolor}">

		<fo:table-cell border="0.5pt solid {$lineas}">
		<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="left">
		Ciudad : 
		</fo:block>
		</fo:table-cell>

		<fo:table-cell border="0.5pt solid {$lineas}">
		<fo:block font-weight="normal" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="right">
		&#0160;<xsl:value-of select="comex/estaOrdendePagoRecibida/ordenanteCiudad"/>
		</fo:block>
		</fo:table-cell>

	</fo:table-row>
	
	
	


	</fo:table-body>
</fo:table>
</fo:block>
</xsl:template>


<xsl:template name="tablaOrdenanteDerecha">

<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="center">
<fo:table table-layout="fixed">
<fo:table-column column-width="4.3cm" />
<fo:table-column column-width="4.4cm" />
	<fo:table-body>

	<fo:table-row background-color="{$bgcolor}">

		<fo:table-cell border="0.5pt solid {$lineas}">
		<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="left">
		País : 
		</fo:block>
		</fo:table-cell>

		<fo:table-cell border="0.5pt solid {$lineas}">
		<fo:block font-weight="normal" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="right">
		&#0160;<xsl:value-of select="comex/estaOrdendePagoRecibida/ordenantePais"/>
		</fo:block>
		</fo:table-cell>
		
	</fo:table-row>

	<fo:table-row>

		<fo:table-cell border="0.5pt solid {$lineas}">
		<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="left">
		Banco :  
		</fo:block>
		</fo:table-cell>

		<fo:table-cell border="0.5pt solid {$lineas}">
		<fo:block font-weight="normal" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="right">
		&#0160;<xsl:value-of select="comex/estaOrdendePagoRecibida/ordenanteBanco"/>
		</fo:block>
		</fo:table-cell>

	</fo:table-row>
	

	
	
	
	

	</fo:table-body>
</fo:table>
</fo:block>

</xsl:template>
<!-- Fin Tablas Ordenantes -->


</xsl:stylesheet>
