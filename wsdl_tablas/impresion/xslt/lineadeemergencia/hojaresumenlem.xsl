<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format">

<!-- VARIABLES -->
<xsl:variable name="bgcolor">#E7E5EF</xsl:variable>
<xsl:variable name="lineas">#CCCCCC</xsl:variable>
<xsl:variable name="txt">#000000</xsl:variable>
<xsl:variable name="txt-blanco">#FFFFFF</xsl:variable>
<xsl:variable name="txt-azul-claro">#0061A5</xsl:variable>
<xsl:variable name="txt-azul-oscuro">#1069B5</xsl:variable>
<xsl:variable name="negro">#000000</xsl:variable>
<xsl:variable name="azul-claro">#3366FF</xsl:variable>
<xsl:variable name="azul-oscuro">#000078</xsl:variable>
<xsl:variable name="gris-oscuro">#CCCCCC</xsl:variable>
<xsl:variable name="gris-claro">#989898</xsl:variable>
<xsl:variable name="gris-dark">#505050</xsl:variable>
<xsl:variable name="gris-suave">#F2F2F2</xsl:variable>
<xsl:variable name="amarillo">#FFFF99</xsl:variable>
<xsl:variable name="rojo-oscuro">#9E1233</xsl:variable>
<xsl:variable name="espacio-bloque">0.5mm</xsl:variable>
<xsl:variable name="miles">#.###</xsl:variable>
<xsl:variable name="size-fuente-margen">7pt</xsl:variable>
<xsl:variable name="espacio-texto-celda-left">2mm</xsl:variable>
<xsl:variable name="espacio-texto-celda-top">1mm</xsl:variable>
<xsl:decimal-format name="CL" decimal-separator="," grouping-separator="."/>
<xsl:param name="IMG_URL"/>

<!-- ROOT -->
<xsl:template match="hojaresumenlem">
<fo:root xmlns:fo="http://www.w3.org/1999/XSL/Format">

<fo:layout-master-set>
<!-- page-height="330mm" -->
	<fo:simple-page-master master-name="pagina"
	page-height="356mm"
	page-width="216mm"
	margin-top="20.000px"
	margin-bottom="20.000px"
	margin-left="60.000px"
	margin-right="60.000px">
    	<fo:region-before region-name="xsl-region-before" display-align="after" extent="20mm" padding-top="6.000pt" padding-left="0.700in" padding-right="2.700in" padding-bottom="6.000pt" border-style="none" border-width="0.000px"  background-repeat="no-repeat" background-position-horizontal="0.000px" background-position-vertical="0.000px" reference-orientation="0"/>
        <fo:region-after region-name="xsl-region-after" display-align="before" extent="17.78mm" padding-top="6.000pt" padding-left="0.700in" padding-right="2.700in" padding-bottom="6.000pt" border-style="none" border-width="0.000px"  background-repeat="no-repeat" background-position-horizontal="0.000px" background-position-vertical="0.000px" reference-orientation="0"/>
        <fo:region-body margin-top="20mm" margin-bottom="10mm"/>
	</fo:simple-page-master>
</fo:layout-master-set>

<fo:page-sequence master-reference="pagina" initial-page-number="1" language="en" country="us">
		
		<!-- SECCIONES -->
		<fo:flow flow-name="xsl-region-body" font-family="Arial, Helvetica, sans-serif">

			<xsl:call-template name="logo" />

			<xsl:call-template name="seccion1"/>			
			<xsl:call-template name="seccion2"/>
			<xsl:call-template name="seccion3"/>
		</fo:flow>

</fo:page-sequence> 
</fo:root>
</xsl:template>


<!-- SECCION 1 -->
<xsl:template name="seccion1">
<fo:block font-size="14pt" font-family="Arial, Helvetica, sans-serif">
	<fo:table table-layout="fixed" border="0.5pt solid {$lineas}" border-bottom-style="none">
	<fo:table-column column-width="16cm"/>
	<fo:table-body>
		<fo:table-row>
		<fo:table-cell>
				<fo:block font-weight="bold" space-after="1mm" text-align="center" margin-left="2mm" padding-before="2mm" padding-after="1mm">
					<fo:inline color="{$negro}">HOJA DE RESUMEN LINEA DE EMERGENCIA</fo:inline>
				</fo:block>
		</fo:table-cell>
		</fo:table-row>
	</fo:table-body>
	</fo:table>
</fo:block>
</xsl:template>


