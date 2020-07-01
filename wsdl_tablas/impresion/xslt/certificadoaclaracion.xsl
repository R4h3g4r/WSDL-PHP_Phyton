<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format">
	<!--Variables-->
	<xsl:variable name="bgcolor">#E7E5EF</xsl:variable>
	<xsl:variable name="lineas">#CCCCCC</xsl:variable>
	<xsl:variable name="txt">#000000</xsl:variable>
	<xsl:variable name="txt-azul-claro">#0061A5</xsl:variable>
	<xsl:variable name="txt-azul-oscuro">#1069B5</xsl:variable>
	<xsl:variable name="alto-filas">5mm</xsl:variable>
	<xsl:variable name="espacio-subtitulos">2mm</xsl:variable>
	<xsl:variable name="borde-tabla">#CCCCCC</xsl:variable>
	<xsl:variable name="espacio-texto-celda-left">2mm</xsl:variable>
	<xsl:variable name="espacio-texto-celda-top">1mm</xsl:variable>
	<xsl:variable name="espacio-celda-top">2mm</xsl:variable>
	<xsl:variable name="size-fuente-margen">7pt</xsl:variable>
	<xsl:decimal-format name="peso" decimal-separator="." grouping-separator="."/>

	<!-- Variables -->
	<xsl:template match="/">
		<fo:root xmlns:fo="http://www.w3.org/1999/XSL/Format">
			<!-- Propiedades pagina -->
			<fo:layout-master-set>
				<fo:simple-page-master master-name="pagina"
					page-height="28cm"
					page-width="22cm"
					margin-top="1cm"
					margin-bottom="1cm"
					margin-left="2cm"
					margin-right="2cm">
					<fo:region-body margin-top="2cm" margin-bottom="2.5cm" background-color="#ffffff"/> 
					<fo:region-before extent="3cm"/>
					<fo:region-after extent="2cm"/>
				</fo:simple-page-master>
			</fo:layout-master-set>
			<!-- Propiedades pagina -->
			<fo:page-sequence master-reference="pagina" initial-page-number="1" language="en" country="us">
				<fo:static-content flow-name="xsl-region-before">
					<!-- imagen bci -->
					<fo:block space-after="1mm">
						<fo:table table-layout="fixed">
							<fo:table-column column-width="13cm"/>
							<fo:table-column column-width="5cm"/>
							<fo:table-body>
								<fo:table-row>
									<fo:table-cell>
										<fo:block font-size="9pt" font-weight="bold" space-after="1mm" text-align="left" font-family="Courier">
											Bci
										</fo:block>
									</fo:table-cell>
									<fo:table-cell padding-before="1cm">
										<fo:block font-size="9pt" font-weight="bold" space-after="1mm" text-align="right" color="{$txt}">
											<xsl:value-of select="info/fechaImpresion"/>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
							</fo:table-body>
						</fo:table>
					</fo:block>
					<!-- imagen bci -->

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
			<fo:table-column column-width="18cm"/>
			<fo:table-body>
				<fo:table-row >
				<fo:table-cell >

					<!-- titulo -->
						<fo:block font-size="9pt" font-weight="bold" text-align="center" font-family="Courier">
							ACLARACION DE DOCUMENTOS
						</fo:block>
					<!-- titulo -->
				
				</fo:table-cell>
				</fo:table-row>
			</fo:table-body>
			</fo:table>
		</fo:block>
		<!-- Titulo Modulo -->
		
		<!-- Separador -->
		<fo:block space-after="15mm">
			<fo:leader leader-length="18cm"/>
		</fo:block>
		<!-- Separador -->
		
		<!-- encabezado -->
		<fo:block font-size="8pt" text-align="left" font-family="Courier">
			<fo:inline font-weight="normal">Fecha: </fo:inline>
			<fo:inline font-weight="bold"><xsl:value-of select="info/fecha"/></fo:inline>			
		</fo:block>
		<fo:block font-size="8pt" text-align="left" font-family="Courier">
			<fo:inline font-weight="normal">Se�ores </fo:inline>			
		</fo:block>
		<fo:block font-size="8pt" text-align="left" font-family="Courier">
			<fo:inline font-weight="normal">BOLETIN DE INFORMACIONES COMERCIALES</fo:inline>			
		</fo:block>
		<fo:block font-size="8pt" text-align="left">
			<fo:inline font-weight="normal" text-decoration="underline">Presente</fo:inline>
		</fo:block>
		<!-- encabezado -->
		
		<!-- Separador -->
		<fo:block space-after="10mm">
			<fo:leader leader-length="18cm"/>
		</fo:block>
		<!-- Separador -->
		
		<fo:block font-size="9pt" text-align="left" font-family="Courier">
			<fo:inline font-weight="normal">REF:   ACLARACION DE DOCUMENTOS(S)</fo:inline>
		</fo:block>
		
		<!-- Separador -->
		<fo:block space-after="4mm">
			<fo:leader leader-length="18cm"/>
		</fo:block>
		<!-- Separador -->
		
		<fo:block font-size="8pt" txt-align="left" font-family="Courier">
			<fo:inline font-weight="normal">Ponemos en su conocimiento que el(los) documento(s) detallado(s) a continuaci�n,</fo:inline>
		</fo:block>
		
		<!-- Separador -->
		<fo:block space-after="1mm">
			<fo:leader leader-length="18cm"/>
		</fo:block>
		<!-- Separador -->
		
		<fo:block font-size="8pt" txt-align="left" font-family="Courier">
			<fo:inline font-weight="normal">perteneciente(s) a </fo:inline>
			<fo:inline font-weight="bold"><xsl:value-of select="info/cliente/nombre"/></fo:inline>
		</fo:block>
		
		<!-- Separador -->
		<fo:block space-after="1mm">
			<fo:leader leader-length="18cm"/>
		</fo:block>
		<!-- Separador -->
		
		<fo:block font-size="8pt" txt-align="left" font-family="Courier">
			<fo:inline font-weight="normal">Rut </fo:inline>
			<fo:inline font-weight="bold"><xsl:value-of select="info/cliente/rut"/></fo:inline>
			<fo:inline font-weight="normal"> se ha(n) cancelado en esta oficina</fo:inline>
		</fo:block>
		
		<!-- Separador -->
		<fo:block space-after="4mm">
			<fo:leader leader-length="18cm"/>
		</fo:block>
		<!-- Separador -->
		
		<fo:block>
			<fo:table table-layout="fixed">
				<fo:table-column column-width="2.2cm"/>
				<fo:table-column column-width="2.2cm"/>
				<fo:table-column column-width="2.2cm"/>
				<fo:table-column column-width="2.2cm"/>
				<fo:table-column column-width="2.2cm"/>
				<fo:table-column column-width="2.2cm"/>
				<fo:table-column column-width="2.2cm"/>
				<fo:table-column column-width="2.2cm"/>
				<fo:table-body>
					<fo:table-row >
						<fo:table-cell>
							<fo:block font-size="8pt" text-align="left" font-family="Courier">
								<fo:inline font-weight="bold">Tipo Docto.</fo:inline>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell>
							<fo:block font-size="8pt" text-align="left" font-family="Courier">
								<fo:inline font-weight="bold">Nro. Docto.</fo:inline>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell>
							<fo:block font-size="8pt" text-align="left" font-family="Courier">
								<fo:inline font-weight="bold">Monto</fo:inline>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell>
							<fo:block font-size="8pt" text-align="left" font-family="Courier">
								<fo:inline font-weight="bold">Fec. Prt/Vcto</fo:inline>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell>
							<fo:block font-size="8pt" text-align="left" font-family="Courier">
								<fo:inline font-weight="bold">Fec. Acl</fo:inline>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell>
							<fo:block font-size="8pt" text-align="left" font-family="Courier">
								<fo:inline font-weight="bold">Bol. Nro.</fo:inline>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell>
							<fo:block font-size="8pt" text-align="left" font-family="Courier">
								<fo:inline font-weight="bold">P�g. Nro.</fo:inline>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell>
							<fo:block font-size="8pt" text-align="left" font-family="Courier">
								<fo:inline font-weight="bold">N�m. Nro.</fo:inline>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
					<fo:table-row>
						<fo:table-cell>
							<fo:block font-size="8pt" text-align="left" font-family="Courier">
								<fo:inline font-weight="normal"><xsl:value-of select="info/carga/tipo"/></fo:inline>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell>
							<fo:block font-size="8pt" text-align="left" font-family="Courier">
								<fo:inline font-weight="normal"><xsl:value-of select="info/carga/serial"/></fo:inline>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell>
							<fo:block font-size="8pt" text-align="center" font-family="Courier">
								<fo:inline font-weight="normal">$<xsl:value-of select="info/carga/monto"/></fo:inline>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell>
							<fo:block font-size="8pt" text-align="left" font-family="Courier">
								<fo:inline font-weight="normal"><xsl:value-of select="info/carga/fechaProtesto"/></fo:inline>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell>
							<fo:block font-size="8pt" text-align="left" font-family="Courier">
								<fo:inline font-weight="normal"><xsl:value-of select="info/carga/fechaAclaracion"/></fo:inline>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell>
							<fo:block font-size="8pt" text-align="left" font-family="Courier">
								<fo:inline font-weight="normal"><xsl:value-of select="info/carga/boletin"/></fo:inline>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell>
							<fo:block font-size="8pt" text-align="left" font-family="Courier">
								<fo:inline font-weight="normal"><xsl:value-of select="info/carga/pagina"/></fo:inline>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell>
							<fo:block font-size="8pt" text-align="left" font-family="Courier">
								<fo:inline font-weight="normal"><xsl:value-of select="info/carga/nomina"/></fo:inline>
							</fo:block>
						</fo:table-cell>						
					</fo:table-row>
				</fo:table-body>				
			</fo:table>
		</fo:block>
		
		<!-- Separador -->
		<fo:block space-after="15mm">
			<fo:leader leader-length="18cm"/>
		</fo:block>
		<!-- Separador -->
		
		<fo:block font-size="8pt" txt-align="left" font-family="Courier">
			<fo:inline font-weight="normal">Sirvase efectuar la(s) aclaraci�n(es) correspondiente(s)</fo:inline>
		</fo:block>
		
		<!-- Separador -->
		<fo:block space-after="15mm">
			<fo:leader leader-length="18cm"/>
		</fo:block>
		<!-- Separador -->
		
		<fo:block font-size="8pt" txt-align="left" font-family="Courier">
			<fo:inline font-weight="normal">Banco de Cr�dito e Inversiones</fo:inline>
		</fo:block>

		<!-- Separador -->
		<fo:block space-after="1mm">
			<fo:leader leader-length="18cm"/>
		</fo:block>
		<!-- Separador -->
		
		<fo:block font-size="8pt" txt-align="left" font-family="Courier">
			<fo:inline font-weight="normal">Oficina:   </fo:inline>
			<fo:inline font-weight="bold"><xsl:value-of select="info/oficina"/></fo:inline>
		</fo:block>
		
	</xsl:template>
	

	<xsl:template name="subTitulo">
		<xsl:param name="titulo"/>
		<xsl:param name="fecha"/>

		<fo:block font-size="9pt" font-weight="bold" text-align="left" color="black" >
			<fo:table table-layout="fixed">
				<fo:table-column column-width="0.3cm" />
				<fo:table-column column-width="8cm" />
				<fo:table-body>
					<fo:table-row>
						<fo:table-cell padding-before="1mm">
							<fo:external-graphic height="1.2mm" width="1.2mm">
								<xsl:attribute name="src">
									<xsl:value-of select="info/rutaImagen"/>01-bullet2-rj.gif
								</xsl:attribute>
							</fo:external-graphic>
						</fo:table-cell>
						<fo:table-cell>
							<fo:block>
								<xsl:value-of select="$titulo"/>
								<xsl:if test="$fecha != ''">
									 <xsl:value-of select="$fecha"/>
								</xsl:if>
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
									<xsl:value-of select="info/rutaImagen"/>01-bullet1-rj.gif
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

</xsl:stylesheet>