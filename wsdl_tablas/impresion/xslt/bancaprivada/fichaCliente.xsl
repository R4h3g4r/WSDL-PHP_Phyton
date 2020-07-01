<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:fo="http://www.w3.org/1999/XSL/Format">
	<xsl:template match="/">
		<fo:root xmlns:fo="http://www.w3.org/1999/XSL/Format">
			<!-- Propiedades pagina -->
			<fo:layout-master-set>
				<fo:simple-page-master master-name="pagina"
					page-height="28cm" page-width="22cm" margin-top="1cm"
					margin-bottom="1cm" margin-left="2cm" margin-right="2cm">
					<fo:region-body margin-top="2.5cm"
						margin-bottom="2.5cm" background-color="#ffffff" />
					<fo:region-before extent="3cm" />
					<fo:region-after extent="2cm" />
				</fo:simple-page-master>
			</fo:layout-master-set>
			<!-- Propiedades pagina -->
			<fo:page-sequence master-reference="pagina"
				initial-page-number="1" language="es" country="cl">
				<fo:static-content flow-name="xsl-region-before">
					<!-- imagen bci -->
					<fo:block space-after="3mm">
						<fo:table table-layout="fixed">
							<fo:table-column column-width="12cm" />
							<fo:table-column column-width="6cm" />
							<fo:table-body>
								<fo:table-row>
									<fo:table-cell>
										<fo:external-graphic>
											<xsl:attribute name="src">
												<xsl:value-of select="ficha-cliente/cabecera/ruta-imagen"/>02-logo-bci.gif
											</xsl:attribute>
										</fo:external-graphic>
									</fo:table-cell>
									<fo:table-cell
										padding-before="1cm">
										<fo:block font-size="9pt"
											font-weight="bold" space-after="1mm" text-align="right">
											<xsl:value-of select="ficha-cliente/cabecera/fecha-impresion"/>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
							</fo:table-body>
						</fo:table>
					</fo:block>
					<!-- imagen bci -->

					<fo:block space-after="2mm">
						<xsl:call-template name="linea" />
					</fo:block>
				</fo:static-content>
				<fo:static-content flow-name="xsl-region-after">
					<fo:block space-after="1mm">
						<xsl:call-template name="linea" />
					</fo:block>
					<fo:block font-size="9pt" font-weight="normal"
						space-after="1mm" text-align="left" color="{$negro}">
						Para Consultas o Comentarios Comuníquese al 600
						6928000
					</fo:block>
					<fo:block font-size="5pt" font-weight="bold"
						space-after="1mm" text-align="right" color="{$negro}">
						Pagina
						<fo:page-number />
					</fo:block>
				</fo:static-content>
				<fo:flow flow-name="xsl-region-body">
					<xsl:call-template name="contenido" />
				</fo:flow>
			</fo:page-sequence>
		</fo:root>
	</xsl:template>

	<xsl:template name="contenido">
		<fo:block space-after="{$espacio-bloque}">
			<xsl:call-template name="cliente" />
		</fo:block>
		<fo:block space-before="{$espacio-bloque}">
			<xsl:call-template name="titulo">
				<xsl:with-param name="texto"
					select="'Ficha Cliente Inversiones Persona Natural'" />
			</xsl:call-template>
		</fo:block>
		<fo:table table-layout="fixed" space-after="{$espacio-tabla}">
			<fo:table-column column-width="18cm" />
			<fo:table-body>
				<fo:table-row>
					<xsl:call-template name="celda">
						<xsl:with-param name="texto"
							select="'(Completar con letra imprenta)'" />
						<xsl:with-param name="background-color"
							select="$gris-suave" />
					</xsl:call-template>
				</fo:table-row>
			</fo:table-body>
		</fo:table>
		<fo:block>
			<xsl:call-template name="linea" />
		</fo:block>
		<fo:block>
			<xsl:call-template name="antecedentes_personales" />
		</fo:block>
		<fo:block>
			<xsl:call-template name="linea" />
		</fo:block>
		<fo:block space-before="{$espacio-bloque}">
			<xsl:call-template name="datos_contacto" />
		</fo:block>
		<fo:block space-before="{$espacio-bloque}"  break-before="page">
			<xsl:call-template name="antecedentes_laborales" />
		</fo:block>
		<fo:block space-before="{$espacio-bloque}" break-before="page">
			<xsl:call-template name="antecedentes_adicionales" />
		</fo:block>
	</xsl:template>

	<!-- INFO CLIENTE -->
	<xsl:template name="cliente">
		<fo:table table-layout="fixed">
			<fo:table-column column-width="13cm" />
			<fo:table-column column-width="5cm" />
			<fo:table-body>
				<fo:table-row>
					<fo:table-cell>
						<fo:block text-align="left" font-size="8pt">
							<xsl:value-of select="ficha-cliente/cabecera/cliente/nombres"/>
							&#0160;
							<xsl:value-of select="ficha-cliente/cabecera/cliente/apellido-paterno"/>&#0160;
							<xsl:value-of select="ficha-cliente/cabecera/cliente/apellido-materno"/>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell>
						<fo:block text-align="right" font-size="8pt">
							<xsl:value-of select="'RUT:  '" />
							<xsl:value-of select="ficha-cliente/cabecera/cliente/rut"/>
						</fo:block>
					</fo:table-cell>
				</fo:table-row>
			</fo:table-body>
		</fo:table>
	</xsl:template>

	<!-- ANTECEDENTES PERSONALES -->
	<xsl:template name="antecedentes_personales">
		<fo:block space-before="{$espacio-bloque}">
			<xsl:call-template name="subtitulo">
				<xsl:with-param name="texto"
					select="'Antecedentes Personales'" />
			</xsl:call-template>
			<xsl:call-template name="linea" />
		</fo:block>
		<fo:block>
			<fo:table table-layout="fixed">
				<fo:table-column column-width="9cm" />
				<fo:table-column column-width="9cm" />
				<fo:table-body>
					<fo:table-row>
						<fo:table-cell>
							<fo:block font-size="9pt" font-weight="bold"
								space-after="1mm" text-align="left">
								<xsl:value-of select="'Ejecutivo: '" />
								<xsl:value-of select="ficha-cliente/cabecera/ejecutivo"/>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell>
							<fo:block font-size="9pt" font-weight="bold"
								space-after="1mm" text-align="left">
								<xsl:value-of select="'Oficina: '" />
								<xsl:value-of select="ficha-cliente/cabecera/oficina"/>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
				</fo:table-body>
			</fo:table>
		</fo:block>

		<fo:table table-layout="fixed" space-after="{$espacio-tabla}">
			<fo:table-column column-width="3.5cm" ></fo:table-column>
			<fo:table-column column-width="5.5cm" />
			<fo:table-column column-width="3.5cm" />
			<fo:table-column column-width="5.5cm" />
			<fo:table-body>
				<fo:table-row>
					<xsl:call-template name="celda">
						<xsl:with-param name="texto">
							<xsl:text>Nombres:</xsl:text>
						</xsl:with-param>
					</xsl:call-template>
					<xsl:call-template name="celda">
						<xsl:with-param name="texto">
							<xsl:value-of select="ficha-cliente/cabecera/cliente/nombres"/>
						</xsl:with-param>
					</xsl:call-template>
					<xsl:call-template name="celda">
						<xsl:with-param name="texto">
							<xsl:text>Apellidos:</xsl:text>
						</xsl:with-param>
					</xsl:call-template>
					<xsl:call-template name="celda">
						<xsl:with-param name="texto">
							<xsl:value-of select="ficha-cliente/cabecera/cliente/apellido-paterno"/>&#0160;
							<xsl:value-of select="ficha-cliente/cabecera/cliente/apellido-materno"/>
						</xsl:with-param>
					</xsl:call-template>
				</fo:table-row>
				<fo:table-row>
					<xsl:call-template name="celda">
						<xsl:with-param name="texto">
							<xsl:text>Rut:</xsl:text>
						</xsl:with-param>
						<xsl:with-param name="background-color"
							select="$gris-suave" />
					</xsl:call-template>
					<xsl:call-template name="celda">
						<xsl:with-param name="texto">
							<xsl:value-of select="ficha-cliente/cabecera/cliente/rut"/>
						</xsl:with-param>
						<xsl:with-param name="background-color"
							select="$gris-suave" />
					</xsl:call-template>
					<xsl:call-template name="celda">
						<xsl:with-param name="texto">
							<xsl:text>Fecha Nacimiento:</xsl:text>
						</xsl:with-param>
						<xsl:with-param name="background-color"
							select="$gris-suave" />
					</xsl:call-template>
					<xsl:call-template name="celda">
						<xsl:with-param name="texto">
							<xsl:value-of select="ficha-cliente/antecedentes-personales/fecha-nacimiento"/>
						</xsl:with-param>
						<xsl:with-param name="background-color"
							select="$gris-suave" />
					</xsl:call-template>
				</fo:table-row>
				<fo:table-row>
					<xsl:call-template name="celda">
						<xsl:with-param name="texto">
							<xsl:text>Sexo:</xsl:text>
						</xsl:with-param>
					</xsl:call-template>
					<fo:table-cell 
						border-top-style="solid"
						border-top-width="thin" border-top-color="{$gris-oscuro}"
						border-bottom-style="solid" 
						border-bottom-width="thin"
						border-bottom-color="{$gris-oscuro}" 
						border-left-style="solid"
						border-left-width="thin" 
						border-left-color="{$gris-oscuro}"
						border-right-style="solid" 
						border-right-width="thin"
						border-right-color="{$gris-oscuro}">
						<fo:block text-align="left"
							font-weight="normal" 
							font-size="8pt"
							space-before="0.4mm" space-after="0.4mm"
							start-indent="0.4mm" end-indent="0.4mm">
							<xsl:choose>
								<xsl:when test="ficha-cliente/antecedentes-personales/sexo = 'M'">
									<xsl:call-template name="checkSi"/>
								</xsl:when>
								<xsl:otherwise>
									<xsl:call-template name="checkNo"/>
								</xsl:otherwise>
							</xsl:choose>&#0160;Masculino&#0160;

							<xsl:choose>
								<xsl:when test="ficha-cliente/antecedentes-personales/sexo = 'F'">
									<xsl:call-template name="checkSi"/>
								</xsl:when>
								<xsl:otherwise>
									<xsl:call-template name="checkNo"/>
								</xsl:otherwise>
							</xsl:choose>&#0160;Femenino
						</fo:block>
					</fo:table-cell>
					<xsl:call-template name="celda">
						<xsl:with-param name="texto">
							<xsl:text>Profesión:</xsl:text>
						</xsl:with-param>
					</xsl:call-template>
					<xsl:call-template name="celda">
						<xsl:with-param name="texto">
							<xsl:value-of select="ficha-cliente/antecedentes-personales/profesion"/>
						</xsl:with-param>
					</xsl:call-template>
				</fo:table-row>
				<fo:table-row>
					<xsl:call-template name="celda">
						<xsl:with-param name="texto">
							<xsl:text>Nacionalidad:</xsl:text>
						</xsl:with-param>
						<xsl:with-param name="background-color"
							select="$gris-suave" />
					</xsl:call-template>
					<xsl:call-template name="celda">
						<xsl:with-param name="texto">
							<xsl:value-of select="ficha-cliente/antecedentes-personales/nacionalidad"/>
						</xsl:with-param>
						<xsl:with-param name="background-color"
							select="$gris-suave" />
					</xsl:call-template>
					<xsl:call-template name="celda">
						<xsl:with-param name="texto">
							<xsl:text>País de residencia:</xsl:text>
						</xsl:with-param>
						<xsl:with-param name="background-color"
							select="$gris-suave" />
					</xsl:call-template>
					<xsl:call-template name="celda">
						<xsl:with-param name="texto">
							<xsl:value-of select="ficha-cliente/antecedentes-personales/pais-de-residencia"/>
						</xsl:with-param>
						<xsl:with-param name="background-color"
							select="$gris-suave" />
					</xsl:call-template>
				</fo:table-row>
			</fo:table-body>
		</fo:table>

		<fo:table table-layout="fixed" space-after="{$espacio-tabla}">
			<fo:table-column column-width="3.5cm" ></fo:table-column>
			<fo:table-column column-width="5.5cm" />
			<fo:table-column column-width="3.5cm" />
			<fo:table-column column-width="5.5cm" />
			<fo:table-body>
				<fo:table-row>
					<xsl:call-template name="celda">
						<xsl:with-param name="texto">
							<xsl:text>Dirección Particular:</xsl:text>
						</xsl:with-param>
					</xsl:call-template>
					<xsl:call-template name="celda">
						<xsl:with-param name="texto">
							<xsl:value-of select="ficha-cliente/antecedentes-personales/direcciones/direccion-particular/descripcion"/>
						</xsl:with-param>
						<xsl:with-param name="number-columns-spanned">3</xsl:with-param>
					</xsl:call-template>
				</fo:table-row>
				<fo:table-row>
					<xsl:call-template name="celda">
						<xsl:with-param name="texto">
							<xsl:text>Fono:</xsl:text>
						</xsl:with-param>
						<xsl:with-param name="background-color"
							select="$gris-suave" />
					</xsl:call-template>
					<xsl:call-template name="celda">
						<xsl:with-param name="texto">
							<xsl:value-of select="ficha-cliente/antecedentes-personales/direcciones/direccion-particular/telefono"/>
						</xsl:with-param>
						<xsl:with-param name="background-color"
							select="$gris-suave" />
					</xsl:call-template>
					<xsl:call-template name="celda">
						<xsl:with-param name="texto">
							<xsl:text>Comuna:</xsl:text>
						</xsl:with-param>
						<xsl:with-param name="background-color"
							select="$gris-suave" />
					</xsl:call-template>
					<xsl:call-template name="celda">
						<xsl:with-param name="texto">
							<xsl:value-of select="ficha-cliente/antecedentes-personales/direcciones/direccion-particular/comuna"/>
						</xsl:with-param>
						<xsl:with-param name="background-color"
							select="$gris-suave" />
					</xsl:call-template>
				</fo:table-row>
				<fo:table-row>
					<xsl:call-template name="celda">
						<xsl:with-param name="texto">
							<xsl:text>Ciudad:</xsl:text>
						</xsl:with-param>
					</xsl:call-template>
					<xsl:call-template name="celda">
						<xsl:with-param name="texto">
							<xsl:value-of select="ficha-cliente/antecedentes-personales/direcciones/direccion-particular/ciudad"/>
						</xsl:with-param>
					</xsl:call-template>
					<xsl:call-template name="celda">
						<xsl:with-param name="texto">
							<xsl:text>Región:</xsl:text>
						</xsl:with-param>
					</xsl:call-template>
					<xsl:call-template name="celda">
						<xsl:with-param name="texto">
							<xsl:value-of select="ficha-cliente/antecedentes-personales/direcciones/direccion-particular/region"/>
						</xsl:with-param>
					</xsl:call-template>
				</fo:table-row>
				
				<fo:table-row>
					<xsl:call-template name="celda">
						<xsl:with-param name="texto">
							<xsl:text>Dirección Comercial:</xsl:text>
						</xsl:with-param>
						<xsl:with-param name="background-color"
							select="$gris-suave" />
					</xsl:call-template>
					<xsl:call-template name="celda">
						<xsl:with-param name="texto">
							<xsl:value-of select="ficha-cliente/antecedentes-personales/direcciones/direccion-comercial/descripcion"/>
						</xsl:with-param>
						<xsl:with-param name="background-color" select="$gris-suave" />
						<xsl:with-param name="number-columns-spanned">3</xsl:with-param>
					</xsl:call-template>
				</fo:table-row>
				<fo:table-row>
					<xsl:call-template name="celda">
						<xsl:with-param name="texto">
							<xsl:text>Fono:</xsl:text>
						</xsl:with-param>
					</xsl:call-template>
					<xsl:call-template name="celda">
						<xsl:with-param name="texto">
							<xsl:value-of select="ficha-cliente/antecedentes-personales/direcciones/direccion-comercial/telefono"/>
						</xsl:with-param>
					</xsl:call-template>
					<xsl:call-template name="celda">
						<xsl:with-param name="texto">
							<xsl:text>Comuna:</xsl:text>
						</xsl:with-param>
					</xsl:call-template>
					<xsl:call-template name="celda">
						<xsl:with-param name="texto">
							<xsl:value-of select="ficha-cliente/antecedentes-personales/direcciones/direccion-comercial/comuna"/>
						</xsl:with-param>
					</xsl:call-template>
				</fo:table-row>
				<fo:table-row>
					<xsl:call-template name="celda">
						<xsl:with-param name="texto">
							<xsl:text>Ciudad:</xsl:text>
						</xsl:with-param>
						<xsl:with-param name="background-color"
							select="$gris-suave" />
					</xsl:call-template>
					<xsl:call-template name="celda">
						<xsl:with-param name="texto">
							<xsl:value-of select="ficha-cliente/antecedentes-personales/direcciones/direccion-comercial/ciudad"/>
						</xsl:with-param>
						<xsl:with-param name="background-color"
							select="$gris-suave" />
					</xsl:call-template>
					<xsl:call-template name="celda">
						<xsl:with-param name="texto">
							<xsl:text>Región:</xsl:text>
						</xsl:with-param>
						<xsl:with-param name="background-color"
							select="$gris-suave" />
					</xsl:call-template>
					<xsl:call-template name="celda">
						<xsl:with-param name="texto">
							<xsl:value-of select="ficha-cliente/antecedentes-personales/direcciones/direccion-comercial/region"/>
						</xsl:with-param>
						<xsl:with-param name="background-color" select="$gris-suave" />
					</xsl:call-template>
				</fo:table-row>
			</fo:table-body>
		</fo:table>

		<fo:table table-layout="fixed" space-after="{$espacio-tabla}">
			<fo:table-column column-width="3.5cm" />
			<fo:table-column column-width="3.6cm" />
			<fo:table-column column-width="3.6cm" />
			<fo:table-column column-width="3.6cm" />
			<fo:table-column column-width="3.7cm" />
			<fo:table-body>
				<fo:table-row>
					<xsl:call-template name="celda">
						<xsl:with-param name="texto">
							<xsl:text>Estado Civil:</xsl:text>
						</xsl:with-param>
						<xsl:with-param name="background-color" select="$gris-suave" />
					</xsl:call-template>
					<fo:table-cell 
						border-top-style="solid"
						border-top-width="thin" border-top-color="{$gris-oscuro}"
						border-bottom-style="solid" 
						border-bottom-width="thin"
						border-bottom-color="{$gris-oscuro}" 
						border-left-style="solid"
						border-left-width="thin" 
						border-left-color="{$gris-oscuro}"
						border-right-style="solid" 
						border-right-width="thin"
						border-right-color="{$gris-oscuro}">
						<fo:block text-align="left"
							font-weight="normal" 
							font-size="8pt"
							space-before="0.4mm" space-after="0.4mm"
							start-indent="0.4mm" end-indent="0.4mm">
							<xsl:choose>
								<xsl:when test="ficha-cliente/antecedentes-personales/estado-civil = 'SOL'">
									<xsl:call-template name="checkSi"/>
								</xsl:when>
								<xsl:otherwise>
									<xsl:call-template name="checkNo"/>
								</xsl:otherwise>
							</xsl:choose>&#0160;Soltero(a)
						</fo:block>
					</fo:table-cell>
					
					<fo:table-cell 
						border-top-style="solid"
						border-top-width="thin" border-top-color="{$gris-oscuro}"
						border-bottom-style="solid" 
						border-bottom-width="thin"
						border-bottom-color="{$gris-oscuro}" 
						border-left-style="solid"
						border-left-width="thin" 
						border-left-color="{$gris-oscuro}"
						border-right-style="solid" 
						border-right-width="thin"
						border-right-color="{$gris-oscuro}">
						<fo:block text-align="left"
							font-weight="normal" 
							font-size="8pt"
							space-before="0.4mm" space-after="0.4mm"
							start-indent="0.4mm" end-indent="0.4mm">
							<xsl:choose>
								<xsl:when test="ficha-cliente/antecedentes-personales/estado-civil = 'CAS'">
									<xsl:call-template name="checkSi"/>
								</xsl:when>
								<xsl:otherwise>
									<xsl:call-template name="checkNo"/>
								</xsl:otherwise>
							</xsl:choose>&#0160;Casado(a)
						</fo:block>
					</fo:table-cell>

					<fo:table-cell 
						border-top-style="solid"
						border-top-width="thin" border-top-color="{$gris-oscuro}"
						border-bottom-style="solid" 
						border-bottom-width="thin"
						border-bottom-color="{$gris-oscuro}" 
						border-left-style="solid"
						border-left-width="thin" 
						border-left-color="{$gris-oscuro}"
						border-right-style="solid" 
						border-right-width="thin"
						border-right-color="{$gris-oscuro}">
						<fo:block text-align="left"
							font-weight="normal" 
							font-size="8pt"
							space-before="0.4mm" space-after="0.4mm"
							start-indent="0.4mm" end-indent="0.4mm">
							<xsl:choose>
								<xsl:when test="ficha-cliente/antecedentes-personales/estado-civil = 'DIV'">
									<xsl:call-template name="checkSi"/>
								</xsl:when>
								<xsl:otherwise>
									<xsl:call-template name="checkNo"/>
								</xsl:otherwise>
							</xsl:choose>&#0160;Divorciado(a)
						</fo:block>
					</fo:table-cell>
					
					<fo:table-cell 
						border-top-style="solid"
						border-top-width="thin" border-top-color="{$gris-oscuro}"
						border-bottom-style="solid" 
						border-bottom-width="thin"
						border-bottom-color="{$gris-oscuro}" 
						border-left-style="solid"
						border-left-width="thin" 
						border-left-color="{$gris-oscuro}"
						border-right-style="solid" 
						border-right-width="thin"
						border-right-color="{$gris-oscuro}">
						<fo:block text-align="left"
							font-weight="normal" 
							font-size="8pt"
							space-before="0.4mm" space-after="0.4mm"
							start-indent="0.4mm" end-indent="0.4mm">
							<xsl:choose>
								<xsl:when test="ficha-cliente/antecedentes-personales/estado-civil = 'VIU'">
									<xsl:call-template name="checkSi"/>
								</xsl:when>
								<xsl:otherwise>
									<xsl:call-template name="checkNo"/>
								</xsl:otherwise>
							</xsl:choose>&#0160;Viudo(a)
						</fo:block>
					</fo:table-cell>
				</fo:table-row>
				
				<fo:table-row>
					<xsl:call-template name="celda">
						<xsl:with-param name="texto">
							<xsl:text>Régimen conyugal:</xsl:text>
						</xsl:with-param>
						<xsl:with-param name="background-color" select="$gris-suave" />
					</xsl:call-template>
					
					<fo:table-cell 
						border-top-style="solid"
						border-top-width="thin" border-top-color="{$gris-oscuro}"
						border-bottom-style="solid" 
						border-bottom-width="thin"
						border-bottom-color="{$gris-oscuro}" 
						border-left-style="solid"
						border-left-width="thin" 
						border-left-color="{$gris-oscuro}"
						border-right-style="solid" 
						border-right-width="thin"
						border-right-color="{$gris-oscuro}">
						<fo:block text-align="left"
							font-weight="normal" 
							font-size="8pt"
							space-before="0.4mm" space-after="0.4mm"
							start-indent="0.4mm" end-indent="0.4mm">
							<xsl:choose>
								<xsl:when test="ficha-cliente/antecedentes-personales/conyuge/regimen-conyugal = '1'">
									<xsl:call-template name="checkSi"/>
								</xsl:when>
								<xsl:otherwise>
									<xsl:call-template name="checkNo"/>
								</xsl:otherwise>
							</xsl:choose>&#0160;Sociedad Conyugal
						</fo:block>
					</fo:table-cell>
					
					<fo:table-cell 
						border-top-style="solid"
						border-top-width="thin" border-top-color="{$gris-oscuro}"
						border-bottom-style="solid" 
						border-bottom-width="thin"
						border-bottom-color="{$gris-oscuro}" 
						border-left-style="solid"
						border-left-width="thin" 
						border-left-color="{$gris-oscuro}"
						border-right-style="solid" 
						border-right-width="thin"
						border-right-color="{$gris-oscuro}">
						<fo:block text-align="left"
							font-weight="normal" 
							font-size="8pt"
							space-before="0.4mm" space-after="0.4mm"
							start-indent="0.4mm" end-indent="0.4mm">
							<xsl:choose>
								<xsl:when test="ficha-cliente/antecedentes-personales/conyuge/regimen-conyugal = '2'">
									<xsl:call-template name="checkSi"/>
								</xsl:when>
								<xsl:otherwise>
									<xsl:call-template name="checkNo"/>
								</xsl:otherwise>
							</xsl:choose>&#0160;Separación de Bienes
						</fo:block>
					</fo:table-cell>

					<fo:table-cell 
						border-top-style="solid"
						border-top-width="thin" border-top-color="{$gris-oscuro}"
						border-bottom-style="solid" 
						border-bottom-width="thin"
						border-bottom-color="{$gris-oscuro}" 
						border-left-style="solid"
						border-left-width="thin" 
						border-left-color="{$gris-oscuro}"
						border-right-style="solid" 
						border-right-width="thin"
						border-right-color="{$gris-oscuro}">
						<fo:block text-align="left"
							font-weight="normal" 
							font-size="8pt"
							space-before="0.4mm" space-after="0.4mm"
							start-indent="0.4mm" end-indent="0.4mm">
							<xsl:choose>
								<xsl:when test="ficha-cliente/antecedentes-personales/conyuge/regimen-conyugal = '3'">
									<xsl:call-template name="checkSi"/>
								</xsl:when>
								<xsl:otherwise>
									<xsl:call-template name="checkNo"/>
								</xsl:otherwise>
							</xsl:choose>&#0160;Participación en ganancias
						</fo:block>
					</fo:table-cell>
					
					<xsl:call-template name="celda"/>
				</fo:table-row>
			</fo:table-body>
		</fo:table>

		<fo:table table-layout="fixed" space-after="{$espacio-tabla}">
			<fo:table-column column-width="3.5cm" />
			<fo:table-column column-width="5.5cm" />
			<fo:table-column column-width="3.5cm" />
			<fo:table-column column-width="5.5cm" />
			<fo:table-body>
				<fo:table-row>
					<xsl:call-template name="celda">
						<xsl:with-param name="texto">
							<xsl:text>Nombres del Conyuge:</xsl:text>
						</xsl:with-param>
						<xsl:with-param name="background-color" select="$gris-suave" />
					</xsl:call-template>
					<xsl:call-template name="celda">
						<xsl:with-param name="texto">
							<xsl:value-of select="ficha-cliente/antecedentes-personales/conyuge/nombres"/>
						</xsl:with-param>
						<xsl:with-param name="background-color" select="$gris-suave" />
					</xsl:call-template>
					<xsl:call-template name="celda">
						<xsl:with-param name="texto">
							<xsl:text>Apellidos del Conyuge:</xsl:text>
						</xsl:with-param>
						<xsl:with-param name="background-color" select="$gris-suave" />
					</xsl:call-template>
					<xsl:call-template name="celda">
						<xsl:with-param name="texto">
							<xsl:value-of select="ficha-cliente/antecedentes-personales/conyuge/apellido-paterno"/>&#0160;
							<xsl:value-of select="ficha-cliente/antecedentes-personales/conyuge/apellido-materno"/>
						</xsl:with-param>
						<xsl:with-param name="background-color" select="$gris-suave" />
					</xsl:call-template>
				</fo:table-row>
				<fo:table-row>
					<xsl:call-template name="celda">
						<xsl:with-param name="texto">
							<xsl:text>Rut del Conyuge:</xsl:text>
						</xsl:with-param>
					</xsl:call-template>
					<xsl:call-template name="celda">
						<xsl:with-param name="texto">
							<xsl:value-of
								select="ficha-cliente/antecedentes-personales/conyuge/rut" />
						</xsl:with-param>
					</xsl:call-template>
					<xsl:call-template name="celda"/>
					<xsl:call-template name="celda"/>
				</fo:table-row>
			</fo:table-body>
		</fo:table>
	</xsl:template>
	<!-- ANTECEDENTES PERSONALES -->

	<!-- DATOS DE CONTACTO -->
	<xsl:template name="datos_contacto">
		<fo:block space-before="{$espacio-bloque}">
			<xsl:call-template name="subtitulo">
				<xsl:with-param name="texto"
					select="'Datos de contacto'" />
			</xsl:call-template>
			<xsl:call-template name="linea" />
		</fo:block>
		<fo:table table-layout="fixed" space-after="{$espacio-tabla}">
			<fo:table-column column-width="3.5cm" />
			<fo:table-column column-width="5.5cm" />
			<fo:table-column column-width="3.5cm" />
			<fo:table-column column-width="5.5cm" />
			<fo:table-body>
				<fo:table-row>
					<xsl:call-template name="celda">
						<xsl:with-param name="texto"
							select="'Dirección de Contacto:'" />
					</xsl:call-template>
					<xsl:call-template name="celda">
						<xsl:with-param name="texto">
							<xsl:value-of select="ficha-cliente/antecedentes-personales/direcciones/direccion-contacto/descripcion"/>
						</xsl:with-param>
						<xsl:with-param name="number-columns-spanned" select="'3'"/>
					</xsl:call-template>
				</fo:table-row>
				<fo:table-row>
					<xsl:call-template name="celda">
						<xsl:with-param name="texto" select="'Comuna:'" />
						<xsl:with-param name="background-color" select="$gris-suave" />
					</xsl:call-template>
					<xsl:call-template name="celda">
						<xsl:with-param name="texto">
							<xsl:value-of select="ficha-cliente/antecedentes-personales/direcciones/direccion-contacto/comuna"/>
						</xsl:with-param>
						<xsl:with-param name="background-color" select="$gris-suave" />
					</xsl:call-template>
					<xsl:call-template name="celda">
						<xsl:with-param name="texto" select="'Ciudad:'" />
						<xsl:with-param name="background-color" select="$gris-suave" />
					</xsl:call-template>
					<xsl:call-template name="celda">
						<xsl:with-param name="texto">
							<xsl:value-of select="ficha-cliente/antecedentes-personales/direcciones/direccion-contacto/ciudad"/>
						</xsl:with-param>
						<xsl:with-param name="background-color" select="$gris-suave" />
					</xsl:call-template>
				</fo:table-row>
				<fo:table-row>
					<xsl:call-template name="celda">
						<xsl:with-param name="texto" select="'Región:'" />
					</xsl:call-template>
					<xsl:call-template name="celda">
						<xsl:with-param name="texto">
							<xsl:value-of select="ficha-cliente/antecedentes-personales/direcciones/direccion-contacto/region"/>
						</xsl:with-param>
					</xsl:call-template>
					<xsl:call-template name="celda">
						<xsl:with-param name="texto" select="'Email:'" />
					</xsl:call-template>
					<xsl:call-template name="celda">
						<xsl:with-param name="texto">
							<xsl:value-of select="ficha-cliente/datos-de-contacto/direccion-email"/>
						</xsl:with-param>
					</xsl:call-template>
				</fo:table-row>
				<fo:table-row>
					<xsl:call-template name="celda">
						<xsl:with-param name="texto" select="'Casilla:'" />
						<xsl:with-param name="background-color" select="$gris-suave" />
					</xsl:call-template>
					<xsl:call-template name="celda">
						<xsl:with-param name="texto">
							<xsl:value-of select="ficha-cliente/antecedentes-personales/direcciones/direccion-casilla-interna/descripcion"/>
						</xsl:with-param>
						<xsl:with-param name="background-color" select="$gris-suave" />
					</xsl:call-template>
					<xsl:call-template name="celda">
						<xsl:with-param name="texto" select="'Correo:'" />
						<xsl:with-param name="background-color" select="$gris-suave" />
					</xsl:call-template>
					<xsl:call-template name="celda">
						<xsl:with-param name="texto">
							<xsl:value-of select="ficha-cliente/antecedentes-personales/direcciones/direccion-casilla-correo/descripcion"/>
						</xsl:with-param>
						<xsl:with-param name="background-color" select="$gris-suave" />
					</xsl:call-template>
				</fo:table-row>
				<fo:table-row>
					<xsl:call-template name="celda">
						<xsl:with-param name="texto" select="'Fono:'" />
					</xsl:call-template>
					<xsl:call-template name="celda">
						<xsl:with-param name="texto">
							<xsl:value-of select="ficha-cliente/datos-de-contacto/direccion-telefono"/>
						</xsl:with-param>
					</xsl:call-template>
					<xsl:call-template name="celda">
						<xsl:with-param name="texto" select="'Celular:'" />
					</xsl:call-template>
					<xsl:call-template name="celda">
						<xsl:with-param name="texto">
							<xsl:value-of select="ficha-cliente/antecedentes-personales/direcciones/direccion-celular/telefono"/>
						</xsl:with-param>
					</xsl:call-template>
				</fo:table-row>
				<fo:table-row>
					<xsl:call-template name="celda">
						<xsl:with-param name="texto" select="'Fax:'" />
						<xsl:with-param name="background-color" select="$gris-suave" />
					</xsl:call-template>
					<xsl:call-template name="celda">
						<xsl:with-param name="texto">
							<xsl:value-of select="ficha-cliente/antecedentes-personales/direcciones/direccion-fax/telefono"/>
						</xsl:with-param>
						<xsl:with-param name="background-color" select="$gris-suave" />
					</xsl:call-template>
					<xsl:call-template name="celda">
						<xsl:with-param name="texto" select="''" />
						<xsl:with-param name="background-color" select="$gris-suave" />
					</xsl:call-template>
					<xsl:call-template name="celda">
						<xsl:with-param name="texto" select="''"/>
						<xsl:with-param name="background-color" select="$gris-suave" />
					</xsl:call-template>
				</fo:table-row>
			</fo:table-body>
		</fo:table>

		<fo:table table-layout="fixed" space-after="{$espacio-tabla}">
			<fo:table-column column-width="2.8cm" />
			<fo:table-column column-width="2.8cm" />
			<fo:table-column column-width="2.8cm" />
			<fo:table-column column-width="2.8cm" />
			<fo:table-column column-width="2.8cm" />
			<fo:table-column column-width="4.0cm" />
			<fo:table-body>
				<fo:table-row>
					<xsl:call-template name="celda">
						<xsl:with-param name="texto"
							select="'Solicito el Envío de Correspondencia a mi Dirección:'" />
						<xsl:with-param name="number-columns-spanned" select="'6'"/>
						<xsl:with-param name="background-color" select="$gris-suave" />
					</xsl:call-template>
				</fo:table-row>
				<fo:table-row>
					<fo:table-cell 
						border-top-style="solid"
						border-top-width="thin" border-top-color="{$gris-oscuro}"
						border-bottom-style="solid" 
						border-bottom-width="thin"
						border-bottom-color="{$gris-oscuro}" 
						border-left-style="solid"
						border-left-width="thin" 
						border-left-color="{$gris-oscuro}"
						border-right-style="solid" 
						border-right-width="thin"
						border-right-color="{$gris-oscuro}">
						<fo:block text-align="left"
							font-weight="normal" 
							font-size="8pt"
							space-before="0.4mm" space-after="0.4mm"
							start-indent="0.4mm" end-indent="0.4mm">
							<xsl:choose>
								<xsl:when test="ficha-cliente/datos-de-contacto/direccion-envio = 'D'">
									<xsl:call-template name="checkSi"/>
								</xsl:when>
								<xsl:otherwise>
									<xsl:call-template name="checkNo"/>
								</xsl:otherwise>
							</xsl:choose>&#0160;Particular
						</fo:block>
					</fo:table-cell>

					<fo:table-cell 
						border-top-style="solid"
						border-top-width="thin" border-top-color="{$gris-oscuro}"
						border-bottom-style="solid" 
						border-bottom-width="thin"
						border-bottom-color="{$gris-oscuro}" 
						border-left-style="solid"
						border-left-width="thin" 
						border-left-color="{$gris-oscuro}"
						border-right-style="solid" 
						border-right-width="thin"
						border-right-color="{$gris-oscuro}">
						<fo:block text-align="left"
							font-weight="normal" 
							font-size="8pt"
							space-before="0.4mm" space-after="0.4mm"
							start-indent="0.4mm" end-indent="0.4mm">
							<xsl:choose>
								<xsl:when test="ficha-cliente/datos-de-contacto/direccion-envio = '2'">
									<xsl:call-template name="checkSi"/>
								</xsl:when>
								<xsl:otherwise>
									<xsl:call-template name="checkNo"/>
								</xsl:otherwise>
							</xsl:choose>&#0160;De Contacto
						</fo:block>
					</fo:table-cell>
					
					<fo:table-cell 
						border-top-style="solid"
						border-top-width="thin" border-top-color="{$gris-oscuro}"
						border-bottom-style="solid" 
						border-bottom-width="thin"
						border-bottom-color="{$gris-oscuro}" 
						border-left-style="solid"
						border-left-width="thin" 
						border-left-color="{$gris-oscuro}"
						border-right-style="solid" 
						border-right-width="thin"
						border-right-color="{$gris-oscuro}">
						<fo:block text-align="left"
							font-weight="normal" 
							font-size="8pt"
							space-before="0.4mm" space-after="0.4mm"
							start-indent="0.4mm" end-indent="0.4mm">
							<xsl:choose>
								<xsl:when test="ficha-cliente/datos-de-contacto/direccion-envio = 'E'">
									<xsl:call-template name="checkSi"/>
								</xsl:when>
								<xsl:otherwise>
									<xsl:call-template name="checkNo"/>
								</xsl:otherwise>
							</xsl:choose>&#0160;Comercial
						</fo:block>
					</fo:table-cell>

					<fo:table-cell 
						border-top-style="solid"
						border-top-width="thin" border-top-color="{$gris-oscuro}"
						border-bottom-style="solid" 
						border-bottom-width="thin"
						border-bottom-color="{$gris-oscuro}" 
						border-left-style="solid"
						border-left-width="thin" 
						border-left-color="{$gris-oscuro}"
						border-right-style="solid" 
						border-right-width="thin"
						border-right-color="{$gris-oscuro}">
						<fo:block text-align="left"
							font-weight="normal" 
							font-size="8pt"
							space-before="0.4mm" space-after="0.4mm"
							start-indent="0.4mm" end-indent="0.4mm">
							<xsl:choose>
								<xsl:when test="ficha-cliente/datos-de-contacto/direccion-envio = '7'">
									<xsl:call-template name="checkSi"/>
								</xsl:when>
								<xsl:otherwise>
									<xsl:call-template name="checkNo"/>
								</xsl:otherwise>
							</xsl:choose>&#0160;Email
						</fo:block>
					</fo:table-cell>

					<fo:table-cell 
						border-top-style="solid"
						border-top-width="thin" border-top-color="{$gris-oscuro}"
						border-bottom-style="solid" 
						border-bottom-width="thin"
						border-bottom-color="{$gris-oscuro}" 
						border-left-style="solid"
						border-left-width="thin" 
						border-left-color="{$gris-oscuro}"
						border-right-style="solid" 
						border-right-width="thin"
						border-right-color="{$gris-oscuro}">
						<fo:block text-align="left"
							font-weight="normal" 
							font-size="8pt"
							space-before="0.4mm" space-after="0.4mm"
							start-indent="0.4mm" end-indent="0.4mm">
							<xsl:choose>
								<xsl:when test="ficha-cliente/datos-de-contacto/direccion-envio = '3'">
									<xsl:call-template name="checkSi"/>
								</xsl:when>
								<xsl:otherwise>
									<xsl:call-template name="checkNo"/>
								</xsl:otherwise>
							</xsl:choose>&#0160;Casilla
						</fo:block>
					</fo:table-cell>

					<fo:table-cell 
						border-top-style="solid"
						border-top-width="thin" border-top-color="{$gris-oscuro}"
						border-bottom-style="solid" 
						border-bottom-width="thin"
						border-bottom-color="{$gris-oscuro}" 
						border-left-style="solid"
						border-left-width="thin" 
						border-left-color="{$gris-oscuro}"
						border-right-style="solid" 
						border-right-width="thin"
						border-right-color="{$gris-oscuro}">
						<fo:block text-align="left"
							font-weight="normal" 
							font-size="8pt"
							space-before="0.4mm" space-after="0.4mm"
							start-indent="0.4mm" end-indent="0.4mm">
							<xsl:choose>
								<xsl:when test="ficha-cliente/datos-de-contacto/direccion-envio = '4'">
									<xsl:call-template name="checkSi"/>
								</xsl:when>
								<xsl:otherwise>
									<xsl:call-template name="checkNo"/>
								</xsl:otherwise>
							</xsl:choose>&#0160;Retira Personalmente
						</fo:block>
					</fo:table-cell>
				</fo:table-row>
			</fo:table-body>
		</fo:table>
		<fo:table table-layout="fixed" space-after="{$espacio-tabla}">
			<fo:table-column column-width="18.0cm" />
			<fo:table-body>
				<fo:table-row>
					<xsl:call-template name="celda">
						<xsl:with-param name="texto">Desde ya autorizo expresamente al Banco y a sus Filiales para enviarme todas las comunicaciones relativas al establecimiento o modificaciones en las condiciones, tarifas, comisiones y otros de los productos y servicios ofrecidos, al correo electrónico que mantuviere registrado en el Banco y/o sus Filiales, en aquellos casos en que las disposiciones legales o administrativas lo permitieren.</xsl:with-param>
						<xsl:with-param name="background-color" select="$gris-suave" />
					</xsl:call-template>
				</fo:table-row>
			</fo:table-body>
		</fo:table>
	</xsl:template>
	<!-- DATOS DE CONTACTO -->

	<!-- ANTECEDENTES LABORALES -->
	<xsl:template name="antecedentes_laborales">
		<fo:block space-before="{$espacio-bloque}">
			<xsl:call-template name="subtitulo">
				<xsl:with-param name="texto" select="'Antecedentes Laborales'" />
			</xsl:call-template>
			<xsl:call-template name="linea" />
		</fo:block>
		<fo:table table-layout="fixed" space-after="{$espacio-tabla}">
			<fo:table-column column-width="3.0cm" />
			<fo:table-column column-width="3.0cm" />
			<fo:table-column column-width="3.0cm" />
			<fo:table-column column-width="3.0cm" />
			<fo:table-column column-width="3.0cm" />
			<fo:table-column column-width="3.0cm" />
			<fo:table-body>
				<fo:table-row>
					<xsl:call-template name="celda">
						<xsl:with-param name="texto"
							select="'Actividad:'" />
						<xsl:with-param name="background-color"	select="$gris-suave" />
						<xsl:with-param name="number-columns-spanned" select="'6'"/>
					</xsl:call-template>
				</fo:table-row>
				<fo:table-row>
					<fo:table-cell 
						border-top-style="solid"
						border-top-width="thin" border-top-color="{$gris-oscuro}"
						border-bottom-style="solid" 
						border-bottom-width="thin"
						border-bottom-color="{$gris-oscuro}" 
						border-left-style="solid"
						border-left-width="thin" 
						border-left-color="{$gris-oscuro}"
						border-right-style="solid" 
						border-right-width="thin"
						border-right-color="{$gris-oscuro}">
						<fo:block text-align="left"
							font-weight="normal" 
							font-size="8pt"
							space-before="0.4mm" space-after="0.4mm"
							start-indent="0.4mm" end-indent="0.4mm">
							<xsl:choose>
								<xsl:when test="ficha-cliente/antecedentes-laborales/actividad = '2'">
									<xsl:call-template name="checkSi"/>
								</xsl:when>
								<xsl:otherwise>
									<xsl:call-template name="checkNo"/>
								</xsl:otherwise>
							</xsl:choose>&#0160;Empleado(a)
						</fo:block>
					</fo:table-cell>

					<fo:table-cell 
						border-top-style="solid"
						border-top-width="thin" border-top-color="{$gris-oscuro}"
						border-bottom-style="solid" 
						border-bottom-width="thin"
						border-bottom-color="{$gris-oscuro}" 
						border-left-style="solid"
						border-left-width="thin" 
						border-left-color="{$gris-oscuro}"
						border-right-style="solid" 
						border-right-width="thin"
						border-right-color="{$gris-oscuro}">
						<fo:block text-align="left"
							font-weight="normal" 
							font-size="8pt"
							space-before="0.4mm" space-after="0.4mm"
							start-indent="0.4mm" end-indent="0.4mm">
							<xsl:choose>
								<xsl:when test="ficha-cliente/antecedentes-laborales/actividad = '1'">
									<xsl:call-template name="checkSi"/>
								</xsl:when>
								<xsl:otherwise>
									<xsl:call-template name="checkNo"/>
								</xsl:otherwise>
							</xsl:choose>&#0160;Empresario(a)
						</fo:block>
					</fo:table-cell>

					<fo:table-cell 
						border-top-style="solid"
						border-top-width="thin" border-top-color="{$gris-oscuro}"
						border-bottom-style="solid" 
						border-bottom-width="thin"
						border-bottom-color="{$gris-oscuro}" 
						border-left-style="solid"
						border-left-width="thin" 
						border-left-color="{$gris-oscuro}"
						border-right-style="solid" 
						border-right-width="thin"
						border-right-color="{$gris-oscuro}">
						<fo:block text-align="left"
							font-weight="normal" 
							font-size="8pt"
							space-before="0.4mm" space-after="0.4mm"
							start-indent="0.4mm" end-indent="0.4mm">
							<xsl:choose>
								<xsl:when test="ficha-cliente/antecedentes-laborales/actividad = '3'">
									<xsl:call-template name="checkSi"/>
								</xsl:when>
								<xsl:otherwise>
									<xsl:call-template name="checkNo"/>
								</xsl:otherwise>
							</xsl:choose>&#0160;Independiente
						</fo:block>
					</fo:table-cell>

					<fo:table-cell 
						border-top-style="solid"
						border-top-width="thin" border-top-color="{$gris-oscuro}"
						border-bottom-style="solid" 
						border-bottom-width="thin"
						border-bottom-color="{$gris-oscuro}" 
						border-left-style="solid"
						border-left-width="thin" 
						border-left-color="{$gris-oscuro}"
						border-right-style="solid" 
						border-right-width="thin"
						border-right-color="{$gris-oscuro}">
						<fo:block text-align="left"
							font-weight="normal" 
							font-size="8pt"
							space-before="0.4mm" space-after="0.4mm"
							start-indent="0.4mm" end-indent="0.4mm">
							<xsl:choose>
								<xsl:when test="ficha-cliente/antecedentes-laborales/actividad = '4'">
									<xsl:call-template name="checkSi"/>
								</xsl:when>
								<xsl:otherwise>
									<xsl:call-template name="checkNo"/>
								</xsl:otherwise>
							</xsl:choose>&#0160;Rentista
						</fo:block>
					</fo:table-cell>

					<fo:table-cell 
						border-top-style="solid"
						border-top-width="thin" border-top-color="{$gris-oscuro}"
						border-bottom-style="solid" 
						border-bottom-width="thin"
						border-bottom-color="{$gris-oscuro}" 
						border-left-style="solid"
						border-left-width="thin" 
						border-left-color="{$gris-oscuro}"
						border-right-style="solid" 
						border-right-width="thin"
						border-right-color="{$gris-oscuro}">
						<fo:block text-align="left"
							font-weight="normal" 
							font-size="8pt"
							space-before="0.4mm" space-after="0.4mm"
							start-indent="0.4mm" end-indent="0.4mm">
							<xsl:choose>
								<xsl:when test="ficha-cliente/antecedentes-laborales/actividad = '5'">
									<xsl:call-template name="checkSi"/>
								</xsl:when>
								<xsl:otherwise>
									<xsl:call-template name="checkNo"/>
								</xsl:otherwise>
							</xsl:choose>&#0160;Jubilado(a)
						</fo:block>
					</fo:table-cell>

					<fo:table-cell 
						border-top-style="solid"
						border-top-width="thin" border-top-color="{$gris-oscuro}"
						border-bottom-style="solid" 
						border-bottom-width="thin"
						border-bottom-color="{$gris-oscuro}" 
						border-left-style="solid"
						border-left-width="thin" 
						border-left-color="{$gris-oscuro}"
						border-right-style="solid" 
						border-right-width="thin"
						border-right-color="{$gris-oscuro}">
						<fo:block text-align="left"
							font-weight="normal" 
							font-size="8pt"
							space-before="0.4mm" space-after="0.4mm"
							start-indent="0.4mm" end-indent="0.4mm">
							<xsl:choose>
								<xsl:when test="ficha-cliente/antecedentes-laborales/actividad = '6'">
									<xsl:call-template name="checkSi"/>
								</xsl:when>
								<xsl:otherwise>
									<xsl:call-template name="checkNo"/>
								</xsl:otherwise>
							</xsl:choose>&#0160;Otro
						</fo:block>
					</fo:table-cell>
				</fo:table-row>
			</fo:table-body>
		</fo:table>

		<fo:table table-layout="fixed" space-after="{$espacio-tabla}">
			<fo:table-column column-width="18.0cm" />
			<fo:table-body>
				<fo:table-row>
					<xsl:call-template name="celda">
						<xsl:with-param name="texto">Si es empleado o empresario, señale:</xsl:with-param>
						<xsl:with-param name="background-color"	select="$gris-suave" />
					</xsl:call-template>
				</fo:table-row>
			</fo:table-body>
		</fo:table>

		<fo:table table-layout="fixed" space-after="{$espacio-tabla}">
			<fo:table-column column-width="3.5cm" />
			<fo:table-column column-width="5.5cm" />
			<fo:table-column column-width="3.5cm" />
			<fo:table-column column-width="5.5cm" />
			<fo:table-body>
				<fo:table-row>
					<xsl:call-template name="celda">
						<xsl:with-param name="texto" select="'Razón Social de Empresas:'"/>
					</xsl:call-template>
					<xsl:call-template name="celda">
						<xsl:with-param name="texto">
							<xsl:value-of select="ficha-cliente/antecedentes-laborales/empresa/razon-social"/>
						</xsl:with-param>
						<xsl:with-param name="number-columns-spanned" select="'3'"/>
					</xsl:call-template>
				</fo:table-row>
				<fo:table-row>
					<xsl:call-template name="celda">
						<xsl:with-param name="texto" select="'Rut:'"/>
						<xsl:with-param name="background-color"	select="$gris-suave" />
					</xsl:call-template>
					<xsl:call-template name="celda">
						<xsl:with-param name="texto">
							<xsl:value-of select="ficha-cliente/antecedentes-laborales/empresa/rut"/>
						</xsl:with-param>
						<xsl:with-param name="background-color"	select="$gris-suave" />
					</xsl:call-template>
					<xsl:call-template name="celda">
						<xsl:with-param name="texto" select="'Giro:'"/>
						<xsl:with-param name="background-color"	select="$gris-suave" />
					</xsl:call-template>
					<xsl:call-template name="celda">
						<xsl:with-param name="texto">
							<xsl:value-of select="ficha-cliente/antecedentes-laborales/empresa/giro"/>
						</xsl:with-param>
						<xsl:with-param name="background-color"	select="$gris-suave" />
					</xsl:call-template>
				</fo:table-row>
				<fo:table-row>
					<xsl:call-template name="celda">
						<xsl:with-param name="texto" select="'Dirección:'"/>
					</xsl:call-template>
					<xsl:call-template name="celda">
						<xsl:with-param name="texto">
							<xsl:value-of select="ficha-cliente/antecedentes-laborales/empresa/direccion"/>
						</xsl:with-param>
						<xsl:with-param name="number-columns-spanned" select="'3'"/>
					</xsl:call-template>
				</fo:table-row>
				<fo:table-row>
					<xsl:call-template name="celda">
						<xsl:with-param name="texto" select="'Comuna:'"/>
						<xsl:with-param name="background-color"	select="$gris-suave" />
					</xsl:call-template>
					<xsl:call-template name="celda">
						<xsl:with-param name="texto">
							<xsl:value-of select="ficha-cliente/antecedentes-laborales/empresa/comuna"/>
						</xsl:with-param>
						<xsl:with-param name="background-color"	select="$gris-suave" />
					</xsl:call-template>
					<xsl:call-template name="celda">
						<xsl:with-param name="texto" select="'Ciudad:'"/>
						<xsl:with-param name="background-color"	select="$gris-suave" />
					</xsl:call-template>
					<xsl:call-template name="celda">
						<xsl:with-param name="texto">
							<xsl:value-of select="ficha-cliente/antecedentes-laborales/empresa/ciudad"/>
						</xsl:with-param>
						<xsl:with-param name="background-color"	select="$gris-suave" />
					</xsl:call-template>
				</fo:table-row>
				<fo:table-row>
					<xsl:call-template name="celda">
						<xsl:with-param name="texto" select="'Región:'"/>
					</xsl:call-template>
					<xsl:call-template name="celda">
						<xsl:with-param name="texto">
							<xsl:value-of select="ficha-cliente/antecedentes-laborales/empresa/region"/>
						</xsl:with-param>
					</xsl:call-template>
					<xsl:call-template name="celda">
						<xsl:with-param name="texto" select="'Cargo:'"/>
					</xsl:call-template>
					<xsl:call-template name="celda">
						<xsl:with-param name="texto">
							<xsl:value-of select="ficha-cliente/antecedentes-laborales/empresa/cargo"/>
						</xsl:with-param>
					</xsl:call-template>
				</fo:table-row>
				<fo:table-row>
					<xsl:call-template name="celda">
						<xsl:with-param name="texto">Antigüedad en la Empresa (Años):</xsl:with-param>
						<xsl:with-param name="background-color"	select="$gris-suave" />
					</xsl:call-template>
					<xsl:call-template name="celda">
						<xsl:with-param name="texto">
							<xsl:value-of select="ficha-cliente/antecedentes-laborales/empresa/antiguedad-en-empresa"/>
						</xsl:with-param>
						<xsl:with-param name="background-color"	select="$gris-suave" />
					</xsl:call-template>
					<xsl:call-template name="celda">
						<xsl:with-param name="texto">Participación en Sociedad (si corresponde) %:</xsl:with-param>
						<xsl:with-param name="background-color"	select="$gris-suave" />
					</xsl:call-template>
					<xsl:call-template name="celda">
						<xsl:with-param name="texto">
							<xsl:value-of select="ficha-cliente/antecedentes-laborales/empresa/participacion-sociedad"/>%
						</xsl:with-param>
						<xsl:with-param name="background-color"	select="$gris-suave" />
					</xsl:call-template>
				</fo:table-row>
			</fo:table-body>
		</fo:table>

		<xsl:call-template name="linea" />
		<fo:block space-before="{$espacio-bloque}">
			<xsl:call-template name="subtitulo">
				<xsl:with-param name="texto">Si es independiente, Rentista u Otro, favor señale:</xsl:with-param>
			</xsl:call-template>
			<xsl:call-template name="linea" />
		</fo:block>
		<fo:table table-layout="fixed" space-after="{$espacio-tabla}">
			<fo:table-column column-width="3.5cm" />
			<fo:table-column column-width="5.5cm" />
			<fo:table-column column-width="3.5cm" />
			<fo:table-column column-width="5.5cm" />
			<fo:table-body>
				<fo:table-row>
					<xsl:call-template name="celda">
						<xsl:with-param name="texto" select="'Actividad:'"/>
					</xsl:call-template>
					<xsl:call-template name="celda">
						<xsl:with-param name="texto">
							<xsl:value-of select="ficha-cliente/antecedentes-laborales/antecedentes-independiente/actividad"/>
						</xsl:with-param>
					</xsl:call-template>
					<xsl:call-template name="celda">
						<xsl:with-param name="texto" select="'Dirección Comercial:'"/>
					</xsl:call-template>
					<xsl:call-template name="celda">
						<xsl:with-param name="texto">
							<xsl:value-of select="ficha-cliente/antecedentes-laborales/antecedentes-independiente/direccion"/>
						</xsl:with-param>
					</xsl:call-template>
				</fo:table-row>
				<fo:table-row>
					<xsl:call-template name="celda">
						<xsl:with-param name="texto" select="'Comuna:'"/>
						<xsl:with-param name="background-color"	select="$gris-suave" />
					</xsl:call-template>
					<xsl:call-template name="celda">
						<xsl:with-param name="texto">
							<xsl:value-of select="ficha-cliente/antecedentes-laborales/antecedentes-independiente/comuna"/>
						</xsl:with-param>
						<xsl:with-param name="background-color"	select="$gris-suave" />
					</xsl:call-template>
					<xsl:call-template name="celda">
						<xsl:with-param name="texto" select="'Ciudad:'"/>
						<xsl:with-param name="background-color"	select="$gris-suave" />
					</xsl:call-template>
					<xsl:call-template name="celda">
						<xsl:with-param name="texto">
							<xsl:value-of select="ficha-cliente/antecedentes-laborales/antecedentes-independiente/ciudad"/>
						</xsl:with-param>
						<xsl:with-param name="background-color"	select="$gris-suave" />
					</xsl:call-template>
				</fo:table-row>
				<fo:table-row>
					<xsl:call-template name="celda">
						<xsl:with-param name="texto" select="'Región:'"/>
					</xsl:call-template>
					<xsl:call-template name="celda">
						<xsl:with-param name="texto">
							<xsl:value-of select="ficha-cliente/antecedentes-laborales/antecedentes-independiente/region"/>
						</xsl:with-param>
					</xsl:call-template>
					<xsl:call-template name="celda">
						<xsl:with-param name="texto" select="'Teléfono:'"/>
					</xsl:call-template>
					<xsl:call-template name="celda">
						<xsl:with-param name="texto">
							<xsl:value-of select="ficha-cliente/antecedentes-laborales/antecedentes-independiente/telefono"/>
						</xsl:with-param>
					</xsl:call-template>
				</fo:table-row>
				<fo:table-row>
					<xsl:call-template name="celda">
						<xsl:with-param name="texto" select="'Fax:'"/>
						<xsl:with-param name="background-color"	select="$gris-suave" />
					</xsl:call-template>
					<xsl:call-template name="celda">
						<xsl:with-param name="texto">
							<xsl:value-of select="ficha-cliente/antecedentes-laborales/antecedentes-independiente/fax"/>
						</xsl:with-param>
						<xsl:with-param name="background-color"	select="$gris-suave" />
					</xsl:call-template>
					<xsl:call-template name="celda">
						<xsl:with-param name="texto" select="'Email:'"/>
						<xsl:with-param name="background-color"	select="$gris-suave" />
					</xsl:call-template>
					<xsl:call-template name="celda">
						<xsl:with-param name="texto">
							<xsl:value-of select="ficha-cliente/antecedentes-laborales/antecedentes-independiente/e-mail"/>
						</xsl:with-param>
						<xsl:with-param name="background-color"	select="$gris-suave" />
					</xsl:call-template>
				</fo:table-row>
			</fo:table-body>
		</fo:table>

		<xsl:call-template name="linea" />
		<fo:block space-before="{$espacio-bloque}">
			<xsl:call-template name="subtitulo">
				<xsl:with-param name="texto">Datos del Representante Legal o Mandatario (Administrador):</xsl:with-param>
			</xsl:call-template>
			<xsl:call-template name="linea" />
		</fo:block>
		<fo:table table-layout="fixed" space-after="{$espacio-tabla}">
			<fo:table-column column-width="3.5cm" />
			<fo:table-column column-width="5.5cm" />
			<fo:table-column column-width="3.5cm" />
			<fo:table-column column-width="5.5cm" />
			<fo:table-body>
				<fo:table-row>
					<xsl:call-template name="celda">
						<xsl:with-param name="texto" select="'Nombres:'"/>
					</xsl:call-template>
					<xsl:call-template name="celda">
						<xsl:with-param name="texto">
							<xsl:value-of select="ficha-cliente/antecedentes-laborales/representante-legal/nombres"/>
						</xsl:with-param>
					</xsl:call-template>
					<xsl:call-template name="celda">
						<xsl:with-param name="texto" select="'Apellidos:'"/>
					</xsl:call-template>
					<xsl:call-template name="celda">
						<xsl:with-param name="texto">
							<xsl:value-of select="ficha-cliente/antecedentes-laborales/representante-legal/apellido-paterno"/>&#0160;
							<xsl:value-of select="ficha-cliente/antecedentes-laborales/representante-legal/apellido-materno"/>
						</xsl:with-param>
					</xsl:call-template>
				</fo:table-row>
				<fo:table-row>
					<xsl:call-template name="celda">
						<xsl:with-param name="texto" select="'Rut:'"/>
						<xsl:with-param name="background-color"	select="$gris-suave" />
					</xsl:call-template>
					<xsl:call-template name="celda">
						<xsl:with-param name="texto">
							<xsl:value-of select="ficha-cliente/antecedentes-laborales/representante-legal/rut"/>
						</xsl:with-param>
						<xsl:with-param name="background-color"	select="$gris-suave" />
					</xsl:call-template>
					<xsl:call-template name="celda">
						<xsl:with-param name="background-color"	select="$gris-suave" />
					</xsl:call-template>
					<xsl:call-template name="celda">
						<xsl:with-param name="background-color"	select="$gris-suave" />
					</xsl:call-template>
				</fo:table-row>
				<fo:table-row>
					<xsl:call-template name="celda">
						<xsl:with-param name="texto" select="'Relación con Cliente:'"/>
						<xsl:with-param name="background-color"	select="$gris-suave" />
					</xsl:call-template>

					<fo:table-cell 
						border-top-style="solid"
						border-top-width="thin" border-top-color="{$gris-oscuro}"
						border-bottom-style="solid" 
						border-bottom-width="thin"
						border-bottom-color="{$gris-oscuro}" 
						border-left-style="solid"
						border-left-width="thin" 
						border-left-color="{$gris-oscuro}"
						border-right-style="solid" 
						border-right-width="thin"
						border-right-color="{$gris-oscuro}">
						<fo:block text-align="left"
							font-weight="normal" 
							font-size="8pt"
							space-before="0.4mm" space-after="0.4mm"
							start-indent="0.4mm" end-indent="0.4mm">
							<xsl:choose>
								<xsl:when test="ficha-cliente/antecedentes-laborales/representante-legal/relacion-con-cliente = '1'">
									<xsl:call-template name="checkSi"/>
								</xsl:when>
								<xsl:otherwise>
									<xsl:call-template name="checkNo"/>
								</xsl:otherwise>
							</xsl:choose>&#0160;Mandatario
						</fo:block>
					</fo:table-cell>

					<fo:table-cell 
						border-top-style="solid"
						border-top-width="thin" border-top-color="{$gris-oscuro}"
						border-bottom-style="solid" 
						border-bottom-width="thin"
						border-bottom-color="{$gris-oscuro}" 
						border-left-style="solid"
						border-left-width="thin" 
						border-left-color="{$gris-oscuro}"
						border-right-style="solid" 
						border-right-width="thin"
						border-right-color="{$gris-oscuro}">
						<fo:block text-align="left"
							font-weight="normal" 
							font-size="8pt"
							space-before="0.4mm" space-after="0.4mm"
							start-indent="0.4mm" end-indent="0.4mm">
							<xsl:choose>
								<xsl:when test="ficha-cliente/antecedentes-laborales/representante-legal/relacion-con-cliente = '2'">
									<xsl:call-template name="checkSi"/>
								</xsl:when>
								<xsl:otherwise>
									<xsl:call-template name="checkNo"/>
								</xsl:otherwise>
							</xsl:choose>&#0160;Padre o Madre
						</fo:block>
					</fo:table-cell>

					<fo:table-cell 
						border-top-style="solid"
						border-top-width="thin" border-top-color="{$gris-oscuro}"
						border-bottom-style="solid" 
						border-bottom-width="thin"
						border-bottom-color="{$gris-oscuro}" 
						border-left-style="solid"
						border-left-width="thin" 
						border-left-color="{$gris-oscuro}"
						border-right-style="solid" 
						border-right-width="thin"
						border-right-color="{$gris-oscuro}">
						<fo:block text-align="left"
							font-weight="normal" 
							font-size="8pt"
							space-before="0.4mm" space-after="0.4mm"
							start-indent="0.4mm" end-indent="0.4mm">
							<xsl:choose>
								<xsl:when test="ficha-cliente/antecedentes-laborales/representante-legal/relacion-con-cliente = '3'">
									<xsl:call-template name="checkSi"/>
								</xsl:when>
								<xsl:otherwise>
									<xsl:call-template name="checkNo"/>
								</xsl:otherwise>
							</xsl:choose>&#0160;Curador
						</fo:block>
					</fo:table-cell>
				</fo:table-row>
			</fo:table-body>
		</fo:table>

		<fo:table table-layout="fixed" space-after="{$espacio-tabla}">
			<fo:table-column column-width="18.0cm" />
			<fo:table-body>
				<fo:table-row>
					<xsl:call-template name="celda">
						<xsl:with-param name="texto">Adjuntar : Los Documentos que acrediten la representación legal voluntaria o judicial del Administrador y Ficha de Clientes Inversiones Persona Natural completada como el Representante.</xsl:with-param>
						<xsl:with-param name="background-color" select="$gris-suave" />
					</xsl:call-template>
				</fo:table-row>
			</fo:table-body>
		</fo:table>
	</xsl:template>
	<!-- DATOS DE CONTACTO -->

	<xsl:template name="antecedentes_adicionales">
		<fo:block space-before="{$espacio-bloque}">
			<xsl:call-template name="subtitulo">
				<xsl:with-param name="texto"
					select="'Antecedentes Adicionales'" />
			</xsl:call-template>
			<xsl:call-template name="linea" />
		</fo:block>

		<fo:table table-layout="fixed" space-after="{$espacio-tabla}">
			<fo:table-column column-width="12.5cm"/>
			<fo:table-column column-width="5.5cm"/>
			<fo:table-body>
				<fo:table-row>
					<xsl:call-template name="celda">
						<xsl:with-param name="texto">Trabaja o a trabajado - en los últimos 12 años - en altas funciones en algún Poder del Estado o en las Fuerzas Armadas, de Orden y Seguridad (*), en Chile o en el extranjero:</xsl:with-param>
						<xsl:with-param name="background-color" select="$gris-suave" />
					</xsl:call-template>

					<fo:table-cell 
						border-top-style="solid"
						border-top-width="thin" border-top-color="{$gris-oscuro}"
						border-bottom-style="solid" 
						border-bottom-width="thin"
						border-bottom-color="{$gris-oscuro}" 
						border-left-style="solid"
						border-left-width="thin" 
						border-left-color="{$gris-oscuro}"
						border-right-style="solid" 
						border-right-width="thin"
						border-right-color="{$gris-oscuro}">
						<fo:block text-align="left"
							font-weight="normal" 
							font-size="8pt"
							space-before="0.4mm" space-after="0.4mm"
							start-indent="0.4mm" end-indent="0.4mm">
							<xsl:choose>
								<xsl:when test="count(ficha-cliente/antecedentes-adicionales/cargo-personal) > 0">
									<xsl:call-template name="checkSi"/>
								</xsl:when>
								<xsl:otherwise>
									<xsl:call-template name="checkNo"/>
								</xsl:otherwise>
							</xsl:choose>&#0160;Si&#0160;&#0160;
							<xsl:choose>
								<xsl:when test="count(ficha-cliente/antecedentes-adicionales/cargo-personal) = 0">
									<xsl:call-template name="checkSi"/>
								</xsl:when>
								<xsl:otherwise>
									<xsl:call-template name="checkNo"/>
								</xsl:otherwise>
							</xsl:choose>&#0160;No
						</fo:block>
					</fo:table-cell>
				</fo:table-row>
			</fo:table-body>
		</fo:table>

		<xsl:choose>
			<xsl:when test="count(ficha-cliente/antecedentes-adicionales/cargo-personal) > 0">

				<fo:table table-layout="fixed" space-after="{$espacio-tabla}">
					<fo:table-column column-width="18cm"/>
					<fo:table-body>
						<fo:table-row>
							<xsl:call-template name="celda">
								<xsl:with-param name="texto">Si la respuesta es afirmativa, favor señale:</xsl:with-param>
								<xsl:with-param name="background-color" select="$gris-suave" />
							</xsl:call-template>
						</fo:table-row>
					</fo:table-body>
				</fo:table>

				<fo:table table-layout="fixed" space-after="{$espacio-tabla}">
					<fo:table-column column-width="7cm"/>
					<fo:table-column column-width="7cm"/>
					<fo:table-column column-width="4cm"/>
					<fo:table-body>
						<fo:table-row>
							<xsl:call-template name="celda">
								<xsl:with-param name="texto" select="'Cargo'"/>
								<xsl:with-param name="background-color" select="$gris-suave" />
							</xsl:call-template>
							<xsl:call-template name="celda">
								<xsl:with-param name="texto" select="'Institución'"/>
								<xsl:with-param name="background-color" select="$gris-suave" />
							</xsl:call-template>
							<xsl:call-template name="celda">
								<xsl:with-param name="texto" select="'Fecha de Servicio'"/>
								<xsl:with-param name="background-color" select="$gris-suave" />
							</xsl:call-template>
						</fo:table-row>

						<xsl:for-each select="ficha-cliente/antecedentes-adicionales/cargo-personal">
							<fo:table-row>
								<xsl:call-template name="celda">
									<xsl:with-param name="texto">
										<xsl:value-of select="nombre-cargo"/>
									</xsl:with-param>
								</xsl:call-template>
								<xsl:call-template name="celda">
									<xsl:with-param name="texto">
										<xsl:value-of select="nombre-institucion"/>
									</xsl:with-param>
								</xsl:call-template>
								<xsl:call-template name="celda">
									<xsl:with-param name="texto">
										<xsl:value-of select="fecha-servicio"/>
									</xsl:with-param>
								</xsl:call-template>
							</fo:table-row>
						</xsl:for-each>
					</fo:table-body>
				</fo:table>
			</xsl:when>
			<xsl:otherwise></xsl:otherwise>
		</xsl:choose>

		<fo:table table-layout="fixed" space-after="{$espacio-tabla}">
			<fo:table-column column-width="12.5cm"/>
			<fo:table-column column-width="5.5cm"/>
			<fo:table-body>
				<fo:table-row>
					<xsl:call-template name="celda">
						<xsl:with-param name="texto">Es pariente (padre, madre, hijo(a), hermano(a), abuelo(a), nieto(a)) o cónyugue de personas que ocupan o han ocupado - en los útlimos 12 años - altos cargos en algún Poder del Estado o en la Fuerzas Armadas, de Orden y Seguridad (*), en Chile o en el extranjero?:</xsl:with-param>
						<xsl:with-param name="background-color" select="$gris-suave" />
					</xsl:call-template>

					<fo:table-cell 
						border-top-style="solid"
						border-top-width="thin" border-top-color="{$gris-oscuro}"
						border-bottom-style="solid" 
						border-bottom-width="thin"
						border-bottom-color="{$gris-oscuro}" 
						border-left-style="solid"
						border-left-width="thin" 
						border-left-color="{$gris-oscuro}"
						border-right-style="solid" 
						border-right-width="thin"
						border-right-color="{$gris-oscuro}">
						<fo:block text-align="left"
							font-weight="normal" 
							font-size="8pt"
							space-before="0.4mm" space-after="0.4mm"
							start-indent="0.4mm" end-indent="0.4mm">
							<xsl:choose>
								<xsl:when test="count(ficha-cliente/antecedentes-adicionales/cargo-familiar) > 0">
									<xsl:call-template name="checkSi"/>
								</xsl:when>
								<xsl:otherwise>
									<xsl:call-template name="checkNo"/>
								</xsl:otherwise>
							</xsl:choose>&#0160;Si&#0160;&#0160;
							<xsl:choose>
								<xsl:when test="count(ficha-cliente/antecedentes-adicionales/cargo-familiar) = 0">
									<xsl:call-template name="checkSi"/>
								</xsl:when>
								<xsl:otherwise>
									<xsl:call-template name="checkNo"/>
								</xsl:otherwise>
							</xsl:choose>&#0160;No
						</fo:block>
					</fo:table-cell>
				</fo:table-row>
			</fo:table-body>
		</fo:table>

		<xsl:choose>
			<xsl:when test="count(ficha-cliente/antecedentes-adicionales/cargo-familiar) > 0">

				<fo:table table-layout="fixed" space-after="{$espacio-tabla}">
					<fo:table-column column-width="18cm"/>
					<fo:table-body>
						<fo:table-row>
							<xsl:call-template name="celda">
								<xsl:with-param name="texto">Si la respuesta es afirmativa, favor señale:</xsl:with-param>
								<xsl:with-param name="background-color" select="$gris-suave" />
							</xsl:call-template>
						</fo:table-row>
					</fo:table-body>
				</fo:table>

				<fo:table table-layout="fixed" space-after="{$espacio-tabla}">
					<fo:table-column column-width="4.6cm"/>
					<fo:table-column column-width="4.6cm"/>
					<fo:table-column column-width="4.7cm"/>
					<fo:table-column column-width="4cm"/>
					<fo:table-body>
						<fo:table-row>
							<xsl:call-template name="celda">
								<xsl:with-param name="texto" select="'Nombre'"/>
								<xsl:with-param name="background-color" select="$gris-suave" />
							</xsl:call-template>
							<xsl:call-template name="celda">
								<xsl:with-param name="texto" select="'Cargo'"/>
								<xsl:with-param name="background-color" select="$gris-suave" />
							</xsl:call-template>
							<xsl:call-template name="celda">
								<xsl:with-param name="texto" select="'Institución'"/>
								<xsl:with-param name="background-color" select="$gris-suave" />
							</xsl:call-template>
							<xsl:call-template name="celda">
								<xsl:with-param name="texto" select="'Fecha de Servicio'"/>
								<xsl:with-param name="background-color" select="$gris-suave" />
							</xsl:call-template>
						</fo:table-row>

						<xsl:for-each select="ficha-cliente/antecedentes-adicionales/cargo-familiar">
							<fo:table-row>
								<xsl:call-template name="celda">
									<xsl:with-param name="texto">
										<xsl:value-of select="nombre-familiar"/>
									</xsl:with-param>
								</xsl:call-template>
								<xsl:call-template name="celda">
									<xsl:with-param name="texto">
										<xsl:value-of select="nombre-cargo"/>
									</xsl:with-param>
								</xsl:call-template>
								<xsl:call-template name="celda">
									<xsl:with-param name="texto">
										<xsl:value-of select="nombre-institucion"/>
									</xsl:with-param>
								</xsl:call-template>
								<xsl:call-template name="celda">
									<xsl:with-param name="texto">
										<xsl:value-of select="fecha-servicio"/>
									</xsl:with-param>
								</xsl:call-template>
							</fo:table-row>
						</xsl:for-each>
					</fo:table-body>
				</fo:table>
			</xsl:when>
			<xsl:otherwise></xsl:otherwise>
		</xsl:choose>
		

		<fo:table table-layout="fixed" space-after="{$espacio-tabla}">
			<fo:table-column column-width="18cm"/>
			<fo:table-body>
				<fo:table-row>
					<fo:table-cell 
						background-color="{$gris-suave}"
						border-top-style="solid"
						border-top-width="thin" border-top-color="{$gris-oscuro}"
						border-bottom-style="solid" 
						border-bottom-width="thin"
						border-bottom-color="{$gris-oscuro}" 
						border-left-style="solid"
						border-left-width="thin" 
						border-left-color="{$gris-oscuro}"
						border-right-style="solid" 
						border-right-width="thin"
						border-right-color="{$gris-oscuro}">
						<fo:block text-align="left"
							font-weight="normal" 
							font-size="8pt"
							space-before="0.4mm" space-after="0.4mm"
							start-indent="0.4mm" end-indent="0.4mm">
							<fo:block>
								* Poder Ejecutivo : Presidente, ex- Presidente, Candidatos Presidenciales, Ministros, ex-Ministros, Subsecretarios, Intendentes, Gobernadores y Alcaldes.
							</fo:block>
							<fo:block>
								* Poder Legislativo : Senadores y Diputados.
							</fo:block>
							<fo:block>
								* Poder Judicial : Ministros de la Corte Suprema, Fiscal Nacional.
							</fo:block>
							<fo:block>
								* Fuerzas Armadas y de Orden : Generales, Almirantes, Coroneles, Director de Investigaciones y ex altos mandos de las Fuerzas Armadas, Carabineros e Investigaciones.
							</fo:block>
							<fo:block>
								* Presidente y ex-Presidente del Consejo de Defensa del Estado (CODEFE), Director y ex-Director de la Unidad de Análisis Financiero (UAF), Dirigentes Políticos y ex- Dirigentes Políticos.
							</fo:block>
							<fo:block>
								* Altos Ejecutivos de empresas públicas, como Dirigentes y Gerentes (Ej. Corfo, Enap, Codelco, etc...). Sociedas o entidades que hayan sido creadas por personas que ostentan la calidad de Personas de Alta Exposición Pública (PAEP) y que tengan una participación miníma del 10% de la propiedad.
							</fo:block>
							<fo:block>
								* Familiares inmediatos de las personas definidas anteriormente hasta 2º grado de afinidad y consaguinidad (padres, hermanos, hijos, cuñados, primos, tios, sobrinos, y suegros) y sus cónyuges.
							</fo:block>
						</fo:block>
					</fo:table-cell>
				</fo:table-row>
			</fo:table-body>
		</fo:table>

	</xsl:template>

	<!-- plantillas -->
	<xsl:template name="celda">
		<xsl:param name="background-color" select="'white'" />
		<xsl:param name="font-weight" select="'normal'" />
		<xsl:param name="font-size" select="'8pt'" />
		<xsl:param name="number-columns-spanned" select="'1'" />
		<xsl:param name="number-rows-spanned" select="'1'" />
		<xsl:param name="text-align" select="'left'" />
		<xsl:param name="texto" />
		<xsl:param name="texto-2" />
		<xsl:variable name="espacio" select="'0.4mm'" />
		<fo:table-cell background-color="{$background-color}"
			number-columns-spanned="{$number-columns-spanned}"
			number-rows-spanned="{$number-rows-spanned}" border-top-style="solid"
			border-top-width="thin" border-top-color="{$gris-oscuro}"
			border-bottom-style="solid" border-bottom-width="thin"
			border-bottom-color="{$gris-oscuro}" border-left-style="solid"
			border-left-width="thin" border-left-color="{$gris-oscuro}"
			border-right-style="solid" border-right-width="thin"
			border-right-color="{$gris-oscuro}">
			<fo:block text-align="{$text-align}"
				font-weight="{$font-weight}" font-size="{$font-size}"
				space-before="{$espacio}" space-after="{$espacio}"
				start-indent="{$espacio}" end-indent="{$espacio}">
				<fo:block>
					<xsl:value-of select="$texto"/>
				</fo:block>
				<fo:block>
					<xsl:value-of select="$texto-2" />
				</fo:block>
			</fo:block>
		</fo:table-cell>
	</xsl:template>
	<xsl:template name="linea">
		<fo:leader color="{$gris-oscuro}" leader-pattern="rule"
			leader-length="18cm" />
	</xsl:template>
	<xsl:template name="titulo">
		<xsl:param name="texto" select="'Titulo'" />
		<fo:block font-size="14pt" color="{$azul-oscuro}"
			font-weight="bold" text-align="left" space-after="1mm">
			<xsl:value-of select="$texto" />
		</fo:block>
	</xsl:template>
	<xsl:template name="subtitulo">
		<xsl:param name="texto" select="'Titulo'" />
		<fo:block font-size="10pt" color="{$azul-oscuro}"
			font-weight="bold" text-align="left" space-after="1mm">
			<xsl:value-of select="$texto" />
		</fo:block>
	</xsl:template>
	<xsl:template name="subtitulo-2">
		<xsl:param name="texto" select="'Titulo'" />
		<fo:block font-size="8pt" font-weight="bold" text-align="left"
			space-after="1mm">
			<xsl:value-of select="$texto" />
		</fo:block>
	</xsl:template>
	
	<xsl:template name="checkNo">
		<fo:external-graphic height="8px" width="8px">
			<xsl:attribute name="src">
				<xsl:value-of select="ficha-cliente/cabecera/ruta-imagen"/>bancaprivadacheckno.gif
			</xsl:attribute>
		</fo:external-graphic>
	</xsl:template>
	
	<xsl:template name="checkSi">
		<fo:external-graphic height="8px" width="8px">
			<xsl:attribute name="src">
				<xsl:value-of select="ficha-cliente/cabecera/ruta-imagen"/>bancaprivadachecksi.gif
			</xsl:attribute>
		</fo:external-graphic>
	</xsl:template>

	<!-- colores -->
	<xsl:variable name="negro">#000000</xsl:variable>
	<xsl:variable name="azul-claro">#0061A5</xsl:variable>
	<xsl:variable name="azul-oscuro">#0361A2</xsl:variable>
	<xsl:variable name="gris-oscuro">#CCCCCC</xsl:variable>
	<xsl:variable name="gris-suave">#F2F2F2</xsl:variable>
	<xsl:variable name="amarillo">#FFFF99</xsl:variable>
	<xsl:variable name="rojo-oscuro">#9E1233</xsl:variable>
	<xsl:variable name="espacio-bloque">2mm</xsl:variable>
	<xsl:variable name="espacio-tabla">1mm</xsl:variable>
	<xsl:variable name="miles">#.###</xsl:variable>
	<!-- formateador -->
	<xsl:decimal-format name="CL" decimal-separator=","
		grouping-separator="." />

	<xsl:template match="conocimientoCliente">

	</xsl:template>
</xsl:stylesheet>