<!-- SECCION 2 -->
<xsl:template name="seccion2">
	
	<fo:block font-size="9pt">
		<fo:table table-layout="fixed" border="0.5pt solid {$lineas}">
		<fo:table-column column-width="8cm"/>
		<fo:table-column column-width="8cm"/>
		<fo:table-body>
		
			<!-- TITULAR 1 -->
			<fo:table-row>
			<fo:table-cell border="0.5pt solid {$lineas}" padding-left="1mm" padding-top="1mm" border-bottom-style="none" background-color="{$gris-suave}">
					<fo:block space-after="1mm" text-align="left" font-weight="bold">
						<fo:inline color="{$negro}">Nombre Titular 1</fo:inline>
					</fo:block>
			</fo:table-cell>
			<fo:table-cell border="0.5pt solid {$lineas}" padding-top="1mm" border-bottom-style="none" padding-left="1mm" background-color="{$gris-suave}">
					<fo:block space-after="1mm" text-align="left">
						<fo:inline color="{$negro}"><xsl:value-of select="nombreTitular"/></fo:inline>
					</fo:block>
			</fo:table-cell>
			</fo:table-row>
	
			<fo:table-row>
			<fo:table-cell border="0.5pt solid {$lineas}" padding-left="1mm" padding-top="1mm" border-bottom-style="none" border-top-style="none">
					<fo:block space-after="1mm" text-align="left" font-weight="bold">
						<fo:inline color="{$negro}">Rut</fo:inline>
					</fo:block>
			</fo:table-cell>
			<fo:table-cell border="0.5pt solid {$lineas}" padding-top="1mm" border-bottom-style="none" border-top-style="none" padding-left="1mm">
					<fo:block space-after="1mm" text-align="left">
						<fo:inline color="{$negro}"><xsl:value-of select="rutTitular"/>-<xsl:value-of select="dvTitular"/></fo:inline>
					</fo:block>
			</fo:table-cell>
			</fo:table-row>

			<!-- TITULAR 2 (OPCIONAL) -->
			<xsl:if test="esCuentaBipersonal = 'S'">
				<fo:table-row>
				<fo:table-cell border="0.5pt solid {$lineas}" padding-left="1mm" padding-top="1mm" border-bottom-style="none" border-top-style="none" background-color="{$gris-suave}">
						<fo:block space-after="1mm" text-align="left" font-weight="bold">
							<fo:inline color="{$negro}">Nombre Titular 2</fo:inline>
						</fo:block>
				</fo:table-cell>
				<fo:table-cell border="0.5pt solid {$lineas}" padding-top="1mm" border-bottom-style="none" padding-left="1mm" border-top-style="none" background-color="{$gris-suave}">
						<fo:block space-after="1mm" text-align="left">
							<fo:inline color="{$negro}"><xsl:value-of select="nombreTitularDos"/></fo:inline>
						</fo:block>
				</fo:table-cell>
				</fo:table-row>
		
				<fo:table-row>
				<fo:table-cell border="0.5pt solid {$lineas}" padding-left="1mm" padding-top="1mm" border-bottom-style="none" border-top-style="none">
						<fo:block space-after="1mm" text-align="left" font-weight="bold">
							<fo:inline color="{$negro}">Rut</fo:inline>
						</fo:block>
				</fo:table-cell>
				<fo:table-cell border="0.5pt solid {$lineas}" padding-top="1mm" border-bottom-style="none" border-top-style="none" padding-left="1mm">
						<fo:block space-after="1mm" text-align="left">
							<fo:inline color="{$negro}"><xsl:value-of select="rutTitularDos"/></fo:inline>
						</fo:block>
				</fo:table-cell>
				</fo:table-row>
			</xsl:if>
			
			<fo:table-row>
			<fo:table-cell border="0.5pt solid {$lineas}" padding-left="1mm" padding-top="1mm" border-bottom-style="none" border-top-style="none" background-color="{$gris-suave}">
					<fo:block space-after="1mm" text-align="left" font-weight="bold">
						<fo:inline color="{$negro}">Fecha</fo:inline>
					</fo:block>
			</fo:table-cell>
			<fo:table-cell border="0.5pt solid {$lineas}" border-bottom-style="none" padding-top="1mm" border-top-style="none" padding-left="1mm" background-color="{$gris-suave}">
					<fo:block space-after="1mm" text-align="left">
						<fo:inline color="{$negro}"><xsl:value-of select="fechaActual"/></fo:inline>
					</fo:block>
			</fo:table-cell>
			</fo:table-row>

			<fo:table-row>
			<fo:table-cell border="0.5pt solid {$lineas}" padding-left="1mm" padding-top="1mm" border-bottom-style="none" border-top-style="none">
					<fo:block space-after="1mm" text-align="left" font-weight="bold">
						<fo:inline color="{$negro}">N° de Cuenta corriente Asociada</fo:inline>
					</fo:block>
			</fo:table-cell>
			<fo:table-cell border="0.5pt solid {$lineas}" border-bottom-style="none" padding-top="1mm" border-top-style="none" padding-left="1mm">
					<fo:block space-after="1mm" text-align="left">
						<fo:inline color="{$negro}"><xsl:value-of select="numeroCuentaCorriente"/></fo:inline>
					</fo:block>
			</fo:table-cell>
			</fo:table-row>

	
		</fo:table-body>
		</fo:table>
	</fo:block>


</xsl:template>




<!-- SECCION 3 -->
<xsl:template name="seccion3">
<fo:block font-size="14pt" font-family="Arial, Helvetica, sans-serif">
	<xsl:call-template name="cabeceraAzul">
		<xsl:with-param name="glosa" select="'Producto Principal: Linea de Emergencia'"/>
	</xsl:call-template>		
</fo:block>


