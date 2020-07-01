<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format" version="1.0">
	<xsl:template match="comprobanteRecarga">
		<fo:root xmlns:fo="http://www.w3.org/1999/XSL/Format">
			<fo:layout-master-set>
				<!-- layout for the first page -->
				<fo:simple-page-master master-name="first" page-height="29.7cm" page-width="21cm" margin-top="1cm" margin-bottom="2cm" margin-left="2.5cm" margin-right="2.5cm" border="thick solid red">
					<fo:region-body margin-top="3cm"/>
					<fo:region-before extent="3cm"/>
					<fo:region-after extent="1.5cm"/>
				</fo:simple-page-master>
				<!-- layout for the other pages -->
				<fo:simple-page-master master-name="rest" page-height="29.7cm" page-width="21cm" margin-top="1cm" margin-bottom="2cm" margin-left="2.5cm" margin-right="2.5cm" border="thick solid red">
					<fo:region-body margin-top="2.5cm"/>
					<fo:region-before extent="2.5cm"/>
					<fo:region-after extent="1.5cm"/>
				</fo:simple-page-master>
				<fo:page-sequence-master master-name="basicPSM">
					<fo:repeatable-page-master-alternatives>
						<fo:conditional-page-master-reference master-reference="first" page-position="first"/>
						<fo:conditional-page-master-reference master-reference="rest" page-position="rest"/>
						<!-- recommended fallback procedure -->
						<fo:conditional-page-master-reference master-reference="rest"/>
					</fo:repeatable-page-master-alternatives>
				</fo:page-sequence-master>
			</fo:layout-master-set>
			<!-- end: defines page layout -->
			<!-- actual layout -->
			<fo:page-sequence master-reference="basicPSM">
				<fo:flow flow-name="xsl-region-body">
					<fo:block padding-top="3pt" text-align="center" space-after.optimum="5pt" line-height="24pt" font-family="sans-serif" font-size="18pt" text-decoration="underline"> Comprobante Recarga Celular
          </fo:block>
					<fo:block padding-top="40pt">
						<fo:table  border="0.5pt solid black">
							<fo:table-column column-width="5cm"/>
							<fo:table-column column-width="1cm"/>
							<fo:table-column column-width="8cm"/>
							<fo:table-body>
								<fo:table-row>
									<fo:table-cell>
										<fo:block font-weight="bold" text-align="right" vertical-align="middle" font-size="10pt">
									Nombre del Apoderado
							</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block font-weight="bold" text-align="left" vertical-align="middle" font-size="10pt">:</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block font-weight="bold" text-align="left" vertical-align="middle" font-size="10pt">
											<xsl:value-of select="nombre_cliente"/>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
								<fo:table-row>
									<fo:table-cell>
										<fo:block font-weight="bold" text-align="right" vertical-align="middle" font-size="10pt">
									Cuenta de Cargo
							</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block font-weight="bold" text-align="left" vertical-align="middle" font-size="10pt">:</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block font-weight="bold" text-align="left" vertical-align="middle" font-size="10pt">
											<xsl:value-of select="cuenta_cargo"/>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
								<fo:table-row>
									<fo:table-cell>
										<fo:block font-weight="bold" text-align="right" vertical-align="middle" font-size="10pt">
									Monto Carga
							</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block font-weight="bold" text-align="left" vertical-align="middle" font-size="10pt">:</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block font-weight="bold" text-align="left" vertical-align="middle" font-size="10pt">$
							<xsl:value-of select="monto_total"/>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
								<fo:table-row>
									<fo:table-cell>
										<fo:block font-weight="bold" text-align="right" vertical-align="middle" font-size="10pt">
									Fecha
							</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block font-weight="bold" text-align="left" vertical-align="middle" font-size="10pt">:</fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block font-weight="bold" text-align="left" vertical-align="middle" font-size="10pt">
											<xsl:value-of select="fecha_pago"/>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
							</fo:table-body>
						</fo:table>
					</fo:block>
					<fo:block padding-top="10pt">
						<fo:table border="0.5pt solid black">
							<fo:table-column column-width="3.5cm"/>
							<fo:table-column column-width="3.5cm"/>
							<fo:table-column column-width="3.5cm"/>
							<fo:table-column column-width="3.5cm"/>
							<fo:table-header border="0.5pt solid black">
								<fo:table-row >
									<fo:table-cell>
										<fo:block font-weight="bold" text-align="left" vertical-align="middle" font-size="10pt">
               Nombre Recarga
            </fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block font-weight="bold" text-align="left" vertical-align="middle" font-size="10pt">
             Número Celular
            </fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block font-weight="bold" text-align="left" vertical-align="middle" font-size="10pt">
             Compañia
           </fo:block>
									</fo:table-cell>
									<fo:table-cell>
										<fo:block font-weight="bold" text-align="left" vertical-align="middle" font-size="10pt">
            Monto $
           </fo:block>
									</fo:table-cell>
								</fo:table-row>
							</fo:table-header>
							<fo:table-body>
								<xsl:for-each select="recargas/recarga">
									<fo:table-row>
										<fo:table-cell padding-top="5pt">
											<fo:block border-right-width="0.5pt" text-align="left" vertical-align="middle" font-size="9pt">
												<xsl:value-of select="alias_recarga"/>
											</fo:block>
										</fo:table-cell>
										<fo:table-cell padding-top="5pt">
											<fo:block border-right-width="0.5pt" text-align="left" vertical-align="middle" font-size="9pt">
												<xsl:value-of select="numero_celular"/>
											</fo:block>
										</fo:table-cell>
										<fo:table-cell padding-top="5pt">
											<fo:block border-right-width="0.5pt" text-align="left" vertical-align="middle" font-size="9pt">
												<xsl:value-of select="nombre_operador"/>
											</fo:block>
										</fo:table-cell>
										<fo:table-cell padding-top="3pt">
											<fo:block border-right-width="0.5pt" text-align="left" vertical-align="middle" font-size="9pt">
												<xsl:value-of select="monto_recarga"/>
											</fo:block>
										</fo:table-cell>
									</fo:table-row>
								</xsl:for-each>
							</fo:table-body>
							
						</fo:table>
					</fo:block>
					<fo:block padding-top="20pt" text-align="right">
						<fo:table >
							<fo:table-column column-width="14cm" />
							<fo:table-body>
								<fo:table-row>
									<fo:table-cell >
										<fo:block padding-top="20pt" text-align="right">
											<fo:external-graphic   height="2cm" width="2cm">
							<xsl:attribute name="src"><xsl:value-of select="rutaImagen"/>sello_bci.gif
							</xsl:attribute>
						</fo:external-graphic>
					</fo:block>
								</fo:table-cell>
							</fo:table-row>
						</fo:table-body>
					</fo:table>	
					</fo:block>
				</fo:flow>
			</fo:page-sequence>
		</fo:root>
	</xsl:template>
</xsl:stylesheet>
