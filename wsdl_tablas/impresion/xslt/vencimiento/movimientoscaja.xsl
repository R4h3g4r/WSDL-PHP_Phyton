<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format">

	<xsl:variable name="selloBCI">/dominiosWLS/dominioBCI/extras/workstationpdf/imagenes/somosdiferentes.gif</xsl:variable>

	<xsl:template match="/">
		<fo:root xmlns:fo="http://www.w3.org/1999/XSL/Format">
			<!-- Propiedades pagina -->
			<fo:layout-master-set>
				<fo:simple-page-master master-name="pagina"
					page-height="50cm"
					page-width="25.5cm"
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
			<fo:page-sequence master-reference="pagina" initial-page-number="2" language="en" country="us" >
				<fo:static-content flow-name="xsl-region-before">

				</fo:static-content>

				<fo:flow flow-name="xsl-region-body">
				<xsl:call-template name="tarjetaCredito" />
				</fo:flow>
			</fo:page-sequence> 
		</fo:root>
	</xsl:template>
	<xsl:template name="tarjetaCredito">
	
	<fo:block font-weight="bold" space-after="0mm" space-before="10mm" font-size="16pt" background-color="#DFDFDF">
	<fo:block space-after="5mm" />
	<!-- titulo PDF -->
&#0160;&#0160;&#0160;&#0160;Cartola Cuenta Corriente Mercantil	

&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;
	&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;
	&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;
	&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;
	</fo:block>
	<fo:block border="1pt solid"> <!---gran bloque-->

<fo:block space-after="10mm" />
<fo:table table-layout="fixed" width="19cm" border="2mm"  >
<fo:table-column column-width="10cm"  /> <!-- declaracion columna 1 -->
<fo:table-column column-width="4cm"  /><!-- declaracion columna 2-->
<fo:table-column column-width="8.3cm"  background-image="url({$selloBCI})" background-repeat="no-repeat"   /><!-- declaracion columna 3 -->
<fo:table-body>

	<fo:table-row background-color="" >
	
	<fo:table-cell >
	<fo:block font-weight="lighter" text-align="right" space-after="5mm" font-size="14pt" >
	Cliente : <xsl:value-of select="movimientoscajas/nombrecliente" />
	</fo:block>
	</fo:table-cell>
	<fo:table-cell>
	</fo:table-cell>

	</fo:table-row>
	<fo:table-row background-color="" space-after="5mm">
	<fo:table-cell>
		<fo:block font-weight="lighter"  text-align="right" space-after="5mm" font-size="14pt" >
	Rut : <xsl:value-of select="movimientoscajas/rutcliente" />
	</fo:block>
	
	</fo:table-cell>
	<fo:table-cell/>
	<!--<fo:table-cell background-image="url({$selloBCI})" background-repeat="no-repeat" height="1.5cm" >
		&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;
	&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;
	&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;
	
	</fo:table-cell>	-->
<fo:table-cell>
</fo:table-cell>	

	
	</fo:table-row>
	<fo:table-row>
	</fo:table-row>
	<fo:table-row background-color="" space-after="5mm">
	<fo:table-cell>
		<fo:block font-weight="lighter"  text-align="right" space-after="5mm" font-size="14pt" >
	Fecha : <xsl:value-of select="movimientoscajas/fechacreacion" />
	</fo:block>
	<!-- crear otra tabla para la imagen -->
</fo:table-cell>
		
	<fo:table-cell >
	</fo:table-cell>
		<fo:table-cell >
	</fo:table-cell>
		
	</fo:table-row>
	
	</fo:table-body>
</fo:table>
	<!--subtitulo PDF -->

<fo:block space-after="10mm" />
	<fo:table table-layout="fixed" width="21.4cm"   >