<fo:block>
	<fo:table table-layout="fixed" border="0.5pt solid {$lineas}" font-size="14pt" font-family="Arial, Helvetica, sans-serif">
	<fo:table-column column-width="8cm"/>
	<fo:table-column column-width="8cm"/>
	<fo:table-body>
		<fo:table-row>
		<fo:table-cell border="0.5pt solid {$lineas}" padding-left="1mm" padding-top="1mm" border-bottom-style="none" background-color="{$gris-suave}">
				<fo:block space-after="1mm" text-align="left" font-weight="bold">
					<fo:inline color="{$negro}">Cupo Total en Pesos</fo:inline>
				</fo:block>
		</fo:table-cell>
		<fo:table-cell border="0.5pt solid {$lineas}" padding-top="1mm" padding-left="1mm" border-bottom-style="none" background-color="{$gris-suave}">
				<fo:block space-after="1mm" text-align="left">
					<fo:inline color="{$negro}">$<xsl:value-of select="cupoTotal"/></fo:inline>
				</fo:block>
		</fo:table-cell>
		</fo:table-row>

		<fo:table-row>
		<fo:table-cell border="0.5pt solid {$lineas}" padding-left="1mm" border-bottom-style="none" border-top-style="none">
				<fo:block space-after="1mm" text-align="left" font-weight="bold">
					<fo:inline color="{$negro}">Tasa de Interés (1)</fo:inline>
				</fo:block>
		</fo:table-cell>
		<fo:table-cell border="0.5pt solid {$lineas}" padding-left="1mm" padding-top="1mm" border-bottom-style="none" border-top-style="none">
				<fo:block space-after="1mm" text-align="left">
					<fo:inline color="{$negro}">Tasa Máxima Convencional vigente (TMC)</fo:inline>
				</fo:block>
		</fo:table-cell>
		</fo:table-row>
		
		<fo:table-row>
		<fo:table-cell border="0.5pt solid {$lineas}" padding-left="1mm" border-bottom-style="none" border-top-style="none" background-color="{$gris-suave}">
				<fo:block space-after="1mm" text-align="left" font-weight="bold">
					<fo:inline color="{$negro}">Comisión de Renovación Semestral (2) (3)</fo:inline>
				</fo:block>
		</fo:table-cell>
		<fo:table-cell border="0.5pt solid {$lineas}" padding-left="1mm" padding-top="1mm" border-bottom-style="none" border-top-style="none" background-color="{$gris-suave}">
				<fo:block space-after="1mm" text-align="left">
					Comisión de cobro semestral. El primer cobro se activa con la primera utilización del producto. En dicho caso la tarifa asociada es de UF <xsl:value-of select="comisionRenov"/> en cada renovación, según detalla en "Anexo de Condiciones y tarifas", acápite D.-
				</fo:block>
		</fo:table-cell>
		</fo:table-row>
						
	</fo:table-body>
	</fo:table>
	
</fo:block>

<fo:block font-size="9pt">
	<xsl:call-template name="cabeceraAzul">
		<xsl:with-param name="glosa" select="'Vigencia de Productos y frecuencia de renovación'"/>
	</xsl:call-template>		
</fo:block>

<fo:block font-size="9pt">
	<fo:table table-layout="fixed" border="0.5pt solid {$lineas}" border-bottom-style="none">
	<fo:table-column column-width="8cm"/>
	<fo:table-column column-width="8cm"/>
	<fo:table-body>
		<fo:table-row>
		<fo:table-cell border="0.5pt solid {$lineas}" padding-left="1mm" padding-top="1mm" border-bottom-style="none">
				<fo:block font-weight="bold">
					<fo:inline color="{$negro}">Cuenta Corriente</fo:inline>
				</fo:block>
		</fo:table-cell>
		<fo:table-cell border="0.5pt solid {$lineas}" padding-top="1mm" padding-left="1mm" padding-after="1mm" border-bottom-style="none">
				<fo:block space-after="1mm" text-align="left">
					<fo:inline color="{$negro}">Anual y de renovación automática.</fo:inline>
				</fo:block>
		</fo:table-cell>
		</fo:table-row>

		<fo:table-row>
		<fo:table-cell border="0.5pt solid {$lineas}" padding-left="1mm" padding-top="1mm" border-bottom-style="none">
				<fo:block font-weight="bold">
					<fo:inline color="{$negro}">Línea de Sobregiro</fo:inline>
				</fo:block>
		</fo:table-cell>
		<fo:table-cell border="0.5pt solid {$lineas}" padding-top="1mm" padding-left="1mm" padding-after="1mm" border-bottom-style="none">
				<fo:block space-after="1mm" text-align="left">
					<fo:inline color="{$negro}">Anual y de renovación automática.</fo:inline>
				</fo:block>
		</fo:table-cell>
		</fo:table-row>
		
		<fo:table-row>
		<fo:table-cell border="0.5pt solid {$lineas}" padding-left="1mm" padding-top="1mm" border-bottom-style="none">
				<fo:block font-weight="bold">
					<fo:inline color="{$negro}">Línea de Crédito de Emergencia</fo:inline>
				</fo:block>
		</fo:table-cell>
		<fo:table-cell border="0.5pt solid {$lineas}" padding-top="1mm" padding-left="1mm" padding-after="1mm" border-bottom-style="none">
				<fo:block space-after="1mm" text-align="left">
					<fo:inline color="{$negro}">Semestral y de renovación automática.</fo:inline>
				</fo:block>
		</fo:table-cell>
		</fo:table-row>
		
	</fo:table-body>
	</fo:table>
</fo:block>

<fo:block font-size="9pt">
	<xsl:call-template name="cabeceraAzul">
		<xsl:with-param name="glosa" select="'Productos / Gastos Adicionales'"/>
	</xsl:call-template>
</fo:block>

<!-- TODO Agregar Seguros -->
<fo:block font-size="9pt">

		<xsl:call-template name="seguroDesgravamen" />

</fo:block>

<fo:block font-size="9pt">
	<xsl:call-template name="cabeceraAzul">
		<xsl:with-param name="glosa" select="'Costos por Atraso'"/>
	</xsl:call-template>
