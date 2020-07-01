<?xml version="1.0" encoding="ISO-8859-1" ?>
<xsl:stylesheet
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns:fo="http://www.w3.org/1999/XSL/Format"
  version="1.0">
  <xsl:template match="comprobante">
	<xsl:variable name="imagen"><xsl:value-of select="rutaImagen"/>logo.gif</xsl:variable>
<fo:root xmlns:fo="http://www.w3.org/1999/XSL/Format">
	<fo:layout-master-set>

		<fo:simple-page-master margin-right="2.0cm" margin-left="2.0cm" margin-bottom="1.0cm" margin-top="1.0cm" page-width="21cm" page-height="29.7cm" master-name="first">

			<fo:region-before extent="1.5cm"/>

			<fo:region-body margin-bottom="1.5cm" margin-top="1.5cm"/>

			<fo:region-after extent="1.0cm"/>

		</fo:simple-page-master>

	</fo:layout-master-set>

	<fo:page-sequence master-reference="first" language="en" hyphenate="true">
	
	
<fo:static-content flow-name="xsl-region-before">
<fo:block line-height="12pt" font-size="10pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always">
</fo:block></fo:static-content>
<fo:static-content flow-name="xsl-region-after">
<fo:block line-height="12pt" font-size="10pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always">
</fo:block>
</fo:static-content>



<fo:flow flow-name="xsl-region-body">
		<fo:table table-layout="fixed" text-align="start">
<fo:table-column column-width="8.15cm"/>
<fo:table-column column-width="8.15cm"/>
<fo:table-body>
			<fo:table-row>
				<fo:table-cell><fo:block line-height="12pt" font-size="10pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always"><fo:external-graphic left="10cm" text-align="right" position="relative" src="{$imagen}"/></fo:block></fo:table-cell><fo:table-cell></fo:table-cell>
			</fo:table-row>
			<fo:table-row>
				<fo:table-cell><fo:block line-height="12pt" font-weight="bold" color="rgb(3,97,162)" font-size="8pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always"><xsl:value-of select='ejecutivo'/></fo:block></fo:table-cell><fo:table-cell><fo:block line-height="12pt" font-weight="bold" font-size="8pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always" text-align="end"><xsl:value-of select='fecha'/></fo:block><fo:block line-height="12pt" font-weight="bold" font-size="8pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always" text-align="end">Plataforma:<xsl:value-of select='plataforma'/></fo:block></fo:table-cell>
			</fo:table-row>
			<fo:table-row>
				<fo:table-cell number-columns-spanned="2"><fo:block line-height="12pt" font-weight="bold" color="rgb(3,97,162)" font-size="15pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always"><xsl:value-of select='desSolicitud'/></fo:block></fo:table-cell>
			</fo:table-row>
		</fo:table-body></fo:table>
		<fo:table table-layout="fixed" text-align="start">
			<fo:table-column column-width="16.30cm"/>
			<fo:table-body>
				<fo:table-row>
					<fo:table-cell><fo:block line-height="12pt" font-weight="bold" font-size="15pt" space-before.optimum="10pt" space-after.optimum="10pt" keep-together="always">Detalle Solicitud Nº<xsl:value-of select='numero'/></fo:block></fo:table-cell>
					
				</fo:table-row>
			</fo:table-body>
		</fo:table>
		
		<fo:table table-layout="fixed" text-align="start">
<fo:table-column column-width="4.08cm"/>
<fo:table-column column-width="4.08cm"/>
<fo:table-column column-width="4.08cm"/>
<fo:table-column column-width="4.08cm"/>
<fo:table-body>
			<fo:table-row>
				<fo:table-cell border-style="solid" border-color="black" border-width="0.5pt"
				    ><fo:block line-height="12pt" font-weight="bold" font-size="8pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always">Fecha Solicitud</fo:block></fo:table-cell>
				<fo:table-cell border-style="solid" border-color="black" border-width="0.5pt"
				    ><fo:block line-height="12pt" font-size="8pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always"><xsl:value-of select='fechaSolicitud'/></fo:block></fo:table-cell>
				<fo:table-cell border-style="solid" border-color="black" border-width="0.5pt"
				    ><fo:block line-height="12pt" font-weight="bold" font-size="8pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always">Tipo de Transferencia</fo:block></fo:table-cell>
				<fo:table-cell border-style="solid" border-color="black" border-width="0.5pt"
				    ><fo:block line-height="12pt" font-size="8pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always" text-align="end"><xsl:value-of select='tipoTransferencia'/></fo:block></fo:table-cell>
			</fo:table-row>
		</fo:table-body></fo:table>
		<fo:table table-layout="fixed" text-align="start">
