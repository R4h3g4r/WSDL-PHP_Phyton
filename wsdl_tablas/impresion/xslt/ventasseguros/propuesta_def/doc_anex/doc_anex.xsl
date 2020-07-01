<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format">
		<xsl:import href="da_logos.xsl"/>
		<xsl:import href="da_firmas.xsl"/>
		<xsl:import href="da_coberturas.xsl"/>
		<xsl:import href="da_primas.xsl"/>
		<xsl:import href="da_texto_generico.xsl"/>
		<xsl:import href="da_mat_aseg.xsl"/>
		<xsl:import href="da_dps.xsl"/>
		<xsl:import href="../proyeccion.xsl"/>
		<xsl:import href="da_salto_pag.xsl"/>
		<xsl:import href="da_dps_resp.xsl"/>
		<xsl:import href="da_nro_prop.xsl"/>
		<xsl:import href="da_titulo.xsl"/>
		<xsl:import href="da_apv_ria_benef.xsl"/>
		<xsl:import href="da_apv_identif_aseg.xsl"/>
		<xsl:import href="da_apv_gastos_poliza.xsl"/>
		<xsl:import href="da_apv_form_pago.xsl"/>
		<xsl:import href="da_apv_prima_dep_inic.xsl"/>
		<xsl:import href="da_apv_acep_prop.xsl"/>
		<xsl:import href="da_sap_sol_inc.xsl"/>
		<xsl:import href="da_sap_trasp_ahorro.xsl"/>
		<xsl:import href="da_nro_poliza.xsl"/>
		<xsl:import href="da_antecedentes_pago.xsl"/>
	        <xsl:import href="da_nro_ejecutivo.xsl"/>  
	
	<xsl:template name="temp_doc_anex">
		<xsl:if test="count( universo/documentos-anexos/da-documento ) > 0">
			<xsl:apply-templates select="universo/documentos-anexos/da-documento[reemplaza='1']"/>
			<xsl:apply-templates select="universo/documentos-anexos/da-documento[reemplaza='0']"/>
		</xsl:if>		
	</xsl:template>
	
	<xsl:template match="da-documento">
		<xsl:if test=" not ( (count(da-zonas/da-zona)=1) and (da-zonas/da-zona[1]/id = '38') and (count( ../../mandato ) = 0)  ) ">
			<!--<fo:page-sequence master-name="paginaDocAnex" master-reference="paginaMandato" initial-page-number="1">-->
			<fo:page-sequence master-reference="masterSequenceName1" force-page-count="auto">
				<xsl:attribute name="master-name">paginaDocAnex_<xsl:value-of select="id"/></xsl:attribute>
				<!-- fin de atributos para fo:page-sequence -->
				
				<fo:static-content flow-name="regionEncabezadoResto">
					<fo:block  text-align="right" font-size="11pt">
						<!--<xsl:value-of select="../../identificacion/documento/tipo"/> DE SEGURO N° <xsl:value-of select="../../identificacion/documento/numeroseguro"/> (continuación)-->
						<xsl:value-of select="../../identificacion/documento/tipo"/> DE SEGURO Nro 
							<xsl:if test="( ../../identificacion/documento/tipo != 'POLIZA' )">
								<xsl:value-of select="../../identificacion/documento/numeroseguro"/>
							</xsl:if>
							<xsl:if test="( ../../identificacion/documento/tipo = 'POLIZA' )">
								<xsl:value-of select="../../identificacion/documento/numeropoliza"/>
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
						<xsl:call-template name="temp_da_logos"/>
						<!-- DATOS DE EJECUTIVO Y POLIZA -->	
										
						<xsl:if test=" reemplaza = '1' ">
							<fo:block padding-before="{$varEspacioExtreSecciones}">
								<fo:table table-layout="fixed" width="{$varTablaAncho}">
									<fo:table-column/>
									<fo:table-body>
										<fo:table-row>
											<fo:table-cell padding="2.0pt" border-style="solid" border-width="1.0pt" border-color="#000000" background-color="#336699">
												<fo:block text-align="center" font-size="12pt" font-weight="bold" color="#ffffff">
													<xsl:value-of select="nombre"/>
												</fo:block>
											</fo:table-cell>
										</fo:table-row>
									</fo:table-body>
								</fo:table>
							</fo:block>
						</xsl:if>
						
						<xsl:apply-templates  select="da-zonas/da-zona"/>
						
						<xsl:call-template name="temp_da_firmas"/>
						<!--fo:block id="da-last-page"/> < Para idenrificar la ultima pagina -->
					</fo:block>
				</fo:flow>
	
			</fo:page-sequence>
		</xsl:if>
	</xsl:template>
		
	<xsl:template match="da-zona">
		<xsl:choose>
			<xsl:when test="id =  '1' "><xsl:call-template name="temp_da_coberturas"/></xsl:when>
			<xsl:when test="id =  '5' "><xsl:call-template name="temp_da_primas"/></xsl:when>
			<xsl:when test="id =  '6' "><xsl:call-template name="temp_da_texto_generico"/></xsl:when>
			<xsl:when test="id =  '9' "><xsl:call-template name="temp_da_mat_aseg"/></xsl:when>
			<xsl:when test="id = '10' "><xsl:call-template name="temp_da_mat_aseg"/></xsl:when>
			<xsl:when test="id = '11' "><xsl:call-template name="temp_da_dps"/></xsl:when>
			<xsl:when test="id = '12' "><!-- PRIMAS INVERSION -->
				<xsl:if test=" position() > 1">
					<xsl:call-template name="temp_da_salto_pag"/>
				</xsl:if>
				<xsl:apply-templates select="../../../../proyeccion"/>
			</xsl:when>
			<xsl:when test="id = '13' "><xsl:call-template name="temp_da_antecedentes_pago"/></xsl:when>
			<xsl:when test="id = '14' "><xsl:call-template name="temp_da_nro_poliza"/></xsl:when>
			<xsl:when test="id = '16' "><xsl:call-template name="temp_enc_datos_ejecutivo"/></xsl:when>
			<xsl:when test="id = '17' "><xsl:call-template name="temp_da_salto_pag"/></xsl:when>
			<xsl:when test="id = '18' "><xsl:call-template name="temp_da_dps_resp"/></xsl:when>
			<xsl:when test="id = '19' "><xsl:call-template name="temp_da_nro_prop"/></xsl:when>
			<xsl:when test="id = '20' "><xsl:call-template name="temp_da_logos"/></xsl:when>
			<xsl:when test="id = '21' "><xsl:call-template name="temp_da_titulo"/></xsl:when>
			<xsl:when test="id = '30' "><xsl:call-template name="temp_da_apv_ria_benef"/></xsl:when>
			<xsl:when test="id = '31' "><xsl:call-template name="temp_da_apv_identif_aseg"/></xsl:when>
			<xsl:when test="id = '32' "><xsl:call-template name="temp_da_apv_gastos_poliza"/></xsl:when>
			<xsl:when test="id = '33' "><xsl:call-template name="temp_da_apv_form_pago"/></xsl:when>
			<xsl:when test="id = '34' "><xsl:call-template name="temp_da_apv_prima_dep_inic"/></xsl:when>
			<xsl:when test="id = '35' "><xsl:call-template name="temp_da_apv_acep_prop"/></xsl:when>
			<xsl:when test="id = '36' "><xsl:call-template name="temp_da_sap_sol_inc"/></xsl:when>
			<xsl:when test="id = '37' "><xsl:call-template name="temp_da_sap_trasp_ahorro"/></xsl:when>
			<xsl:when test="id = '38' "><!-- MANDATOS -->
				<xsl:if test=" count( ../../../../mandato ) > 0 ">
					<xsl:if test=" position() > 1">
						<xsl:call-template name="temp_da_salto_pag"/>
					</xsl:if>
					<xsl:apply-templates select="../../../../mandato"/>
				</xsl:if>
			</xsl:when>
			<xsl:otherwise>
				<fo:block>Aplicando template a la zona - <xsl:value-of select="id"/> - <xsl:value-of select="nombre"/></fo:block>
			</xsl:otherwise>
		</xsl:choose>
		
	</xsl:template>
	
</xsl:stylesheet>