</fo:block>

<xsl:call-template name="costosPorAtraso" />

<fo:block font-size="9pt">
	<xsl:call-template name="cabeceraAzul">
		<xsl:with-param name="glosa" select="'Advertencia'"/>
	</xsl:call-template>
</fo:block>

<xsl:call-template name="advertencia" />

<fo:block font-size="9pt">
	<xsl:call-template name="cabeceraAzul">
		<xsl:with-param name="glosa" select="'Garantías'"/>
	</xsl:call-template>
</fo:block>
          
		  <fo:table font-size="9pt" font-family="serif" space-before.optimum="1pt" space-after.optimum="1pt">
		    <!-- 16 -->
            <fo:table-column column-width="3cm"/>
            <fo:table-column column-width="0.7cm"/>
            <fo:table-column column-width="1.6cm"/>

            <fo:table-column column-width="3cm"/>
            <fo:table-column column-width="0.7cm"/>
            <fo:table-column column-width="1.6cm"/>

            <fo:table-column column-width="3cm"/>
            <fo:table-column column-width="0.7cm"/>
            <fo:table-column column-width="1.7cm"/>

            <fo:table-body>
              <fo:table-row>
                <fo:table-cell padding="1mm" border-left="0.5pt solid {$lineas}">
                  <fo:block text-align="left" font-weight="bold">
                      NO
                  </fo:block>
                </fo:table-cell>
                <fo:table-cell>
                    <fo:block border="solid 0.5pt gray" text-align="justify" line-height="2pt" padding="1mm" padding-before="5pt" padding-after="5pt"> X
                    </fo:block>
                </fo:table-cell>
				<fo:table-cell padding="1mm" border-right="0.5pt solid {$lineas}">
				</fo:table-cell>
                
                
                <fo:table-cell padding="1mm">
                  <fo:block text-align="left" font-weight="bold">
                      SI
                  </fo:block>
                </fo:table-cell>
                <fo:table-cell>
                    <fo:block border="solid 0.5pt gray" text-align="justify" line-height="2pt" padding="1mm" padding-before="5pt" padding-after="5pt"> 
                    </fo:block>
                </fo:table-cell>
				<fo:table-cell padding="1mm" >
				</fo:table-cell>


                <fo:table-cell padding="1mm" >
                  <fo:block text-align="left" font-weight="bold">
                     ; ______________
                  </fo:block>
                </fo:table-cell>
				
                <fo:table-cell>
                </fo:table-cell>
				
				<fo:table-cell padding="1mm" border-right="0.5pt solid {$lineas}">
				</fo:table-cell>

              </fo:table-row>
            </fo:table-body>
          </fo:table>	




<fo:block font-size="9pt">

	<xsl:call-template name="cabeceraAzul">
		<xsl:with-param name="glosa" select="'LO QUE USTED DEBE SABER'"/>
	</xsl:call-template>
</fo:block>

<fo:block font-size="9pt">
	<fo:table table-layout="fixed" border="0.5pt solid {$lineas}" border-top-style="none">
	<fo:table-column column-width="0.8cm"/>
	<fo:table-column column-width="15.2cm"/>
	<fo:table-body>
		<fo:table-row>
	    <fo:table-cell padding-left="2mm" padding-right="2mm" padding-bottom="2mm" padding-top="1mm">
		     <fo:block font-weight="bold">(1).- </fo:block> 
		</fo:table-cell>
		 
       <fo:table-cell padding-left="2mm" padding-right="2mm" padding-bottom="2mm" padding-top="1mm">
	        <fo:block text-align="justify">
				La Tasa de interés asociada al uso de la Línea de Crédito de Emergencia, corresponde a la Tasa Máxima Convencional (TMC). El cálculo de intereses es diario en función del cupo utilizado y la TMC vigente a la fecha del cálculo.
			</fo:block>	</fo:table-cell>	 
		</fo:table-row>

		<fo:table-row>
		<fo:table-cell padding-left="2mm" padding-right="2mm" padding-bottom="2mm" padding-top="1mm">
		     <fo:block font-weight="bold">(2).- </fo:block> 
		</fo:table-cell>
		
		<fo:table-cell padding-left="2mm" padding-right="2mm" padding-bottom="2mm">
			<fo:block text-align="justify">
				Esta comisión es exenta de IVA.-
			</fo:block>
		</fo:table-cell>
		
		</fo:table-row>

		<fo:table-row>
			<fo:table-cell padding-left="2mm" padding-right="2mm" padding-bottom="2mm" padding-top="1mm">
				 <fo:block font-weight="bold">(3).- </fo:block> 
			</fo:table-cell>		
		
		<fo:table-cell padding-left="2mm" padding-right="2mm" padding-bottom="2mm">
			<fo:block text-align="justify">
				La Comisión de Renovación se comienza a cobrar a partir de la primera utilización de la Línea de crédito de Emergencia. 
			</fo:block>
		</fo:table-cell>
		</fo:table-row>

		<fo:table-row>
		
		<fo:table-cell padding-left="2mm" padding-right="2mm" padding-bottom="2mm" padding-top="1mm">
		     <fo:block font-weight="bold">(4).- </fo:block> 
		</fo:table-cell>
		
		<fo:table-cell padding-left="2mm" padding-right="2mm" padding-top="2mm">
			<fo:block text-align="justify">
				La TMC vigente a la época de la mora, se puede consultar en la página internet de la Comisión para el Mercado Financiero (CMFChile). 
			</fo:block>
		</fo:table-cell>
		</fo:table-row>
		
		<fo:table-row>
		<fo:table-cell padding-left="2mm" padding-right="2mm" padding-top="2mm"  number-columns-spanned="2" >
		   <fo:block text-align="justify">
				El valor en pesos señalado precedentemente, se ha calculado al valor de la UF al día <xsl:value-of select="fechaActual"/> 
				que corresponde a $<xsl:value-of select="UfReferencial"/>
			</fo:block>
		</fo:table-cell>
		</fo:table-row>
		

	</fo:table-body>
	</fo:table>
	
	