<fo:table-column column-width="8.15cm"/>
<fo:table-column column-width="8.15cm"/>
<fo:table-body>
			<fo:table-row>
				<fo:table-cell number-columns-spanned="2"><fo:block line-height="12pt" font-weight="bold" font-size="15pt" space-before.optimum="10pt" space-after.optimum="10pt" keep-together="always">Datos Cliente</fo:block></fo:table-cell>
			</fo:table-row>
		</fo:table-body></fo:table>
		<fo:table table-layout="fixed" text-align="start">
<fo:table-column column-width="4.08cm"/>
<fo:table-column column-width="4.08cm"/>
<fo:table-column column-width="4.08cm"/>
<fo:table-column column-width="4.08cm"/>
<fo:table-body>
			<fo:table-row>
				<fo:table-cell border-style="solid" border-color="black" border-width="0.5pt"
				    ><fo:block line-height="12pt" font-weight="bold" font-size="8pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always">Rut</fo:block></fo:table-cell>
				<fo:table-cell border-style="solid" border-color="black" border-width="0.5pt"
				    ><fo:block line-height="12pt" font-size="8pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always"><xsl:value-of select='rutCliente'/>-<xsl:value-of select='dvCliente'/></fo:block></fo:table-cell>
				<fo:table-cell border-style="solid" border-color="black" border-width="0.5pt"
				    ><fo:block line-height="12pt" font-weight="bold" font-size="8pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always">Teléfono</fo:block></fo:table-cell>
				<fo:table-cell border-style="solid" border-color="black" border-width="0.5pt"
				    ><fo:block line-height="12pt" font-size="8pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always" text-align="end"><xsl:value-of select='telefono'/></fo:block></fo:table-cell>
			</fo:table-row>
			<fo:table-row>
				<fo:table-cell border-style="solid" border-color="black" border-width="0.5pt"
				    ><fo:block line-height="12pt" font-weight="bold" font-size="8pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always">Nombre</fo:block></fo:table-cell>
				<fo:table-cell border-style="solid" border-color="black" border-width="0.5pt"
				    ><fo:block line-height="12pt" font-size="8pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always"><xsl:value-of select='nombreCliente'/></fo:block></fo:table-cell>
				<fo:table-cell border-style="solid" border-color="black" border-width="0.5pt"
				    ><fo:block line-height="12pt" font-weight="bold" font-size="8pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always">E-mail</fo:block></fo:table-cell>
				<fo:table-cell border-style="solid" border-color="black" border-width="0.5pt"
				    ><fo:block line-height="12pt" font-size="8pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always" text-align="end"><xsl:value-of select='email'/></fo:block></fo:table-cell>
			</fo:table-row>
			<fo:table-row>
				<fo:table-cell border-style="solid" border-color="black" border-width="0.5pt"
				    ><fo:block line-height="12pt" font-weight="bold" font-size="8pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always">Dirección</fo:block></fo:table-cell>
				<fo:table-cell border-style="solid" border-color="black" border-width="0.5pt"
				    ><fo:block line-height="12pt" font-size="8pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always"><xsl:value-of select='direccion'/></fo:block></fo:table-cell>
				<fo:table-cell border-style="solid" border-color="black" border-width="0.5pt"
				    ><fo:block line-height="12pt" font-weight="bold" font-size="8pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always">Cuenta Origen</fo:block></fo:table-cell>
				<fo:table-cell border-style="solid" border-color="black" border-width="0.5pt"
				    ><fo:block line-height="12pt" font-size="8pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always" text-align="end"><xsl:value-of select='ctaOrigen'/></fo:block></fo:table-cell>
			</fo:table-row>
		</fo:table-body></fo:table>
		<fo:table table-layout="fixed" text-align="start">
