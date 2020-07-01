<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format">
	<!--Variables-->
	<xsl:variable name="bgcolor">#E7E5EF</xsl:variable>
	<xsl:variable name="lineas">#CCCCCC</xsl:variable>
	<xsl:variable name="blancos">#FFFFFF</xsl:variable>
	<xsl:variable name="txt">#000000</xsl:variable>
	<xsl:variable name="txt-azul-claro">#0061A5</xsl:variable>
	<xsl:variable name="txt-azul-oscuro">#1069B5</xsl:variable>
	<xsl:variable name="alto-filas">5mm</xsl:variable>
	<xsl:variable name="espacio-subtitulos">2mm</xsl:variable>
	<xsl:variable name="borde-tabla">#CCCCCC</xsl:variable>
	<xsl:variable name="espacio-texto-celda-left">2mm</xsl:variable>
	<xsl:variable name="espacio-texto-celda-top">1mm</xsl:variable>
	<xsl:variable name="size-fuente-margen">7pt</xsl:variable>
	<xsl:variable name="largo-linea">21cm</xsl:variable>
	<xsl:decimal-format name="peso" decimal-separator="." grouping-separator="."/>
	<!-- Variables -->
	<xsl:template match="/">
		<fo:root xmlns:fo="http://www.w3.org/1999/XSL/Format">
			<!-- Propiedades pagina -->
			<fo:layout-master-set>
				<fo:simple-page-master master-name="pagina"
					page-height="28cm"
					page-width="25.5cm"
					margin-top="1cm"
					margin-bottom="1cm"
					margin-left="2cm"
					margin-right="1.5cm">
					<fo:region-body margin-top="2.5cm" margin-bottom="2.5cm" background-color="#ffffff"/> 
					<fo:region-before extent="3cm"/>
					<fo:region-after extent="3cm"/>
				</fo:simple-page-master>
			</fo:layout-master-set>
			<!-- Propiedades pagina -->
			<fo:page-sequence master-reference="pagina" initial-page-number="1" language="en" country="us">
				<fo:static-content flow-name="xsl-region-before">
					<!-- imagen bci -->
					<fo:block space-after="1mm">
						<fo:table table-layout="fixed">
							<fo:table-column column-width="16cm"/>
							<fo:table-column column-width="5cm"/>
							<fo:table-body>
								<fo:table-row>
									<fo:table-cell>
										<fo:external-graphic>
											<xsl:attribute name="src">
												<xsl:value-of select="variable-riesgo/rutaImagen"/>02-logo-bci.gif
											</xsl:attribute>
										</fo:external-graphic>
									</fo:table-cell>
									<fo:table-cell padding-before="1cm">
										<fo:block font-size="9pt" font-weight="bold" space-after="1mm" text-align="right" color="{$txt}">
										<xsl:value-of select="variable-riesgo/fechaImpresion"/>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
							</fo:table-body>
						</fo:table>
					</fo:block>
					<!-- imagen bci -->
					<!-- Separador -->
						<fo:block space-after="2mm">
						<fo:leader color="{$lineas}" leader-pattern="rule" leader-length="{$largo-linea}"/>
						</fo:block>
					<!-- Separador -->
				</fo:static-content>
				<fo:static-content flow-name="xsl-region-after">
					<!-- Separador -->
					<fo:block space-after="1mm">
						<fo:leader color="{$lineas}" leader-pattern="rule" leader-length="{$largo-linea}"/>
					</fo:block>
					<!-- Separador -->
					<fo:block font-size="9pt" font-weight="normal" space-after="1mm" text-align="left" color="{$txt}">
						Para Consultas o Comentarios Comuníquese al 600 6928000
					</fo:block>
					<fo:block font-size="5pt" font-weight="bold" start-indent="20cm" space-after="1mm" text-align="left" color="{$txt}">
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
		<!-- Titulo Modulo -->
		<fo:block>
			<fo:table table-layout="fixed">
				<fo:table-column column-width="21cm"/>
				<fo:table-body>
					<fo:table-row >
						<fo:table-cell >
							<!-- titulo -->
							<fo:block font-size="15pt" font-weight="bold" text-align="left" color="{$txt-azul-claro}">
								Variables de Riesgo
							</fo:block>
							<!-- titulo -->
						</fo:table-cell>
					</fo:table-row>
				</fo:table-body>
			</fo:table>	
		</fo:block>
		<!-- Titulo Modulo -->
		
		<!-- Separador -->
		<fo:block space-after="2mm">
			<fo:leader color="{$lineas}" leader-pattern="rule" leader-length="{$largo-linea}"/>
		</fo:block>
		<!-- Separador -->

		<!-- ejecutivo -->
		<fo:block font-size="9pt" text-align="left" color="{$txt}">
			<fo:inline font-weight="normal" space-before="30pt">Ejecutivo: </fo:inline>
			<fo:inline font-weight="bold"><xsl:value-of select="variable-riesgo/ejecutivo"/>&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;</fo:inline>
			<fo:inline font-weight="normal" space-before="30pt">Oficina: </fo:inline>
			<fo:inline font-weight="bold"><xsl:value-of select="variable-riesgo/oficina"/></fo:inline>
		</fo:block>
		<!-- ejecutivo -->

		<!-- Separador -->
		<fo:block space-after="3mm">
			<fo:leader color="{$lineas}" leader-pattern="rule" leader-length="{$largo-linea}"/>
		</fo:block>
		<!-- Separador -->
		<fo:block font-size="8pt" space-after="1mm" text-align="right">
			<fo:table table-layout="fixed" >
				<fo:table-column column-width="6cm" />
				<fo:table-column column-width="8cm" />
				<fo:table-column column-width="7cm" />
				<fo:table-body>
					<fo:table-row font-size="10pt">
						<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
							<fo:block font-weight="bold" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="left">
								&#0160;Variable de Riesgo
							</fo:block>
						</fo:table-cell>
						<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
							<fo:block font-weight="bold" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="left">
								&#0160;Campos
							</fo:block>
						</fo:table-cell>
						<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$lineas}">
							<fo:block font-weight="bold" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="left">
								&#0160;Puntaje
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
					<xsl:choose>
					<xsl:when test="count(variable-riesgo/listadoVariableDeRiesgoSegmento) > 0">
						<xsl:for-each select="variable-riesgo/listadoVariableDeRiesgoSegmento/listado-variable-riesgo-segmento">
						<xsl:variable name="codigo" select="codGlosa"/>
						<fo:table-row>
							<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$blancos}">
								<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="left">
									<xsl:value-of select="nombreGlosa"/>
								</fo:block>
							</fo:table-cell>									

