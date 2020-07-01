<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format">

	<xsl:variable name="selloBCI"><xsl:value-of select="crearRol/rutaImagen"/>rolesyusuarios/images/sello_bci.gif</xsl:variable>
    <xsl:variable name="noexito"><xsl:value-of select="crearRol/rutaImagen"/>rolesyusuariosComprobantes/alert2.gif</xsl:variable>
    <xsl:variable name="icoCel"><xsl:value-of select="crearRol/rutaImagen"/>rolesyusuariosComprobantes/icoCel.gif</xsl:variable>	
    <xsl:variable name="icoTel"><xsl:value-of select="crearRol/rutaImagen"/>rolesyusuariosComprobantes/icoTel.gif</xsl:variable>	

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
	
	<fo:block font-weight="bold" space-after="20mm"/>
	<!-- titulo PDF -->
<!-- #404040 -->
<!-- respaldo block de operacion no exitosa 
	<fo:block font-weight="bold" background-image="url({$noexito})" background-repeat="no-repeat" color="white" padding-before="5mm" space-after="12mm" padding-after="10mm" background-color="black"  >
	&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;
&#0160;&#0160;&#0160;&#0160;	Operación no exitosa.

	
	</fo:block> -->

	<!-- tabla de operacion no exitosa -->
	
	
<fo:table table-layout="fixed" width="20cm"  >
<fo:table-column column-width="3.5cm" />
<fo:table-column column-width="10cm"  />
<fo:table-column column-width="8cm"  />
<fo:table-body>
<fo:table-row  background-color="black" >
<fo:table-cell>
<fo:block space-after="5mm" >

</fo:block>
<fo:block background-image="url({$noexito})" background-repeat="no-repeat" margin-left="10px" padding-before="10mm" space-after="5mm">
	&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;
&#0160;&#0160;&#0160;&#0160;
</fo:block>
</fo:table-cell>
<fo:table-cell>
<fo:block space-after="5mm" >

</fo:block>
<fo:block font-weight="bold"  color="white"  padding-after="10mm"  padding-before="5mm" space-after="5mm">
		Operación No Exitosa.&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;
&#0160;&#0160;&#0160;&#0160;
&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;
&#0160;&#0160;&#0160;&#0160;
&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;
&#0160;&#0160;&#0160;&#0160;

	
	</fo:block>
</fo:table-cell>
</fo:table-row>
</fo:table-body>
</fo:table>

	<!-- fin tabla de operacion no exitosa-->
	<fo:block font-weight="bold" space-after="20mm"/>
	<fo:table table-layout="fixed" width="20cm"  >
<fo:table-column column-width="12cm" />

<fo:table-column column-width="9.5cm"  />
<!-- Columna que contiene el sello BCI -->


	<fo:table-body>
	
		<fo:table-row text-align="left" background-color="lightgray"  >
		<fo:table-cell >
		<fo:block space-after="2mm" />
					<fo:block font-weight="bold"   text-align="left">
					&#0160;&#0160;Comprobante Nº: &#0160;&#0160;&#0160;&#0160;<xsl:value-of select="crearRol/numeroComprobante"/>&#0160;&#0160;&#0160;&#0160;&#0160;

					</fo:block>
					<fo:block space-after="2mm"/>
		</fo:table-cell>
	
		<fo:table-cell>
		<fo:block space-after="2mm"/>
		<fo:block font-weight="bold"  text-align="left">
		
					<xsl:value-of select="crearRol/fecha" />&#0160;&#0160;&#0160;&#0160;	 <xsl:value-of select="crearRol/hora" />

					</fo:block>
					<fo:block space-after="2mm"/>
		</fo:table-cell>
	
		</fo:table-row>
		
		<fo:table-row>
		<fo:table-cell>
		<fo:block space-after="7mm"/>
		</fo:table-cell>
		</fo:table-row>
		<fo:table-row>
		<fo:table-cell>
		<fo:block border-bottom="1px solid" >
		Detalle
		</fo:block>
		</fo:table-cell>
		</fo:table-row>
			<fo:table-row>
		<fo:table-cell>
		
		<fo:block space-after="7mm"/>
		<fo:block margin="0 0 10px 100px">
		<xsl:value-of select="crearRol/detalle" />
		</fo:block>
	</fo:table-cell>
		</fo:table-row>

		</fo:table-body>
		
</fo:table>
	
		<!--
		<fo:block background-image="url({$selloBCI})" padding-after="5mm" margin="0pt 0pt 15pt 400pt" text-align="right" background-repeat="no-repeat">


		</fo:block>-->	
		
		<fo:block margin-left="450px" padding-after="50mm" background-image="url({$selloBCI})" background-repeat="no-repeat" >
		</fo:block>
		<fo:block space-after="20mm" />

		<!-- tabla de numeros telefonicos -->
		
		<fo:table table-layout="fixed" width="20cm"  >
<fo:table-column column-width="5cm" />
<fo:table-column column-width="5cm"  />
<fo:table-column column-width="5cm"  />
<fo:table-column column-width="5cm"  />
<fo:table-body>
<fo:table-row >
<fo:table-cell>
<fo:block background-image="url({$icoTel})"  background-repeat="no-repeat" margin-left="60px" padding-left="20mm" padding-before="10mm" space-after="5mm">
	&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;
&#0160;&#0160;&#0160;&#0160;

</fo:block>

</fo:table-cell>
<fo:table-cell>
	<fo:block font-weight="lighter"  font-size="8pt">
	&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;
&#0160;&#0160;&#0160;&#0160;	+56 2 782 8392
<fo:block space-after="2mm" />
	&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;
&#0160;&#0160;&#0160;&#0160; Desde Telefono

		</fo:block>
</fo:table-cell>

<fo:table-cell>

<fo:block background-image="url({$icoCel})"  background-repeat="no-repeat" margin-left="60px" padding-left="20mm" padding-before="10mm" space-after="5mm">
	&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;
&#0160;&#0160;&#0160;&#0160;
</fo:block>
</fo:table-cell>
<fo:table-cell>
	<fo:block font-weight="lighter"  font-size="8pt">
	&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;
&#0160;&#0160;&#0160;&#0160;	+56 9 9 792 8392
<fo:block space-after="2mm" />
	&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;
&#0160;&#0160;&#0160;&#0160; Desde celular

		</fo:block>
</fo:table-cell>

</fo:table-row>
</fo:table-body>
</fo:table>
		
		<!-- fin tabla de numeros telefonicos -->

</xsl:template>

</xsl:stylesheet>
