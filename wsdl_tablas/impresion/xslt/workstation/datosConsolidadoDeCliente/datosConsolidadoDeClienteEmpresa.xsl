<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format">
    <xsl:variable name="bgcolor">#E7E5EF</xsl:variable>
	<xsl:variable name="lineas">#CCCCCC</xsl:variable>
	<xsl:variable name="celda_background">#EFEFEF</xsl:variable>
	<xsl:variable name="txt">#000000</xsl:variable>
	<xsl:variable name="txt-blanco">#FFFFFF</xsl:variable>
	<xsl:variable name="txt-azul-claro">#0361a2</xsl:variable>
	<xsl:variable name="txt-azul-oscuro">#1069B5</xsl:variable>
	<xsl:variable name="txt-font">Arial,Helvetica,sans-serif</xsl:variable>
    <xsl:variable name="vinieta">
        <xsl:value-of select="relojEverest/imagenes/ruta"/>01-bullet1-rj.gif
    </xsl:variable>
    <xsl:include href="datosConsolidadoDeClienteEmpresaEstilos.xsl"/>
    <xsl:include href="productosVigentes.xsl"/>
    <xsl:template match="/">
        <fo:root xmlns:fo="http://www.w3.org/1999/XSL/Format" xmlns:fox="http://xml.apache.org/fop/extensions">
            <fo:layout-master-set>
                <fo:simple-page-master margin-right="1.3cm" margin-left="1.3cm" margin-bottom="0.95cm"
                    margin-top="0.95cm" page-width="21.6cm" page-height="27.9cm" master-name="first">
                    <fo:region-body margin-bottom="1.5cm" margin-top="1cm" />
                    <fo:region-before extent="1cm" />
                    <fo:region-after extent="1cm" />
                </fo:simple-page-master>
            </fo:layout-master-set>
            <fo:page-sequence master-reference="first" language="en" hyphenate="true">
                <fo:flow flow-name="xsl-region-body">
                    <xsl:call-template name="user_default">
                        <xsl:with-param name="rut" select="relojEverest/datosCliente/rut"/>
                        <xsl:with-param name="nombre" select="relojEverest/datosCliente/nombre"/>
                    </xsl:call-template>
                    <xsl:call-template name="titulo">
                        <xsl:with-param name="texto" select="'Reloj Everest Banca Empresa'" />
                    </xsl:call-template>
                    <xsl:call-template name="area-central" />
                    <xsl:call-template name="oportunidad-negocio" />
                    <xsl:call-template name="incentivarUso" />
                    <xsl:call-template name="visacion" />
                    <xsl:call-template name="calificacionBanco" />
                    <xsl:call-template name="garantiasCliente" />
                    <xsl:call-template name="productosVigentes" />
                </fo:flow>
            </fo:page-sequence>
        </fo:root>
    </xsl:template>
    <xsl:template name="area-central">
        <xsl:call-template name="subtitulo">
            <xsl:with-param name="texto" select="'Área central'" />
        </xsl:call-template>
        <fo:block>
            <fo:table text-align="left" table-layout="fixed">
                <fo:table-column column-width="4cm" border-right="0.5pt solid #CCCCCC" />
                <fo:table-column column-width="15cm"/>
                <fo:table-body>
                    <fo:table-row>
                        <fo:table-cell>
                            <xsl:call-template name="subtitulomin">
                                <xsl:with-param name="texto" select="'Alertas del Cliente'" />
                            </xsl:call-template>
                            <fo:table text-align="left" table-layout="fixed">
                                <fo:table-column column-width="3.8cm"/>
                                <fo:table-body>
                                    <xsl:choose>
                                        <xsl:when test="count(relojEverest/areaCentral/alertasCliente/alerta) &gt; 0">
                                            <xsl:for-each select="relojEverest/areaCentral/alertasCliente/alerta">
                                                <fo:table-row>
                                                    <xsl:call-template name="tablacelda">
                                                        <xsl:with-param name="texto" select="./text()" />
                                                    </xsl:call-template>
                                                </fo:table-row>
                                            </xsl:for-each>
                                        </xsl:when>
                                        <xsl:otherwise>
                                            <fo:table-row>
                                                <xsl:call-template name="tablacelda">
                                                    <xsl:with-param name="texto" select="relojEverest/areaCentral/alertasCliente/mensaje"/>
                                                </xsl:call-template>
                                            </fo:table-row>
                                        </xsl:otherwise>
                                    </xsl:choose>
                                </fo:table-body>
                            </fo:table>
                        </fo:table-cell>
                        <fo:table-cell padding-left="0.2cm">
                            <fo:table text-align="left" table-layout="fixed">
                                <fo:table-column column-width="3.7cm"/>
                                <fo:table-column column-width="3.7cm"/>
                                <fo:table-column column-width="3.7cm"/>
                                <fo:table-column column-width="3.7cm"/>
                                <fo:table-body>
                                    <fo:table-row>
                                        <xsl:call-template name="tablaheadhorizontal">
                                            <xsl:with-param name="texto" select="'Banca :'" />
                                        </xsl:call-template>
                                        <xsl:call-template name="tablacelda">
                                            <xsl:with-param name="texto" select="relojEverest/areaCentral/banca" />
                                        </xsl:call-template>
                                        <xsl:call-template name="tablaheadhorizontal">
                                            <xsl:with-param name="texto" select="'Segmento :'" />
                                        </xsl:call-template>
                                        <xsl:call-template name="tablacelda">
                                            <xsl:with-param name="texto" select="relojEverest/areaCentral/segmento" />
                                        </xsl:call-template>
                                    </fo:table-row>
                                    <fo:table-row>
                                        <xsl:call-template name="tablaheadhorizontal">
                                            <xsl:with-param name="texto" select="'Plataforma :'" />
                                        </xsl:call-template>
                                        <xsl:call-template name="tablacelda">
                                            <xsl:with-param name="texto" select="relojEverest/areaCentral/plataformaSucursal" />
                                        </xsl:call-template>
                                        <xsl:call-template name="tablaheadhorizontal">
                                            <xsl:with-param name="texto" select="'Ejecutivo :'" />
                                        </xsl:call-template>
                                        <xsl:call-template name="tablacelda">
                                            <xsl:with-param name="texto" select="relojEverest/areaCentral/ejecutivo" />
                                        </xsl:call-template>
                                    </fo:table-row>
                                    <fo:table-row>
                                        <xsl:call-template name="tablaheadhorizontal">
                                            <xsl:with-param name="texto" select="'Antigüedad :'" />
                                        </xsl:call-template>
                                        <xsl:call-template name="tablacelda">
                                            <xsl:with-param name="texto" select="relojEverest/areaCentral/antiguedad" />
                                        </xsl:call-template>
                                        <xsl:call-template name="tablaheadhorizontal">
                                            <xsl:with-param name="texto" select="'Grupo :'" />
                                        </xsl:call-template>
                                        <xsl:call-template name="tablacelda">
                                            <xsl:with-param name="texto" select="relojEverest/areaCentral/grupo" />
                                        </xsl:call-template>
                                    </fo:table-row>
                                    <fo:table-row>
                                        <xsl:call-template name="tablaheadhorizontal">
                                            <xsl:with-param name="texto" select="'Ventas :'" />
                                        </xsl:call-template>
                                        <xsl:call-template name="tablacelda">
                                            <xsl:with-param name="texto" select="relojEverest/areaCentral/ventas" />
                                        </xsl:call-template>
                                        <xsl:call-template name="tablaheadhorizontal">
                                            <xsl:with-param name="texto" select="'Patrimonio :'" />
                                        </xsl:call-template>
                                        <xsl:call-template name="tablacelda">
                                            <xsl:with-param name="texto" select="relojEverest/areaCentral/patrimonio" />
                                        </xsl:call-template>
                                    </fo:table-row>
                                    <fo:table-row>
                                        <xsl:call-template name="tablaheadhorizontal">
                                            <xsl:with-param name="texto" select="'Utilidad :'" />
                                        </xsl:call-template>
                                        <xsl:call-template name="tablacelda">
                                            <xsl:with-param name="texto" select="relojEverest/areaCentral/utilidad" />
                                        </xsl:call-template>
                                        <xsl:call-template name="tablaheadhorizontal">
                                            <xsl:with-param name="texto" select="'EBITDA :'" />
                                        </xsl:call-template>
                                        <xsl:call-template name="tablacelda">
                                            <xsl:with-param name="texto" select="relojEverest/areaCentral/editda" />
                                        </xsl:call-template>
                                    </fo:table-row>
                                    <fo:table-row>
                                        <xsl:call-template name="tablaheadhorizontal">
                                            <xsl:with-param name="texto" select="'Leverage :'" />
                                        </xsl:call-template>
                                        <xsl:call-template name="tablacelda">
                                            <xsl:with-param name="texto" select="relojEverest/areaCentral/leverage" />
                                        </xsl:call-template>
                                        <xsl:call-template name="tablaheadhorizontal">
                                            <xsl:with-param name="texto" select="'Liquidez :'" />
                                        </xsl:call-template>
                                        <xsl:call-template name="tablacelda">
                                            <xsl:with-param name="texto" select="relojEverest/areaCentral/liquidez" />
                                        </xsl:call-template>
                                    </fo:table-row>
                                    <fo:table-row>
                                        <xsl:call-template name="tablaheadhorizontal">
                                            <xsl:with-param name="texto" select="'PI/PE :'" />
                                        </xsl:call-template>
                                        <xsl:call-template name="tablacelda">
                                            <xsl:with-param name="texto" select="relojEverest/areaCentral/pipe" />
                                        </xsl:call-template>
                                        <xsl:call-template name="tablaheadhorizontal">
                                            <xsl:with-param name="texto" select="'Calificación :'" />
                                        </xsl:call-template>
                                        <xsl:call-template name="tablacelda">
                                            <xsl:with-param name="texto" select="relojEverest/areaCentral/calificacion" />
                                        </xsl:call-template>
                                    </fo:table-row>
                                    <fo:table-row>
                                        <xsl:call-template name="tablaheadhorizontal">
                                            <xsl:with-param name="texto" select="'Spread Rorac :'" />
                                        </xsl:call-template>
                                        <xsl:call-template name="tablacelda">
                                            <xsl:with-param name="texto" select="relojEverest/areaCentral/spreadRorac" />
                                        </xsl:call-template>
                                        <xsl:call-template name="tablaheadhorizontal">
                                            <xsl:with-param name="texto" select="'Spread Promedio :'" />
                                        </xsl:call-template>
                                        <xsl:call-template name="tablacelda">
                                            <xsl:with-param name="texto" select="relojEverest/areaCentral/spreadPromedio" />
                                        </xsl:call-template>
                                    </fo:table-row>
                                    <fo:table-row>
                                        <xsl:call-template name="tablaheadhorizontal">
                                            <xsl:with-param name="texto" select="'Resumen Balance :'" />
                                        </xsl:call-template>
                                        <xsl:call-template name="tablacelda">
                                            <xsl:with-param name="texto" select="relojEverest/areaCentral/resumenBalance" />
                                        </xsl:call-template>
                                        <xsl:call-template name="tablaheadhorizontal">
                                            <xsl:with-param name="texto" select="'Rentabilidad Actual :'" />
                                        </xsl:call-template>
                                        <xsl:call-template name="tablacelda">
                                            <xsl:with-param name="texto" select="concat('M$ ', relojEverest/areaCentral/rentabilidadActual)" />
                                        </xsl:call-template>
                                    </fo:table-row>
                                    <fo:table-row>
                                        <xsl:call-template name="tablaheadhorizontal">
                                            <xsl:with-param name="texto" select="'Última Perspectiva Resuelta :'" />
                                        </xsl:call-template>
                                        <xsl:call-template name="tablacelda">
                                            <xsl:with-param name="texto" select="relojEverest/areaCentral/ultimaPerspectivaResuelta" />
                                        </xsl:call-template>
                                        <xsl:call-template name="tablaheadhorizontal">
                                            <xsl:with-param name="texto" select="'Lista de Observaciones :'" />
                                        </xsl:call-template>
                                        <xsl:call-template name="tablacelda">
                                            <xsl:with-param name="texto" select="relojEverest/areaCentral/listaObservaciones" />
                                        </xsl:call-template>
                                    </fo:table-row>
                                    <fo:table-row>
                                        <xsl:call-template name="tablaheadhorizontal">
                                            <xsl:with-param name="texto" select="'Contacto :'" />
                                        </xsl:call-template>
                                        <xsl:call-template name="tablacelda">
                                            <xsl:with-param name="texto" select="relojEverest/areaCentral/contacto" />
                                        </xsl:call-template>
                                        <xsl:call-template name="tablaheadhorizontal">
                                            <xsl:with-param name="texto" select="'Fono Contacto :'" />
                                        </xsl:call-template>
                                        <xsl:call-template name="tablacelda">
                                            <xsl:with-param name="texto" select="relojEverest/areaCentral/fonoContacto" />
                                        </xsl:call-template>
                                    </fo:table-row>
                                </fo:table-body>
                            </fo:table>
                        </fo:table-cell>
                    </fo:table-row>
                </fo:table-body>
            </fo:table>
        </fo:block>
    </xsl:template>
    <xsl:template name="oportunidad-negocio">
        <xsl:call-template name="subtitulo">
            <xsl:with-param name="texto" select="'Oportunidad de Negocio'" />
        </xsl:call-template>
        <xsl:choose>
				<xsl:when test="relojEverest/oportunidadDeNegocio/campanaVigente/campana">
                <xsl:call-template name="subtitulomin">
                    <xsl:with-param name="texto" select="'Campañas Vigentes'" />
                </xsl:call-template>
                <fo:table text-align="left" table-layout="fixed">
                    <fo:table-column column-width="9.5cm" />
                    <fo:table-column column-width="9.5cm" />
                    <fo:table-body>
                        <xsl:for-each select="relojEverest/oportunidadDeNegocio/campanaVigente/campana">
                            <fo:table-row>
                                <xsl:call-template name="tablaheadhorizontal">
                                    <xsl:with-param name="texto" select="nombre" />
                                </xsl:call-template>
                                <xsl:call-template name="tablacelda">
                                    <xsl:with-param name="texto" select="valor" />
                                </xsl:call-template>
                            </fo:table-row>
                        </xsl:for-each>
                    </fo:table-body>
                </fo:table>
            </xsl:when>
            <xsl:otherwise>
                <xsl:call-template name="subtitulomin">
                    <xsl:with-param name="texto" select="relojEverest/oportunidadDeNegocio/campanaVigente/mensaje" />
                </xsl:call-template>
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>

    <xsl:template name="incentivarUso">
		<fo:block space-before="0.3cm">
			<fo:table table-layout="fixed">
				<fo:table-column column-width="19cm" background-color="{$celda_background}"/>
				<fo:table-body>
					<fo:table-row>
						<fo:table-cell padding="2pt" border="0.3pt solid #E2E2E2">
							<fo:block font-size="13pt" text-align="left" font-weight="bold" font-family="{$txt-font}" color="{$txt-azul-claro}">Incentivar Uso</fo:block>
						</fo:table-cell>
					</fo:table-row>
				</fo:table-body>
			</fo:table>
		</fo:block>

		<fo:block space-before="0.1cm" font-size="8pt" text-align="left" font-family="{$txt-font}" color="{$txt-azul-claro}">
			<fo:table table-layout="fixed">
				<fo:table-column column-width="5cm" background-color="{$celda_background}"/>
				<fo:table-column column-width="8cm"/>
				<fo:table-column column-width="3cm"/>
				<fo:table-column column-width="3cm"/>
				<fo:table-body>

					<fo:table-row>
						<fo:table-cell border="0.3pt solid #E2E2E2" padding-left="2pt" padding-top="2pt">
							<fo:block>
								<fo:external-graphic width="1.5px" height="1.5px" src="{vinieta}">
									<xsl:attribute name="src">
										<xsl:value-of select="$vinieta"/>
									</xsl:attribute>
								</fo:external-graphic>Margen Global</fo:block>
						</fo:table-cell>
						<fo:table-cell border="0.3pt solid #E2E2E2" padding-left="2pt" padding-top="2pt">
							<fo:block font-weight="bold">Margen Global :</fo:block>
						</fo:table-cell>
						<fo:table-cell border="0.3pt solid #E2E2E2" padding-left="2pt" padding-top="2pt">
							<fo:block font-weight="bold">
								<xsl:value-of select="relojEverest/incentivarUso/margenglobal/margen"/>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell border="0.3pt solid #E2E2E2" padding-left="2pt" padding-top="2pt">
							<fo:block></fo:block>
						</fo:table-cell>
					</fo:table-row>

					<fo:table-row>
						<fo:table-cell border="0.3pt solid #E2E2E2" padding-left="2pt" padding-top="2pt"><fo:block></fo:block>
						</fo:table-cell>
						<fo:table-cell border="0.3pt solid #E2E2E2" padding-left="2pt" padding-top="2pt">
							<fo:block font-weight="bold">Margen Disponible :</fo:block>
						</fo:table-cell>
						<fo:table-cell border="0.3pt solid #E2E2E2" padding-left="2pt" padding-top="2pt">
							<fo:block font-weight="bold">
								<xsl:value-of select="relojEverest/incentivarUso/margenglobal/disponible"/>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell border="0.3pt solid #E2E2E2" padding-left="2pt" padding-top="2pt">
							<fo:block></fo:block>
						</fo:table-cell>
					</fo:table-row>

					<fo:table-row>
						<fo:table-cell border="0.3pt solid #E2E2E2" padding-left="2pt" padding-top="2pt">
							<fo:block>
								<fo:external-graphic width="1.5px" height="1.5px" src="{vinieta}">
									<xsl:attribute name="src">
										<xsl:value-of select="$vinieta"/>
									</xsl:attribute>
								</fo:external-graphic>Deuda</fo:block>
						</fo:table-cell>
						<fo:table-cell border="0.3pt solid #E2E2E2" padding-left="2pt" padding-top="2pt">
							<fo:block font-weight="bold">Deuda BCI :</fo:block>
						</fo:table-cell>
						<fo:table-cell border="0.3pt solid #E2E2E2" padding-left="2pt" padding-top="2pt">
							<fo:block font-weight="bold">
								<xsl:value-of select="relojEverest/incentivarUso/deuda/deudaBCI/monto"/>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell border="0.3pt solid #E2E2E2" padding-left="2pt" padding-top="2pt">
							<fo:block font-weight="bold">
								<xsl:value-of select="relojEverest/incentivarUso/deuda/deudaBCI/fecha"/>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>

					<fo:table-row>
						<fo:table-cell border="0.3pt solid #E2E2E2" padding-left="2pt" padding-top="2pt"><fo:block></fo:block>
						</fo:table-cell>
						<fo:table-cell border="0.3pt solid #E2E2E2" padding-left="2pt" padding-top="2pt">
							<fo:block font-weight="bold">Deuda CMFChile :</fo:block>
						</fo:table-cell>
						<fo:table-cell border="0.3pt solid #E2E2E2" padding-left="2pt" padding-top="2pt">
							<fo:block font-weight="bold">
								<xsl:value-of select="relojEverest/incentivarUso/deuda/deudaSBIF/monto"/>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell border="0.3pt solid #E2E2E2" padding-left="2pt" padding-top="2pt">
							<fo:block font-weight="bold">
								<xsl:value-of select="relojEverest/incentivarUso/deuda/deudaSBIF/fecha"/>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>

					<fo:table-row>
						<fo:table-cell border="0.3pt solid #E2E2E2" padding-left="2pt" padding-top="2pt"><fo:block></fo:block>
						</fo:table-cell>
						<fo:table-cell border="0.3pt solid #E2E2E2" padding-left="2pt" padding-top="2pt">
							<fo:block font-weight="bold">Cruce BCI/CMFChile :</fo:block>
						</fo:table-cell>
						<fo:table-cell border="0.3pt solid #E2E2E2" padding-left="2pt" padding-top="2pt">
							<fo:block font-weight="bold">
								<xsl:value-of select="relojEverest/incentivarUso/deuda/cruceBCI_SBIF/monto"/>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell border="0.3pt solid #E2E2E2" padding-left="2pt" padding-top="2pt">
							<fo:block font-weight="bold">
								<xsl:value-of select="relojEverest/incentivarUso/deuda/cruceBCI_SBIF/fecha"/>
							</fo:block>
						</fo:table-cell>
					</fo:table-row>

					<fo:table-row>
						<fo:table-cell border="0.3pt solid #E2E2E2" padding-left="2pt" padding-top="2pt">
							<fo:block>
								<fo:external-graphic width="1.5px" height="1.5px" src="{vinieta}">
									<xsl:attribute name="src">
										<xsl:value-of select="$vinieta"/>
									</xsl:attribute>
								</fo:external-graphic>Evolución Comercial</fo:block>
						</fo:table-cell>
						<fo:table-cell border="0.3pt solid #E2E2E2" padding-left="2pt" padding-top="2pt">
							<fo:block font-weight="bold">Detalle Saldos Promedios :</fo:block>
						</fo:table-cell>
						<fo:table-cell border="0.3pt solid #E2E2E2" padding-left="2pt" padding-top="2pt">
							<fo:block font-weight="bold">
								<xsl:value-of select="relojEverest/incentivarUso/evolucionComercial/detalleSaldo"/>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell border="0.3pt solid #E2E2E2" padding-left="2pt" padding-top="2pt">
							<fo:block></fo:block>
						</fo:table-cell>
					</fo:table-row>

					<fo:table-row>
						<fo:table-cell border="0.3pt solid #E2E2E2" padding-left="2pt" padding-top="2pt">
							<fo:block>
								<fo:external-graphic width="1.5px" height="1.5px" src="{vinieta}">
									<xsl:attribute name="src">
										<xsl:value-of select="$vinieta"/>
									</xsl:attribute>
								</fo:external-graphic>Rentabilidad</fo:block>
						</fo:table-cell>
						<fo:table-cell border="0.3pt solid #E2E2E2" padding-left="2pt" padding-top="2pt">
							<fo:block font-weight="bold">Rentabilidad Esperada Segmento :</fo:block>
						</fo:table-cell>
						<fo:table-cell border="0.3pt solid #E2E2E2" padding-left="2pt" padding-top="2pt">
							<fo:block font-weight="bold">
								<xsl:value-of select="relojEverest/incentivarUso/rentabilidad/esperada"/>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell border="0.3pt solid #E2E2E2" padding-left="2pt" padding-top="2pt">
							<fo:block></fo:block>
						</fo:table-cell>
					</fo:table-row>
	
					<fo:table-row>
						<fo:table-cell border="0.3pt solid #E2E2E2" padding-left="2pt" padding-top="2pt"><fo:block></fo:block>
						</fo:table-cell>
						<fo:table-cell border="0.3pt solid #E2E2E2" padding-left="2pt" padding-top="2pt">
							<fo:block font-weight="bold">Rentabilidad Promedio Cliente sin SGN :</fo:block>
						</fo:table-cell>
						<fo:table-cell border="0.3pt solid #E2E2E2" padding-left="2pt" padding-top="2pt">
							<fo:block font-weight="bold">
								<xsl:value-of select="relojEverest/incentivarUso/rentabilidad/promedio"/>
							</fo:block>
						</fo:table-cell>
						<fo:table-cell border="0.3pt solid #E2E2E2" padding-left="2pt" padding-top="2pt">
							<fo:block></fo:block>
						</fo:table-cell>
					</fo:table-row>

				</fo:table-body>
			</fo:table>
		</fo:block>
        
		<fo:block space-before="0.1cm" font-size="9pt" text-align="left" font-weight="bold" font-family="{$txt-font}" color="{$txt-azul-claro}">Saldos Promedios / Evolución Deuda Super (Últimos 12 Meses)</fo:block>
		<xsl:choose>
			<xsl:when test="relojEverest/incentivarUso/saldosPromedios/meses/mesAnyo">
				<fo:block space-before="0.1cm" font-size="8pt" text-align="left" font-family="{$txt-font}" color="{$txt-azul-claro}">
					<fo:table table-layout="fixed">
						<fo:table-column column-width="3.5cm"/>
						<xsl:for-each select="relojEverest/incentivarUso/saldosPromedios/meses/mesAnyo">
							<fo:table-column/>
						</xsl:for-each>
						<fo:table-body>
							<fo:table-row background-color="{$celda_background}">
								<fo:table-cell border="0.3pt solid #E2E2E2" padding-left="2pt" padding-top="2pt">
									<fo:block text-align="center" font-weight="bold">Productos</fo:block>
								</fo:table-cell>
								<xsl:for-each select="relojEverest/incentivarUso/saldosPromedios/meses/mesAnyo">
									<fo:table-cell border="0.3pt solid #E2E2E2" padding-left="2pt" padding-top="2pt">
										<fo:block text-align="center" font-weight="bold">
											<xsl:value-of select="."/>
										</fo:block>
									</fo:table-cell>
								</xsl:for-each>
							</fo:table-row>

							<xsl:for-each select="relojEverest/incentivarUso/saldosPromedios/productos/producto">
								<fo:table-row>
									<fo:table-cell border="0.3pt solid #E2E2E2" padding-left="2pt" padding-top="2pt">
										<fo:block>
											<xsl:value-of select="nombre"/>
										</fo:block>
									</fo:table-cell>
									<xsl:for-each select="valorMes">
										<fo:table-cell border="0.3pt solid #E2E2E2" padding-left="2pt" padding-top="2pt">
											<fo:block text-align="right">
												<xsl:value-of select="."/>
											</fo:block>
										</fo:table-cell>
									</xsl:for-each>
								</fo:table-row>
							</xsl:for-each>
						</fo:table-body>
					</fo:table>
				</fo:block>
			</xsl:when>
			<xsl:otherwise>
				<fo:block space-before="0.1cm" font-size="8pt" text-align="left" font-family="{$txt-font}" color="{$txt-azul-claro}">
					<fo:table table-layout="fixed">
						<fo:table-column column-width="19cm"/>
						<fo:table-body>
							<fo:table-row background-color="{$celda_background}">
								<fo:table-cell border="0.3pt solid #E2E2E2" padding-left="2pt" padding-top="2pt">
									<fo:block text-align="center" font-weight="bold"><xsl:value-of select="relojEverest/incentivarUso/saldosPromedios/mensaje"/></fo:block>
								</fo:table-cell>
							</fo:table-row>
						</fo:table-body>
					</fo:table>
				</fo:block>
			</xsl:otherwise>
		</xsl:choose>
	</xsl:template>
    <xsl:template name="visacion">
        <xsl:call-template name="subtitulo">
            <xsl:with-param name="texto" select="'Visación'" />
        </xsl:call-template>
        <xsl:choose>
            <xsl:when test="relojEverest/visacion">
                <fo:block>
                    <fo:table text-align="left" table-layout="fixed">
                        <fo:table-column column-width="9.5cm" border-right="0.5pt solid #CCCCCC"/>
                        <fo:table-column column-width="9.5cm"/>
                        <fo:table-body>
                            <fo:table-row>
                                <fo:table-cell>
                                    <xsl:call-template name="subtitulomin">
                                        <xsl:with-param name="texto" select="'File'" />
                                    </xsl:call-template>
                                    <fo:table text-align="left" table-layout="fixed">
                                        <fo:table-column column-width="9.3cm"/>
                                        <fo:table-body>
                                            <fo:table-row>
                                                <xsl:call-template name="tablaceldadatotexto">
                                                    <xsl:with-param name="texto" select="relojEverest/visacion/semaforoFileNegativo" />
                                                </xsl:call-template>
                                            </fo:table-row>
                                        </fo:table-body>
                                    </fo:table>
                                    <xsl:call-template name="subtitulomin">
                                        <xsl:with-param name="texto" select="'Deuda BCI (M$)'" />
                                    </xsl:call-template>
                                    <fo:table text-align="left" table-layout="fixed">
                                        <fo:table-column column-width="2.325cm"/>
                                        <fo:table-column column-width="2.325cm"/>
                                        <fo:table-column column-width="2.325cm"/>
                                        <fo:table-column column-width="2.325cm"/>
                                        <fo:table-body>
                                            <fo:table-row>
                                                <xsl:call-template name="tablaceldadatotexto">
                                                    <xsl:with-param name="texto" select="'Total Directa:'" />
                                                </xsl:call-template>
                                                <xsl:call-template name="tablaceldadatotexto">
                                                    <xsl:with-param name="texto" select="relojEverest/visacion/deudaBCI/totalDirecta" />
                                                </xsl:call-template>
                                                <xsl:call-template name="tablaceldadatotexto">
                                                    <xsl:with-param name="texto" select="'Total Complementaria:'" />
                                                </xsl:call-template>
                                                <xsl:call-template name="tablaceldadatotexto">
                                                    <xsl:with-param name="texto" select="relojEverest/visacion/deudaBCI/totalComplementaria" />
                                                </xsl:call-template>
                                            </fo:table-row>
                                            <fo:table-row>
                                                <xsl:call-template name="tablaceldadatotexto">
                                                    <xsl:with-param name="texto" select="'Total Vencida Directa:'" />
                                                </xsl:call-template>
                                                <xsl:call-template name="tablaceldadatotexto">
                                                    <xsl:with-param name="texto" select="relojEverest/visacion/deudaBCI/totalVencidaDirecta" />
                                                </xsl:call-template>
                                                <xsl:call-template name="tablaceldadatotexto">
                                                    <xsl:with-param name="texto" select="'Total Banco Nova:'" />
                                                </xsl:call-template>
                                                <xsl:call-template name="tablaceldadatotexto">
                                                    <xsl:with-param name="texto" select="relojEverest/visacion/deudaBCI/totalBancoNova" />
                                                </xsl:call-template>
                                            </fo:table-row>
                                            <fo:table-row>
                                                <xsl:call-template name="tablaceldadatotexto">
                                                    <xsl:with-param name="texto" select="'Total Indirecta:'" />
                                                </xsl:call-template>
                                                <xsl:call-template name="tablaceldadatotexto">
                                                    <xsl:with-param name="texto" select="relojEverest/visacion/deudaBCI/totalIndirecta" />
                                                </xsl:call-template>
                                                <xsl:call-template name="tablaceldadatotexto">
                                                    <xsl:with-param name="texto" select="'Castigada:'" />
                                                </xsl:call-template>
                                                <xsl:call-template name="tablaceldadatotexto">
                                                    <xsl:with-param name="texto" select="relojEverest/visacion/deudaBCI/indicadorCastigada" />
                                                </xsl:call-template>
                                            </fo:table-row>
                                            <fo:table-row>
                                                <xsl:call-template name="tablaceldadatotexto">
                                                    <xsl:with-param name="texto" select="'Total Vencida Indirecta:'" />
                                                </xsl:call-template>
                                                <xsl:call-template name="tablaceldadatotexto">
                                                    <xsl:with-param name="texto" select="relojEverest/visacion/deudaBCI/totalVencidaIndirecta" />
                                                </xsl:call-template>
                                                <xsl:call-template name="tablaceldadatotexto">
                                                    <xsl:with-param name="texto" select="'Clasificación:'" />
                                                </xsl:call-template>
                                                <xsl:call-template name="tablaceldadatotexto">
                                                    <xsl:with-param name="texto" select="relojEverest/visacion/deudaBCI/clasificacion" />
                                                </xsl:call-template>
                                            </fo:table-row>
                                            <fo:table-row>
                                                <xsl:call-template name="tablaceldadatotexto">
                                                    <xsl:with-param name="texto" select="'   '" />
                                                </xsl:call-template>
                                                <xsl:call-template name="tablaceldadatotexto">
                                                    <xsl:with-param name="texto" select="'   '" />
                                                </xsl:call-template>
                                                <xsl:call-template name="tablaceldadatotexto">
                                                    <xsl:with-param name="texto" select="'Total Deuda:'" />
                                                </xsl:call-template>
                                                <xsl:call-template name="tablaceldadatotexto">
                                                    <xsl:with-param name="texto" select="relojEverest/visacion/deudaBCI/totalDeuda" />
                                                </xsl:call-template>
                                            </fo:table-row>
                                        </fo:table-body>
                                    </fo:table>
                                    <xsl:call-template name="subtitulomin">
                                        <xsl:with-param name="texto" select="'Visación Bci'" />
                                    </xsl:call-template>
                                    <fo:table text-align="left" table-layout="fixed">
                                        <fo:table-column column-width="2.325cm"/>
                                        <fo:table-column column-width="2.325cm"/>
                                        <fo:table-column column-width="2.325cm"/>
                                        <fo:table-column column-width="2.325cm"/>
                                        <fo:table-body>
                                            <fo:table-row>
                                                <xsl:call-template name="tablaceldadatotexto">
                                                    <xsl:with-param name="texto" select="'Protestos Vigentes: '" />
                                                </xsl:call-template>
                                                <xsl:call-template name="tablaceldadatotexto">
                                                    <xsl:with-param name="texto" select="relojEverest/visacion/visacionBCI/protestosVigentes" />
                                                </xsl:call-template>
                                                <xsl:call-template name="tablaceldadatotexto">
                                                    <xsl:with-param name="texto" select="'Impedimento de abrir Cta. Cte.: '" />
                                                </xsl:call-template>
                                                <xsl:call-template name="tablaceldadatotexto">
                                                    <xsl:with-param name="texto" select="relojEverest/visacion/visacionBCI/indicadorImpedimentoAbrirCtaCte" />
                                                </xsl:call-template>
                                            </fo:table-row>
                                            <fo:table-row>
                                                <xsl:call-template name="tablaceldadatotexto">
                                                    <xsl:with-param name="texto" select="'Aclaraciones: '" />
                                                </xsl:call-template>
                                                <xsl:call-template name="tablaceldadatotexto">
                                                    <xsl:with-param name="texto" select="relojEverest/visacion/visacionBCI/aclaraciones" />
                                                </xsl:call-template>
                                                <xsl:call-template name="tablaceldadatotexto">
                                                    <xsl:with-param name="texto" select="'Juicio Banco Central: '" />
                                                </xsl:call-template>
                                                <xsl:call-template name="tablaceldadatotexto">
                                                    <xsl:with-param name="texto" select="relojEverest/visacion/visacionBCI/juicioBancoCentral" />
                                                </xsl:call-template>
                                            </fo:table-row>
                                        </fo:table-body>
                                    </fo:table>
                                    <xsl:call-template name="subtitulomin">
                                        <xsl:with-param name="texto" select="'Líneas de Crédito Directa (M$)'" />
                                    </xsl:call-template>
                                    <fo:table text-align="left" table-layout="fixed">
                                        <fo:table-column column-width="2.325cm"/>
                                        <fo:table-column column-width="2.325cm"/>
                                        <fo:table-column column-width="2.325cm"/>
                                        <fo:table-column column-width="2.325cm"/>
                                        <fo:table-body>
                                            <fo:table-row>
                                                <xsl:call-template name="tablaceldadatotexto">
                                                    <xsl:with-param name="texto" select="'Total Autorizado: '" />
                                                </xsl:call-template>
                                                <xsl:call-template name="tablaceldadatotexto">
                                                    <xsl:with-param name="texto" select="relojEverest/visacion/lineasCreditoDirecta/totalAutorizado" />
                                                </xsl:call-template>
                                                <xsl:call-template name="tablaceldadatotexto">
                                                    <xsl:with-param name="texto" select="'Total Disponible: '" />
                                                </xsl:call-template>
                                                <xsl:call-template name="tablaceldadatotexto">
                                                    <xsl:with-param name="texto" select="relojEverest/visacion/lineasCreditoDirecta/totalDisponible" />
                                                </xsl:call-template>
                                            </fo:table-row>
                                        </fo:table-body>
                                    </fo:table>
                                    <fo:table text-align="left" table-layout="fixed" margin-top="5pt">
                                        <fo:table-column column-width="1.86cm"/>
                                        <fo:table-column column-width="1.86cm"/>
                                        <fo:table-column column-width="1.86cm"/>
                                        <fo:table-column column-width="1.86cm"/>
                                        <fo:table-column column-width="1.86cm"/>
                                        <fo:table-body>
                                            <fo:table-row>
                                                <xsl:call-template name="tablaheadverticaldestacado">
                                                    <xsl:with-param name="texto" select="'Producto'" />
                                                </xsl:call-template>
                                                <xsl:call-template name="tablaheadverticaldestacado">
                                                    <xsl:with-param name="texto" select="'Oficina'" />
                                                </xsl:call-template>
                                                <xsl:call-template name="tablaheadverticaldestacado">
                                                    <xsl:with-param name="texto" select="'Monto Autorizado'" />
                                                </xsl:call-template>
                                                <xsl:call-template name="tablaheadverticaldestacado">
                                                    <xsl:with-param name="texto" select="'Monto Disponible'" />
                                                </xsl:call-template>
                                                <xsl:call-template name="tablaheadverticaldestacado">
                                                    <xsl:with-param name="texto" select="'Fecha de Vencimiento'" />
                                                </xsl:call-template>
                                            </fo:table-row>
                                            <xsl:choose>
                                                <xsl:when test="count(relojEverest/visacion/lineasCreditoDirecta/lineas/linea) &gt; 0">
                                                    <xsl:for-each select="relojEverest/visacion/lineasCreditoDirecta/lineas/linea">
                                                        <fo:table-row>
                                                            <xsl:call-template name="tablaceldadatotexto">
                                                                <xsl:with-param name="texto" select="producto" />
                                                            </xsl:call-template>
                                                            <xsl:call-template name="tablaceldadatotexto">
                                                                <xsl:with-param name="texto" select="oficina" />
                                                            </xsl:call-template>
                                                            <xsl:call-template name="tablaceldadatotexto">
                                                                <xsl:with-param name="texto" select="montoAutorizado" />
                                                            </xsl:call-template>
                                                            <xsl:call-template name="tablaceldadatotexto">
                                                                <xsl:with-param name="texto" select="montoDisponible" />
                                                            </xsl:call-template>
                                                            <xsl:call-template name="tablaceldadatotexto">
                                                                <xsl:with-param name="texto" select="fechaVencimiento" />
                                                            </xsl:call-template>
                                                        </fo:table-row>
                                                    </xsl:for-each>
                                                </xsl:when>
                                                <xsl:otherwise>
                                                    <fo:table-row>
                                                        <xsl:call-template name="tablaceldadatotexto">
                                                            <xsl:with-param name="text-align" select="'center'" />
                                                            <xsl:with-param name="colspan" select="'4'" />
                                                            <xsl:with-param name="texto" select="'Cliente no registra información de detalle'" />
                                                        </xsl:call-template>
                                                    </fo:table-row>
                                                </xsl:otherwise>
                                            </xsl:choose>
                                        </fo:table-body>
                                    </fo:table>
                                    <xsl:call-template name="subtitulomin">
                                        <xsl:with-param name="texto" select="'Informe Cuenta Corriente (M$)'" />
                                    </xsl:call-template>
                                    <fo:table text-align="left" table-layout="fixed">
                                        <fo:table-column column-width="2.325cm"/>
                                        <fo:table-column column-width="2.325cm"/>
                                        <fo:table-column column-width="2.325cm"/>
                                        <fo:table-column column-width="2.325cm"/>
                                        <fo:table-body>
                                            <fo:table-row>
                                                <xsl:call-template name="tablaceldadatotexto">
                                                    <xsl:with-param name="texto" select="'Nº de Ctas. Ctes.: '" />
                                                </xsl:call-template>
                                                <xsl:call-template name="tablaceldadatotexto">
                                                    <xsl:with-param name="texto" select="relojEverest/visacion/informeCuentaCorriente/numeroCuentasCorrientes" />
                                                </xsl:call-template>
                                                <xsl:call-template name="tablaceldadatotexto">
                                                    <xsl:with-param name="texto" select="'Promedio Trimestre Actual: '" />
                                                </xsl:call-template>
                                                <xsl:call-template name="tablaceldadatotexto">
                                                    <xsl:with-param name="texto" select="relojEverest/visacion/informeCuentaCorriente/promedioTrimestreActual" />
                                                </xsl:call-template>
                                            </fo:table-row>
                                            <fo:table-row>
                                                <xsl:call-template name="tablaceldadatotexto">
                                                    <xsl:with-param name="texto" select="'Saldo Disponible: '" />
                                                </xsl:call-template>
                                                <xsl:call-template name="tablaceldadatotexto">
                                                    <xsl:with-param name="texto" select="relojEverest/visacion/informeCuentaCorriente/saldoDisponible" />
                                                </xsl:call-template>
                                                <xsl:call-template name="tablaceldadatotexto">
                                                    <xsl:with-param name="texto" select="'Promedio Trimestre Anterior: '" />
                                                </xsl:call-template>
                                                <xsl:call-template name="tablaceldadatotexto">
                                                    <xsl:with-param name="texto" select="relojEverest/visacion/informeCuentaCorriente/promedioTrimestreAnterior" />
                                                </xsl:call-template>
                                            </fo:table-row>
                                            <fo:table-row>
                                                <xsl:call-template name="tablaceldadatotexto">
                                                    <xsl:with-param name="texto" select="'Total Depósitos Trimestre Actual: '" />
                                                </xsl:call-template>
                                                <xsl:call-template name="tablaceldadatotexto">
                                                    <xsl:with-param name="texto" select="relojEverest/visacion/informeCuentaCorriente/totalDepositosTrimestreActual" />
                                                </xsl:call-template>
                                                <xsl:call-template name="tablaceldadatotexto">
                                                    <xsl:with-param name="texto" select="'Antigüedad: '" />
                                                </xsl:call-template>
                                                <xsl:call-template name="tablaceldadatotexto">
                                                    <xsl:with-param name="texto" select="relojEverest/visacion/informeCuentaCorriente/antiguedad" />
                                                </xsl:call-template>
                                            </fo:table-row>
                                        </fo:table-body>
                                    </fo:table>
                                </fo:table-cell>
                                <fo:table-cell padding-left="0.2cm">
                                    <xsl:call-template name="subtitulomin">
                                        <xsl:with-param name="texto" select="'Indicador Complementario de Riesgo (ICR)'" />
                                    </xsl:call-template>
                                    <fo:table text-align="left" table-layout="fixed">
                                        <fo:table-column column-width="3.1cm"/>
                                        <fo:table-column column-width="3.1cm"/>
                                        <fo:table-column column-width="3.1cm"/>
                                        <fo:table-body>
                                            <fo:table-row>
                                                <xsl:call-template name="tablaceldadatotexto">
                                                    <xsl:with-param name="texto" select="'Estado: '" />
                                                </xsl:call-template>
                                                <xsl:call-template name="tablaceldadatotexto">
                                                    <xsl:with-param name="texto" select="relojEverest/visacion/icr/estado" />
                                                </xsl:call-template>
                                                <xsl:call-template name="tablaceldadatotexto">
                                                    <xsl:with-param name="texto" select="relojEverest/visacion/icr/semaforo" />
                                                </xsl:call-template>
                                            </fo:table-row>
                                        </fo:table-body>
                                    </fo:table>
                                    <xsl:call-template name="subtitulomin">
                                        <xsl:with-param name="texto" select="concat('Deuda Super (M$) al ', relojEverest/visacion/deudaSuper/periodo)" />
                                    </xsl:call-template>
                                    <fo:table text-align="left" table-layout="fixed">
                                        <fo:table-column column-width="2.325cm"/>
                                        <fo:table-column column-width="2.325cm"/>
                                        <fo:table-column column-width="2.325cm"/>
                                        <fo:table-column column-width="2.325cm"/>
                                        <fo:table-body>
                                            <fo:table-row>
                                                <xsl:call-template name="tablaceldadatotexto">
                                                    <xsl:with-param name="texto" select="'Directa Vigente: '" />
                                                </xsl:call-template>
                                                <xsl:call-template name="tablaceldadatotexto">
                                                    <xsl:with-param name="texto" select="relojEverest/visacion/deudaSuper/directaVigente" />
                                                </xsl:call-template>
                                                <xsl:call-template name="tablaceldadatotexto">
                                                    <xsl:with-param name="texto" select="'Morosidad 30-90 días: '" />
                                                </xsl:call-template>
                                                <xsl:call-template name="tablaceldadatotexto">
                                                    <xsl:with-param name="texto" select="relojEverest/visacion/deudaSuper/morosidad3090Dias" />
                                                </xsl:call-template>
                                            </fo:table-row>
                                            <fo:table-row>
                                                <xsl:call-template name="tablaceldadatotexto">
                                                    <xsl:with-param name="texto" select="'Directa Vencida: '" />
                                                </xsl:call-template>
                                                <xsl:call-template name="tablaceldadatotexto">
                                                    <xsl:with-param name="texto" select="relojEverest/visacion/deudaSuper/directaVencida" />
                                                </xsl:call-template>
                                                <xsl:call-template name="tablaceldadatotexto">
                                                    <xsl:with-param name="texto" select="'Indirecta Vigente: '" />
                                                </xsl:call-template>
                                                <xsl:call-template name="tablaceldadatotexto">
                                                    <xsl:with-param name="texto" select="relojEverest/visacion/deudaSuper/indirectaVigente" />
                                                </xsl:call-template>
                                            </fo:table-row>
                                            <fo:table-row>
                                                <xsl:call-template name="tablaceldadatotexto">
                                                    <xsl:with-param name="texto" select="'Directa Inv. Financiera: '" />
                                                </xsl:call-template>
                                                <xsl:call-template name="tablaceldadatotexto">
                                                    <xsl:with-param name="texto" select="relojEverest/visacion/deudaSuper/directaInvFinanciera" />
                                                </xsl:call-template>
                                                <xsl:call-template name="tablaceldadatotexto">
                                                    <xsl:with-param name="texto" select="'Indirecta Vencida: '" />
                                                </xsl:call-template>
                                                <xsl:call-template name="tablaceldadatotexto">
                                                    <xsl:with-param name="texto" select="relojEverest/visacion/deudaSuper/indirectaVencida" />
                                                </xsl:call-template>
                                            </fo:table-row>
                                            <fo:table-row>
                                                <xsl:call-template name="tablaceldadatotexto">
                                                    <xsl:with-param name="texto" select="'Directa OP. Pacto: '" />
                                                </xsl:call-template>
                                                <xsl:call-template name="tablaceldadatotexto">
                                                    <xsl:with-param name="texto" select="relojEverest/visacion/deudaSuper/directaOpPacto" />
                                                </xsl:call-template>
                                                <xsl:call-template name="tablaceldadatotexto">
                                                    <xsl:with-param name="texto" select="'Indirecta Castigada: '" />
                                                </xsl:call-template>
                                                <xsl:call-template name="tablaceldadatotexto">
                                                    <xsl:with-param name="texto" select="relojEverest/visacion/deudaSuper/indirectaCastigada" />
                                                </xsl:call-template>
                                            </fo:table-row>
                                            <fo:table-row>
                                                <xsl:call-template name="tablaceldadatotexto">
                                                    <xsl:with-param name="texto" select="'Directa Castigada: '" />
                                                </xsl:call-template>
                                                <xsl:call-template name="tablaceldadatotexto">
                                                    <xsl:with-param name="texto" select="relojEverest/visacion/deudaSuper/directaCastigada" />
                                                </xsl:call-template>
                                                <xsl:call-template name="tablaceldadatotexto">
                                                    <xsl:with-param name="texto" select="'Total Deuda Súper: '" />
                                                </xsl:call-template>
                                                <xsl:call-template name="tablaceldadatotexto">
                                                    <xsl:with-param name="texto" select="relojEverest/visacion/deudaSuper/totalDeuda" />
                                                </xsl:call-template>
                                            </fo:table-row>
                                        </fo:table-body>
                                    </fo:table>
                                    <xsl:call-template name="subtitulomin">
                                        <xsl:with-param name="texto" select="'Visación Informe Comercial'" />
                                    </xsl:call-template>
                                    <fo:table text-align="left" table-layout="fixed">
                                        <fo:table-column column-width="2.325cm"/>
                                        <fo:table-column column-width="2.325cm"/>
                                        <fo:table-column column-width="2.325cm"/>
                                        <fo:table-column column-width="2.325cm"/>
                                        <fo:table-body>
                                            <fo:table-row>
                                                <xsl:call-template name="tablaceldadatotexto">
                                                    <xsl:with-param name="texto" select="'Protestos Vigentes: '" />
                                                </xsl:call-template>
                                                <xsl:call-template name="tablaceldadatotexto">
                                                    <xsl:with-param name="texto" select="relojEverest/visacion/informeComercial/protestosVigentes" />
                                                </xsl:call-template>
                                                <xsl:call-template name="tablaceldadatotexto">
                                                    <xsl:with-param name="texto" select="'Infracciones Laborales: '" />
                                                </xsl:call-template>
                                                <xsl:call-template name="tablaceldadatotexto">
                                                    <xsl:with-param name="texto" select="relojEverest/visacion/informeComercial/infraccionesLaborales" />
                                                </xsl:call-template>
                                            </fo:table-row>
                                            <fo:table-row>
                                                <xsl:call-template name="tablaceldadatotexto">
                                                    <xsl:with-param name="texto" select="'Protestos Históricos: '" />
                                                </xsl:call-template>
                                                <xsl:call-template name="tablaceldadatotexto">
                                                    <xsl:with-param name="texto" select="relojEverest/visacion/informeComercial/protestosHistoricos" />
                                                </xsl:call-template>
                                                <xsl:call-template name="tablaceldadatotexto">
                                                    <xsl:with-param name="texto" select="'Morosos Comercio: '" />
                                                </xsl:call-template>
                                                <xsl:call-template name="tablaceldadatotexto">
                                                    <xsl:with-param name="texto" select="relojEverest/visacion/informeComercial/morososComercio" />
                                                </xsl:call-template>
                                            </fo:table-row>
                                            <fo:table-row>
                                                <xsl:call-template name="tablaceldadatotexto">
                                                    <xsl:with-param name="texto" select="'Aclaraciones: '" />
                                                </xsl:call-template>
                                                <xsl:call-template name="tablaceldadatotexto">
                                                    <xsl:with-param name="texto" select="relojEverest/visacion/informeComercial/aclaraciones" />
                                                </xsl:call-template>
                                                <xsl:call-template name="tablaceldadatotexto">
                                                    <xsl:with-param name="texto" select="'Quiebras: '" />
                                                </xsl:call-template>
                                                <xsl:call-template name="tablaceldadatotexto">
                                                    <xsl:with-param name="texto" select="relojEverest/visacion/informeComercial/quiebras" />
                                                </xsl:call-template>
                                            </fo:table-row>
                                        </fo:table-body>
                                    </fo:table>
                                    <xsl:call-template name="subtitulomin">
                                        <xsl:with-param name="texto" select="'Garantías (M$)'" />
                                    </xsl:call-template>
                                    <fo:table text-align="left" table-layout="fixed">
                                        <fo:table-column column-width="4.65cm"/>
                                        <fo:table-column column-width="4.65cm"/>
                                        <fo:table-body>
                                            <fo:table-row>
                                                <xsl:call-template name="tablaceldadatotexto">
                                                    <xsl:with-param name="texto" select="'Valor Tasación: '" />
                                                </xsl:call-template>
                                                <xsl:call-template name="tablaceldadatotexto">
                                                    <xsl:with-param name="texto" select="relojEverest/visacion/garantias/valorTasacion" />
                                                </xsl:call-template>
                                            </fo:table-row>
                                            <fo:table-row>
                                                <xsl:call-template name="tablaceldadatotexto">
                                                    <xsl:with-param name="texto" select="'Gtías. Facultades: '" />
                                                </xsl:call-template>
                                                <xsl:call-template name="tablaceldadatotexto">
                                                    <xsl:with-param name="texto" select="relojEverest/visacion/garantias/garantiasFacultades" />
                                                </xsl:call-template>
                                            </fo:table-row>
                                        </fo:table-body>
                                    </fo:table>
                                    <xsl:call-template name="subtitulomin">
                                        <xsl:with-param name="texto" select="'Relación Deuda Garantías $'" />
                                    </xsl:call-template>
                                    <fo:table text-align="left" table-layout="fixed">
                                        <fo:table-column column-width="4.65cm"/>
                                        <fo:table-column column-width="4.65cm"/>
                                        <fo:table-body>
                                            <fo:table-row>
                                                <xsl:call-template name="tablaceldadatotexto">
                                                    <xsl:with-param name="texto" select="'Total Ponderado: '" />
                                                </xsl:call-template>
                                                <xsl:call-template name="tablaceldadatotexto">
                                                    <xsl:with-param name="texto" select="relojEverest/visacion/relacionDeudaGarantia/totalPonderado" />
                                                </xsl:call-template>
                                            </fo:table-row>
                                            <fo:table-row>
                                                <xsl:call-template name="tablaceldadatotexto">
                                                    <xsl:with-param name="texto" select="'Deuda Total: '" />
                                                </xsl:call-template>
                                                <xsl:call-template name="tablaceldadatotexto">
                                                    <xsl:with-param name="texto" select="relojEverest/visacion/relacionDeudaGarantia/deudaTotal" />
                                                </xsl:call-template>
                                            </fo:table-row>
                                            <fo:table-row>
                                                <xsl:call-template name="tablaceldadatotexto">
                                                    <xsl:with-param name="texto" select="'Diferencia (Favor/Contra): '" />
                                                </xsl:call-template>
                                                <xsl:call-template name="tablaceldadatotexto">
                                                    <xsl:with-param name="texto" select="relojEverest/visacion/relacionDeudaGarantia/diferencia" />
                                                </xsl:call-template>
                                            </fo:table-row>
                                        </fo:table-body>
                                    </fo:table>
                                    <fo:table text-align="left" table-layout="fixed" margin-top="5pt">
                                        <fo:table-column column-width="4.65cm"/>
                                        <fo:table-column column-width="4.65cm"/>
                                        <fo:table-body>
                                            <fo:table-row>
                                                <xsl:call-template name="tablaceldadatotexto">
                                                    <xsl:with-param name="texto" select="'Factor de Riesgo %: '" />
                                                </xsl:call-template>
                                                <xsl:call-template name="tablaceldadatotexto">
                                                    <xsl:with-param name="texto" select="relojEverest/visacion/factorRiesgo" />
                                                </xsl:call-template>
                                            </fo:table-row>
                                            </fo:table-body>
                                    </fo:table>
                                </fo:table-cell>
                            </fo:table-row>
                        </fo:table-body>
                    </fo:table>
                </fo:block>
            </xsl:when>
            <xsl:otherwise>
                <xsl:call-template name="subtitulomin">
                    <xsl:with-param name="texto" select="'Sin información de Visación'" />
                </xsl:call-template>
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>
    <xsl:template name="calificacionBanco">
        <xsl:call-template name="subtitulo">
            <xsl:with-param name="texto" select="'Calificación Banco'" />
        </xsl:call-template>
        <fo:block>
            <fo:table text-align="left" table-layout="fixed">
                <fo:table-column column-width="1.8cm"/>
                <fo:table-column column-width="1.8cm"/>
                <fo:table-column column-width="2cm"/>
                <fo:table-column column-width="1.5cm"/>
                <fo:table-column column-width="1.5cm"/>
                <fo:table-column column-width="2.1cm"/>
                <fo:table-column column-width="6.5cm"/>
                <fo:table-column column-width="1.8cm"/>
                <fo:table-body>
                    <fo:table-row>
                        <xsl:call-template name="tablaheadverticaldestacado">
                            <xsl:with-param name="texto" select="'Fecha'" />
                            <xsl:with-param name="colspan" select="2" />
                        </xsl:call-template>
                        <xsl:call-template name="tablaheadverticaldestacado">
                            <xsl:with-param name="texto" select="'Riesgo Puro'" />
                            <xsl:with-param name="rowspan" select="2" />
                        </xsl:call-template>
                        <xsl:call-template name="tablaheadverticaldestacado">
                            <xsl:with-param name="texto" select="'Riesgo Puro'" />
                            <xsl:with-param name="colspan" select="2" />
                        </xsl:call-template>
                        <xsl:call-template name="tablaheadverticaldestacado">
                            <xsl:with-param name="texto" select="'Aval Corto Plazo'" />
                            <xsl:with-param name="colspan" select="3" />
                        </xsl:call-template>
                    </fo:table-row>
                    <fo:table-row>
                        <xsl:call-template name="tablaheadverticalsimple">
                            <xsl:with-param name="texto" select="'Calificación'" />
                        </xsl:call-template>
                        <xsl:call-template name="tablaheadverticalsimple">
                            <xsl:with-param name="texto" select="'Balance'" />
                        </xsl:call-template>
                        <xsl:call-template name="tablaheadverticalsimple">
                            <xsl:with-param name="texto" select="'C/P'" />
                        </xsl:call-template>
                        <xsl:call-template name="tablaheadverticalsimple">
                            <xsl:with-param name="texto" select="'L/P'" />
                        </xsl:call-template>
                        <xsl:call-template name="tablaheadverticalsimple">
                            <xsl:with-param name="texto" select="'Rut'" />
                        </xsl:call-template>
                        <xsl:call-template name="tablaheadverticalsimple">
                            <xsl:with-param name="texto" select="'Nombre'" />
                        </xsl:call-template>
                        <xsl:call-template name="tablaheadverticalsimple">
                            <xsl:with-param name="texto" select="'Riesgo puro'" />
                        </xsl:call-template>
                    </fo:table-row>
                    <xsl:choose>
                        <xsl:when test="count(relojEverest/calificacionBanco/calificaciones/calificacion) &gt; 0">
                            <xsl:for-each select="relojEverest/calificacionBanco/calificaciones/calificacion">
                                <fo:table-row>
                                    <xsl:call-template name="tablaceldadatotexto">
                                        <xsl:with-param name="texto" select="fechaCalificacion" />
                                    </xsl:call-template>
                                    <xsl:call-template name="tablaceldadatotexto">
                                        <xsl:with-param name="texto" select="fechaBalance" />
                                    </xsl:call-template>
                                    <xsl:call-template name="tablaceldadatotexto">
                                        <xsl:with-param name="texto" select="riesgoPuro" />
                                    </xsl:call-template>
                                    <xsl:call-template name="tablaceldadatotexto">
                                        <xsl:with-param name="texto" select="riesgoPuroCortoPlazo" />
                                    </xsl:call-template>
                                    <xsl:call-template name="tablaceldadatotexto">
                                        <xsl:with-param name="texto" select="riesgoPuroLargoPlazo" />
                                    </xsl:call-template>
                                    <xsl:call-template name="tablaceldadatotexto">
                                        <xsl:with-param name="texto" select="avalCortoPlazo/rut" />
                                    </xsl:call-template>
                                    <xsl:call-template name="tablaceldadatotexto">
                                        <xsl:with-param name="texto" select="avalCortoPlazo/nombre" />
                                    </xsl:call-template>
                                    <xsl:call-template name="tablaceldadatotexto">
                                        <xsl:with-param name="texto" select="avalCortoPlazo/riesgoPuro" />
                                    </xsl:call-template>
                                </fo:table-row>
                            </xsl:for-each>
                        </xsl:when>
                        <xsl:otherwise>
                            <fo:table-row>
                                <xsl:call-template name="tablaceldadatotexto">
                                    <xsl:with-param name="texto" select="'&#0160;'" />
                                </xsl:call-template>
                                <xsl:call-template name="tablaceldadatotexto">
                                    <xsl:with-param name="texto" select="'&#0160;'" />
                                </xsl:call-template>
                                <xsl:call-template name="tablaceldadatotexto">
                                    <xsl:with-param name="texto" select="'&#0160;'" />
                                </xsl:call-template>
                                <xsl:call-template name="tablaceldadatotexto">
                                    <xsl:with-param name="texto" select="'&#0160;'" />
                                </xsl:call-template>
                                <xsl:call-template name="tablaceldadatotexto">
                                    <xsl:with-param name="texto" select="'&#0160;'" />
                                </xsl:call-template>
                                <xsl:call-template name="tablaceldadatotexto">
                                    <xsl:with-param name="texto" select="'&#0160;'" />
                                </xsl:call-template>
                                <xsl:call-template name="tablaceldadatotexto">
                                    <xsl:with-param name="texto" select="'&#0160;'" />
                                </xsl:call-template>
                                <xsl:call-template name="tablaceldadatotexto">
                                    <xsl:with-param name="texto" select="'&#0160;'" />
                                </xsl:call-template>
                            </fo:table-row>
                        </xsl:otherwise>
                    </xsl:choose>
                </fo:table-body>
            </fo:table>
            <xsl:call-template name="subtitulomin">
                <xsl:with-param name="texto" select="'Clasificación Privada'" />
            </xsl:call-template>
            <fo:table text-align="left" table-layout="fixed">
                <fo:table-column column-width="5cm"/>
                <fo:table-column column-width="5cm"/>
                <fo:table-column column-width="9cm"/>
                <fo:table-body>
                    <fo:table-row>
                        <xsl:call-template name="tablaheadverticaldestacado">
                            <xsl:with-param name="texto" select="'Fecha'" />
                        </xsl:call-template>
                        <xsl:call-template name="tablaheadverticaldestacado">
                            <xsl:with-param name="texto" select="'Clasificación'" />
                        </xsl:call-template>
                        <xsl:call-template name="tablaheadverticaldestacado">
                            <xsl:with-param name="texto" select="'Nombre Clasificador'" />
                        </xsl:call-template>
                    </fo:table-row>
                    <xsl:choose>
                        <xsl:when test="count(relojEverest/calificacionBanco/clasificacionesPrivadas/clasificacion) &gt; 0">
                            <xsl:for-each select="relojEverest/calificacionBanco/clasificacionesPrivadas/clasificacion">
                                <fo:table-row>
                                    <xsl:call-template name="tablaceldadatotexto">
                                        <xsl:with-param name="texto" select="fecha" />
                                    </xsl:call-template>
                                    <xsl:call-template name="tablaceldadatotexto">
                                        <xsl:with-param name="texto" select="clasificacion" />
                                    </xsl:call-template>
                                    <xsl:call-template name="tablaceldadatotexto">
                                        <xsl:with-param name="texto" select="nombreClasificador" />
                                    </xsl:call-template>
                                </fo:table-row>
                            </xsl:for-each>
                        </xsl:when>
                        <xsl:otherwise>
                            <fo:table-row>
                                <xsl:call-template name="tablaceldadatotexto">
                                    <xsl:with-param name="texto" select="'&#0160;'" />
                                </xsl:call-template>
                                <xsl:call-template name="tablaceldadatotexto">
                                    <xsl:with-param name="texto" select="'&#0160;'" />
                                </xsl:call-template>
                                <xsl:call-template name="tablaceldadatotexto">
                                    <xsl:with-param name="texto" select="'&#0160;'" />
                                </xsl:call-template>
                            </fo:table-row>
                        </xsl:otherwise>
                    </xsl:choose>
                </fo:table-body>
            </fo:table>
        </fo:block>
    </xsl:template>
    <xsl:template name="garantiasCliente">
        <xsl:call-template name="subtitulo">
            <xsl:with-param name="texto" select="'Garantías del Cliente'" />
        </xsl:call-template>
        <fo:block>
            <xsl:call-template name="subtitulomin">
                <xsl:with-param name="texto" select="'Consulta Garantías por Deudor'" />
            </xsl:call-template>
            <fo:table text-align="left" table-layout="fixed">
                <fo:table-column column-width="9.5cm"/>
                <fo:table-column column-width="9.5cm"/>
                <fo:table-body>
                    <fo:table-row>
                        <xsl:call-template name="tablaheadhorizontal">
                            <xsl:with-param name="vineta" select="'false'" />
                            <xsl:with-param name="texto" select="'Nombre Deudor: '" />
                        </xsl:call-template>
                        <xsl:call-template name="tablacelda">
                            <xsl:with-param name="texto" select="relojEverest/garantiaCliente/nombreDeudor" />
                        </xsl:call-template>
                    </fo:table-row>
                    <fo:table-row>
                        <xsl:call-template name="tablaheadhorizontal">
                            <xsl:with-param name="vineta" select="'false'" />
                            <xsl:with-param name="texto" select="'IdC Cliente: '" />
                        </xsl:call-template>
                        <xsl:call-template name="tablacelda">
                            <xsl:with-param name="texto" select="relojEverest/garantiaCliente/idcCliente" />
                        </xsl:call-template>
                    </fo:table-row>
                </fo:table-body>
            </fo:table>
            <fo:table text-align="left" table-layout="fixed" margin-top="5pt">
                <fo:table-column column-width="1.9cm"/>
                <fo:table-column column-width="1.9cm"/>
                <fo:table-column column-width="1.9cm"/>
                <fo:table-column column-width="1.9cm"/>
                <fo:table-column column-width="1.9cm"/>
                <fo:table-column column-width="1.9cm"/>
                <fo:table-column column-width="1.9cm"/>
                <fo:table-column column-width="1.9cm"/>
                <fo:table-column column-width="1.9cm"/>
                <fo:table-column column-width="1.9cm"/>
                <fo:table-body>
                    <fo:table-row>
                        <xsl:call-template name="tablaheadverticaldestacado">
                            <xsl:with-param name="texto" select="'Número Garantía'" />
                        </xsl:call-template>
                        <xsl:call-template name="tablaheadverticaldestacado">
                            <xsl:with-param name="texto" select="'Tipo'" />
                        </xsl:call-template>
                        <xsl:call-template name="tablaheadverticaldestacado">
                            <xsl:with-param name="texto" select="'Estado'" />
                        </xsl:call-template>
                        <xsl:call-template name="tablaheadverticaldestacado">
                            <xsl:with-param name="texto" select="'R'" />
                        </xsl:call-template>
                        <xsl:call-template name="tablaheadverticaldestacado">
                            <xsl:with-param name="texto" select="'L'" />
                        </xsl:call-template>
                        <xsl:call-template name="tablaheadverticaldestacado">
                            <xsl:with-param name="texto" select="'G'" />
                        </xsl:call-template>
                        <xsl:call-template name="tablaheadverticaldestacado">
                            <xsl:with-param name="texto" select="'Valor Tasación'" />
                        </xsl:call-template>
                        <xsl:call-template name="tablaheadverticaldestacado">
                            <xsl:with-param name="texto" select="'Valor Liquidación'" />
                        </xsl:call-template>
                        <xsl:call-template name="tablaheadverticaldestacado">
                            <xsl:with-param name="texto" select="'Gtías. Facultades'" />
                        </xsl:call-template>
                        <xsl:call-template name="tablaheadverticaldestacado">
                            <xsl:with-param name="texto" select="'MD'" />
                        </xsl:call-template>
                    </fo:table-row>
                    <xsl:choose>
                        <xsl:when test="count(relojEverest/garantiaCliente/garantias/garantia) &gt; 0">
                            <xsl:for-each select="relojEverest/garantiaCliente/garantias/garantia">
                                <fo:table-row>
                                    <xsl:call-template name="tablaceldadatotexto">
                                        <xsl:with-param name="texto" select="numeroGarantia" />
                                    </xsl:call-template>
                                    <xsl:call-template name="tablaceldadatotexto">
                                        <xsl:with-param name="texto" select="tipo" />
                                    </xsl:call-template>
                                    <xsl:call-template name="tablaceldadatotexto">
                                        <xsl:with-param name="texto" select="estado" />
                                    </xsl:call-template>
                                    <xsl:call-template name="tablaceldadatotexto">
                                        <xsl:with-param name="texto" select="realONoreal" />
                                    </xsl:call-template>
                                    <xsl:call-template name="tablaceldadatotexto">
                                        <xsl:with-param name="texto" select="limite" />
                                    </xsl:call-template>
                                    <xsl:call-template name="tablaceldadatotexto">
                                        <xsl:with-param name="texto" select="grado" />
                                    </xsl:call-template>
                                    <xsl:call-template name="tablaceldadatotexto">
                                        <xsl:with-param name="texto" select="valorTasacion" />
                                    </xsl:call-template>
                                    <xsl:call-template name="tablaceldadatotexto">
                                        <xsl:with-param name="texto" select="valorLiquidacion" />
                                    </xsl:call-template>
                                    <xsl:call-template name="tablaceldadatotexto">
                                        <xsl:with-param name="texto" select="garantiasFacultades" />
                                    </xsl:call-template>
                                    <xsl:call-template name="tablaceldadatotexto">
                                        <xsl:with-param name="texto" select="indicadorMultideudores" />
                                    </xsl:call-template>
                                </fo:table-row>
                            </xsl:for-each>
                        </xsl:when>
                        <xsl:otherwise>
                            <fo:table-row>
                                <xsl:call-template name="tablaceldadatotexto">
                                    <xsl:with-param name="texto" select="'&#0160;'" />
                                </xsl:call-template>
                                <xsl:call-template name="tablaceldadatotexto">
                                    <xsl:with-param name="texto" select="'&#0160;'" />
                                </xsl:call-template>
                                <xsl:call-template name="tablaceldadatotexto">
                                    <xsl:with-param name="texto" select="'&#0160;'" />
                                </xsl:call-template>
                                <xsl:call-template name="tablaceldadatotexto">
                                    <xsl:with-param name="texto" select="'&#0160;'" />
                                </xsl:call-template>
                                <xsl:call-template name="tablaceldadatotexto">
                                    <xsl:with-param name="texto" select="'&#0160;'" />
                                </xsl:call-template>
                                <xsl:call-template name="tablaceldadatotexto">
                                    <xsl:with-param name="texto" select="'&#0160;'" />
                                </xsl:call-template>
                                <xsl:call-template name="tablaceldadatotexto">
                                    <xsl:with-param name="texto" select="'&#0160;'" />
                                </xsl:call-template>
                                <xsl:call-template name="tablaceldadatotexto">
                                    <xsl:with-param name="texto" select="'&#0160;'" />
                                </xsl:call-template>
                                <xsl:call-template name="tablaceldadatotexto">
                                    <xsl:with-param name="texto" select="'&#0160;'" />
                                </xsl:call-template>
                                <xsl:call-template name="tablaceldadatotexto">
                                    <xsl:with-param name="texto" select="'&#0160;'" />
                                </xsl:call-template>
                            </fo:table-row>
                        </xsl:otherwise>
                    </xsl:choose>
                </fo:table-body>
            </fo:table>
            <fo:table text-align="left" table-layout="fixed" margin-top="5pt">
                <fo:table-column column-width="6.5cm"/>
                <fo:table-column column-width="2.5cm"/>
                <fo:table-column column-width="2.5cm"/>
                <fo:table-column column-width="2.5cm"/>
                <fo:table-column column-width="2.5cm"/>
                <fo:table-column column-width="2.5cm"/>
                <fo:table-body>
                    <fo:table-row>
                        <xsl:call-template name="tablaheadhorizontal">
                            <xsl:with-param name="vineta" select="'false'" />
                            <xsl:with-param name="texto" select="'Garantías Reales: '" />
                        </xsl:call-template>
                        <xsl:call-template name="tablaceldadatotexto">
                            <xsl:with-param name="texto" select="'($)'" />
                        </xsl:call-template>
                        <xsl:call-template name="tablaceldadatotexto">
                            <xsl:with-param name="texto" select="relojEverest/garantiaCliente/garantiasReales/comercial" />
                        </xsl:call-template>
                        <xsl:call-template name="tablaceldadatotexto">
                            <xsl:with-param name="texto" select="relojEverest/garantiaCliente/garantiasReales/liquido" />
                        </xsl:call-template>
                        <xsl:call-template name="tablaceldadatotexto">
                            <xsl:with-param name="texto" select="relojEverest/garantiaCliente/garantiasReales/ponderado" />
                        </xsl:call-template>
                        <xsl:call-template name="tablaceldadatotexto">
                            <xsl:with-param name="texto" select="'   '" />
                        </xsl:call-template>
                    </fo:table-row>
                    <fo:table-row>
                        <xsl:call-template name="tablaheadhorizontal">
                            <xsl:with-param name="vineta" select="'false'" />
                            <xsl:with-param name="texto" select="'Garantías No Reales: '" />
                        </xsl:call-template>
                        <xsl:call-template name="tablaceldadatotexto">
                            <xsl:with-param name="texto" select="'   '" />
                        </xsl:call-template>
                        <xsl:call-template name="tablaceldadatotexto">
                            <xsl:with-param name="texto" select="relojEverest/garantiaCliente/garantiasNoReales/comercial" />
                        </xsl:call-template>
                        <xsl:call-template name="tablaceldadatotexto">
                            <xsl:with-param name="texto" select="relojEverest/garantiaCliente/garantiasNoReales/liquido" />
                        </xsl:call-template>
                        <xsl:call-template name="tablaceldadatotexto">
                            <xsl:with-param name="texto" select="relojEverest/garantiaCliente/garantiasNoReales/ponderado" />
                        </xsl:call-template>
                        <xsl:call-template name="tablaceldadatotexto">
                            <xsl:with-param name="texto" select="'   '" />
                        </xsl:call-template>
                    </fo:table-row>
                    <fo:table-row>
                        <xsl:call-template name="tablaheadhorizontal">
                            <xsl:with-param name="vineta" select="'false'" />
                            <xsl:with-param name="texto" select="'Garantías Generales: '" />
                        </xsl:call-template>
                        <xsl:call-template name="tablaceldadatotexto">
                            <xsl:with-param name="texto" select="'   '" />
                        </xsl:call-template>
                        <xsl:call-template name="tablaceldadatotexto">
                            <xsl:with-param name="texto" select="relojEverest/garantiaCliente/garantiasGenerales/comercial" />
                        </xsl:call-template>
                        <xsl:call-template name="tablaceldadatotexto">
                            <xsl:with-param name="texto" select="relojEverest/garantiaCliente/garantiasGenerales/liquido" />
                        </xsl:call-template>
                        <xsl:call-template name="tablaceldadatotexto">
                            <xsl:with-param name="texto" select="relojEverest/garantiaCliente/garantiasGenerales/ponderado" />
                        </xsl:call-template>
                        <xsl:call-template name="tablaceldadatotexto">
                            <xsl:with-param name="texto" select="'   '" />
                        </xsl:call-template>
                    </fo:table-row>
                    <fo:table-row>
                        <xsl:call-template name="tablaheadhorizontal">
                            <xsl:with-param name="vineta" select="'false'" />
                            <xsl:with-param name="texto" select="'Garantías Específicas: '" />
                        </xsl:call-template>
                        <xsl:call-template name="tablaceldadatotexto">
                            <xsl:with-param name="texto" select="'   '" />
                        </xsl:call-template>
                        <xsl:call-template name="tablaceldadatotexto">
                            <xsl:with-param name="texto" select="relojEverest/garantiaCliente/garantiasEspecificas/comercial" />
                        </xsl:call-template>
                        <xsl:call-template name="tablaceldadatotexto">
                            <xsl:with-param name="texto" select="relojEverest/garantiaCliente/garantiasEspecificas/liquido" />
                        </xsl:call-template>
                        <xsl:call-template name="tablaceldadatotexto">
                            <xsl:with-param name="texto" select="relojEverest/garantiaCliente/garantiasEspecificas/ponderado" />
                        </xsl:call-template>
                        <xsl:call-template name="tablaceldadatotexto">
                            <xsl:with-param name="texto" select="'   '" />
                        </xsl:call-template>
                    </fo:table-row>
                </fo:table-body>
            </fo:table>
            <xsl:call-template name="subtitulomin">
                <xsl:with-param name="texto" select="'Solicitudes de Tasaciones'" />
            </xsl:call-template>
            <fo:table text-align="left" table-layout="fixed">
                <fo:table-column column-width="1cm"/>
                <fo:table-column column-width="1.5cm"/>
                <fo:table-column column-width="2.5cm"/>
                <fo:table-column column-width="2cm"/>
                <fo:table-column column-width="1.5cm"/>
                <fo:table-column column-width="1.5cm"/>
                <fo:table-column column-width="1.5cm"/>
                <fo:table-column column-width="1.5cm"/>
                <fo:table-column column-width="1.5cm"/>
                <fo:table-column column-width="1.5cm"/>
                <fo:table-column column-width="1.5cm"/>
                <fo:table-column column-width="1.5cm"/>
                <fo:table-body>
                    <fo:table-row>
                        <xsl:call-template name="tablaheadverticaldestacado">
                            <xsl:with-param name="tamano-texto-param" select="'6pt'" />
                            <xsl:with-param name="texto" select="'Número de Solicitud'" />
                        </xsl:call-template>
                        <xsl:call-template name="tablaheadverticaldestacado">
                            <xsl:with-param name="tamano-texto-param" select="'6pt'" />
                            <xsl:with-param name="texto" select="'Rut Cliente'" />
                        </xsl:call-template>
                        <xsl:call-template name="tablaheadverticaldestacado">
                            <xsl:with-param name="tamano-texto-param" select="'6pt'" />
                            <xsl:with-param name="texto" select="'Nombre Cliente'" />
                        </xsl:call-template>
                        <xsl:call-template name="tablaheadverticaldestacado">
                            <xsl:with-param name="tamano-texto-param" select="'6pt'" />
                            <xsl:with-param name="texto" select="'Dirección Cliente'" />
                        </xsl:call-template>
                        <xsl:call-template name="tablaheadverticaldestacado">
                            <xsl:with-param name="tamano-texto-param" select="'6pt'" />
                            <xsl:with-param name="texto" select="'Comuna'" />
                        </xsl:call-template>
                        <xsl:call-template name="tablaheadverticaldestacado">
                            <xsl:with-param name="tamano-texto-param" select="'6pt'" />
                            <xsl:with-param name="texto" select="'Estado'" />
                        </xsl:call-template>
                        <xsl:call-template name="tablaheadverticaldestacado">
                            <xsl:with-param name="tamano-texto-param" select="'6pt'" />
                            <xsl:with-param name="texto" select="'Fecha Solicitud'" />
                        </xsl:call-template>
                        <xsl:call-template name="tablaheadverticaldestacado">
                            <xsl:with-param name="tamano-texto-param" select="'6pt'" />
                            <xsl:with-param name="texto" select="'Fecha Tasación'" />
                        </xsl:call-template>
                        <xsl:call-template name="tablaheadverticaldestacado">
                            <xsl:with-param name="tamano-texto-param" select="'6pt'" />
                            <xsl:with-param name="texto" select="'Nombre del Tasador'" />
                        </xsl:call-template>
                        <xsl:call-template name="tablaheadverticaldestacado">
                            <xsl:with-param name="tamano-texto-param" select="'6pt'" />
                            <xsl:with-param name="texto" select="'Valor Total'" />
                        </xsl:call-template>
                        <xsl:call-template name="tablaheadverticaldestacado">
                            <xsl:with-param name="tamano-texto-param" select="'6pt'" />
                            <xsl:with-param name="texto" select="'Objetivo'" />
                        </xsl:call-template>
                        <xsl:call-template name="tablaheadverticaldestacado">
                            <xsl:with-param name="tamano-texto-param" select="'6pt'" />
                            <xsl:with-param name="texto" select="'Tipo de Bien'" />
                        </xsl:call-template>
                    </fo:table-row>
                    <xsl:choose>
                        <xsl:when test="count(relojEverest/garantiaCliente/solicitudesTasaciones/solicitud) &gt; 0">
                            <xsl:for-each select="relojEverest/garantiaCliente/solicitudesTasaciones/solicitud">
                                <fo:table-row>
                                    <xsl:call-template name="tablaceldadatotexto">
                                        <xsl:with-param name="tamano-texto-param" select="'6pt'" />
                                        <xsl:with-param name="texto" select="numeroSolicitud" />
                                    </xsl:call-template>
                                    <xsl:call-template name="tablaceldadatotexto">
                                        <xsl:with-param name="tamano-texto-param" select="'6pt'" />
                                        <xsl:with-param name="texto" select="rutCliente" />
                                    </xsl:call-template>
                                    <xsl:call-template name="tablaceldadatotexto">
                                        <xsl:with-param name="tamano-texto-param" select="'6pt'" />
                                        <xsl:with-param name="texto" select="nombreCliente" />
                                    </xsl:call-template>
                                    <xsl:call-template name="tablaceldadatotexto">
                                        <xsl:with-param name="tamano-texto-param" select="'6pt'" />
                                        <xsl:with-param name="texto" select="direccionCliente" />
                                    </xsl:call-template>
                                    <xsl:call-template name="tablaceldadatotexto">
                                        <xsl:with-param name="tamano-texto-param" select="'6pt'" />
                                        <xsl:with-param name="texto" select="comuna" />
                                    </xsl:call-template>
                                    <xsl:call-template name="tablaceldadatotexto">
                                        <xsl:with-param name="tamano-texto-param" select="'6pt'" />
                                        <xsl:with-param name="texto" select="estado" />
                                    </xsl:call-template>
                                    <xsl:call-template name="tablaceldadatotexto">
                                        <xsl:with-param name="tamano-texto-param" select="'6pt'" />
                                        <xsl:with-param name="texto" select="fechaSolicitud" />
                                    </xsl:call-template>
                                    <xsl:call-template name="tablaceldadatotexto">
                                        <xsl:with-param name="tamano-texto-param" select="'6pt'" />
                                        <xsl:with-param name="texto" select="fechaTasacion" />
                                    </xsl:call-template>
                                    <xsl:call-template name="tablaceldadatotexto">
                                        <xsl:with-param name="tamano-texto-param" select="'6pt'" />
                                        <xsl:with-param name="texto" select="nombreTasador" />
                                    </xsl:call-template>
                                    <xsl:call-template name="tablaceldadatotexto">
                                        <xsl:with-param name="tamano-texto-param" select="'6pt'" />
                                        <xsl:with-param name="texto" select="valorTotal" />
                                    </xsl:call-template>
                                    <xsl:call-template name="tablaceldadatotexto">
                                        <xsl:with-param name="tamano-texto-param" select="'6pt'" />
                                        <xsl:with-param name="texto" select="objetivo" />
                                    </xsl:call-template>
                                    <xsl:call-template name="tablaceldadatotexto">
                                        <xsl:with-param name="tamano-texto-param" select="'6pt'" />
                                        <xsl:with-param name="texto" select="tipoBien" />
                                    </xsl:call-template>
                                </fo:table-row>
                            </xsl:for-each>
                        </xsl:when>
                        <xsl:otherwise>
                            <fo:table-row>
                                <xsl:call-template name="tablaceldadatotexto">
                                    <xsl:with-param name="colspan" select="'12'" />
                                    <xsl:with-param name="tamano-texto-param" select="'6pt'" />
                                    <xsl:with-param name="text-align" select="'center'" />
                                    <xsl:with-param name="texto" select="'No Presenta tasaciones asociadas a garantías de WebTasac'" />
                                </xsl:call-template>
                            </fo:table-row>
                        </xsl:otherwise>
                    </xsl:choose>
                </fo:table-body>
            </fo:table>
        </fo:block>
    </xsl:template>

<xsl:template match="area-central">
	
</xsl:template>
</xsl:stylesheet>