<xsl:choose>
<xsl:when test="count(listadoVariableDeRiesgo) > 0">
							<fo:table-cell number-columns-spanned="2" padding-start="1mm" background-color="{$bgcolor}" border="0.5pt solid {$blancos}">
								<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="left">
<xsl:for-each select="listadoVariableDeRiesgo/listado-variable-riesgo">
<xsl:variable name="vigenciaRiesgo" select="vigencia"/>
<xsl:variable name="maximoRiesgo" select="maximo"/>
<xsl:variable name="minimoRiesgo" select="minimo"/>
	<fo:table table-layout="fixed">
	<fo:table-column column-width="8cm" />
	<fo:table-column column-width="6cm" />
	<fo:table-body>
		<fo:table-row>

<xsl:choose>
<xsl:when test="$vigenciaRiesgo = 'S'">
<xsl:choose>
<xsl:when test=" $codigo = 'SEGMENTO'">			

		<fo:table-cell background-color="{$bgcolor}">
			<fo:block font-weight="normal" color="{$txt-azul-claro}" padding-before="1mm" padding-after="1mm" text-align="left">
			&#0160;<xsl:value-of select="glosaSegmento"/>
			</fo:block>
		</fo:table-cell>
		<fo:table-cell background-color="{$bgcolor}" >
			<fo:block font-weight="bold" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="left">
			&#0160;<xsl:value-of select="puntaje"/>
			</fo:block>
		</fo:table-cell>

</xsl:when>
<xsl:when test="($codigo = 'PLZ_CRD' or $codigo = 'CNT_CHQ_PROT' or $codigo = 'EDAD')">
 <xsl:choose>
 <xsl:when test="$codigo = 'EDAD' and $maximoRiesgo = '99.999'">

		<fo:table-cell background-color="{$bgcolor}">
			<fo:block font-weight="normal" color="{$txt-azul-claro}" padding-before="1mm" padding-after="1mm" text-align="left">
			Entre &#0160;&#0160;<xsl:value-of select="minimo"/>&#0160;&#0160;y&#0160;&#0160;mas años
			</fo:block>
		</fo:table-cell>
		<fo:table-cell background-color="{$bgcolor}">
			<fo:block font-weight="bold" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="left">
			&#0160;<xsl:value-of select="puntaje"/>
			</fo:block>
		</fo:table-cell>

