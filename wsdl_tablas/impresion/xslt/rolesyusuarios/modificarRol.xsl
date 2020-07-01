<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format">

	<xsl:variable name="selloBCI"><xsl:value-of select="modificarRol/rutaImagen"/>rolesyusuarios/images/sello_bci.gif</xsl:variable>
<xsl:variable name="exito"><xsl:value-of select="modificarRol/rutaImagen"/>rolesyusuariosComprobantes/exito.gif</xsl:variable>

<xsl:variable name="check"><xsl:value-of select="modificarRol/rutaImagen"/>rolesyusuariosComprobantes/check.gif</xsl:variable>	
<xsl:variable name="check2"><xsl:value-of select="modificarRol/rutaImagen"/>rolesyusuariosComprobantes/check2.gif</xsl:variable>	
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
	
	<fo:block font-weight="bold" space-after="10mm"/>
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
<fo:block background-image="url({$exito})" background-repeat="no-repeat" margin-left="10px" padding-before="10mm" space-after="5mm">
	&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;
&#0160;&#0160;&#0160;&#0160;
</fo:block>
</fo:table-cell>
<fo:table-cell>
<fo:block space-after="5mm" >

</fo:block>
<fo:block font-weight="bold"  color="white"  padding-after="10mm"  padding-before="5mm" space-after="5mm">
		Operación Exitosa.
		&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;
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
		<fo:table-row>
		<fo:table-cell>
		<fo:block>
		Tipo de Operación: Cambio de rol.
		</fo:block>
		<fo:block space-after="2mm" />
		</fo:table-cell>
		</fo:table-row>
		<fo:table-row text-align="left" background-color="lightgray"  >
		<fo:table-cell >
		<fo:block space-after="2mm" />
					<fo:block font-weight="bold"   text-align="left">
					&#0160;&#0160;Comprobante Nº: &#0160;&#0160;&#0160;&#0160;<xsl:value-of select="modificarRol/numeroComprobante"/>&#0160;&#0160;&#0160;&#0160;&#0160;

					</fo:block>
					<fo:block space-after="2mm"/>
		</fo:table-cell>
	
		<fo:table-cell>
		<fo:block space-after="2mm"/>
		<fo:block font-weight="bold"  text-align="left">
		
					<xsl:value-of select="modificarRol/fecha" />&#0160;&#0160;&#0160;&#0160;	 <xsl:value-of select="modificarRol/hora" />

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
		<fo:block>
		<fo:block space-after="5mm" />
		Rol Original
		</fo:block>
		</fo:table-cell>
		<fo:table-cell>
		<fo:block>
			<fo:block space-after="5mm" />
		Nuevo Rol
		</fo:block>
		</fo:table-cell>
		</fo:table-row>
			<fo:table-row>
		<fo:table-cell>
		
		
		<fo:table table-layout="fixed" width="10cm"  >
<fo:table-column column-width="10cm" />
<fo:table-column column-width="5cm"  />


<fo:table-body>
<fo:table-row >
	<fo:table-cell>
	<fo:block space-after="20mm" />
		<fo:block  text-align="left" background-color="lightgray" font-size="11px">
		<fo:block space-after="2.5mm" />
		Nombre de Rol: &#0160;&#0160;
		<xsl:value-of select="modificarRol/nombreRol" /> &#0160; Asociado a  &#0160;&#0160;
		<xsl:value-of select="modificarRol/rut" />
		<fo:block space-after="2.5mm" />
		</fo:block>
		</fo:table-cell>

</fo:table-row>
<fo:table-row >
	<fo:table-cell>
	<fo:block space-after="20mm" />
		<fo:block  text-align="left">
		<fo:block space-after="2.5mm" />
		&#0160;&#0160;&#0160;&#0160;
		Privilegios &#0160;&#0160;
		<fo:block space-after="2.5mm" />
		</fo:block>
		<fo:block  background-color="darkgray" font-weight="bold"  color="white" >
		<fo:block space-after="2.5mm" />
		&#0160;&#0160;&#0160;&#0160;
		&#0160;&#0160;&#0160;&#0160;
		&#0160;&#0160;&#0160;&#0160;
		Accesos básicos universales.
		<fo:block space-after="2.5mm" />
		</fo:block>
			<fo:block space-after="5mm" />
		</fo:table-cell>

</fo:table-row>



</fo:table-body>
</fo:table>
	<fo:table table-layout="fixed" width="20cm"  >
