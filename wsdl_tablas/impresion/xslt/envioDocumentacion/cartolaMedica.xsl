<?xml version="1.0" encoding="iso-8859-1"?>
<xsl:stylesheet version="1.1"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:fo="http://www.w3.org/1999/XSL/Format"
	exclude-result-prefixes="fo">
	<xsl:output method="xml" version="1.0" omit-xml-declaration="no"
		indent="yes" />
	<xsl:param name="img1"/>
	<xsl:template match="mensajesEnviados">
		<fo:root xmlns:fo="http://www.w3.org/1999/XSL/Format">
			<fo:layout-master-set>
				<fo:simple-page-master master-name="Letter Page"
					page-width="8.5in" page-height="11in">
					<fo:region-body region-name="xsl-region-body"
						margin="0.7in" />
					<fo:region-before region-name="xsl-region-before"
						display-align="after" extent="0.7in" />
					<fo:region-after region-name="xsl-region-after"
						display-align="before" extent="0.7in" />
					<fo:region-start region-name="xsl-region-start"
						extent="0.7in" />
					<fo:region-end region-name="xsl-region-end"
						extent="0.7in" />
				</fo:simple-page-master>
			</fo:layout-master-set>
			<fo:page-sequence master-reference="Letter Page">
				<fo:static-content flow-name="xsl-region-before"
					font-size="10pt" font-family="sans-serif">
					<fo:block> </fo:block>
				</fo:static-content>
				<fo:static-content flow-name="xsl-region-after"
					font-size="10pt" font-family="sans-serif">
					<fo:block space-after="1mm">
						<fo:leader leader-pattern="rule" leader-length="18cm"/>
					</fo:block>
					<!-- Separador -->
					<fo:block font-size="9pt" font-weight="normal" space-after="1mm" text-align="left">
						Para Consultas o Comentarios Comuníquese al 600 6928000
					</fo:block>					
					<fo:block text-align="right"><fo:page-number/></fo:block>
				</fo:static-content>
				<fo:static-content flow-name="xsl-region-start"
					font-size="10pt" font-family="sans-serif">
					<fo:block> </fo:block>
				</fo:static-content>
				<fo:static-content flow-name="xsl-region-end"
					font-size="10pt" font-family="sans-serif">
					<fo:block> </fo:block>
				</fo:static-content>
				<fo:flow flow-name="xsl-region-body" font-family="sans-serif"
					font-size="10pt">
					<fo:block text-align="center">		
						<fo:external-graphic>
							<xsl:attribute name="src">
								<xsl:value-of select="mensajes/rutaImagen"/>02-logo-bci.gif
							</xsl:attribute>
						</fo:external-graphic>
					</fo:block>
					<fo:block font-size="12pt" font-weight="bold" space-after="1mm" text-align="center">
						Cartola Médica
					</fo:block>		
					<fo:block> </fo:block>					
					<fo:block>
						<fo:table border-collapse="separate" width="auto" table-layout="fixed">
							<fo:table-column column-width="7cm" column-number="1" />
							<fo:table-column column-width="2cm" column-number="2" />
							<fo:table-column column-width="0.5cm" column-number="3" />
							<fo:table-column column-width="2.8cm" column-number="4" />
							<fo:table-column column-width="1cm" column-number="5" />							
							<fo:table-body>
								<fo:table-row display-align="center">
									<fo:table-cell padding="2pt" text-align="left">									
									</fo:table-cell>
									<fo:table-cell padding="2pt" text-align="left" text-size="9pt">
										<fo:block>RUT</fo:block>
									</fo:table-cell>
									<fo:table-cell padding="2pt" text-align="left" text-size="9pt">
										<fo:block>:</fo:block>
									</fo:table-cell>
									<fo:table-cell padding="2pt" text-align="left" text-size="9pt">
										<fo:block><xsl:value-of select="mensajes/rut" />-<xsl:value-of select="mensajes/dv" />
										</fo:block>
									</fo:table-cell>
									<fo:table-cell padding="2pt" text-align="left" text-size="9pt">
										<fo:block></fo:block>
									</fo:table-cell>
								</fo:table-row>
							</fo:table-body>
						</fo:table>
					</fo:block>
					<fo:block>
						<fo:table border-collapse="separate" width="auto" table-layout="fixed">
							<fo:table-column column-width="7cm" column-number="1" />
							<fo:table-column column-width="2cm" column-number="2" />
							<fo:table-column column-width="0.5cm" column-number="3" />
							<fo:table-column column-width="8cm" column-number="4" />

							<fo:table-body>
								<fo:table-row display-align="center">
									<fo:table-cell padding="2pt" text-align="left">
									</fo:table-cell>
									<fo:table-cell padding="2pt" text-align="left" text-size="9pt">
										<fo:block>Cliente</fo:block>
									</fo:table-cell>
									<fo:table-cell padding="2pt" text-align="left" text-size="9pt">
										<fo:block>:</fo:block>
									</fo:table-cell>
									<fo:table-cell padding="2pt" text-align="left" text-size="9pt" >
										<fo:block>
											<xsl:value-of select="mensajes/cliente" />
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
							</fo:table-body>
						</fo:table>
					</fo:block>
					<fo:block> </fo:block>
					<fo:block> </fo:block>
					<fo:block font-size="7pt">
						<fo:table table-layout="fixed" border-collapse="collapse">
							<fo:table-column column-width="3cm" column-number="1" />
							<fo:table-column column-width="1cm" column-number="2" />
							<fo:table-column column-width="2cm" column-number="3" />
							<fo:table-body>
								<fo:table-row>
									<fo:table-cell border="1pt solid black" padding="2pt" display-align="center" text-align="center">
										<fo:block>Saldo en Cobranza</fo:block>
									</fo:table-cell>
									<fo:table-cell border="1pt solid black" padding="2pt" display-align="center" text-align="center">
										<fo:block><xsl:value-of select="mensajes/num_sal_cob" /></fo:block>
									</fo:table-cell>
									<fo:table-cell border="1pt solid black" padding="2pt" display-align="center" text-align="center">
										<fo:block>$<xsl:value-of select="mensajes/sal_cob" /></fo:block>
									</fo:table-cell>									
								</fo:table-row>
								<fo:table-row display-align="center" >
									<fo:table-cell border="1pt solid black" padding="2pt" display-align="center" text-align="center">
										<fo:block>Rechazos del Mes</fo:block>
									</fo:table-cell>
									<fo:table-cell border="1pt solid black" padding="2pt" display-align="center" text-align="center">
										<fo:block><xsl:value-of select="mensajes/num_rechazo_mes" /></fo:block>
									</fo:table-cell>
									<fo:table-cell border="1pt solid black" padding="2pt" display-align="center" text-align="center">
										<fo:block>$<xsl:value-of select="mensajes/rechazo_mes" /></fo:block>
									</fo:table-cell>									
								</fo:table-row>
								<fo:table-row display-align="center" >
									<fo:table-cell border="1pt solid black" padding="2pt" display-align="center" text-align="center">
										<fo:block>Abonos del Mes</fo:block>
									</fo:table-cell>
									<fo:table-cell border="1pt solid black" padding="2pt" display-align="center" text-align="center">
										<fo:block><xsl:value-of select="mensajes/num_abono_mes" /></fo:block>
									</fo:table-cell>
									<fo:table-cell border="1pt solid black" padding="2pt" display-align="center" text-align="center">
										<fo:block>$<xsl:value-of select="mensajes/abono_mes" /></fo:block>
									</fo:table-cell>									
								</fo:table-row>
								
							</fo:table-body>
						</fo:table>
					</fo:block>					
					<fo:block> </fo:block>
					<fo:block font-size="9pt" font-weight="bold" text-align="left" color="black" >
						<fo:table table-layout="fixed">
							<fo:table-column column-width="8cm" />
							<fo:table-body>
								<fo:table-row>
									<fo:table-cell>
										<fo:block>
											Detalle de Movimientos
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
							</fo:table-body>
						</fo:table>
					</fo:block>		
					<fo:block space-after="2mm">
						<fo:leader leader-pattern="rule" leader-length="18cm"/>
					</fo:block>					
					<fo:block font-size="7pt">
						<fo:table table-layout="fixed" border-collapse="collapse">
							<fo:table-column column-width="2cm" column-number="1" />
							<fo:table-column column-width="3cm" column-number="2" />
							<fo:table-column column-width="6cm" column-number="3" />
							<fo:table-column column-width="2.5cm" column-number="4" />
							<fo:table-column column-width="2.5cm" column-number="5" />
							<fo:table-column column-width="2cm" column-number="6" />
							<fo:table-header>
								<fo:table-row>
									<fo:table-cell border="1pt solid black" padding="2pt" display-align="center" text-align="center">
										<fo:block font-weight="normal" font-style="italic">
											Nº Doc.
										</fo:block>
									</fo:table-cell>
									<fo:table-cell border="1pt solid black" padding="2pt" display-align="center" text-align="center">
										<fo:block font-weight="normal" font-style="italic">
											Isapre
										</fo:block>
									</fo:table-cell>
									<fo:table-cell border="1pt solid black" padding="2pt" display-align="center" text-align="center">
										<fo:block font-weight="normal" font-style="italic">
											Estado
										</fo:block>
									</fo:table-cell>
									<fo:table-cell border="1pt solid black" padding="2pt" display-align="center" text-align="center">
										<fo:block font-weight="normal" font-style="italic">
											Fecha Ingreso
										</fo:block>
									</fo:table-cell>
									<fo:table-cell border="1pt solid black" padding="2pt" display-align="center" text-align="center">
										<fo:block font-weight="normal" font-style="italic">
											Fecha Cobro
										</fo:block>
									</fo:table-cell>
									<fo:table-cell border="1pt solid black" padding="2pt" display-align="center" text-align="center">
										<fo:block font-weight="normal" font-style="italic">
											Monto
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
							</fo:table-header>
							<fo:table-body>
							<xsl:for-each select="mensajes/mensaje">
								<fo:table-row>
									<fo:table-cell border="1pt solid black" padding="2pt" display-align="center" text-align="center">
										<fo:block><xsl:value-of select="num_doc" /></fo:block>
									</fo:table-cell>
									<fo:table-cell border="1pt solid black" padding="2pt" display-align="center" text-align="center">
										<fo:block><xsl:value-of select="isapre" /></fo:block>
									</fo:table-cell>
									<fo:table-cell border="1pt solid black" padding="2pt" display-align="center" text-align="center">
										<fo:block><xsl:value-of select="estado" /></fo:block>
									</fo:table-cell>
									<fo:table-cell border="1pt solid black" padding="2pt" display-align="center" text-align="center">
										<fo:block><xsl:value-of select="fecha_ingreso" /></fo:block>
									</fo:table-cell>
									<fo:table-cell border="1pt solid black" padding="2pt" display-align="center" text-align="center">
										<fo:block><xsl:value-of select="fecha_cobro" /></fo:block>
									</fo:table-cell>
									<fo:table-cell border="1pt solid black" padding="2pt" display-align="center" text-align="center">
										<fo:block>$<xsl:value-of select="monto" /></fo:block>
									</fo:table-cell>
								</fo:table-row>
								</xsl:for-each>
							</fo:table-body>
						</fo:table>
					</fo:block>
					
				</fo:flow>
			
			</fo:page-sequence>
		</fo:root>
	</xsl:template>
</xsl:stylesheet>