<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.1" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format">
	<!--xsl:stylesheet xmlns:fox="http://xml.apache.org/fop/extensions" xmlns:fo="http://www.w3.org/1999/XSL/Format" version="1.1" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:saxon="http://icl.com/saxon" extension-element-prefixes="saxon"-->

	<xsl:import href="variables.xsl"/>
	<xsl:import href="encabezado.xsl"/>
	<xsl:import href="figuras_legales.xsl"/>
	<xsl:import href="materia_asegurada.xsl"/>
	<xsl:import href="primas.xsl"/>
	<xsl:import href="coberturas.xsl"/>
	<xsl:import href="plan_inversion.xsl"/>
	<xsl:import href="dps.xsl"/>
	<xsl:import href="antecedentes_pago.xsl"/>
	<xsl:import href="detalle_de_pago.xsl"/>
	<xsl:import href="glosas.xsl"/>
	<xsl:import href="firmas.xsl"/>
	<xsl:import href="mandatos.xsl"/>
	<xsl:import href="proyeccion.xsl"/>
	
	<xsl:import href="endoso/endoso_antecedentes_pago.xsl"/>
	<xsl:import href="endoso/endoso_datos.xsl"/>
	<xsl:import href="endoso/endoso_figuras_legales.xsl"/>
	<xsl:import href="endoso/endoso_firmas.xsl"/>
	<xsl:import href="endoso/endoso_materia_asegurada.xsl"/>
	<xsl:import href="endoso/endoso_plan_inversion.xsl"/>
	
	<xsl:import href="doc_anex/doc_anex.xsl"/>
	
	

	<xsl:template match="data">
		<fo:root xmlns:fo="http://www.w3.org/1999/XSL/Format">
			<fo:layout-master-set>
			<!--
				<fo:simple-page-master master-name="paginaPrincipal" page-height="{$varPagAlto}" page-width="{$varPagAncho}" margin-left="1cm" margin-right="1cm" margin-top="0.7cm">
					<fo:region-body margin-top="0.8cm" margin-bottom="2cm"/>
					<fo:region-before extent="0cm" precedence="true"/>
					<fo:region-after extent="1.5cm" precedence="true"/>
				</fo:simple-page-master>
			-->

				<fo:simple-page-master master-name="paginaPrimera" page-height="{$varPagAlto}" page-width="{$varPagAncho}" margin-left="{$varPagMargenIzquierdo}" margin-right="{$varPagMargenDerecho}" margin-top="{$varPagMargenSuperior}" margin-bottom="{$varPagMargenInferior}">
					<fo:region-body margin-top="0cm" margin-bottom="0cm"/>
					<fo:region-before region-name="regionEncabezadoPrimera" extent="0cm" precedence="true"/>
					<fo:region-after extent="0cm" precedence="true"/>
				</fo:simple-page-master>

				<fo:simple-page-master master-name="paginaResto" page-height="{$varPagAlto}" page-width="{$varPagAncho}" margin-left="{$varPagMargenIzquierdo}" margin-right="{$varPagMargenDerecho}" margin-top="{$varPagMargenSuperior}" margin-bottom="{$varPagMargenInferior}">
					<fo:region-body margin-top="0.5cm" margin-bottom="0cm"/>					
					<fo:region-before region-name="regionEncabezadoResto" extent="0.5cm" precedence="true"/>
					<fo:region-after extent="0cm" precedence="true"/>
					<!--<fo:region-after region-name="regionPieResto" extent="1.5cm" precedence="true"/>-->
				</fo:simple-page-master>
				
				<fo:simple-page-master master-name="paginaMandato" page-height="{$varPagAlto}" page-width="{$varPagAncho}" margin-left="{$varPagMargenIzquierdo}" margin-right="{$varPagMargenDerecho}" margin-top="{$varPagMargenSuperior}" margin-bottom="{$varPagMargenInferior}">
					<fo:region-body margin-top="0cm" margin-bottom="0cm"/>
					<fo:region-before extent="0cm" precedence="true"/>
					<fo:region-after extent="0cm" precedence="true"/>
				</fo:simple-page-master>
				
				<fo:page-sequence-master master-name="masterSequenceName1">
					<fo:repeatable-page-master-alternatives>
						<fo:conditional-page-master-reference master-reference="paginaPrimera" page-position="first"/>
						<fo:conditional-page-master-reference master-reference="paginaResto" page-position="rest"/>
					</fo:repeatable-page-master-alternatives>
				</fo:page-sequence-master>
				
			</fo:layout-master-set>
			
			<xsl:if test=" count( /data/universo/documentos-anexos/da-documento[reemplaza='1'] ) = 0 ">
				<fo:page-sequence master-name="paginaPrincipal" master-reference="masterSequenceName1">
					<!--<fo:static-content flow-name="xsl-region-before">-->
					<fo:static-content flow-name="regionEncabezadoResto">
						<fo:block  text-align="right" font-size="11pt">
							<xsl:value-of select="universo/identificacion/documento/tipo"/> DE SEGURO Nro 
							<xsl:if test="( universo/identificacion/documento/tipo != 'POLIZA' )">
								<xsl:value-of select="universo/identificacion/documento/numeroseguro"/>
							</xsl:if>
							<xsl:if test="( universo/identificacion/documento/tipo = 'POLIZA' )">
								<xsl:value-of select="universo/identificacion/documento/numeropoliza"/>
							</xsl:if>
							 (continuación)
							  - 
							 Página <fo:page-number/>
						</fo:block>
					</fo:static-content>
					
					<fo:static-content flow-name="xsl-region-after">
						<!--
						<fo:block text-align-last="center" font-size="11pt">
							Página <fo:page-number/>
						</fo:block>
						-->
					</fo:static-content>
					
					<fo:flow flow-name="xsl-region-body" color="#006666" font-size="11pt" >
						<fo:block >
							<xsl:if test="( universo/identificacion/documento/tipo = 'ENDOSO' )">
								<xsl:call-template name="temp_endoso_datos"/>
								<xsl:call-template name="temp_endoso_figuras_legales"/>
								<xsl:call-template name="temp_endoso_materia_asegeurada"/>
								<xsl:call-template name="temp_endoso_plan_inversion"/>
								<xsl:call-template name="temp_dps"/>
								<xsl:call-template name="temp_endoso_antecedentes_pago"/>
								<xsl:call-template name="temp_glosas"/>
								<xsl:call-template name="temp_endoso_firmas"/>
							</xsl:if>
							<xsl:if test="( universo/identificacion/documento/tipo != 'ENDOSO' )">
								<xsl:call-template name="temp_encabezado"/>
								<xsl:call-template name="temp_figuras_legales_genericas"/>
								<xsl:call-template name="temp_materia_asegeurada"/>
								<xsl:call-template name="temp_primas"/>
								<xsl:call-template name="temp_coberturas"/>
								<xsl:call-template name="temp_plan_inversion"/>
								<xsl:call-template name="temp_dps"/>
								<xsl:call-template name="temp_antecedentes_pago"/>
								<xsl:call-template name="temp_detalle_de_pago"/>
								<xsl:call-template name="temp_glosas"/>
							</xsl:if>
							<fo:block id="last-page"/> <!-- Para idenrificar la ultima pagina -->
							
						</fo:block>
					</fo:flow>
	
				</fo:page-sequence>
				
				<!-- si tiene mas de 0 universo/mandato  -->
				<xsl:if test="count(  universo/mandato ) > 0">
					<fo:page-sequence master-name="paginaMandato" master-reference="paginaMandato">
						<fo:flow flow-name="xsl-region-body" color="#006666" font-size="11pt" >
							<fo:block >
								<xsl:apply-templates select="universo/mandato"/>
							</fo:block>								
						</fo:flow>
					</fo:page-sequence>
				</xsl:if>
	
				<!-- si tiene mas de 0 universo/proyeccion  -->
				<xsl:if test="count(  universo/proyeccion ) > 0">
					<fo:page-sequence master-name="paginaProyeccion" master-reference="paginaMandato">
						<fo:flow flow-name="xsl-region-body" color="#006666" font-size="11pt" >
							<fo:block >
								<xsl:apply-templates select="universo/proyeccion"/>
							</fo:block>								
						</fo:flow>
					</fo:page-sequence>
				</xsl:if>
			</xsl:if>
			
			<xsl:call-template name="temp_doc_anex"/>

		</fo:root>
	</xsl:template>
	
	<xsl:template name="temp_figuras_legales_genericas">
		<fo:block>
			<xsl:apply-templates select="universo/figuraslegalesgenerales/figuras"/>
		</fo:block>
	</xsl:template>
</xsl:stylesheet>