</fo:block>

<!-- TITULAR 2 (OPCIONAL) -->
<xsl:choose>
<xsl:when test="esCuentaBipersonal = 'S'">
          <fo:table font-size="9pt" font-family="Arial" space-before.optimum="1pt" space-after.optimum="1pt">
            <fo:table-column column-width="8cm"/>
            <fo:table-column column-width="8cm"/>
            <fo:table-body>
              <fo:table-row>
                <fo:table-cell>
                  <fo:block font-weight="bold" text-align="center" padding-before="55pt">
                      ___________________________________
                  </fo:block>
                  <fo:block text-align="center" padding-before="5pt">
                      Firma y Rut Titular 1
                  </fo:block>
                </fo:table-cell>
                <fo:table-cell>
                  <fo:block font-weight="bold" text-align="center" padding-before="55pt">
                      ___________________________________
                  </fo:block>
                  <fo:block text-align="center" padding-before="5pt">
                      Firma y Rut Titular 2
                  </fo:block>
                </fo:table-cell>
              </fo:table-row>
            </fo:table-body>
          </fo:table>
</xsl:when>
<xsl:otherwise>
          <fo:table font-size="9pt" font-family="Arial" space-before.optimum="1pt" space-after.optimum="1pt">
            <fo:table-column column-width="16cm"/>
            <fo:table-body>
              <fo:table-row>
                <fo:table-cell>
                  <fo:block font-weight="bold" text-align="center" padding-before="55pt">
                      ___________________________________
                  </fo:block>
                  <fo:block text-align="center" padding-before="5pt">
                      Firma y Rut Titular 1
                  </fo:block>
                </fo:table-cell>
              </fo:table-row>
            </fo:table-body>
          </fo:table>
</xsl:otherwise>
</xsl:choose>


</xsl:template>


<!-- SALTO DE PAGINA -->
<xsl:template name="saltoDePagina">
	<fo:block space-after="1mm" break-after="page">
	</fo:block>
</xsl:template>



<!-- TABLA SEPARADORA -->
<xsl:template name="tablaSeparadora">
<fo:block>
	<fo:table table-layout="fixed" border-left-style="1px" border-right-style="1px">
	<fo:table-column column-width="16cm"/>
	<fo:table-body>
		<fo:table-row>
		<fo:table-cell border="0.5pt solid {$lineas}">
				<fo:block space-after="1mm" text-align="center" padding-after="7mm">
				</fo:block>
		</fo:table-cell>
		</fo:table-row>
	</fo:table-body>
	</fo:table>	
</fo:block>
</xsl:template>


<!-- CABECERA AZUL -->
<xsl:template name="cabeceraAzul">
<xsl:param name="glosa"/> 
<fo:block>
	<fo:table table-layout="fixed" border-left-style="1px" border-right-style="1px" font-weight="bold">
	<fo:table-column column-width="16cm"/>
	<fo:table-body>
		<fo:table-row>
		<fo:table-cell background-color="{$gris-dark}" border="0.5pt solid {$lineas}" padding-left="1mm">
				<fo:block text-align="left" padding-before="1mm" padding-after="1mm">
					<fo:inline color="{$txt-blanco}"><xsl:value-of select="$glosa"/></fo:inline>
				</fo:block>
		</fo:table-cell>
		</fo:table-row>
	</fo:table-body>
	</fo:table>	
</fo:block>
</xsl:template>
<xsl:template name="cabeceraOscura">

<xsl:param name="glosa"/> 
<fo:block>
	<fo:table table-layout="fixed" border-left-style="1px" border-right-style="1px" font-weight="bold">
	<fo:table-column column-width="16cm"/>
	<fo:table-body>
		<fo:table-row>
		<fo:table-cell background-color="{$gris-dark}" border="0.5pt solid {$lineas}" padding-left="1mm">
				<fo:block text-align="left" padding-before="1mm" padding-after="1mm">
					<fo:inline color="{$txt-blanco}"><xsl:value-of select="$glosa"/></fo:inline>
				</fo:block>
		</fo:table-cell>
		</fo:table-row>
	</fo:table-body>
	</fo:table>	
</fo:block>
</xsl:template>


<!-- CABECERA CELESTE -->
<xsl:template name="cabeceraCeleste">
<xsl:param name="glosa"/> 
<fo:block>
	<fo:table table-layout="fixed" border-left-style="1px" border-right-style="1px">
	<fo:table-column column-width="16cm"/>
	<fo:table-body>
		<fo:table-row>
		<fo:table-cell background-color="{$azul-claro}" border="0.5pt solid {$lineas}">
				<fo:block space-after="1mm" text-align="left" padding-before="1mm" padding-after="1mm">
					<fo:inline color="{$txt-blanco}"><xsl:value-of select="$glosa"/></fo:inline>
				</fo:block>
		</fo:table-cell>
		</fo:table-row>
	</fo:table-body>
	</fo:table>	