<fo:table-column column-width="3cm"  /> <!-- declaracion columna 1 -->
<fo:table-column column-width="3cm"  /><!-- declaracion columna 2-->
<fo:table-column column-width="3cm" /><!-- declaracion columna 3 -->
<fo:table-column column-width="3cm"  /><!-- declaracion columna 4 -->
<fo:table-column column-width="3cm" /><!-- declaracion columna 5 -->
<fo:table-column column-width="3cm"  /><!-- declaracion columna 6 -->
<fo:table-column column-width="3cm"  /><!-- declaracion columna 7 -->
<!-- Columna que contiene el sello BCI -->


	<fo:table-body>
	<fo:table-row background-color="#DFDFDF" space-after="10mm">
	
	<fo:table-cell >
		<fo:block font-weight="normal"  padding-before="1mm" padding-after="0mm" text-align="center">
		<!--Columna 1 --> 
		Fecha
		</fo:block>
		</fo:table-cell>

		<fo:table-cell >
		<fo:block font-weight="normal" padding-before="1mm" padding-after="0mm" text-align="center">
		<!-- Columna 2 -->
		Descripción
		</fo:block>
		</fo:table-cell>
		
		<fo:table-cell >
		<fo:block font-weight="normal" padding-before="1mm" padding-after="0mm" text-align="center">
		<!-- Columna 3 -->
		Folio
		</fo:block>
		</fo:table-cell>
		
		<fo:table-cell >
		<fo:block font-weight="normal" padding-before="1mm" padding-after="0mm" text-align="center">
		<!-- Columna 4 -->
		Abono
		</fo:block>
		</fo:table-cell>
		
		<fo:table-cell >
		<fo:block font-weight="normal" padding-before="1mm" padding-after="0mm" text-align="center">
		<!-- Columna 5 -->
		Cargo
		</fo:block>
		</fo:table-cell>
			<fo:table-cell >
		<fo:block font-weight="normal" padding-before="1mm" padding-after="0mm" text-align="center">
		<!-- Columna 6 -->
		Instrumento
		</fo:block>
		</fo:table-cell>
		<fo:table-cell >
		<fo:block font-weight="normal" padding-before="1mm" padding-after="0mm" text-align="center">
		<!-- Columna 6 -->
		Saldo
		</fo:block>
		</fo:table-cell>
		
		</fo:table-row>
		<xsl:for-each select="movimientoscajas/movimiento">
		<fo:table-row text-align="left"  >
		<fo:table-cell >
					<fo:block font-weight="lighter"  text-align="center">
					<!-- celda de fecha -->
					<xsl:value-of select="fechaMovto"/>

					</fo:block>
		</fo:table-cell>
		
		<fo:table-cell>
		<fo:block font-weight="lighter"  text-align="center">
		<!-- celda de Descripcion -->
					
					<xsl:value-of select="descripcion"/>

					</fo:block>
					
		</fo:table-cell>
		
			<fo:table-cell>
		<fo:block font-weight="lighter"  text-align="center">
		<!-- celda de folio -->
					<xsl:value-of select="folio"/>

					</fo:block>
					<fo:block space-after="2mm"/>
		</fo:table-cell>
		
			<fo:table-cell>
		<fo:block font-weight="lighter"  text-align="center">
		<!-- celda de abono -->
					<xsl:value-of select="abono"/>

					</fo:block>
					<fo:block space-after="2mm"/>
		</fo:table-cell>
		
			<fo:table-cell>
		<fo:block font-weight="lighter"  text-align="center">
		<!-- celda de cargo -->
					<xsl:value-of select="cargo"/>

					</fo:block>
					<fo:block space-after="2mm"/>
		</fo:table-cell>
		
		<fo:table-cell>
		<fo:block font-weight="lighter"  text-align="center">
		<!-- celda de instrumento (nemo) -->
					<xsl:value-of select="instrumento"/>

					</fo:block>
					<fo:block space-after="2mm"/>
		</fo:table-cell>
		
			<fo:table-cell>
		<fo:block font-weight="lighter"  text-align="center">
		<!-- celda de saldo -->
					<xsl:value-of select="saldo"/>

					</fo:block>
					<fo:block space-after="2mm"/>
		</fo:table-cell>
		
		</fo:table-row>
		</xsl:for-each>

		
		
		</fo:table-body>
</fo:table>
<!-- tabla creada en caso de que no hayan movimientos-->
	<xsl:if test="not(movimientoscajas/movimiento)">
		<fo:table table-layout="fixed" width="21.4cm"   >
<fo:table-column column-width="21cm"  /> <!-- declaracion columna 1 -->
	<fo:table-body>
	<fo:table-row>
	<fo:table-cell>
	<fo:block space-before="2mm" space-after="2mm">
&#0160;&#0160;&#0160;&#0160;&#0160;Servicio no disponible.
	</fo:block>
	</fo:table-cell>
	</fo:table-row>
	</fo:table-body>
	</fo:table>
	</xsl:if>
</fo:block><!--fin gran blogue -->
		<!--
		<fo:block background-image="url({$selloBCI})" padding-after="5mm" margin="0pt 0pt 15pt 400pt" text-align="right" background-repeat="no-repeat">


		</fo:block>-->	
		<fo:block space-after="20mm" />
		<fo:block font-weight="lighter" space-after="10mm" font-size="8pt">
		Recomendamos no entrar al banco en línea ni realizar pagos desde cybercafés. Le aconsejamos conectarse desde su casa, oficina o algún lugar de su
confianza
		</fo:block>
	
	

</xsl:template>

</xsl:stylesheet>