<fo:table-column column-width="8.15cm"/>
<fo:table-column column-width="8.15cm"/>
<fo:table-body>
			<fo:table-row>
				<fo:table-cell number-columns-spanned="2"><fo:block line-height="12pt" font-weight="bold" font-size="15pt" space-before.optimum="10pt" space-after.optimum="10pt" keep-together="always">Datos Beneficiario</fo:block></fo:table-cell>
			</fo:table-row>
		</fo:table-body></fo:table>
		<fo:table table-layout="fixed" text-align="start">
<fo:table-column column-width="4.08cm"/>
<fo:table-column column-width="4.08cm"/>
<fo:table-column column-width="4.08cm"/>
<fo:table-column column-width="4.08cm"/>
<fo:table-body>
			<fo:table-row>
				<fo:table-cell border-style="solid" border-color="black" border-width="0.5pt"
				    ><fo:block line-height="12pt" font-weight="bold" font-size="8pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always">Nombre</fo:block></fo:table-cell>
				<fo:table-cell border-style="solid" border-color="black" border-width="0.5pt"
				    ><fo:block line-height="12pt" font-size="8pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always"><xsl:value-of select='nombreBeneficiario'/></fo:block></fo:table-cell>
				<fo:table-cell border-style="solid" border-color="black" border-width="0.5pt"
				    ><fo:block line-height="12pt" font-weight="bold" font-size="8pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always">Bco. Beneficiario-CódigoSwift</fo:block></fo:table-cell>
				<fo:table-cell border-style="solid" border-color="black" border-width="0.5pt"
				    ><fo:block line-height="12pt" font-size="8pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always" text-align="end"><xsl:value-of select='bcoBeneficiario'/>-<xsl:value-of select='codigoSwift'/></fo:block></fo:table-cell>
			</fo:table-row>
			<fo:table-row>
				<fo:table-cell border-style="solid" border-color="black" border-width="0.5pt"
				    ><fo:block line-height="12pt" font-weight="bold" font-size="8pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always">Dirección</fo:block></fo:table-cell>
				<fo:table-cell border-style="solid" border-color="black" border-width="0.5pt"
				    ><fo:block line-height="12pt" font-size="8pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always"><xsl:value-of select='direccionBeneficiario'/></fo:block></fo:table-cell>
				<fo:table-cell border-style="solid" border-color="black" border-width="0.5pt"
				    ><fo:block line-height="12pt" font-weight="bold" font-size="8pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always">Bco. Intermediario-CódigoSwift</fo:block></fo:table-cell>
				<fo:table-cell border-style="solid" border-color="black" border-width="0.5pt"
				    ><fo:block line-height="12pt" font-size="8pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always" text-align="end"><xsl:value-of select='bcoIntermidiario'/>-<xsl:value-of select='codigoSwiftIntermediario'/></fo:block></fo:table-cell>
			</fo:table-row>
			<fo:table-row>
				<fo:table-cell border-style="solid" border-color="black" border-width="0.5pt"
				    ><fo:block line-height="12pt" font-weight="bold" font-size="8pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always">E-mail</fo:block></fo:table-cell>
				<fo:table-cell border-style="solid" border-color="black" border-width="0.5pt"
				    ><fo:block line-height="12pt" font-size="8pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always"><xsl:value-of select='emailBeneficiario'/></fo:block></fo:table-cell>
				<fo:table-cell border-style="solid" border-color="black" border-width="0.5pt"
				    ><fo:block line-height="12pt" font-weight="bold" font-size="8pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always">Cuenta Destino</fo:block></fo:table-cell>
				<fo:table-cell border-style="solid" border-color="black" border-width="0.5pt"
				    ><fo:block line-height="12pt" font-size="8pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always" text-align="end"><xsl:value-of select='cuentaDestino'/></fo:block></fo:table-cell>
			</fo:table-row>
			<fo:table-row>
				<fo:table-cell border-style="solid" border-color="black" border-width="0.5pt"
				    ><fo:block line-height="12pt" font-weight="bold" font-size="8pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always">País</fo:block></fo:table-cell>
				<fo:table-cell border-style="solid" border-color="black" border-width="0.5pt"
				    ><fo:block line-height="12pt" font-size="8pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always"><xsl:value-of select='pais'/></fo:block></fo:table-cell>
				<fo:table-cell border-style="solid" border-color="black" border-width="0.5pt"
				    ><fo:block line-height="12pt" font-weight="bold" font-size="8pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always">Tipo de Cuenta</fo:block></fo:table-cell>
				<fo:table-cell border-style="solid" border-color="black" border-width="0.5pt"
				    ><fo:block line-height="12pt" font-size="8pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always" text-align="end"><xsl:value-of select='tipoCuenta'/></fo:block></fo:table-cell>
			</fo:table-row>
			<xsl:variable name="codigo"><xsl:value-of select="codigo"/></xsl:variable>
       			<xsl:variable name="convenio"><xsl:value-of select="convenio"/></xsl:variable>
			<fo:table-row>
				<fo:table-cell border-style="solid" border-color="black" border-width="0.5pt"
				    ><fo:block line-height="12pt" font-weight="bold" font-size="8pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always">Ciudad</fo:block></fo:table-cell>
				<fo:table-cell border-style="solid" border-color="black" border-width="0.5pt"
				    ><fo:block line-height="12pt" font-size="8pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always"><xsl:value-of select='ciudad'/></fo:block></fo:table-cell>
				<xsl:if test="$convenio = 'true'">    
				<fo:table-cell border-style="solid" border-color="black" border-width="0.5pt"
					    ><fo:block line-height="12pt" font-weight="bold" font-size="8pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always"> </fo:block></fo:table-cell>
				<fo:table-cell border-style="solid" border-color="black" border-width="0.5pt"
					    ><fo:block line-height="12pt" font-size="8pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always" text-align="end"> </fo:block></fo:table-cell>
				</xsl:if>
				<xsl:if test="$codigo = '1'">
					<fo:table-cell border-style="solid" border-color="black" border-width="0.5pt"
					    ><fo:block line-height="12pt" font-weight="bold" font-size="8pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always">ABA </fo:block></fo:table-cell>
					<fo:table-cell border-style="solid" border-color="black" border-width="0.5pt"
					    ><fo:block line-height="12pt" font-size="8pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always" text-align="end"><xsl:value-of select='ben_aba'/> </fo:block></fo:table-cell>				
				</xsl:if>
				<xsl:if test="codigo = '0'">
					<fo:table-cell border-style="solid" border-color="black" border-width="0.5pt"
					    ><fo:block line-height="12pt" font-weight="bold" font-size="8pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always">CUIT </fo:block></fo:table-cell>
					<fo:table-cell border-style="solid" border-color="black" border-width="0.5pt"
					    ><fo:block line-height="12pt" font-size="8pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always" text-align="end"><xsl:value-of select='ben_cuit'/> </fo:block></fo:table-cell>								
				</xsl:if>
			</fo:table-row>
			<xsl:if test="codigo = '0'">			
				<fo:table-row>
					<fo:table-cell border-style="solid" border-color="black" border-width="0.5pt"
					    ><fo:block line-height="12pt" font-weight="bold" font-size="8pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always">Id Personal</fo:block></fo:table-cell>
					<fo:table-cell border-style="solid" border-color="black" border-width="0.5pt"
					    ><fo:block line-height="12pt" font-size="8pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always"><xsl:value-of select='idPersonal'/></fo:block></fo:table-cell>
					<fo:table-cell border-style="solid" border-color="black" border-width="0.5pt"
					    ><fo:block line-height="12pt" font-weight="bold" font-size="8pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always"> </fo:block></fo:table-cell>
					<fo:table-cell border-style="solid" border-color="black" border-width="0.5pt"
					    ><fo:block line-height="12pt" font-size="8pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always" text-align="end"> </fo:block></fo:table-cell>				    
			</fo:table-row>
			</xsl:if>
			
			
			
