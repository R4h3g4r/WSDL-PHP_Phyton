<?xml version="1.0" encoding="ISO-8859-1"?>

<!DOCTYPE xml [<!ENTITY copy "&#169;"> <!ENTITY trade "&#8482;"> <!ENTITY deg "&#x00b0;"> <!ENTITY gt "&#62;"> <!ENTITY sup2 "&#x00b2;"> <!ENTITY frac14 "&#x00bc;"> <!ENTITY quot "&#34;"> <!ENTITY frac12 "&#x00bd;"> <!ENTITY euro "&#x20ac;"> <!ENTITY Omega "&#937;"> ]> <!-- Document generated with XSLfast v2.0 alpha -->
	
<xsl:stylesheet xmlns:fox="http://xml.apache.org/fop/extensions" xmlns:print="http://www.jcatalog.com/com.jcatalog.output.xslextensions.print.PrintElementFactory" xmlns:fo="http://www.w3.org/1999/XSL/Format" version="1.1" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:saxon="http://icl.com/saxon" extension-element-prefixes="saxon print" >

	<!--**********************************************-->
	<!--**************** TEMPLATES *******************--> 
	<!--**********************************************-->
	<xsl:template name="CERT_documento_completo">
		<fo:block>
			<!-- LOGOS CABECERA -->
			<fo:block padding-before="2pt">
				<fo:table table-layout="fixed" width="100%">
					<fo:table-column column-width="proportional-column-width(57)"/>
					<fo:table-body>
						<fo:table-row>
							<fo:table-cell>
								<fo:block>
									<xsl:call-template name="CERT_datos_logos_cabecera"/>
								</fo:block>
							</fo:table-cell>
						</fo:table-row>
					</fo:table-body>
				</fo:table>
			</fo:block>
			<!-- TITULOS -->
			<fo:block padding-before="1pt">
				<fo:table table-layout="fixed" width="100%">
					<fo:table-column column-width="proportional-column-width(57)"/>
					<fo:table-body>
						<fo:table-row>
							<fo:table-cell>
								<fo:block>
									<xsl:call-template name="CERT_datos_titulos"/>
								</fo:block>
							</fo:table-cell>
						</fo:table-row>
					</fo:table-body>
				</fo:table>
			</fo:block>
			<!-- CONTRATANTE -->
			<fo:block padding-before="10pt">
				<fo:table table-layout="fixed" width="100%">
					<fo:table-column column-width="proportional-column-width(57)"/>
					<fo:table-body>
						<fo:table-row>
							<fo:table-cell>
								<fo:block >
									<xsl:call-template name="CERT_datos_contratante"/>
								</fo:block>
							</fo:table-cell>
						</fo:table-row>
					</fo:table-body>
				</fo:table>
			</fo:block>
			<!-- ASEGURADO TITULAR -->
			<fo:block padding-before="10pt">
				<fo:table table-layout="fixed" width="100%">
					<fo:table-column column-width="proportional-column-width(57)"/>
					<fo:table-body>
						<fo:table-row>
							<fo:table-cell>
								<fo:block >
									<xsl:call-template name="CERT_datos_aseguradoTitular"/>
								</fo:block>
							</fo:table-cell>
						</fo:table-row>
					</fo:table-body>
				</fo:table>
			</fo:block>
			<!-- PRIMAS -->
			<fo:block padding-before="10pt">
				<fo:table table-layout="fixed" width="100%">
					<fo:table-column column-width="proportional-column-width(57)"/>
					<fo:table-body>
						<fo:table-row>
							<fo:table-cell>
								<fo:block >
									<xsl:call-template name="CERT_datos_primas"/>
								</fo:block>
							</fo:table-cell>
						</fo:table-row>
					</fo:table-body>
				</fo:table>
			</fo:block>
			<!-- FORMA DE PAGO -->
			<fo:block padding-before="10pt">
				<fo:table table-layout="fixed" width="100%">
					<fo:table-column column-width="proportional-column-width(57)"/>
					<fo:table-body>
						<fo:table-row>
							<fo:table-cell>
								<fo:block >
									<xsl:call-template name="CERT_tituloFormaPago"/>
									<xsl:call-template name="CERT_datosPrimerPago"/>
								</fo:block>
							</fo:table-cell>
						</fo:table-row>
					</fo:table-body>
				</fo:table>
			</fo:block>	

			<fo:block padding-before="10pt">
				<fo:table table-layout="fixed" width="100%">
					<fo:table-column column-width="proportional-column-width(100)"/>
					<fo:table-body>
						<fo:table-row>
							<fo:table-cell>
								<fo:block >
									<xsl:call-template name="CERT_datosFuturosPagos"/>
								</fo:block>
							</fo:table-cell>
						</fo:table-row>
					</fo:table-body>
				</fo:table>
			</fo:block>

			<!-- CONDICIONES GENERALES -->
			<fo:block padding-before="10pt">
				<fo:table table-layout="fixed" width="100%">
					<fo:table-column column-width="proportional-column-width(57)"/>
					<fo:table-body>
						<fo:table-row>
							<fo:table-cell>
								<fo:block >
									<xsl:call-template name="CERT_datos_condicionesGenerales"/>
								</fo:block>
							</fo:table-cell>
						</fo:table-row>
					</fo:table-body>
				</fo:table>
			</fo:block>
			<!-- VIGENCIA DEL SEGURO -->
			<fo:block padding-before="10pt">
				<fo:table table-layout="fixed" width="100%">
					<fo:table-column column-width="proportional-column-width(57)"/>
					<fo:table-body>
						<fo:table-row>
							<fo:table-cell>
								<fo:block >
									<xsl:call-template name="CERT_datos_vigenciaSeguro"/>
								</fo:block>
							</fo:table-cell>
						</fo:table-row>
					</fo:table-body>
				</fo:table>
			</fo:block>
			<!-- FORMA DE DESPACHO DE POLIZA -->
			<fo:block padding-before="10pt">
				<fo:table table-layout="fixed" width="100%">
					<fo:table-column column-width="proportional-column-width(57)"/>
					<fo:table-body>
						<fo:table-row>
							<fo:table-cell>
								<fo:block >
									<xsl:call-template name="CERT_datos_despachoPoliza"/>
								</fo:block>
							</fo:table-cell>
						</fo:table-row>
					</fo:table-body>
				</fo:table>
			</fo:block>
			<!-- DECLARACION ESPECIAL -->
			<xsl:if test="( Cotizacion/codigoProducto != 'BCIAPE' )">
				<fo:block padding-before="10pt">
					<fo:table table-layout="fixed" width="100%">
						<fo:table-column column-width="proportional-column-width(57)"/>
						<fo:table-body>
							<fo:table-row>
								<fo:table-cell>
									<fo:block >
										<xsl:call-template name="CERT_datos_declaracionEspecial"/>
									</fo:block>
								</fo:table-cell>
							</fo:table-row>
						</fo:table-body>
					</fo:table>
				</fo:block>
			</xsl:if>
			<!-- Texto Normativo -->
			<fo:block padding-before="20pt" white-space-collapse="true"  text-align="start" color="#0360A2" font-size="10.0pt">
				<xsl:text>Con la emisión del presente certificado de seguro, no se obtiene cobertura alguna al riesgo que se procura asegurar. La cobertura comenzará a regir únicamente a partir del momento en que esta solicitud de seguro sea aceptada por el asegurador y se inicie la vigencia de la póliza" (Circular Nª 1.390 S.V.S.). Además usted podrá tener las condiciones particulares y generales de su póliza, en su domicilio particular, comercial u otro designado, como también en su correo electrónico informado en este documento, con lo cual el suscrito se entenderá por recibido, comunicado y/o notificado de la información de su seguro. Sin perjuicio de lo anterior, el asegurado podrá siempre solicitar una copia de la misma en las  dependencias de la Compañía, debiendo la última hacer entrega de ella en el plazo máximo de cinco días.</xsl:text>
			</fo:block>
			<!-- FIRMAS -->
			<fo:block padding-before="20pt">
				<fo:table table-layout="fixed" width="100%">
					<fo:table-column column-width="proportional-column-width(57)"/>
					<fo:table-body>
						<fo:table-row>
							<fo:table-cell>
								<fo:block >
									<xsl:call-template name="CERT_firmas"/>
								</fo:block>
							</fo:table-cell>
						</fo:table-row>
					</fo:table-body>
				</fo:table>
			</fo:block>
		</fo:block>
   </xsl:template>
	
	<xsl:template name="CERT_datos_logos_cabecera">
		<fo:block span="none">
			<fo:table table-layout="fixed" width="100%">
				<fo:table-column column-width="proportional-column-width(20)"/>
				<fo:table-column column-width="proportional-column-width(50)"/>
				<fo:table-column column-width="proportional-column-width(25)"/>
				<fo:table-column column-width="proportional-column-width(10)"/>
				<fo:table-body>
					<fo:table-row>
						<fo:table-cell>
							<fo:block text-align="left">
								<fo:external-graphic scaling="uniform" height="15pt" width="60pt">
									<xsl:attribute name="src">url('<xsl:value-of disable-output-escaping="no" select="rutaLogos"/>/logos/BciSeguros_verticalBPS.jpg')</xsl:attribute>
								</fo:external-graphic>
							</fo:block>
						</fo:table-cell>						
						
						<fo:table-cell display-align="after">
							<fo:block color="#000000" font-size="14pt" text-align="center" font-weight="bold" >
								<xsl:text>Certificado de Seguro</xsl:text>
							</fo:block>
						</fo:table-cell>
						
						<fo:table-cell display-align="before">
							<fo:block color="#000000" font-size="1pt" text-align="right" font-weight="bold">
									<xsl:apply-templates select="codigobarras-39" >
										<xsl:with-param name="dimension_y">5</xsl:with-param>
									</xsl:apply-templates>
							</fo:block>
						</fo:table-cell>
						
						<fo:table-cell>
							<fo:block text-align="right">
								<fo:external-graphic  scaling="uniform" height="15pt" width="60pt">
									<xsl:attribute name="src">url('<xsl:value-of disable-output-escaping="no" select="rutaLogos"/>/logos/LOGOBCI2BPS.gif')</xsl:attribute>
								</fo:external-graphic>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
					
					<fo:table-row>
						<fo:table-cell>
							<fo:block>
							</fo:block>
						</fo:table-cell>

						<fo:table-cell>
							<fo:block>
							</fo:block>
						</fo:table-cell>
						
						<fo:table-cell vertical-align="top" display-align="before">
								<fo:block color="#000000" font-size="20pt" text-align="center" font-weight="bold">
								</fo:block>

								<fo:block color="#000000" font-size="6pt" text-align="center" font-weight="bold"> 
									<xsl:value-of  select="Cotizacion/numeroPropuesta"/> 
								</fo:block> 
						</fo:table-cell>

						<fo:table-cell>
							<fo:block>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
					
				</fo:table-body>
			</fo:table>
		</fo:block>
	</xsl:template>
	
	<xsl:template name="CERT_datos_titulos">
		<fo:block span="none">
			<fo:table table-layout="fixed" width="100%">
				<fo:table-column column-width="proportional-column-width(20)"/>
				<fo:table-column column-width="proportional-column-width(50)"/>
				<fo:table-column column-width="proportional-column-width(25)"/>
				<fo:table-column column-width="proportional-column-width(10)"/>
				<fo:table-body>
					<fo:table-row>
						<fo:table-cell></fo:table-cell>
						<fo:table-cell display-align="before">
							<fo:block color="#000000" font-size="12pt" text-align="center" font-weight="normal">
								<xsl:text>Seguro </xsl:text> <xsl:value-of  select="Cotizacion/descripcionProducto"/>
								<xsl:if test="( Cotizacion/codigoProducto = 'ULV' )">
									<xsl:if test="( tarifa/codigoPlanEquivalencia = 'P' )">
									<xsl:text> Profesional</xsl:text>
									</xsl:if>
									<xsl:if test="( tarifa/codigoPlanEquivalencia = 'J' )">
										<xsl:text> Joven</xsl:text>
									</xsl:if>
									<xsl:if test="( tarifa/codigoPlanEquivalencia = 'F' )">
										<xsl:text> Sueños</xsl:text>
									</xsl:if>
								</xsl:if>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell></fo:table-cell>
						<fo:table-cell></fo:table-cell>
					</fo:table-row>
					
					<fo:table-row>
						<fo:table-cell></fo:table-cell>
						<fo:table-cell display-align="before">
							<fo:block color="#000000" font-size="10pt" text-align="center" font-weight="normal">
								<xsl:if test="( DatosPoliza/condicionPoliza = 'SI' )">
									<xsl:text>Póliza Nro.</xsl:text><xsl:value-of select="DatosPoliza/numeroPoliza"/><xsl:text>-</xsl:text><xsl:value-of select="DatosPoliza/digitoVerificadorPoliza"/>
									<xsl:text> - </xsl:text>
								</xsl:if>
								<xsl:text>Propuesta Nro.</xsl:text><xsl:value-of select="Cotizacion/numeroPropuesta"/>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell></fo:table-cell>
						<fo:table-cell></fo:table-cell>
					</fo:table-row>
				</fo:table-body>
			</fo:table>
		</fo:block>
	</xsl:template>
	
	<xsl:template name="CERT_datos_contratante">
		<fo:block span="none">
			<fo:table table-layout="fixed" width="80%">
				<fo:table-column column-width="proportional-column-width(15)"/>
				<fo:table-column column-width="proportional-column-width(30)"/>
				<fo:table-column column-width="proportional-column-width(5)"/>
				<fo:table-column column-width="proportional-column-width(5)"/>
				<fo:table-column column-width="proportional-column-width(5)"/>
				<fo:table-column column-width="proportional-column-width(20)"/>
				<fo:table-body>
					<fo:table-row>
						<fo:table-cell number-columns-spanned="6">
							<fo:block text-align="left" color="#0360A2" font-size="12pt" font-weight="bold">
									<xsl:text>Contratante</xsl:text>
							</fo:block>
						</fo:table-cell>		
					</fo:table-row>
					
					<fo:table-row>
						<fo:table-cell>
							<fo:block text-align="left" color="#0360A2" font-size="10pt" font-weight="normal">
								<xsl:text>Nombre Completo</xsl:text>
							</fo:block>
						</fo:table-cell>

						<fo:table-cell number-columns-spanned="3">
							<xsl:choose>
								<xsl:when test="(Cotizacion/codigoProducto = 'ULV')">
									<fo:block text-align="left" color="#0360A2" font-size="10pt" font-weight="normal">
										<xsl:value-of disable-output-escaping="no" select="asegurado/nombres"/><xsl:text> </xsl:text>
										<xsl:value-of disable-output-escaping="no" select="asegurado/apellidoPaterno"/><xsl:text> </xsl:text>
										<xsl:value-of disable-output-escaping="no" select="asegurado/apellidoMaterno"/>
									</fo:block>
								</xsl:when>
								<xsl:otherwise>
									<fo:block text-align="left" color="#0360A2" font-size="10pt" font-weight="normal">
										<xsl:value-of disable-output-escaping="no" select="contratante/nombres"/><xsl:text> </xsl:text>
										<xsl:value-of disable-output-escaping="no" select="contratante/apellidoPaterno"/><xsl:text> </xsl:text>
										<xsl:value-of disable-output-escaping="no" select="contratante/apellidoMaterno"/>
									</fo:block>
								</xsl:otherwise>
							</xsl:choose>
						</fo:table-cell>	
						<fo:table-cell>
							<fo:block text-align="left" color="#0360A2" font-size="10pt" font-weight="normal">
								<xsl:text>Rut</xsl:text>
							</fo:block>
						</fo:table-cell>
						
						<fo:table-cell>
							<xsl:choose>
								<xsl:when test="(Cotizacion/codigoProducto = 'ULV')">
									<fo:block text-align="left" color="#0360A2" font-size="10pt" font-weight="normal">
										<xsl:value-of  select="asegurado/rut"/><xsl:text>-</xsl:text><xsl:value-of  select="asegurado/digitoVerificador"/>
									</fo:block>
								</xsl:when>
								<xsl:otherwise>
									<fo:block text-align="left" color="#0360A2" font-size="10pt" font-weight="normal">
										<xsl:value-of  select="contratante/rut"/><xsl:text>-</xsl:text><xsl:value-of  select="contratante/digitoVerificador"/>
									</fo:block>
								</xsl:otherwise>
							</xsl:choose>
						</fo:table-cell>
						
					</fo:table-row>
					
					<fo:table-row>
						<fo:table-cell>
							<fo:block text-align="left" color="#0360A2" font-size="10pt" font-weight="normal">
								<xsl:text>Email</xsl:text>
							</fo:block>
						</fo:table-cell>

						<fo:table-cell number-columns-spanned="5">
							<xsl:choose>
								<xsl:when test="(Cotizacion/codigoProducto = 'ULV')">
									<fo:block text-align="left" color="#0360A2" font-size="10pt" font-weight="normal">
										<xsl:value-of disable-output-escaping="no" select="asegurado/email"/>
									</fo:block>
								</xsl:when>
								<xsl:otherwise>
									<fo:block text-align="left" color="#0360A2" font-size="10pt" font-weight="normal">
										<xsl:value-of disable-output-escaping="no" select="contratante/email"/>
									</fo:block>
								</xsl:otherwise>
							</xsl:choose>
						</fo:table-cell>
					</fo:table-row>

					
				</fo:table-body>
			</fo:table>
		</fo:block>
	</xsl:template>

	<xsl:template name="CERT_datos_aseguradoTitular">
		<fo:block span="none">
			<fo:table table-layout="fixed" width="80%">
				<fo:table-column column-width="proportional-column-width(15)"/>
				<fo:table-column column-width="proportional-column-width(30)"/>
				<fo:table-column column-width="proportional-column-width(5)"/>
				<fo:table-column column-width="proportional-column-width(5)"/>
				<fo:table-column column-width="proportional-column-width(5)"/>
				<fo:table-column column-width="proportional-column-width(20)"/>
				<fo:table-body>
					<fo:table-row>
						<fo:table-cell number-columns-spanned="4">
							<fo:block text-align="left" color="#0360A2" font-size="12pt" font-weight="bold">
									<xsl:text>Asegurado Titular (a favor)</xsl:text>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
					
					<fo:table-row>
						<fo:table-cell>
							<fo:block text-align="left" color="#0360A2" font-size="10pt" font-weight="normal">
								<xsl:text>Nombre Completo</xsl:text>
							</fo:block>
						</fo:table-cell>

						<fo:table-cell number-columns-spanned="3">
							<xsl:choose>
								<xsl:when test="(Cotizacion/codigoProducto = 'ULV')">
									<fo:block text-align="left" color="#0360A2" font-size="10pt" font-weight="normal">
										<xsl:value-of disable-output-escaping="no" select="asegurado/nombres"/><xsl:text> </xsl:text>
										<xsl:value-of disable-output-escaping="no" select="asegurado/apellidoPaterno"/><xsl:text> </xsl:text>
										<xsl:value-of disable-output-escaping="no" select="asegurado/apellidoMaterno"/>
									</fo:block>
								</xsl:when>
								<xsl:when test="(Cotizacion/codigoProducto = 'BCIRGM') or (Cotizacion/codigoProducto = 'CESVO2')">
									<fo:block text-align="left" color="#0360A2" font-size="10pt" font-weight="normal">
										<xsl:value-of disable-output-escaping="no" select="contratante/nombres"/><xsl:text> </xsl:text>
										<xsl:value-of disable-output-escaping="no" select="contratante/apellidoPaterno"/><xsl:text> </xsl:text>
										<xsl:value-of disable-output-escaping="no" select="contratante/apellidoMaterno"/>
									</fo:block>
								</xsl:when>
								<xsl:otherwise>
									<fo:block text-align="left" color="#0360A2" font-size="10pt" font-weight="normal">
										<xsl:value-of disable-output-escaping="no" select="aseguradoTitular/nombres"/><xsl:text> </xsl:text>
										<xsl:value-of disable-output-escaping="no" select="aseguradoTitular/apellidoPaterno"/><xsl:text> </xsl:text>
										<xsl:value-of disable-output-escaping="no" select="aseguradoTitular/apellidoMaterno"/>
									</fo:block>
								</xsl:otherwise>
							</xsl:choose>
						</fo:table-cell>
						
						<fo:table-cell>
							<fo:block text-align="left" color="#0360A2" font-size="10pt" font-weight="normal">
								<xsl:text>Rut</xsl:text>
							</fo:block>
						</fo:table-cell>
						
						<fo:table-cell>
							<xsl:choose>
								<xsl:when test="(Cotizacion/codigoProducto = 'ULV')">
									<fo:block text-align="left" color="#0360A2" font-size="10pt" font-weight="normal">
										<xsl:value-of  select="asegurado/rut"/><xsl:text>-</xsl:text><xsl:value-of  select="asegurado/digitoVerificador"/>
									</fo:block>
								</xsl:when>
								<xsl:when test="(Cotizacion/codigoProducto = 'BCIRGM') or (Cotizacion/codigoProducto = 'CESVO2')">
									<fo:block text-align="left" color="#0360A2" font-size="10pt" font-weight="normal">
										<xsl:value-of  select="contratante/rut"/><xsl:text>-</xsl:text><xsl:value-of  select="contratante/digitoVerificador"/>
									</fo:block>
								</xsl:when>
								<xsl:otherwise>
									<fo:block text-align="left" color="#0360A2" font-size="10pt" font-weight="normal">
										<xsl:value-of  select="aseguradoTitular/rut"/><xsl:text>-</xsl:text><xsl:value-of  select="aseguradoTitular/digitoVerificador"/>
									</fo:block>
								</xsl:otherwise>
							</xsl:choose>
						</fo:table-cell>
					</fo:table-row>
					
					<fo:table-row>
						<fo:table-cell>
							<fo:block text-align="left" color="#0360A2" font-size="10pt" font-weight="normal">
								<xsl:text>Fecha de Nacimiento</xsl:text>
							</fo:block>
						</fo:table-cell>

						<fo:table-cell number-columns-spanned="3">
							<xsl:choose>
								<xsl:when test="(Cotizacion/codigoProducto = 'ULV')">
									<fo:block text-align="left" color="#0360A2" font-size="10pt" font-weight="normal">
										<xsl:value-of disable-output-escaping="no" select="asegurado/fechaNacimiento"/>
									</fo:block>
								</xsl:when>
								<xsl:when test="(Cotizacion/codigoProducto = 'BCIRGM') or (Cotizacion/codigoProducto = 'CESVO2')">
									<fo:block text-align="left" color="#0360A2" font-size="10pt" font-weight="normal">
										<xsl:value-of disable-output-escaping="no" select="contratante/fechaNacimiento"/>
									</fo:block>
								</xsl:when>
								<xsl:otherwise>
									<fo:block text-align="left" color="#0360A2" font-size="10pt" font-weight="normal">
										<xsl:value-of disable-output-escaping="no" select="aseguradoTitular/fechaNacimiento"/>
									</fo:block>
								</xsl:otherwise>
							</xsl:choose>
						</fo:table-cell>
						
						<fo:table-cell>
							<fo:block text-align="left" color="#0360A2" font-size="10pt" font-weight="normal">
								<xsl:text>Edad</xsl:text>
							</fo:block>
						</fo:table-cell>
						
						<fo:table-cell>
							<xsl:choose>
								<xsl:when test="(Cotizacion/codigoProducto = 'ULV')">
									<fo:block text-align="left" color="#0360A2" font-size="10pt" font-weight="normal">
										<xsl:value-of disable-output-escaping="no" select="asegurado/edad"/>
									</fo:block>
								</xsl:when>
								<xsl:when test="(Cotizacion/codigoProducto = 'BCIRGM') or (Cotizacion/codigoProducto = 'CESVO2')">
									<fo:block text-align="left" color="#0360A2" font-size="10pt" font-weight="normal">
										<xsl:value-of disable-output-escaping="no" select="contratante/edad"/>
									</fo:block>
								</xsl:when>
								<xsl:otherwise>
									<fo:block text-align="left" color="#0360A2" font-size="10pt" font-weight="normal">
										<xsl:value-of disable-output-escaping="no" select="aseguradoTitular/edad"/>
									</fo:block>
								</xsl:otherwise>
							</xsl:choose>
						</fo:table-cell>
					</fo:table-row>
					
					<fo:table-row>
						<fo:table-cell>
							<fo:block text-align="left" color="#0360A2" font-size="10pt" font-weight="normal">
								<xsl:text>Email</xsl:text>
							</fo:block>
						</fo:table-cell>
						
						<fo:table-cell number-columns-spanned="5">
							<xsl:choose>
								<xsl:when test="(Cotizacion/codigoProducto = 'ULV')">
									<fo:block text-align="left" color="#0360A2" font-size="10pt" font-weight="normal">
										<xsl:value-of disable-output-escaping="no" select="asegurado/email"/>
									</fo:block>
								</xsl:when>
								<xsl:when test="(Cotizacion/codigoProducto = 'BCIRGM') or (Cotizacion/codigoProducto = 'CESVO2')">
									<fo:block text-align="left" color="#0360A2" font-size="10pt" font-weight="normal">
										<xsl:value-of disable-output-escaping="no" select="contratante/email"/>
									</fo:block>
								</xsl:when>
								<xsl:otherwise>
									<fo:block text-align="left" color="#0360A2" font-size="10pt" font-weight="normal">
										<xsl:value-of disable-output-escaping="no" select="aseguradoTitular/email"/>
									</fo:block>
								</xsl:otherwise>
							</xsl:choose>
						</fo:table-cell>
					</fo:table-row>

				</fo:table-body>
			</fo:table>
		</fo:block>
	</xsl:template>
	
	<xsl:template name="CERT_datos_primas">
		<fo:block span="none">
			<fo:table table-layout="fixed" width="80%">
				<fo:table-column column-width="proportional-column-width(15)"/>
				<fo:table-column column-width="proportional-column-width(30)"/>
				<fo:table-column column-width="proportional-column-width(35)"/>
				<fo:table-body>
					<fo:table-row>
						<fo:table-cell number-columns-spanned="3">
							<fo:block text-align="left" color="#0360A2" font-size="12pt" font-weight="bold">
									<xsl:text>Primas</xsl:text>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
					
					<fo:table-row>
						<fo:table-cell>
							<fo:block text-align="left" color="#0360A2" font-size="10pt" font-weight="normal" text-decoration="underline">
								<xsl:text> Plan</xsl:text>
							</fo:block>
						</fo:table-cell>

						<fo:table-cell>
							<fo:block text-align="left" color="#0360A2" font-size="10pt" font-weight="normal" text-decoration="underline">
								<xsl:text>Descripción</xsl:text>
							</fo:block>
						</fo:table-cell>
						
						<fo:table-cell>
							<fo:block text-align="center" color="#0360A2" font-size="10pt" font-weight="normal" text-decoration="underline">
								<xsl:choose>
									<xsl:when test="(Cotizacion/codigoProducto = 'BCIRGM')">
										<xsl:text>Prima Bruta Única en $</xsl:text>
									</xsl:when>
									<xsl:otherwise>
										<xsl:text>Prima Bruta Mensual UF</xsl:text>
									</xsl:otherwise>
								</xsl:choose>
							</fo:block>
						</fo:table-cell>
						
					</fo:table-row>
					
					<fo:table-row>
						<fo:table-cell>
							<fo:block text-align="left" color="#0360A2" font-size="10pt" font-weight="normal">
								<xsl:value-of disable-output-escaping="no" select="tarifa/codigo"/>
							</fo:block>
						</fo:table-cell>

						<fo:table-cell>
							<fo:block text-align="left" color="#0360A2" font-size="10pt" font-weight="normal">
								<xsl:value-of disable-output-escaping="no" select="tarifa/descripcion"/>
							</fo:block>
						</fo:table-cell>
						
						<fo:table-cell>
							<fo:block text-align="center" color="#0360A2" font-size="10pt" font-weight="normal">
								<xsl:choose>
									<xsl:when test="(Cotizacion/codigoProducto = 'BCIRGM')">
										<xsl:value-of disable-output-escaping="no" select="materiaAsegurada/primaBrutaEnPesos"/>
									</xsl:when>
									<xsl:otherwise>
										<xsl:value-of disable-output-escaping="no" select="tarifa/primaBrutaMensual"/>	
									</xsl:otherwise>
								</xsl:choose>
							</fo:block>
						</fo:table-cell>	
					</fo:table-row>
					<xsl:if test=" (Cotizacion/codigoProducto = 'BCIRGM') ">
						<fo:table-row>
							<fo:table-cell number-columns-spanned="3">
								<fo:block text-align="start" font-size="10.0pt" color="#0360A2">
									<xsl:text>(*) Las primas brutas únicas en pesos señaladas, se encuentran valorizadas a la UF correspondiente al </xsl:text><xsl:value-of disable-output-escaping="no" select="fechaUF"/>
								</fo:block>
							</fo:table-cell>
						</fo:table-row>
					</xsl:if>
				</fo:table-body>
			</fo:table>
		</fo:block>
	</xsl:template>

	<xsl:template name="CERT_tituloFormaPago">
		<fo:block span="none">
			<fo:table table-layout="fixed" width="100%">
			<fo:table-column column-width="proportional-column-width(100)"/>
				<fo:table-body>
					<fo:table-row>
						<fo:table-cell text-align="start" display-align="before">
							<fo:block text-align="left" color="#0360A2" font-size="12pt" font-weight="bold">
									<xsl:text>Forma de Pago</xsl:text>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
				</fo:table-body>
			</fo:table>
		</fo:block>
	</xsl:template>
	
	<xsl:template name="CERT_datosPrimerPago">
		<fo:block span="none">
				<fo:table table-layout="fixed" width="100%">
				<fo:table-column column-width="proportional-column-width(20)"/>
				<fo:table-column column-width="proportional-column-width(45)"/>
				<fo:table-column column-width="proportional-column-width(15)"/>
				<fo:table-column column-width="proportional-column-width(20)"/>
				
				<fo:table-body>
				<xsl:if test="( detallePago/indicadorPrimerosPagos = 'SI' )"> 
					<fo:table-row>
						<fo:table-cell number-columns-spanned="4" text-align="start" display-align="before">
							<fo:block text-align="left" color="#0360A2" font-size="10pt" font-weight="bold" text-decoration="underline">
									<xsl:text>Pago Inicial:</xsl:text>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
					<fo:table-row>
						<fo:table-cell text-align="start" display-align="before" >
							<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="10.0pt">
								<xsl:text>Forma de Pago</xsl:text>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell text-align="start" display-align="before">
							<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="10.0pt" font-weight="bold">
								<xsl:value-of disable-output-escaping="no" select="detallePago/descripcionPrimerPago"/>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell>
							<fo:block>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell>
							<fo:block>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
				
					<xsl:if test="( detallePago/codigoPrimerPago = '1' )"> 
						<fo:table-row>
							<fo:table-cell text-align="start" display-align="before" >
								<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="10.0pt">
									<xsl:text>Nº Depósito :</xsl:text>
								</fo:block>
							</fo:table-cell>
							<fo:table-cell text-align="start" display-align="before" >
								<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="10.0pt" font-weight="bold">
									<xsl:value-of disable-output-escaping="no" select="detallePago/documentoPrimerPago"/>
								</fo:block>
							</fo:table-cell>
						</fo:table-row>
					</xsl:if>	
					<xsl:if test="( detallePago/codigoPrimerPago = '2' )"> 
						<fo:table-row>
							<fo:table-cell text-align="start" display-align="before" >
								<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="10.0pt">
									<xsl:text>Nº Depósito :</xsl:text>
								</fo:block>
							</fo:table-cell>
							<fo:table-cell text-align="start" display-align="before" >
								<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="10.0pt" font-weight="bold">
									<xsl:value-of disable-output-escaping="no" select="detallePago/documentoPrimerPago"/>
								</fo:block>
							</fo:table-cell>
						</fo:table-row>
					</xsl:if>
					<xsl:if test="( detallePago/codigoPrimerPago = '3' or detallePago/codigoPrimerPago = '10')"> 
						<fo:table-row>
							<fo:table-cell text-align="start" display-align="before" >
								<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="10.0pt">
									<xsl:text>Banco :</xsl:text>
								</fo:block>
							</fo:table-cell>
							<fo:table-cell text-align="start" display-align="before" >
								<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="10.0pt" font-weight="bold">
									<xsl:value-of disable-output-escaping="no" select="detallePago/descripcionBancoPrimerPago"/>
								</fo:block>
							</fo:table-cell>
							<fo:table-cell text-align="start" display-align="before" >
								<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="10.0pt">
									<xsl:text>Cta.Cte.BCI :</xsl:text>
								</fo:block>
							</fo:table-cell>
							<fo:table-cell text-align="start" display-align="before" >
								<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="10.0pt" font-weight="bold">
									<xsl:value-of disable-output-escaping="no" select="detallePago/documentoPrimerPago"/>
								</fo:block>
							</fo:table-cell>
						</fo:table-row>
					</xsl:if>				
					<xsl:if test="( detallePago/codigoPrimerPago = '4' )"> 
						<fo:table-row>
							<fo:table-cell text-align="start" display-align="before" >
								<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="10.0pt">
									<xsl:text>Tarjeta de Credito BCI:</xsl:text>
								</fo:block>
							</fo:table-cell>
							<fo:table-cell text-align="start" display-align="before" >
								<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="10.0pt" font-weight="bold">
									<xsl:value-of disable-output-escaping="no" select="detallePago/descripcionBancoPrimerPago"/>
								</fo:block>
							</fo:table-cell>
							<fo:table-cell text-align="start" display-align="before" >
								<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="10.0pt">
									<xsl:text>Nº Tarjeta de Credito :</xsl:text>
								</fo:block>
							</fo:table-cell>
							<fo:table-cell text-align="start" display-align="before" >
								<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="10.0pt" font-weight="bold">
									<xsl:value-of disable-output-escaping="no" select="detallePago/documentoPrimerPago"/>
								</fo:block>
							</fo:table-cell>
						</fo:table-row>
					</xsl:if>
					<xsl:if test="( detallePago/codigoPrimerPago = '5' )"> 
						<fo:table-row>
							<fo:table-cell text-align="start" display-align="before" >
								<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="10.0pt">
									<xsl:text>Tarjeta de Credito otro banco:</xsl:text>
								</fo:block>
							</fo:table-cell>
							<fo:table-cell text-align="start" display-align="before" >
								<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="10.0pt" font-weight="bold">
									<xsl:value-of disable-output-escaping="no" select="detallePago/descripcionBancoPrimerPago"/>
								</fo:block>
							</fo:table-cell>
							<fo:table-cell text-align="start" display-align="before" >
								<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="10.0pt">
									<xsl:text>Nº Tarjeta de Credito :</xsl:text>
								</fo:block>
							</fo:table-cell>
							<fo:table-cell text-align="start" display-align="before" >
								<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="10.0pt" font-weight="bold">
									<xsl:value-of disable-output-escaping="no" select="detallePago/documentoPrimerPago"/>
								</fo:block>
							</fo:table-cell>
						</fo:table-row>
					</xsl:if>
					<xsl:if test="( detallePago/codigoPrimerPago = '6' )"> 
						<fo:table-row>
							<fo:table-cell text-align="start" display-align="before" >
								<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="10.0pt">
									<xsl:text>Cta.Cte. otro banco:</xsl:text>
								</fo:block>
							</fo:table-cell>
							<fo:table-cell text-align="start" display-align="before" >
								<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="10.0pt" font-weight="bold">
									<xsl:value-of disable-output-escaping="no" select="detallePago/descripcionBancoPrimerPago"/>
								</fo:block>
							</fo:table-cell>
							<fo:table-cell text-align="start" display-align="before" >
								<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="10.0pt">
									<xsl:text>Nº Cta.Cte. :</xsl:text>
								</fo:block>
							</fo:table-cell>
							<fo:table-cell text-align="start" display-align="before" >
								<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="10.0pt" font-weight="bold">
									<xsl:value-of disable-output-escaping="no" select="detallePago/documentoPrimerPago"/>
								</fo:block>
							</fo:table-cell>
						</fo:table-row>
					</xsl:if>
					<xsl:if test="( detallePago/diaPagoPrimerPago > 0 )">
						<fo:table-row>
							<fo:table-cell text-align="start" display-align="before">
								<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="10.0pt">
									<xsl:text>Día de Pago:</xsl:text>
								</fo:block>
							</fo:table-cell>
							<fo:table-cell text-align="start" display-align="before" number-columns-spanned="3">
								<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="10.0pt" font-weight="bold">
									<xsl:value-of disable-output-escaping="no" select="detallePago/diaPagoPrimerPago"/>
								</fo:block>
							</fo:table-cell>
						</fo:table-row>
					</xsl:if>
				</xsl:if> 
				</fo:table-body>
			</fo:table>
		</fo:block>
	</xsl:template>

	<xsl:template name="CERT_datosFuturosPagos">
		<fo:block span="none">
			<fo:table table-layout="fixed" width="100%">
			<fo:table-column column-width="proportional-column-width(20)"/>
			<fo:table-column column-width="proportional-column-width(45)"/>
			<fo:table-column column-width="proportional-column-width(15)"/>
			<fo:table-column column-width="proportional-column-width(20)"/>
			
			<fo:table-body>
				<xsl:if test="( detallePago/indicadorFuturosPagos = 'SI' )"> 
					<fo:table-row>
						<fo:table-cell number-columns-spanned="4" text-align="start" display-align="before">
							<fo:block text-align="left" color="#0360A2" font-size="10pt" font-weight="bold" text-decoration="underline">
									<xsl:text>Futuros Pagos:</xsl:text>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
					<fo:table-row>
						<fo:table-cell text-align="start" display-align="before">
							<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="10.0pt">
								<xsl:text>Forma de Pago</xsl:text>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell text-align="start" display-align="before">
							<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="10.0pt" font-weight="bold">
								<xsl:value-of disable-output-escaping="no" select="detallePago/descripcionFuturosPagos"/>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
					
					<xsl:if test="( detallePago/codigoFuturosPagos = '1' )"> 
							<fo:table-row>
								<fo:table-cell text-align="start" display-align="before" >
									<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="10.0pt">
										<xsl:text>Nº Recibo :</xsl:text>
									</fo:block>
								</fo:table-cell>
								<fo:table-cell text-align="start" display-align="before">
									<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="10.0pt" font-weight="bold">
										<xsl:value-of disable-output-escaping="no" select="detallePago/documentoFuturosPagos"/>
									</fo:block>
								</fo:table-cell>
							</fo:table-row>
					</xsl:if>	
					<xsl:if test="( detallePago/codigoFuturosPagos = '2' )"> 
							<fo:table-row>
								<fo:table-cell text-align="start" display-align="before">
									<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="10.0pt">
										<xsl:text>Nº Cheque :</xsl:text>
									</fo:block>
								</fo:table-cell>
								<fo:table-cell text-align="start" display-align="before">
									<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="10.0pt" font-weight="bold">
										<xsl:value-of disable-output-escaping="no" select="detallePago/documentoFuturosPagos"/>
									</fo:block>
								</fo:table-cell>
							</fo:table-row>
					</xsl:if>
					<xsl:if test="( detallePago/codigoFuturosPagos = '3' or detallePago/codigoFuturosPagos = '10')"> 
							<fo:table-row>
								<fo:table-cell text-align="start" display-align="before" >
									<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="10.0pt">
										<xsl:text>Banco :</xsl:text>
									</fo:block>
								</fo:table-cell>
								<fo:table-cell text-align="start" display-align="before">
									<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="10.0pt" font-weight="bold">
										<xsl:value-of disable-output-escaping="no" select="detallePago/descripcionBancoFuturosPagos"/>
									</fo:block>
								</fo:table-cell>
								<fo:table-cell text-align="start" display-align="before" >
									<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="10.0pt">
										<xsl:text>Cta.Cte.BCI :</xsl:text>
									</fo:block>
								</fo:table-cell>
								<fo:table-cell text-align="start" display-align="before">
									<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="10.0pt" font-weight="bold">
										<xsl:value-of disable-output-escaping="no" select="detallePago/documentoFuturosPagos"/>
									</fo:block>
								</fo:table-cell>
							</fo:table-row>
					</xsl:if>				
					<xsl:if test="( detallePago/codigoFuturosPagos = '4' )"> 
							<fo:table-row>
								<fo:table-cell text-align="start" display-align="before">
									<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="10.0pt">
										<xsl:text>Tarjeta de Credito BCI:</xsl:text>
									</fo:block>
								</fo:table-cell>
								<fo:table-cell text-align="start" display-align="before">
									<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="10.0pt" font-weight="bold">
										<xsl:value-of disable-output-escaping="no" select="detallePago/descripcionBancoFuturosPagos"/>
									</fo:block>
								</fo:table-cell>
								<fo:table-cell text-align="start" display-align="before" >
									<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="10.0pt">
										<xsl:text>Nº Tarjeta de Credito :</xsl:text>
									</fo:block>
								</fo:table-cell>
								<fo:table-cell text-align="start" display-align="before">
									<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="10.0pt" font-weight="bold">
										<xsl:value-of disable-output-escaping="no" select="detallePago/documentoFuturosPagos"/>
									</fo:block>
								</fo:table-cell>
							</fo:table-row>
					</xsl:if>
					<xsl:if test="( detallePago/codigoFuturosPagos = '5' )"> 
							<fo:table-row>
								<fo:table-cell text-align="start" display-align="before">
									<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="10.0pt">
										<xsl:text>Tarjeta de Credito otro banco:</xsl:text>
									</fo:block>
								</fo:table-cell>
								<fo:table-cell text-align="start" display-align="before">
									<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="10.0pt" font-weight="bold">
										<xsl:value-of disable-output-escaping="no" select="detallePago/descripcionBancoFuturosPagos"/>
									</fo:block>
								</fo:table-cell>
								<fo:table-cell text-align="start" display-align="before" >
									<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="10.0pt">
										<xsl:text>Nº Tarjeta de Credito :</xsl:text>
									</fo:block>
								</fo:table-cell>
								<fo:table-cell text-align="start" display-align="before">
									<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="10.0pt" font-weight="bold">
										<xsl:value-of disable-output-escaping="no" select="detallePago/documentoFuturosPagos"/>
									</fo:block>
								</fo:table-cell>
							</fo:table-row>
					</xsl:if>
					<xsl:if test="( detallePago/codigoFuturosPagos = '6' )"> 
							<fo:table-row>
								<fo:table-cell text-align="start" display-align="before">
									<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="10.0pt">
										<xsl:text>Cta.Cte. otro banco:</xsl:text>
									</fo:block>
								</fo:table-cell>
								<fo:table-cell text-align="start" display-align="before">
									<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="10.0pt" font-weight="bold">
										<xsl:value-of disable-output-escaping="no" select="detallePago/descripcionBancoFuturosPagos"/>
									</fo:block>
								</fo:table-cell>
								<fo:table-cell text-align="start" display-align="before" >
									<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="10.0pt">
										<xsl:text>Nº Cta.Cte. :</xsl:text>
									</fo:block>
								</fo:table-cell>
								<fo:table-cell text-align="start" display-align="before">
									<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="10.0pt" font-weight="bold">
										<xsl:value-of disable-output-escaping="no" select="detallePago/documentoFuturosPagos"/>
									</fo:block>
								</fo:table-cell>
							</fo:table-row>
					</xsl:if>
					<xsl:if test="( detallePago/diaPagoFuturosPagos > 0 )">
						<fo:table-row>
							<fo:table-cell text-align="start" display-align="before">
								<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="10.0pt">
									<xsl:text>Día de Pago:</xsl:text>
								</fo:block>
							</fo:table-cell>
							<fo:table-cell text-align="start" display-align="before" number-columns-spanned="3">
								<fo:block white-space-collapse="true"  text-align="start" color="#0360A2" font-size="10.0pt" font-weight="bold">
									<xsl:value-of disable-output-escaping="no" select="detallePago/diaPagoFuturosPagos"/>
								</fo:block>
							</fo:table-cell>
						</fo:table-row>
					</xsl:if>
				</xsl:if> 
			</fo:table-body>
			</fo:table>
		</fo:block>
	</xsl:template>
	
	<xsl:template name="CERT_datos_condicionesGenerales">
		<fo:block span="none">
			<fo:table table-layout="fixed" width="80%">
				<fo:table-column column-width="proportional-column-width(80)"/>
				<fo:table-body>
					<fo:table-row>
						<fo:table-cell>
							<fo:block text-align="left" color="#0360A2" font-size="12pt" font-weight="bold">
									<xsl:text>Condiciones Generales</xsl:text>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
					
					<fo:table-row>
						<fo:table-cell>
							<fo:block text-align="left" color="#0360A2" font-size="10pt" font-weight="normal">
								<xsl:if test="( Cotizacion/codigoProducto = 'BCIAPE' )">
									<xsl:text>Se deja expresa constancia que regirá la Cláusula inscritas en el registro de pólizas de la SVS, bajo el código POL 3 09 118</xsl:text>
								</xsl:if>
								<xsl:if test="( Cotizacion/codigoProducto = 'BCIESCC' )">
									<xsl:text>Se deja expresa constancia que regirá la Cláusula inscritas en el registro de pólizas de la SVS, bajo el código POL 3 09 136</xsl:text>
								</xsl:if>
								<xsl:if test="( Cotizacion/codigoProducto = 'BCICAT' )">
									<xsl:text>Se deja expresa constancia que regirá la Cláusula inscritas en el registro de pólizas de la SVS, bajo el código POL 3 09 136</xsl:text>
								</xsl:if>	
								<xsl:if test="( Cotizacion/codigoProducto = 'BCITMP' )">
									<xsl:text>Se deja expresa constancia que regirá la Cláusula inscritas en el registro de pólizas de la SVS, bajo el código POL 2 09 138</xsl:text>
								</xsl:if>
								<xsl:if test="( Cotizacion/codigoProducto = 'ULV' )">
									<xsl:text>Se deja expresa constancia que regirá la Cláusula inscritas en el registro de pólizas de la SVS, bajo el código POL 2 03 010, en caso de contratar otras coberturas regirán las señaladas en las condiciones particulares.</xsl:text>
								</xsl:if>
								<xsl:if test="( Cotizacion/codigoProducto = 'BCICOL' )">
									<xsl:text>Se deja expresa constancia que regirá la Cláusula inscritas en el registro de pólizas de la SVS, bajo el código POL 3 09 136.</xsl:text>
								</xsl:if>
								<xsl:if test="( Cotizacion/codigoProducto = 'BCIRGM' )">
									<xsl:text>Se deja expresa constancia que regirá la Cláusula inscritas en el registro de pólizas de la SVS, bajo el código POL 3 09 118 Alternativa E.</xsl:text>
								</xsl:if>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
				</fo:table-body>
			</fo:table>
		</fo:block>
	</xsl:template>
	
	<xsl:template name="CERT_datos_vigenciaSeguro">
		<fo:block span="none">
			<fo:table table-layout="fixed" width="80%">
				<fo:table-column column-width="proportional-column-width(26)"/>
				<fo:table-column column-width="proportional-column-width(26)"/>
				<fo:table-body>
					<fo:table-row>
						<fo:table-cell>
							<fo:block text-align="left" color="#0360A2" font-size="12pt" font-weight="bold">
									<xsl:text>Vigencia del Seguro</xsl:text>
							</fo:block>
						</fo:table-cell>		
						
						<fo:table-cell>
							<fo:block></fo:block>
						</fo:table-cell>
					</fo:table-row>
					
					<fo:table-row>
						<xsl:variable name="horaInicioVigencia">
							<xsl:choose>
								<xsl:when test="( Cotizacion/codigoProducto = 'BCITMP') or (Cotizacion/codigoProducto = 'CESVO2') or (Cotizacion/codigoProducto = 'BCIRGM')">12:01</xsl:when>
								<xsl:when test="( Cotizacion/codigoProducto = 'BCIESCC') or ( Cotizacion/codigoProducto = 'BCICAT') or ( Cotizacion/codigoProducto = 'BCICOL') or ( Cotizacion/codigoProducto = 'ULV')">24:01</xsl:when>
								<xsl:otherwise>00:01</xsl:otherwise>
							</xsl:choose>
						</xsl:variable>
						<xsl:variable name="horaFinVigencia">
							<xsl:choose>
								<xsl:when test="( Cotizacion/codigoProducto = 'BCITMP') or (Cotizacion/codigoProducto = 'CESVO2') or (Cotizacion/codigoProducto = 'BCIRGM')">12:00</xsl:when>
								<xsl:otherwise>24:00</xsl:otherwise>
							</xsl:choose>
						</xsl:variable>

						<fo:table-cell>
							<fo:block text-align="left" color="#0360A2" font-size="10pt" font-weight="normal">
								<xsl:text>Desde </xsl:text><xsl:value-of select="$horaInicioVigencia"/><xsl:text> del día </xsl:text><xsl:value-of disable-output-escaping="no" select="Cotizacion/fechaInicioVigencia"/>
							</fo:block>
						</fo:table-cell>

						<fo:table-cell>
							<fo:block text-align="left" color="#0360A2" font-size="10pt" font-weight="normal">
								<xsl:text> Hasta las </xsl:text><xsl:value-of select="$horaFinVigencia"/><xsl:text> del día </xsl:text><xsl:value-of disable-output-escaping="no" select="Cotizacion/fechaFinVigencia"/>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
					
				</fo:table-body>
			</fo:table>
		</fo:block>
	</xsl:template>
	
	<xsl:template name="CERT_datos_despachoPoliza">
		<fo:block span="none">
			<fo:table table-layout="fixed" width="80%">
				<fo:table-column column-width="proportional-column-width(15)"/>
				<fo:table-column column-width="proportional-column-width(25)"/>
				<fo:table-column column-width="proportional-column-width(20)"/>
				<fo:table-column column-width="proportional-column-width(20)"/>
				<fo:table-body>
					<fo:table-row>
						<fo:table-cell number-columns-spanned="4">
							<fo:block text-align="left" color="#0360A2" font-size="12pt" font-weight="bold">
									<xsl:text>Forma de Despacho de Póliza</xsl:text>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
					
					<fo:table-row>
						<fo:table-cell>
							<fo:block text-align="left" color="#0360A2" font-size="10pt" font-weight="normal">
								<xsl:text>Envío de Póliza:</xsl:text>
							</fo:block>
						</fo:table-cell>

						<fo:table-cell>
							<fo:block text-align="left" color="#0360A2" font-size="10pt" font-weight="normal">
								<xsl:value-of  disable-output-escaping="no" select="detallePago/indicadorMail"/>
							</fo:block>
						</fo:table-cell>
						
						<fo:table-cell>
							<fo:block text-align="left" color="#0360A2" font-size="10pt" font-weight="normal">
								<xsl:text>Dirección Correo Electrónico:</xsl:text>
							</fo:block>
						</fo:table-cell>
						
						<fo:table-cell>
							<fo:block text-align="left" color="#0360A2" font-size="10pt" font-weight="normal">
								<xsl:value-of  disable-output-escaping="no" select="detallePago/direccionMail"/>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
					
				</fo:table-body>
			</fo:table>
		</fo:block>
	</xsl:template>
	
	<xsl:template name="CERT_datos_declaracionEspecial">
		<fo:block span="none">
			<fo:table table-layout="fixed" width="80%">
				<fo:table-column column-width="proportional-column-width(80)"/>
				<fo:table-body>
				
					<fo:table-row>
						<fo:table-cell>
							<fo:block text-align="left" color="#0360A2" font-size="12pt" font-weight="bold">
								<xsl:text>Declaración Especial</xsl:text>
							</fo:block>
						</fo:table-cell>		
					</fo:table-row>
					
					<fo:table-row>
						<fo:table-cell>
							<fo:block text-align="left" color="#0360A2" font-size="10pt" font-weight="normal">
								<xsl:text>Confirmo la exactitud y sinceridad de la información emitida en la Declaración Personal de Salud, que nada he ocultado, omitido o alterado y me doy por enterado que dichas declaraciones constituyen los elementos indispensables para la apreciación del riesgo por parte de la Compañía, y que una declaración falsa, errónea o reticente de mi parte libera a la compañía del pago del seguro, todo ello de acuerdo a lo dispuesto en el código de comercio.</xsl:text>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>
					
				</fo:table-body>
			</fo:table>
		</fo:block>
	</xsl:template>

	<xsl:template name="CERT_firmas">
		<fo:table table-layout="fixed" width="100%">
			<fo:table-column column-width="proportional-column-width(16)"/>
			<fo:table-column column-width="proportional-column-width(4)"/>
			<fo:table-column column-width="proportional-column-width(24)"/>
			<fo:table-column column-width="proportional-column-width(4)"/>
			<fo:table-column column-width="proportional-column-width(24)"/>
			<fo:table-column column-width="proportional-column-width(4)"/>
			<fo:table-column column-width="proportional-column-width(24)"/>
			<fo:table-body>
				<fo:table-row keep-with-next="always">
					<fo:table-cell text-align="center" display-align="center" color="#0360A2">
						<fo:block><xsl:value-of select="Cotizacion/fechaPropuesta"/></fo:block>
					</fo:table-cell>
					<fo:table-cell  text-align="center" display-align="center" color="#0360A2"><fo:block></fo:block></fo:table-cell>
					<fo:table-cell  text-align="center" display-align="center" color="#0360A2">
						<fo:block>
							<fo:external-graphic scaling="uniform" height="70pt" width="70pt">
								<xsl:choose>
									<xsl:when test="(Cotizacion/codigoProducto = 'ULV')">
										<xsl:attribute name="src"><xsl:value-of select="/DatosPropuesta/rutaHDAction" />?method=generaImagenHuella&amp;rut=<xsl:value-of disable-output-escaping="no" select="/DatosPropuesta/FigurasLegales/figuraLegal[@id='A']" />&amp;nro_prop=<xsl:value-of select="/DatosPropuesta/Cotizacion/numeroPropuesta" /></xsl:attribute>
									</xsl:when>
									<xsl:otherwise>
										<xsl:attribute name="src"><xsl:value-of select="/DatosPropuesta/rutaHDAction" />?method=generaImagenHuella&amp;rut=<xsl:value-of disable-output-escaping="no" select="/DatosPropuesta/FigurasLegales/figuraLegal[@id='C']" />&amp;nro_prop=<xsl:value-of select="/DatosPropuesta/Cotizacion/numeroPropuesta" /></xsl:attribute>
									</xsl:otherwise>
								</xsl:choose>
							</fo:external-graphic>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell  text-align="center" display-align="center" color="#0360A2"><fo:block></fo:block></fo:table-cell>
					<fo:table-cell  text-align="center" display-align="center" color="#0360A2">
						<fo:block>
								<fo:external-graphic scaling="uniform" height="50pt" width="90pt"> 
									<xsl:attribute name="src">url('<xsl:value-of disable-output-escaping="no" select="rutaLogos"/>/firmas/FIR_COR2.gif')</xsl:attribute> 
							</fo:external-graphic>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell  text-align="center" display-align="center" color="#0360A2"><fo:block></fo:block></fo:table-cell>
					<fo:table-cell  text-align="center" display-align="center" color="#0360A2">
						<fo:block>
								<fo:external-graphic scaling="uniform" height="50pt" width="90pt"> 
									<xsl:attribute name="src">url('<xsl:value-of disable-output-escaping="no" select="rutaLogos"/>/firmas/fir_axa.gif')</xsl:attribute> 
							</fo:external-graphic>
						</fo:block>
					</fo:table-cell>
				</fo:table-row>
				<fo:table-row keep-with-next="always">
					<fo:table-cell padding-before="4pt" border-top-style="solid" border-top-width="1.0pt" border-top-color="#DCDCDC" text-align="center" display-align="center" color="#0360A2">
						<fo:block><xsl:text>Fecha</xsl:text></fo:block>
					</fo:table-cell>
					<fo:table-cell padding-before="4pt" text-align="center" display-align="center"><fo:block></fo:block></fo:table-cell>
					<fo:table-cell border-top-style="solid" border-top-width="1.0pt" border-top-color="#DCDCDC" text-align="center" display-align="center" color="#0360A2">
						<fo:block><xsl:text>Contratante</xsl:text></fo:block>
					</fo:table-cell>
					<fo:table-cell padding-before="4pt" text-align="center" display-align="center"><fo:block></fo:block></fo:table-cell>
					<fo:table-cell border-top-style="solid" border-top-width="1.0pt" border-top-color="#DCDCDC" text-align="center" display-align="center" color="#0360A2">
						<fo:block>
							<xsl:text>Corredor</xsl:text>
						</fo:block>
					</fo:table-cell>
					<fo:table-cell padding-before="4pt" text-align="center" display-align="center"><fo:block></fo:block></fo:table-cell>
					<fo:table-cell border-top-style="solid" border-top-width="1.0pt" border-top-color="#DCDCDC" text-align="center" display-align="center" color="#0360A2">
						<fo:block>
							<xsl:text>Compañia</xsl:text>
						</fo:block>
					</fo:table-cell>
				</fo:table-row>
			</fo:table-body>
		</fo:table>
	</xsl:template>

</xsl:stylesheet>