</xsl:when>
<xsl:when test="$codigo = 'CNT_CHQ_PROT' and $maximoRiesgo = '-1' and $minimoRiesgo = '-1'">

		<fo:table-cell background-color="{$bgcolor}">
			<fo:block font-weight="normal" color="{$txt-azul-claro}" padding-before="1mm" padding-after="1mm" text-align="left">
			Sin información
			</fo:block>
		</fo:table-cell>
		<fo:table-cell background-color="{$bgcolor}">
			<fo:block font-weight="bold" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="left">
			&#0160;<xsl:value-of select="puntaje"/>
			</fo:block>
		</fo:table-cell>

</xsl:when>
<xsl:when test="$codigo = 'CNT_CHQ_PROT' and $maximoRiesgo = '0' and $minimoRiesgo = '0'">

		<fo:table-cell background-color="{$bgcolor}">
			<fo:block font-weight="normal" color="{$txt-azul-claro}" padding-before="1mm" padding-after="1mm" text-align="left">
			Cero
			</fo:block>
		</fo:table-cell>
		<fo:table-cell background-color="{$bgcolor}">
			<fo:block font-weight="bold" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="left">
			&#0160;<xsl:value-of select="puntaje"/>
			</fo:block>
		</fo:table-cell>

</xsl:when>		
<xsl:when test="$codigo = 'CNT_CHQ_PROT' and $maximoRiesgo = '0' and $minimoRiesgo = '-'">

		<fo:table-cell background-color="{$bgcolor}">
			<fo:block font-weight="normal" color="{$txt-azul-claro}" padding-before="1mm" padding-after="1mm" text-align="left">
			Sin información
			</fo:block>
		</fo:table-cell>
		<fo:table-cell background-color="{$bgcolor}">
			<fo:block font-weight="bold" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="left">
			&#0160;<xsl:value-of select="puntaje"/>
			</fo:block>
		</fo:table-cell>

</xsl:when>
<xsl:when test="$codigo = 'CNT_CHQ_PROT' and $maximoRiesgo = '99.999'">

		<fo:table-cell background-color="{$bgcolor}">
			<fo:block font-weight="normal" color="{$txt-azul-claro}" padding-before="1mm" padding-after="1mm" text-align="left">
			Entre &#0160;&#0160;<xsl:value-of select="minimo"/>&#0160;&#0160;y&#0160;&#0160;mas años
			</fo:block>
		</fo:table-cell>
		<fo:table-cell background-color="{$bgcolor}">
			<fo:block font-weight="bold" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="left">
			&#0160;<xsl:value-of select="puntaje"/>
			</fo:block>
		</fo:table-cell>

</xsl:when>
<xsl:when test="$codigo = 'PLZ_CRD' and $maximoRiesgo = '999.999'">

		<fo:table-cell background-color="{$bgcolor}">
			<fo:block font-weight="normal" color="{$txt-azul-claro}" padding-before="1mm" padding-after="1mm" text-align="left">
			Entre &#0160;&#0160;<xsl:value-of select="minimo"/>&#0160;&#0160;y&#0160;&#0160;mas años
			</fo:block>
		</fo:table-cell>
		<fo:table-cell background-color="{$bgcolor}">
			<fo:block font-weight="bold" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="left">
			&#0160;<xsl:value-of select="puntaje"/>
			</fo:block>
		</fo:table-cell>

</xsl:when>		
<xsl:otherwise>
		<fo:table-cell background-color="{$bgcolor}">
			<fo:block font-weight="normal" color="{$txt-azul-claro}" padding-before="1mm" padding-after="1mm" text-align="left">
			Entre &#0160;&#0160;<xsl:value-of select="minimo"/>&#0160;&#0160;y&#0160;&#0160;<xsl:value-of select="maximo"/>
			</fo:block>
		</fo:table-cell>
		<fo:table-cell background-color="{$bgcolor}">
			<fo:block font-weight="bold" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="left">
			&#0160;<xsl:value-of select="puntaje"/>
			</fo:block>
		</fo:table-cell>