</fo:table-body>
</fo:table>
		<fo:table table-layout="fixed" text-align="start">
<fo:table-column column-width="8.15cm"/>
<fo:table-column column-width="8.15cm"/>
<fo:table-body>
			<fo:table-row>
				<fo:table-cell number-columns-spanned="2"><fo:block line-height="12pt" font-weight="bold" font-size="15pt" space-before.optimum="10pt" space-after.optimum="10pt" keep-together="always">Datos Transacción</fo:block></fo:table-cell>
			</fo:table-row>
		</fo:table-body></fo:table>
		<fo:table table-layout="fixed" text-align="start">
<fo:table-column column-width="4.08cm"/>
<fo:table-column column-width="4.08cm"/>
<fo:table-column column-width="4.08cm"/>
<fo:table-column column-width="4.08cm"/>
<fo:table-body>
			<fo:table-row>
				<fo:table-cell border-style="solid" border-color="black" border-width="0.5pt"
				    ><fo:block line-height="12pt" font-weight="bold" font-size="8pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always">Monto</fo:block></fo:table-cell>
				<fo:table-cell border-style="solid" border-color="black" border-width="0.5pt"
				    ><fo:block line-height="12pt" font-size="8pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always"><xsl:value-of select='monto'/></fo:block></fo:table-cell>
				<fo:table-cell border-style="solid" border-color="black" border-width="0.5pt"
				    ><fo:block line-height="12pt" font-weight="bold" font-size="8pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always">Gastos en el exterior</fo:block></fo:table-cell>
				<fo:table-cell border-style="solid" border-color="black" border-width="0.5pt"
				    ><fo:block line-height="12pt" font-size="8pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always" text-align="end"><xsl:value-of select='gastoExterior'/></fo:block></fo:table-cell>
			</fo:table-row>
			<fo:table-row>
				<fo:table-cell border-style="solid" border-color="black" border-width="0.5pt"
				    ><fo:block line-height="12pt" font-weight="bold" font-size="8pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always">Moneda</fo:block></fo:table-cell>
				<fo:table-cell border-style="solid" border-color="black" border-width="0.5pt"
				    ><fo:block line-height="12pt" font-size="8pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always"><xsl:value-of select='moneda'/></fo:block></fo:table-cell>
				<fo:table-cell border-style="solid" border-color="black" border-width="0.5pt"
				    ><fo:block line-height="12pt" font-weight="bold" font-size="8pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always">Motivo de Pago</fo:block></fo:table-cell>
				<fo:table-cell border-style="solid" border-color="black" border-width="0.5pt"
				    ><fo:block line-height="12pt" font-size="8pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always" text-align="end"><xsl:value-of select='motivoPago'/></fo:block></fo:table-cell>
			</fo:table-row>
			<fo:table-row>
				<fo:table-cell border-style="solid" border-color="black" border-width="0.5pt"
				    ><fo:block line-height="12pt" font-weight="bold" font-size="8pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always">Fecha Valuta</fo:block></fo:table-cell>
				<fo:table-cell border-style="solid" border-color="black" border-width="0.5pt"
				    ><fo:block line-height="12pt" font-size="8pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always"><xsl:value-of select='fechaValuta'/></fo:block></fo:table-cell>
				<fo:table-cell border-style="solid" border-color="black" border-width="0.5pt"
				    ><fo:block line-height="12pt" font-weight="bold" font-size="8pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always">Motivo de Transferencia</fo:block></fo:table-cell>
				<fo:table-cell border-style="solid" border-color="black" border-width="0.5pt"
				    ><fo:block line-height="12pt" font-size="8pt" space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always" text-align="end"><xsl:value-of select='motivoTransferencia'/></fo:block></fo:table-cell>
			</fo:table-row>
		</fo:table-body></fo:table>
	<fo:block space-before.optimum="1.5pt" space-after.optimum="1.5pt" keep-together="always" id="LastPage" line-height="1pt" font-size="1pt"></fo:block></fo:flow>
</fo:page-sequence></fo:root>
</xsl:template>
</xsl:stylesheet>
