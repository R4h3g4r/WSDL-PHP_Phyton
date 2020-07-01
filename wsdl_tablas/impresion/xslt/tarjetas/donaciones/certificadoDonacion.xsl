<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output method="xml" encoding="UTF-8" indent="yes"/>
	<xsl:template match="/">
		<fo:root xmlns:fo="http://www.w3.org/1999/XSL/Format" >
			<fo:layout-master-set>
				<fo:simple-page-master master-name="PageMaster" page-height="297.00mm" page-width="210.00mm">
					<fo:region-body margin-bottom="30.00mm" margin-top="30.00mm" margin-left="40.22mm" margin-right="30.00mm"/>
					<fo:region-before display-align="after"/>
					<fo:region-after display-align="before"/>
				</fo:simple-page-master>
			</fo:layout-master-set>
			<xsl:for-each select="/certificadoNeutraliza">
				<fo:page-sequence master-reference="PageMaster" force-page-count="no-force">
					<fo:flow flow-name="xsl-region-body">
						<fo:block-container>
							<fo:block-container position="absolute" font-family="Arial,Helvetica,sans-serif" font-size="14.00pt" font-weight="bold" height="7.41mm" left="0.34mm" top="38.79mm" width="139.01mm" text-align="center" >
								<fo:block start-indent="0pt">Certificado de Neutralización de Emisiones de CO2</fo:block>
							</fo:block-container>
							<fo:block-container position="absolute" font-family="Arial,Helvetica,sans-serif" font-size="10.00pt" height="9.26mm" left="-0.01mm" top="14.1mm" width="139.71mm" text-align="end"  >
								<fo:block start-indent="0pt">Santiago,  <xsl:value-of select="dia"/><xsl:text> </xsl:text><xsl:value-of select="mes"/> de <xsl:value-of select="anyo"/>.</fo:block>
							</fo:block-container>
							<fo:block-container position="absolute" height="23.55mm" left="108.30mm" top="-24.00mm" width="30.96mm" overflow="hidden" display-align="before">
								<fo:block text-align="start">
									<fo:external-graphic content-type="image/jpeg" content-width="30.96mm" vertical-align="middle">
										<xsl:attribute name="src">
											 <xsl:value-of select="rutaImagen"/>logoNeutral.jpg
										</xsl:attribute>
									</fo:external-graphic> 
								</fo:block>
							</fo:block-container>
							<fo:block-container position="absolute" height="25.00mm" left="0.00mm" top="-24.00mm" width="30.96mm" overflow="hidden" display-align="before">
								<fo:block text-align="start">
									<xsl:if test="canal = '110'">
										<fo:external-graphic content-type="image/jpeg" content-width="30.96mm" vertical-align="middle">
											<xsl:attribute name="src">
												 <xsl:value-of select="rutaImagen"/>logo_bci_460x250.jpg
											</xsl:attribute>
										</fo:external-graphic>
									</xsl:if>
									<xsl:if test="canal = '100'">
										<fo:external-graphic content-type="image/jpeg" content-width="30.96mm" vertical-align="middle">
											<xsl:attribute name="src">
												 <xsl:value-of select="rutaImagen"/>logo_tbanc_2011.jpg
											</xsl:attribute>
										</fo:external-graphic>
									</xsl:if>
								</fo:block>
							</fo:block-container>
							<fo:block-container position="absolute" font-family="Arial,Helvetica,sans-serif" font-size="10.00pt" height="8.47mm" left="0.34mm" top="62.07mm" width="139.01mm"  >
								<fo:block start-indent="0pt">Este certificado, emitido por Fundación Chile y su Programa Carbono Neutral, acredita que</fo:block>
							</fo:block-container>
							<fo:block-container position="absolute" font-family="Arial,Helvetica,sans-serif" font-size="12.00pt" font-weight="bold" height="10.58mm" left="0.35mm" top="83.59mm" width="139.7mm" text-align="center"  >
								<fo:block start-indent="0pt"><xsl:value-of select="nombre"/><xsl:text> </xsl:text><xsl:value-of select="apellido"/></fo:block>
							</fo:block-container>
							<fo:block-container position="absolute" font-family="Arial,Helvetica,sans-serif" font-size="10.00pt" height="23.28mm" left="0.35mm" top="107.23mm" width="138.99mm"  >
								<fo:block start-indent="0pt">ha neutralizado las emisiones de gases efecto invernadero correspondiente a <xsl:value-of select="toneladas"/>.Ton CO2 e (1), con certificados de reducción homologados por SCX, Bolsa de Clima de Santiago, a partir de estándares internacionales (2).
Esta neutralización es un aporte real para combatir el cambio climático e irá en apoyo al proyecto <xsl:value-of select="nombreProyecto"/>.
</fo:block>
							</fo:block-container>
							<fo:block-container position="absolute" font-family="Arial,Helvetica,sans-serif" font-size="10.00pt" height="8.47mm" left="0.35mm" top="150.27mm" width="139.01mm"  >
								<fo:block start-indent="0pt">Una iniciativa de Bci</fo:block>
							</fo:block-container>
							<fo:block-container position="absolute" font-family="Arial,Helvetica,sans-serif" font-size="10.00pt" height="8.47mm" left="-0.35mm" top="171.08mm" width="139.01mm"  >
								<fo:block start-indent="0pt">Código de Certificado:  <xsl:value-of select="codigoCertificado"/></fo:block>
							</fo:block-container>
							<fo:block-container position="absolute" font-family="Arial,Helvetica,sans-serif" font-size="7.00pt" height="25.05mm" left="0mm" top="194.37mm" width="139.7mm"  >
								<fo:block start-indent="0pt">(1) Toneladas de CO2 equivalente a la unidad de medida con que se estandariza el poder de calentamiento global de los diferentes gases de efecto invernadero. (2) CDM (Mecanismo de desarrollo limpio): como parte del compromiso de reducción de emisiones de los países desarrollados en el protocolo de Kyoto, ellos pueden acreditar parte del cumplimiento de dicha obligación con la compra de certificados (CERs) provenientes de países en desarrollo y cuyas metodologías han sido aprobadas por un comité ejecutivo ad hoc de las Naciones Unidas. Voluntary Carbon Standar: iniciativa liderada por The Climate Group, el World Business Council for Sustainable Development  y la IETA parapara desarrollar un estándar metodológico de proyectos de reducción de emisiones que garantiza adicionalidad, independencia y calidad de los certificados generados. VCS es hoy líder del mercado voluntario de reducción de emisión de gases efecto invernadero. Gold Standar: Corresponde a una iniciativa de diversas ONGs internacionales por diseñar una guía de mejores prácticas metodológicas para proyectos de compensacción de emisiones.</fo:block>
							</fo:block-container>
						</fo:block-container>
					</fo:flow>
				</fo:page-sequence>
			</xsl:for-each>
		</fo:root>
	</xsl:template>
</xsl:stylesheet>