</xsl:otherwise>
</xsl:choose>	
</xsl:when>

<xsl:otherwise>
		<fo:table-cell background-color="{$bgcolor}">
			<fo:block font-weight="normal" color="{$txt-azul-claro}" padding-before="1mm" padding-after="1mm" text-align="left">
			&#0160;<xsl:value-of select="campos"/>
			</fo:block>
		</fo:table-cell>
		<fo:table-cell background-color="{$bgcolor}">
			<fo:block font-weight="bold" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="1mm" text-align="left">
			&#0160;<xsl:value-of select="puntaje"/>
			</fo:block>
		</fo:table-cell>
</xsl:otherwise>
</xsl:choose>
</xsl:when>
</xsl:choose>			
		
		
		
		</fo:table-row>
	</fo:table-body>
	</fo:table>
</xsl:for-each>

								</fo:block>
							</fo:table-cell>
							<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$blancos}">
								<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="left">
								
								</fo:block>
							</fo:table-cell>
</xsl:when>
<xsl:otherwise>
							<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$blancos}">
								<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="left">
								</fo:block>
							</fo:table-cell>
							<fo:table-cell background-color="{$bgcolor}" border="0.5pt solid {$blancos}">
								<fo:block font-weight="normal" color="{$txt}" padding-before="1mm" padding-after="1mm" text-align="left">
								</fo:block>
							</fo:table-cell>
</xsl:otherwise>
</xsl:choose>
						</fo:table-row>
						
						
						
						</xsl:for-each>
					</xsl:when>
					</xsl:choose>
					
				</fo:table-body>
			</fo:table>
		</fo:block>

		<!-- detalle talonario -->

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
							<fo:external-graphic height="1.2mm" width="1.2mm">
								<xsl:attribute name="src">
									<xsl:value-of select="variable-riesgo/rutaImagen"/>01-bullet2-rj.gif
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
							<fo:external-graphic height="1mm" width="1mm">
								<xsl:attribute name="src">
									<xsl:value-of select="variable-riesgo/rutaImagen"/>01-bullet1-rj.gif
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


<xsl:template match="NewTemplate">
	
</xsl:template>
</xsl:stylesheet><!-- Stylus Studio meta-information - (c) 2004-2006. Progress Software Corporation. All rights reserved.
<metaInformation>
<scenarios ><scenario default="yes" name="Scenario1" userelativepaths="yes" externalpreview="no" url="riesgo.xml" htmlbaseurl="" outputurl="" processortype="internal" useresolver="yes" profilemode="0" profiledepth="" profilelength="" urlprofilexml="" commandline="" additionalpath="" additionalclasspath="" postprocessortype="fop" postprocesscommandline="" postprocessadditionalpath="" postprocessgeneratedext="" validateoutput="no" validator="internal" customvalidator=""/></scenarios><MapperMetaTag><MapperInfo srcSchemaPathIsRelative="yes" srcSchemaInterpretAsXML="no" destSchemaPath="" destSchemaRoot="" destSchemaPathIsRelative="yes" destSchemaInterpretAsXML="no" ><SourceSchema srcSchemaPath="riesgo.xml" srcSchemaRoot="variable&#x2D;riesgo" AssociatedInstance="" loaderFunction="document" loaderFunctionUsesURI="no"/></MapperInfo><MapperBlockPosition><template match="/"></template><template name="contenido"><block path="fo:block[4]/fo:table/fo:table&#x2D;body/xsl:choose" x="263" y="66"/><block path="fo:block[4]/fo:table/fo:table&#x2D;body/xsl:choose/>[0]" x="217" y="60"/><block path="fo:block[4]/fo:table/fo:table&#x2D;body/xsl:choose/>[0]/count[0]" x="171" y="54"/><block path="fo:block[4]/fo:table/fo:table&#x2D;body/xsl:choose/xsl:when/xsl:for&#x2D;each" x="213" y="96"/><block path="fo:block[4]/fo:table/fo:table&#x2D;body/xsl:choose/xsl:when/xsl:for&#x2D;each/fo:table&#x2D;row/fo:table&#x2D;cell[1]/fo:table/fo:table&#x2D;body/fo:table&#x2D;row/xsl:for&#x2D;each" x="173" y="96"/></template></MapperBlockPosition><TemplateContext></TemplateContext><MapperFilter side="source"></MapperFilter></MapperMetaTag>
</metaInformation>
-->