</fo:block>
</xsl:template>


<!-- SEGURO PROTECCION BASICA -->
<xsl:template name="seguroDesgravamen">				

	<fo:table table-layout="fixed" border="0.5pt solid {$lineas}" border-bottom-style="none">
	<fo:table-column column-width="3cm"/>
	<fo:table-column column-width="5cm"/>
	<fo:table-column column-width="8cm"/>
	<fo:table-body>
		<fo:table-row>
			<fo:table-cell number-columns-spanned="3" border="0.25pt solid {$gris-dark}" background-color="{$gris-oscuro}" padding-left="1mm" padding-top="1mm" border-top-style="none" border-left-style="none">
					<fo:block space-after="1mm" text-align="left" font-weight="bold">
						<fo:inline color="{$negro}">Seguro de desgravamen Línea de Crédito de Emergencia</fo:inline>
					</fo:block>
			</fo:table-cell>
		</fo:table-row>
		
		<fo:table-row>
			<fo:table-cell>
					<fo:block space-after="1mm" text-align="left" font-weight="bold">
					</fo:block>
			</fo:table-cell>
			
			<!--
			<fo:table-cell border="0.25pt solid {$gris-dark}" number-columns-spanned="2" background-color="{$gris-oscuro}" padding-left="1mm" padding-top="1mm" border-bottom-style="none" border-left-style="none" border-right-style="none">
					<fo:block space-after="1mm" text-align="left" font-weight="bold">
					<fo:inline color="{$negro}">Seguro de desgravamen</fo:inline>
				</fo:block>
		    </fo:table-cell>
			
			
			<fo:table-cell border="0.5pt solid {$gris-dark}" background-color="{$gris-oscuro}" padding-top="1mm" border-top-style="none" border-bottom-style="none" border-left-style="none" border-right-style="none">
				<fo:block space-after="1mm" text-align="left">
				</fo:block>
		    </fo:table-cell>
			
			-->
		</fo:table-row>

		<fo:table-row>
		<fo:table-cell>
				<fo:block space-after="1mm" text-align="left" font-weight="bold">
				</fo:block>
		</fo:table-cell>
		<fo:table-cell border="0.5pt solid {$lineas}" padding-left="1mm" padding-top="1mm" border-bottom-style="none" border-top-style="none">
				<fo:block space-after="1mm" text-align="left" font-weight="bold">
					<fo:inline color="{$negro}">Costo anual UF</fo:inline>
				</fo:block>
		</fo:table-cell>
		<fo:table-cell border="0.5pt solid {$lineas}" padding-left="1mm" border-bottom-style="none" padding-top="1mm" border-top-style="none">
				<fo:block space-after="1mm" text-align="left">
					<fo:inline color="{$negro}">UF <xsl:value-of select="primaSeguroAnualUF"/> ($ <xsl:value-of select="primaSeguroAnualPesos"/>)</fo:inline>
				</fo:block>
		</fo:table-cell>
		</fo:table-row>
		