<fo:table-column column-width="1cm" />
<fo:table-column column-width="10cm"  />

	<fo:table-body>
	<!-- Iteracion de privilegios -->
	<xsl:for-each select="modificarRol/listaPrivilegiosBasicos">
		 <xsl:if test="privilegiosBasicos != ''">
		<fo:table-row text-align="left"  >
		<fo:table-cell >
	
		<fo:block background-image="url({$check})" background-repeat="no-repeat" margin-left="25px" padding-before="10mm" space-after="0.5mm">
		</fo:block>
		</fo:table-cell>
		<fo:table-cell >
		<fo:block >
		<xsl:value-of select="privilegiosBasicos" />
		</fo:block>
		</fo:table-cell>
		</fo:table-row>
			 </xsl:if >
	</xsl:for-each>

	<!-- fin iteracion de privilegios -->
		</fo:table-body>
		</fo:table>
		
		
				<fo:table table-layout="fixed" width="20cm"  >
<fo:table-column column-width="10cm" />
<fo:table-column column-width="10cm"  />


<fo:table-body>

<fo:table-row >
	<fo:table-cell>
	<fo:block space-after="10mm" />
		<fo:block  text-align="left">
		<fo:block space-after="2.5mm" />
		&#0160;&#0160;&#0160;&#0160;
		
		<fo:block space-after="2.5mm" />
		</fo:block>
		<fo:block background-color="darkgray" font-weight="bold"  color="white" >
		<fo:block space-after="2.5mm" />
		&#0160;&#0160;&#0160;&#0160;
		&#0160;&#0160;&#0160;&#0160;
		&#0160;&#0160;&#0160;&#0160;
		Otros accesos delegables.
		<fo:block space-after="2.5mm" />
		</fo:block>
			<fo:block space-after="5mm" />
		</fo:table-cell>

</fo:table-row>



</fo:table-body>

</fo:table>
	<fo:table table-layout="fixed" width="20cm"  >
<fo:table-column column-width="1cm" />
<fo:table-column column-width="10cm"  />

	<fo:table-body>
	<!-- Iteracion de privilegios -->
	 
	<xsl:for-each select="modificarRol/listaPrivilegiosDelegables">
		 <xsl:if test="privilegiosDelegables != ''">
		<fo:table-row text-align="left"  >
		<fo:table-cell >
	
		<fo:block background-image="url({$check2})" background-repeat="no-repeat"  padding-before="10mm" space-after="0.5mm">
		</fo:block>
		</fo:table-cell>
		<fo:table-cell >
		<fo:block>
		<xsl:value-of select="privilegiosDelegables" />
		</fo:block>
		</fo:table-cell>
		</fo:table-row>
			</xsl:if>
	</xsl:for-each>


	<!-- fin iteracion de privilegios -->
		</fo:table-body>
		</fo:table>

	</fo:table-cell> 
<fo:table-cell>
		
		
		<fo:table table-layout="fixed" width="10cm"  >
<fo:table-column column-width="10cm" />
<fo:table-column column-width="5cm"  />


<fo:table-body>
<fo:table-row >
	<fo:table-cell>
	<fo:block space-after="20mm" />
		<fo:block  text-align="left" background-color="lightgray" font-size="11px">
		<fo:block space-after="2.5mm" />
			Nombre de Rol: &#0160;&#0160;
		<xsl:value-of select="modificarRol/nombreRolUpdate" /> &#0160; Asociado a  &#0160;&#0160;
		<xsl:value-of select="modificarRol/rut" />
		<fo:block space-after="2.5mm" />
		</fo:block>
		</fo:table-cell>

</fo:table-row>
<fo:table-row >
	<fo:table-cell>
	<fo:block space-after="20mm" />
		<fo:block  text-align="left">
		<fo:block space-after="2.5mm" />
		&#0160;&#0160;&#0160;&#0160;
		Privilegios &#0160;&#0160;
		<fo:block space-after="2.5mm" />
		</fo:block>
		<fo:block  background-color="darkgray" font-weight="bold"  color="white" >
		<fo:block space-after="2.5mm" />
		&#0160;&#0160;&#0160;&#0160;
		&#0160;&#0160;&#0160;&#0160;
		&#0160;&#0160;&#0160;&#0160;
		Accesos básicos universales.
		<fo:block space-after="2.5mm" />
		</fo:block>
			<fo:block space-after="5mm" />
		</fo:table-cell>

</fo:table-row>



</fo:table-body>
</fo:table>
	<fo:table table-layout="fixed" width="20cm"  >
