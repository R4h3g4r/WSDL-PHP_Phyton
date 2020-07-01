<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format">
    <xsl:variable name="txt-azul-claro">#0061A5</xsl:variable>
    <xsl:template match="/">
        <fo:root xmlns:fo="http://www.w3.org/1999/XSL/Format">
            <!-- Propiedades pagina -->
            <fo:layout-master-set >
                <fo:simple-page-master master-name="pagina" 
                    page-height="27.9cm" 
                    page-width="21.6cm"
                    margin-top="1cm"
                    margin-bottom="0.5cm"
                    margin-left="2cm"
                    margin-right="2cm">
                    <fo:region-body margin-top="5cm" margin-bottom="1.5cm"/> 
                    <fo:region-before extent="4cm"/>
                    <fo:region-after extent="1cm"/>
                </fo:simple-page-master>
            </fo:layout-master-set>
            <!-- Propiedades pagina -->
            <fo:page-sequence master-reference="pagina" initial-page-number="0" language="en" country="us" >
                <fo:static-content flow-name="xsl-region-before">
                    <xsl:call-template name="cabecera" />
                </fo:static-content>
                <fo:static-content flow-name="xsl-region-after">
                    <fo:block text-align="center" padding-top="0.5em" color="{$txt-azul-claro}">
                        <fo:inline font-size="10pt">Página <fo:page-number/></fo:inline>
                    </fo:block>
                </fo:static-content>
                <fo:flow flow-name="xsl-region-body">
                    <xsl:call-template name="rut" />
                </fo:flow>
            </fo:page-sequence> 
        </fo:root>
    </xsl:template>
    <xsl:template name="cabecera">
        <fo:block margin-left="-0.1cm">
            <fo:external-graphic height="55pt" width="130pt">
                <xsl:attribute name="src"><xsl:value-of select="/principal/rutaImagen"/>bci_somos_diferentes.bmp</xsl:attribute>
            </fo:external-graphic>
        </fo:block>
        <fo:block padding-top="10pt" text-align="left" font-weight="bold" font-size="12pt" color="{$txt-azul-claro}">
            Criterio de Aceptación de Riesgo (CAR).
        </fo:block>
        <fo:table font-size="10pt" table-layout="fixed">
            <fo:table-column column-width="10cm"/>
            <fo:table-column column-width="7.6cm"/>
            <fo:table-body border="inherit">
                <fo:table-row>
                    <fo:table-cell border-top="0.7pt solid {$txt-azul-claro}" padding-top="3pt" padding-bottom="3pt" font-size="10pt" font-weight="normal">
                        <fo:block>
                            <fo:block font-size="10pt" color="{$txt-azul-claro}">
                                <fo:inline text-align="left">Nombre Cliente: &#0160; <xsl:value-of select="/principal/nombreCliente"/></fo:inline>
                            </fo:block>
                        </fo:block>
                    </fo:table-cell>
                    <fo:table-cell border-top="0.7pt solid {$txt-azul-claro}" padding-top="3pt" padding-bottom="3pt" font-size="10pt" font-weight="normal">
                        <fo:block text-align="left"  color="{$txt-azul-claro}" >
                            <fo:inline text-align="right">Rut Cliente: &#0160; <xsl:value-of select="/principal/rutCliente"/></fo:inline>
                        </fo:block>
                    </fo:table-cell>
                </fo:table-row>
                <fo:table-row >
                    <fo:table-cell border-top="0.7pt solid {$txt-azul-claro}" border-bottom="0.7pt solid {$txt-azul-claro}" padding-top="3pt" padding-bottom="3pt" font-size="10pt" font-weight="normal">
                        <fo:block text-align="left" font-size="10pt" color="{$txt-azul-claro}" >
                            N° de ficha asociada: <xsl:value-of select="/principal/numeroFicha"/>
                        </fo:block>
                    </fo:table-cell>
                    <fo:table-cell border-top="0.7pt solid {$txt-azul-claro}" border-bottom="0.7pt solid {$txt-azul-claro}" padding-top="3pt" padding-bottom="3pt" font-size="10pt" font-weight="normal">
                        <fo:block color="{$txt-azul-claro}">&#160;</fo:block>
                    </fo:table-cell>
                </fo:table-row>
            </fo:table-body>
        </fo:table>
    </xsl:template>
    <xsl:template name="rut" >
        <fo:block font-weight="bold" font-family="Arial,Helvetica,sans-serif" />
        <!-- titulo PDF -->
        <fo:block text-align="left" font-family="Arial,Helvetica,sans-serif" font-weight="bold" space-after="3mm" space-before="4mm" font-size="10pt" color="{$txt-azul-claro}">
            <xsl:value-of select="/principal/contenido/argumentacionCar/titulo" />
        </fo:block>
        <fo:table margin-left="0cm" space-before="3mm">
            <fo:table-column column-width="4cm"/>
            <fo:table-column column-width="14cm"/>
            <fo:table-body >
                <fo:table-row>
                    <fo:table-cell>
                        <fo:block text-align="left" font-family="Arial,Helvetica,sans-serif" font-weight="bold" font-size="10pt" color="{$txt-azul-claro}">
                            <xsl:value-of select="/principal/contenido/argumentacionCar/resCar/respuestaResultado" /> 
                        </fo:block>
                    </fo:table-cell>
                    <fo:table-cell text-align="justify" padding-left="-1pt" font-size="10.00pt" font-weight="normal">
                        <xsl:for-each select="/principal/contenido/car/carPreguntas/carPregunta">
                            <fo:block color="{$txt-azul-claro}" text-align="justify" >
                                <xsl:value-of select="error" />
                            </fo:block>
                        </xsl:for-each>
                    </fo:table-cell>
                </fo:table-row>
                <fo:table-row >
                    <fo:table-cell padding-top="4.00pt" padding-bottom="4.00pt"  font-size="10pt" font-weight="normal">
                        <fo:block color="{$txt-azul-claro}">
                            Recomendación Ejecutivo
                        </fo:block>
                    </fo:table-cell>
                    <fo:table-cell padding-top="4.00pt" padding-bottom="4.00pt" font-size="10pt" font-weight="normal">
                        <fo:block color="{$txt-azul-claro}" text-align="justify">
                            <xsl:value-of select="/principal/contenido/argumentacionCar/argCar/respuestaArg" />
                        </fo:block>
                    </fo:table-cell>
                </fo:table-row>
                <fo:table-row >
                    <fo:table-cell padding-top="4.00pt" padding-bottom="4.00pt"  font-size="10pt" font-weight="normal">
                        <fo:block color="{$txt-azul-claro}">
                            Argumentación Ejecutivo
                        </fo:block>
                    </fo:table-cell>
                    <fo:table-cell padding-top="4.00pt" padding-bottom="4.00pt"  font-size="10.00pt" font-weight="normal" text-align="justify">
                        <fo:block color="{$txt-azul-claro}">
                            <xsl:value-of select="/principal/contenido/argumentacionCar/recCar/respuestaRec" />
                        </fo:block>
                    </fo:table-cell>
                </fo:table-row>
            </fo:table-body>
        </fo:table>
        <!-- Principales riesgos y Factores claves de Exito -->
        <fo:block color="{$txt-azul-claro}">___________________________________________________________________________</fo:block>
        <fo:block font-family="Arial,Helvetica,sans-serif" font-weight="bold" space-before="7mm" color="{$txt-azul-claro}">
            <xsl:value-of select="/principal/contenido/riesgos_y_claves/titulo" />
        </fo:block>
        <fo:table margin-left="0cm">
            <fo:table-column column-width="170mm"/>
            <fo:table-header font-size="10pt" font-weight="bold" text-align="left">
                <fo:table-row  border="inherit">
                    <fo:table-cell  border="inherit" padding-top="4pt" padding-bottom="4pt">
                        <fo:block color="{$txt-azul-claro}" >
                            <xsl:value-of select="/principal/contenido/riesgos_y_claves/factores_riesgo/titulo" />
                        </fo:block>
                    </fo:table-cell>
                </fo:table-row>
            </fo:table-header>
            <fo:table-body>
                <xsl:for-each select="/principal/contenido/riesgos_y_claves/factores_riesgo/factor_riesgo">
                    <fo:table-row >
                        <fo:table-cell padding-top="1pt" padding-bottom="1pt" font-size="10pt" font-weight="normal" > 
                            <fo:block text-align="left" color="{$txt-azul-claro}">
                                <xsl:value-of select="descripcion" />
                            </fo:block>
                        </fo:table-cell>
                    </fo:table-row>
                </xsl:for-each>
            </fo:table-body>
        </fo:table>
        <fo:block color="{$txt-azul-claro}">___________________________________________________________________________</fo:block>
        <fo:table font-size="10pt" table-layout="fixed" space-before="3mm" space-after="5mm">
            <fo:table-column column-width="180.00mm"/>
            <fo:table-header font-size="10.00pt" font-weight="bold" text-align="left">
                <fo:table-row  border="inherit">
                    <fo:table-cell padding="4pt">
                        <fo:block color="{$txt-azul-claro}" margin-left="-5pt" >
                            <xsl:value-of select="/principal/contenido/riesgos_y_claves/claves_exito/titulo" />
                        </fo:block>
                    </fo:table-cell>
                </fo:table-row>
            </fo:table-header>
            <fo:table-body >
                <xsl:for-each select="/principal/contenido/riesgos_y_claves/claves_exito/clave_exito">
                    <fo:table-row border="inherit">
                        <fo:table-cell margin-left="-5pt" padding="1pt" color="{$txt-azul-claro}" font-size="10.00pt" font-weight="normal" start-indent="10pt">
                            <fo:block margin-left="-2.5pt" color="{$txt-azul-claro}">
                                <xsl:value-of select="descripcion" />
                            </fo:block>
                        </fo:table-cell>
                    </fo:table-row>
                </xsl:for-each>
            </fo:table-body>
        </fo:table>
        <fo:block space-after="5mm" color="{$txt-azul-claro}">___________________________________________________________________________</fo:block>
        <!-- Inicio C.A.R. -->
        <fo:block font-family="Arial,Helvetica,sans-serif" font-size="12pt" font-weight="bold" space-before="7mm" color="{$txt-azul-claro}">
            <xsl:value-of select="/principal/contenido/car/titulo" />
        </fo:block>
        <fo:table margin-left="0.2cm" >
            <fo:table-column column-width="1.5cm"/>
            <fo:table-column column-width="8.05cm"/>
            <fo:table-column column-width="8.05cm" />
            <fo:table-header color="{$txt-azul-claro}" font-size="10pt" text-align="center">
                <fo:table-row >
                    <fo:table-cell border="1pt solid {$txt-azul-claro}">
                        <fo:block >
                            <xsl:value-of select="/principal/contenido/car/columna1" />
                        </fo:block>
                    </fo:table-cell>
                    <fo:table-cell border="1pt solid {$txt-azul-claro}">
                        <fo:block >
                            <xsl:value-of select="/principal/contenido/car/columna2" />
                        </fo:block>
                    </fo:table-cell>
                    <fo:table-cell border="1pt solid {$txt-azul-claro}" text-align="justify">
                        <fo:block > 
                            <xsl:value-of select="/principal/contenido/car/columna3" />
                        </fo:block>
                    </fo:table-cell>
                </fo:table-row>
            </fo:table-header>
            <fo:table-body  text-align="justify">
                <xsl:for-each select="/principal/contenido/car/carPreguntas/carPregunta">
                    <fo:table-row >
                        <fo:table-cell border="1pt solid {$txt-azul-claro}" padding="4.00pt" font-size="10.00pt" font-weight="normal" >
                            <fo:block color="{$txt-azul-claro}" >
                                <xsl:value-of select="numero" />
                            </fo:block>
                        </fo:table-cell>
                        <fo:table-cell border="1pt solid {$txt-azul-claro}" padding="4.00pt" font-size="10.00pt" font-weight="normal" >
                            <fo:block color="{$txt-azul-claro}" >
                                <xsl:value-of select="pregunta" />
                            </fo:block>
                        </fo:table-cell>
                        <fo:table-cell border="1pt solid {$txt-azul-claro}" text-align="justify" padding="4.00pt" font-size="10.00pt" font-weight="normal">
                            <fo:block color="{$txt-azul-claro}" text-align="justify" >
                                <xsl:value-of select="respuesta" />
                            </fo:block>
                        </fo:table-cell>
                    </fo:table-row>
                </xsl:for-each>
            </fo:table-body>
        </fo:table>
        <!-- Fin C.A.R. -->
        <fo:block space-after="3mm" space-before="3mm" color="{$txt-azul-claro}">___________________________________________________________________________</fo:block>
        <!-- Inicio Actividad -->
        <fo:block font-family="Arial,Helvetica,sans-serif" font-weight="bold" color="{$txt-azul-claro}" font-size="12pt">
            <xsl:value-of select="/principal/contenido/actividad/titulo" />
        </fo:block>
        <fo:table margin-left="0.2cm" >
            <fo:table-column column-width="5.6cm"/>
            <fo:table-column column-width="12cm"/>
            <fo:table-body>
                <fo:table-row  >
                    <fo:table-cell font-size="10.00pt"  text-align="left" font-weight="bold" padding="4pt">
                        <fo:block color="{$txt-azul-claro}">
                            <xsl:value-of select="/principal/contenido/actividad/descripcion" />
                        </fo:block>
                    </fo:table-cell>
                    <fo:table-cell  text-align="left" padding="4pt" font-weight="normal" font-size="10.00pt">
                        <fo:block color="{$txt-azul-claro}">
                            <xsl:value-of select="/principal/contenido/actividad/valor"/>
                        </fo:block>
                    </fo:table-cell>
                </fo:table-row>
            </fo:table-body>
        </fo:table>
        <!-- Fin Actividad -->
    </xsl:template>
</xsl:stylesheet>