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
                    <fo:region-body margin-top="5cm" margin-bottom="2cm"/> 
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
            Estrategia
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
                            N° de ficha asociada: <xsl:value-of select="/principal/idCalificacion"/>
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
        <fo:block padding-top="10pt" text-align="left" space-after="2mm" font-weight="bold" font-size="12pt" color="{$txt-azul-claro}">
            Estrategia
        </fo:block>
        <fo:block text-align="left" color="{$txt-azul-claro}" font-size="10pt">
            Estrategia del cliente: &#160;&#160;&#160;&#160;&#160;&#160; <xsl:value-of select="/principal/contenido/estrategia/valorRespuesta"/> 
        </fo:block>
        <fo:block space-after="5mm" color="{$txt-azul-claro}">___________________________________________________________________________</fo:block>
        <fo:block text-align="left" space-after="5mm" font-weight="bold" font-size="12pt" color="{$txt-azul-claro}">
            Evaluación de la Industria 
        </fo:block>
        <fo:block text-align="left" space-after="3mm" font-size="10pt" color="{$txt-azul-claro}">
            Evaluación de la Industria: <xsl:value-of select="/principal/contenido/evaluacionIndustria/valorRespuesta" />
        </fo:block>
        <fo:block text-align="left" space-after="3mm" font-size="10pt" font-weight="bold" color="{$txt-azul-claro}">
            Observación:
        </fo:block>
        <fo:table margin-left="0.2cm">
            <fo:table-column column-width="17.6cm"/>
            <fo:table-body >
                <fo:table-row>
                    <fo:table-cell border="1pt solid {$txt-azul-claro}">
                        <fo:block text-align="left" padding="4pt" font-weight="normal" font-size="10pt" color="{$txt-azul-claro}" >
                            <xsl:value-of select="/principal/contenido/evaluacionIndustria/valorObservacion"/>
                        </fo:block>
                    </fo:table-cell>
                </fo:table-row>
            </fo:table-body>
         </fo:table>
        <fo:block space-after="5mm" color="{$txt-azul-claro}">___________________________________________________________________________</fo:block>
        <fo:block text-align="left" space-after="5mm" font-weight="bold" font-size="12pt" color="{$txt-azul-claro}">
            Participación BCI
        </fo:block>
        <fo:block text-align="left" space-after="3mm" font-size="10pt" color="{$txt-azul-claro}">
            Cumplimiento Política PMD: <xsl:value-of select="/principal/contenido/participacion/valorRespuesta" />
        </fo:block>
        <fo:block text-align="left" space-after="3mm" font-size="10pt" font-weight="bold" color="{$txt-azul-claro}">
            Observación:
        </fo:block>
        <fo:table margin-left="0.2cm">
            <fo:table-column column-width="17.6cm"/>
            <fo:table-body >
                <fo:table-row>
                    <fo:table-cell border="1pt solid {$txt-azul-claro}">
                        <fo:block text-align="left" padding="4pt" font-weight="normal" font-size="10pt" color="{$txt-azul-claro}">
                            <xsl:value-of select="/principal/contenido/participacion/valorObservacion" />
                        </fo:block>
                    </fo:table-cell>
                </fo:table-row>
            </fo:table-body>
         </fo:table>
        <fo:block space-after="5mm" color="{$txt-azul-claro}">___________________________________________________________________________</fo:block>
        <fo:block text-align="left" space-after="5mm" font-weight="bold" font-size="12pt" color="{$txt-azul-claro}">
            Evaluación del Cliente
        </fo:block>
        <fo:block text-align="left" font-size="10pt" font-weight="bold" color="{$txt-azul-claro}">
            Capacidad de pago:  &#160; &#160; &#160; <xsl:value-of select="/principal/contenido/evaluacion5c/capacidad/valorRespuesta" />
        </fo:block>
        <fo:table margin-left="0.2cm">
            <fo:table-column column-width="17.6cm"/>
            <fo:table-body >
                <fo:table-row>
                    <fo:table-cell border="1pt solid {$txt-azul-claro}">
                        <fo:block text-align="left" padding="4pt" font-weight="normal" font-size="10pt" color="{$txt-azul-claro}">
                            <xsl:value-of select="/principal/contenido/evaluacion5c/capacidad/valorObservacion"/>
                        </fo:block>
                    </fo:table-cell>
                </fo:table-row>
            </fo:table-body>
         </fo:table>
        <fo:block text-align="left" padding-top="10pt" font-size="10pt" font-weight="bold" color="{$txt-azul-claro}">
            Continuidad: &#160; &#160; &#160; &#160; &#160; &#160; &#160; &#160; &#160; <xsl:value-of select="/principal/contenido/evaluacion5c/continuidad/valorRespuesta" />
        </fo:block>
        <fo:table margin-left="0.2cm">
            <fo:table-column column-width="17.6cm"/>
            <fo:table-body >
                <fo:table-row>
                    <fo:table-cell border="1pt solid {$txt-azul-claro}">
                        <fo:block text-align="left" padding="4pt" font-weight="normal" font-size="10pt" color="{$txt-azul-claro}">
                            <xsl:value-of select="/principal/contenido/evaluacion5c/continuidad/valorObservacion" />
                        </fo:block>
                    </fo:table-cell>
                </fo:table-row>
            </fo:table-body>
         </fo:table>
        <fo:block text-align="left" padding-top="10pt" font-size="10pt" font-weight="bold" color="{$txt-azul-claro}">
            Colateral:  &#160; &#160; &#160; &#160; &#160; &#160; &#160; &#160; &#160; &#160; &#160; &#160; <xsl:value-of select="/principal/contenido/evaluacion5c/colateral/valorRespuesta" />
        </fo:block>
        <fo:table margin-left="0.2cm">
            <fo:table-column column-width="17.6cm"/>
            <fo:table-body >
                <fo:table-row>
                    <fo:table-cell border="1pt solid {$txt-azul-claro}">
                        <fo:block text-align="left" padding="4pt" font-weight="normal" font-size="10pt" color="{$txt-azul-claro}">
                           <xsl:value-of select="/principal/contenido/evaluacion5c/colateral/valorObservacion" />
                       </fo:block>
                   </fo:table-cell>
               </fo:table-row>
           </fo:table-body>
        </fo:table>
        <fo:block text-align="left" padding-top="10pt" font-size="10pt" font-weight="bold" color="{$txt-azul-claro}">
            Capital: &#160; &#160; &#160; &#160; &#160; &#160; &#160; &#160; &#160; &#160; &#160; &#160; &#160; &#160; <xsl:value-of select="/principal/contenido/evaluacion5c/capital/valorRespuesta" />
        </fo:block>
        <fo:table margin-left="0.2cm">
            <fo:table-column column-width="17.6cm"/>
            <fo:table-body >
                <fo:table-row>
                    <fo:table-cell border="1pt solid {$txt-azul-claro}">
                        <fo:block text-align="left" padding="4pt" font-weight="normal" font-size="10pt" color="{$txt-azul-claro}">
                           <xsl:value-of select="/principal/contenido/evaluacion5c/capital/valorObservacion" />
                       </fo:block>
                   </fo:table-cell>
               </fo:table-row>
           </fo:table-body>
        </fo:table>
        <fo:block text-align="left" padding-top="10pt" font-size="10pt" font-weight="bold" color="{$txt-azul-claro}">
            Carácter:  &#160; &#160; &#160; &#160; &#160; &#160; &#160; &#160; &#160; &#160; &#160; &#160; &#160; <xsl:value-of select="/principal/contenido/evaluacion5c/caracter/valorRespuesta" />
        </fo:block>
        <fo:table margin-left="0.2cm">
            <fo:table-column column-width="17.6cm"/>
            <fo:table-body >
                <fo:table-row>
                    <fo:table-cell border="1pt solid {$txt-azul-claro}">
                        <fo:block text-align="left" padding="4pt" font-weight="normal" font-size="10pt" color="{$txt-azul-claro}">
                           <xsl:value-of select="/principal/contenido/evaluacion5c/caracter/valorObservacion" />
                       </fo:block>
                   </fo:table-cell>
               </fo:table-row>
           </fo:table-body>
        </fo:table>
        <fo:block text-align="left" padding-top="10pt" space-after="3mm" font-size="12pt" font-weight="bold" color="{$txt-azul-claro}">
            Evaluación Cliente: <xsl:value-of select="/principal/contenido/evaluacion5c/respuestaEvaluacion/valorRespuesta" />
        </fo:block>
        <fo:block space-after="5mm" color="{$txt-azul-claro}">___________________________________________________________________________</fo:block>
    </xsl:template>
</xsl:stylesheet>