<!-- DESCRIPCION -->
		
		<fo:table-row>
		<fo:table-cell>
				<fo:block space-after="1mm" text-align="left" font-weight="bold">
				</fo:block>
		</fo:table-cell>
		<fo:table-cell border="0.5pt solid {$lineas}" padding-left="1mm" padding-top="1mm" border-bottom-style="none" border-top-style="none" background-color="{$gris-suave}">
				<fo:block space-after="1mm" text-align="left" font-weight="bold">
					<fo:inline color="{$negro}">Cobertura</fo:inline>
				</fo:block>
		</fo:table-cell>
		<fo:table-cell border="0.5pt solid {$lineas}" padding-left="1mm" padding-top="1mm" border-bottom-style="none"  border-top-style="none" background-color="{$gris-suave}">
				<fo:block space-after="1mm" text-align="left">
					<fo:inline color="{$negro}">Cubre saldo insoluto de la línea de emergencia, con un tope máximo correspondiente al cupo autorizado.</fo:inline>
				</fo:block>
		</fo:table-cell>
		</fo:table-row>		
		
		<fo:table-row>
		<fo:table-cell>
				<fo:block space-after="1mm" text-align="left" font-weight="bold">
				</fo:block>
		</fo:table-cell>
		<fo:table-cell border="0.5pt solid {$lineas}" padding-top="2mm" padding-left="1mm" border-bottom-style="none" border-top-style="none">
				<fo:block space-after="1mm" text-align="left" font-weight="bold">
					<fo:inline color="{$negro}">Compañía de Seguros</fo:inline>
				</fo:block>
		</fo:table-cell>
		<fo:table-cell border="0.5pt solid {$lineas}" padding-top="2mm" padding-left="1mm" border-bottom-style="none"  border-top-style="none">
				<fo:block space-after="1mm" text-align="left">
					<fo:inline color="{$negro}">Bci Seguros Vida S.A.</fo:inline>
				</fo:block>
		</fo:table-cell>
		</fo:table-row>		
		
		<fo:table-row>
		<fo:table-cell>
				<fo:block space-after="1mm" text-align="left" font-weight="bold">
				</fo:block>
		</fo:table-cell>
		<fo:table-cell border="0.5pt solid {$lineas}" padding-top="2mm" padding-left="1mm" border-bottom-style="none" border-top-style="none" background-color="{$gris-suave}">
				<fo:block space-after="1mm" text-align="left" font-weight="bold">
					<fo:inline color="{$negro}">Corredora de Seguros</fo:inline>
				</fo:block>
		</fo:table-cell>
		<fo:table-cell border="0.5pt solid {$lineas}" padding-top="2mm" padding-left="1mm" border-bottom-style="none"  border-top-style="none" background-color="{$gris-suave}">
				<fo:block space-after="1mm" text-align="left">
					<fo:inline color="{$negro}">Bci Corredora de Seguros</fo:inline>
				</fo:block>
		</fo:table-cell>
		</fo:table-row>
		
		
		<fo:table-row>
			<fo:table-cell number-columns-spanned="2" border="0.25pt solid {$gris-dark}" background-color="{$gris-oscuro}" padding-left="1mm" padding-top="1mm" border-top-style="none" border-left-style="none">
					<fo:block space-after="1mm" text-align="left" font-weight="bold">
						<fo:inline color="{$negro}">Impuesto</fo:inline>
					</fo:block>
			</fo:table-cell>
			<fo:table-cell background-color="{$gris-oscuro}" padding-top="1mm">
					<fo:block space-after="1mm" text-align="left">
					</fo:block>
			</fo:table-cell>
		</fo:table-row>
		
		
		<fo:table-row>
		<fo:table-cell>
				<fo:block space-after="1mm" text-align="left" font-weight="bold">
				</fo:block>
		</fo:table-cell>
		<fo:table-cell>

			<fo:table table-layout="fixed" border="1px">
			<fo:table-column column-width="13cm"/>
			<fo:table-body>
				
				<!--
				<fo:table-row>
				<fo:table-cell border="0.5pt solid {$lineas}" background-color="{$gris-oscuro}" padding-left="2mm" padding-top="1mm" border-bottom-style="none" border-top-style="none">
						<fo:block space-after="1mm" text-align="left" font-weight="bold">
							<fo:inline color="{$negro}">Impuesto</fo:inline>
						</fo:block>
				</fo:table-cell>
				</fo:table-row>

				-->
				
				<fo:table-row>
				<fo:table-cell border="0.5pt solid {$lineas}" padding-left="2mm">
						<fo:block text-align="left" padding-before="2mm" padding-after="2mm">
							<fo:inline color="{$negro}">DL 3.475 Sobre Impuesto de Timbres y Estampillas. Se devengará sólo sobre el monto utilizado de Línea de Crédito de Emergencia.</fo:inline>
						</fo:block>
				</fo:table-cell>
				</fo:table-row>
		
			</fo:table-body>
			</fo:table>

			
		</fo:table-cell>
		</fo:table-row>
	</fo:table-body>
	</fo:table>
		
	<fo:block font-size="9pt">
		<xsl:call-template name="cabeceraAzul">
			<xsl:with-param name="glosa" select="'Gasto Notarial'"/>
		</xsl:call-template>
	</fo:block>
	
          <fo:table font-size="9pt"  space-before.optimum="1pt" space-after.optimum="1pt">
            <fo:table-column column-width="2cm"/>
            <fo:table-column column-width="2cm"/>
            <fo:table-column column-width="12cm"/>
            <fo:table-body>
              <fo:table-row>
                <fo:table-cell padding="1mm" border="0.5pt solid {$lineas}">
                  <fo:block text-align="left" font-weight="bold">
                      Monto
                  </fo:block>
                </fo:table-cell>
                <fo:table-cell padding="1mm" border="0.5pt solid {$lineas}">
                  <fo:block text-align="left" color="{$gris-oscuro}">
                      $0.-
                  </fo:block>
                </fo:table-cell>
                <fo:table-cell padding="1mm" border="0.5pt solid {$lineas}">
                  <fo:block text-align="justify">
					  <fo:inline color="{$negro}" font-weight="bold">Información: </fo:inline>  Este monto es referencial y podrá variar según la Notaría y Región, ciudad o comuna en que ésta se encuentre. Considera el costo bajo el supuesto de tenencia de Línea de Sobregiro, es decir, bajo la existencia de pagaré firmado.
                  </fo:block>
                </fo:table-cell>                
              </fo:table-row>
            </fo:table-body>
          </fo:table>	
	

</xsl:template>


<xsl:template name="logo">
<fo:block space-after="5mm">
		<xsl:choose>
			<xsl:when test="canal = '110'">
			<fo:external-graphic width="112.53px" height="55px">
				<xsl:attribute name="src">
                	<xsl:value-of select='urlLogo'/>
            	</xsl:attribute>
            </fo:external-graphic>
			</xsl:when>
			<xsl:when test="canal = '100'">
			<fo:external-graphic width="97px" height="60px">
				<xsl:attribute name="src">
                	<xsl:value-of select='urlLogo'/>
            	</xsl:attribute>
            </fo:external-graphic>
			</xsl:when>
		</xsl:choose>			
</fo:block>
</xsl:template>