<fo:table-column column-width="1cm" />
<fo:table-column column-width="10cm"  />

	<fo:table-body>
	<!-- Iteracion de privilegios -->
	<xsl:for-each select="modificarRol/listaPrivilegiosBasicosUpdate">
		 <xsl:if test="privilegiosBasicosUpdate != ''">
		<fo:table-row text-align="left"  >
		<fo:table-cell >
	
		<fo:block background-image="url({$check})" background-repeat="no-repeat" margin-left="25px" padding-before="10mm" space-after="0.5mm">
		</fo:block>
		</fo:table-cell>
		<fo:table-cell >
		<fo:block >
		<xsl:value-of select="privilegiosBasicosUpdate" />
		</fo:block>
		</fo:table-cell>
		</fo:table-row>
			 </xsl:if >
	</xsl:for-each>

	<!-- fin iteracion de privilegios -->
		</fo:table-body>
		</fo:table>
		
		
				<fo:table table-layout="fixed" width="20cm"  >
<fo:table-column column-width="10cm" />
<fo:table-column column-width="10cm"  />


<fo:table-body>

<fo:table-row >
	<fo:table-cell>
	<fo:block space-after="10mm" />
		<fo:block margin-left="20px" text-align="left">
		<fo:block space-after="2.5mm" />
		&#0160;&#0160;&#0160;&#0160;
		
		<fo:block space-after="2.5mm" />
		</fo:block>
		<fo:block margin-left="20px" background-color="darkgray" font-weight="bold"  color="white" >
		<fo:block space-after="2.5mm" />
		&#0160;&#0160;&#0160;&#0160;
		&#0160;&#0160;&#0160;&#0160;
		&#0160;&#0160;&#0160;&#0160;
		Otros accesos delegables.
		<fo:block space-after="2.5mm" />
		</fo:block>
			<fo:block space-after="5mm" />
		</fo:table-cell>

</fo:table-row>



</fo:table-body>

</fo:table>
	<fo:table table-layout="fixed" width="20cm"  >
<fo:table-column column-width="1cm" />
<fo:table-column column-width="10cm"  />

	<fo:table-body>
	<!-- Iteracion de privilegios -->
	 
	<xsl:for-each select="modificarRol/listaPrivilegiosDelegablesUpdate">
		 <xsl:if test="privilegiosDelegablesUpdate != ''">
		<fo:table-row text-align="left"  >
		<fo:table-cell >
	
		<fo:block background-image="url({$check2})" background-repeat="no-repeat"  padding-before="10mm" space-after="0.5mm">
		</fo:block>
		</fo:table-cell>
		<fo:table-cell >
		<fo:block>
		<xsl:value-of select="privilegiosDelegablesUpdate" />
		</fo:block>
		</fo:table-cell>
		</fo:table-row>
			</xsl:if>
	</xsl:for-each>


	<!-- fin iteracion de privilegios -->
		</fo:table-body>
		</fo:table>

	</fo:table-cell>
		</fo:table-row>

		</fo:table-body>
		
</fo:table>
	
		<!--
		<fo:block background-image="url({$selloBCI})" padding-after="5mm" margin="0pt 0pt 15pt 400pt" text-align="right" background-repeat="no-repeat">


		</fo:block>-->	
		
		<fo:block space-after="10mm" />
				<fo:table table-layout="fixed" width="15cm"   >
<fo:table-column column-width="15cm" />

<fo:table-body>
<fo:table-row >
<fo:table-cell>
<fo:block >
Usuarios con Rol Seleccionado.
</fo:block>

</fo:table-cell>
</fo:table-row>
</fo:table-body>
</fo:table>

				<fo:table table-layout="fixed" width="10cm"  >
<fo:table-column column-width="10cm" />
<fo:table-column column-width="4cm" />
<fo:table-body>
<xsl:for-each select="modificarRol/usuarios">
<xsl:if test="usuarioRol != ''">
<fo:table-row>
<fo:table-cell>
<fo:block background-color="lightgray" >
<fo:block margin-left="20px" space-after="1mm" />
<xsl:value-of select="usuarioRol" />
</fo:block>
<fo:block margin-left="20px" space-after="2mm" />
</fo:table-cell>
</fo:table-row>
</xsl:if>
</xsl:for-each>
</fo:table-body>
</fo:table>

		<fo:block margin-left="450px" padding-after="50mm" background-image="url({$selloBCI})" background-repeat="no-repeat" >
		</fo:block>
		<fo:block space-after="20mm" />

		<!-- tabla de numeros telefonicos -->



		
		<!-- fin tabla de numeros telefonicos -->

</xsl:template>

</xsl:stylesheet>