<!-- COSTOS POR ATRASO -->
<xsl:template name="costosPorAtraso">
<fo:block font-size="9pt">
	<fo:table table-layout="fixed" border="1px">
	<fo:table-column column-width="8cm"/>
	<fo:table-column column-width="8cm"/>
	<fo:table-body>
		<fo:table-row>
		<fo:table-cell border="0.5pt solid {$lineas}" padding-left="1mm">
				<fo:block text-align="left" padding-before="1mm" padding-after="1mm" font-weight="bold">
					<fo:inline color="{$negro}">Interés Moratorio  (4)</fo:inline>
				</fo:block>
		</fo:table-cell>
		<fo:table-cell border="0.5pt solid {$lineas}" padding-left="1mm">
				<fo:block space-after="1mm" text-align="left" padding-before="1mm" padding-after="1mm">
					<fo:inline color="{$negro}">Tasa Máxima Convencional (TMC) vigente a la época de la mora</fo:inline>
				</fo:block>
		</fo:table-cell>
		</fo:table-row>

	</fo:table-body>
	</fo:table>
	
	<fo:table table-layout="fixed" border="1px">
	<fo:table-column column-width="16cm"/>
	<fo:table-body>
		<fo:table-row>
		<fo:table-cell border="0.5pt solid {$lineas}" background-color="{$gris-oscuro}" padding-left="1mm">
				<fo:block text-align="left" padding-before="2mm" padding-after="2mm">
					<fo:inline color="{$negro}">Gastos de Honorarios de Cobranza (%)</fo:inline>
				</fo:block>
		</fo:table-cell>
		</fo:table-row>
	</fo:table-body>
	</fo:table>

	<fo:table table-layout="fixed" border="1px">
	<fo:table-column column-width="8cm"/>
	<fo:table-column column-width="8cm"/>
	<fo:table-body>			
		<fo:table-row>
		<fo:table-cell border="0.5pt solid {$lineas}" padding-left="2mm" background-color="{$gris-suave}">
				<fo:block text-align="center" padding-before="2mm" padding-after="1mm" font-weight="bold">
					<fo:inline color="{$negro}">Monto Deuda o Cuota Morosa</fo:inline>
				</fo:block>
		</fo:table-cell>
		<fo:table-cell border="0.5pt solid {$lineas}" padding-left="1mm" background-color="{$gris-suave}">
				<fo:block space-after="1mm" text-align="center" padding-before="2mm" padding-after="1mm">
					<fo:inline color="{$negro}">% Honorarios</fo:inline>
				</fo:block>
		</fo:table-cell>
		</fo:table-row>
		<fo:table-row>
		<fo:table-cell border="0.5pt solid {$lineas}" padding-left="2mm">
				<fo:block text-align="left" padding-before="2mm" padding-after="1mm" font-weight="bold">
					<fo:inline color="{$negro}">Obligaciones hasta 10 Unidades de Fomento </fo:inline>
				</fo:block>
		</fo:table-cell>
		<fo:table-cell border="0.5pt solid {$lineas}" padding-left="1mm">
				<fo:block space-after="1mm" text-align="center" padding-before="2mm" padding-after="1mm">
					<fo:inline color="{$negro}">9%</fo:inline>
				</fo:block>
		</fo:table-cell>
		</fo:table-row>
		<fo:table-row>
		<fo:table-cell border="0.5pt solid {$lineas}" padding-left="2mm">
				<fo:block text-align="left" padding-before="2mm" padding-after="1mm" font-weight="bold">
					<fo:inline color="{$negro}">Por la parte que exceda de 10 UF y hasta 50 UF</fo:inline>
				</fo:block>
		</fo:table-cell>
		<fo:table-cell border="0.5pt solid {$lineas}" padding-left="1mm">
				<fo:block space-after="1mm" text-align="center" padding-before="2mm" padding-after="1mm">
					<fo:inline color="{$negro}">6%</fo:inline>
				</fo:block>
		</fo:table-cell>
		</fo:table-row>
		<fo:table-row>
		<fo:table-cell border="0.5pt solid {$lineas}" padding-left="2mm">
				<fo:block text-align="left" padding-before="2mm" padding-after="1mm" font-weight="bold">
					<fo:inline color="{$negro}">Por la parte que exceda de 50 UF</fo:inline>
				</fo:block>
		</fo:table-cell>
		<fo:table-cell border="0.5pt solid {$lineas}" padding-left="1mm">
				<fo:block space-after="1mm" text-align="center" padding-before="2mm" padding-after="1mm">
					<fo:inline color="{$negro}">3%</fo:inline>
				</fo:block>
		</fo:table-cell>
		</fo:table-row>
		
	</fo:table-body>
	</fo:table>
	
</fo:block>
</xsl:template>


<!-- ADVERTENCIA -->
<xsl:template name="advertencia">
<fo:block font-size="9pt">
	<fo:table table-layout="fixed" border="1px">
	<fo:table-column column-width="16cm"/>
	<fo:table-body>
		<fo:table-row>
		<fo:table-cell border="0.5pt solid {$lineas}" padding-left="2mm" padding-right="2mm">
				<fo:block text-align="justify" padding-before="2mm" padding-after="2mm">
					<fo:inline color="{$negro}">El producto de que da cuenta esta Hoja Resumen, requiere del consumidor contratante Don(ña) <fo:inline color="{$negro}"><xsl:value-of select="nombreTitular"/></fo:inline>, patrimonio o Ingresos futuros suficientes para pagar comisiones,  intereses y deuda capital, según corresponda, durante todo el periodo de vigencia de la Línea de Crédito de Emergencia.</fo:inline>
				</fo:block>
		</fo:table-cell>
		</fo:table-row>

	</fo:table-body>
	</fo:table>
	
</fo:block>
</xsl:template>


</xsl:stylesheet>
