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
                    <fo:region-body margin-top="4.2cm" margin-bottom="1.5cm"/> 
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
                <xsl:attribute name="src"><xsl:value-of select="/informeGeneral/rutaImagen"/>bci_somos_diferentes.bmp</xsl:attribute>
            </fo:external-graphic>
        </fo:block>
        <fo:table font-size="10pt" table-layout="fixed">
            <fo:table-column column-width="10cm"/>
            <fo:table-column column-width="7.6cm"/>
            <fo:table-body border="inherit">
                <fo:table-row>
                    <fo:table-cell border-top="0.7pt solid {$txt-azul-claro}" padding-top="3pt" padding-bottom="3pt" font-size="10pt" font-weight="normal">
                        <fo:block>
                            <fo:block font-size="10pt" color="{$txt-azul-claro}">
                                <fo:inline text-align="left">Nombre Cliente: &#0160; <xsl:value-of select="/informeGeneral/nombreCliente"/></fo:inline>
                            </fo:block>
                        </fo:block>
                    </fo:table-cell>
                    <fo:table-cell border-top="0.7pt solid {$txt-azul-claro}" padding-top="3pt" padding-bottom="3pt" font-size="10pt" font-weight="normal">
                        <fo:block text-align="left"  color="{$txt-azul-claro}" >
                            <fo:inline text-align="right">Rut Cliente: &#0160; <xsl:value-of select="/informeGeneral/rutCliente"/></fo:inline>
                        </fo:block>
                    </fo:table-cell>
                </fo:table-row>
                <fo:table-row >
                    <fo:table-cell border-top="0.7pt solid {$txt-azul-claro}" border-bottom="0.7pt solid {$txt-azul-claro}" padding-top="3pt" padding-bottom="3pt" font-size="10pt" font-weight="normal">
                        <fo:block text-align="left" font-size="10pt" color="{$txt-azul-claro}" >
                            N° de ficha asociada: <xsl:value-of select="informeGeneral/numeroCalificacion"/> 
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
        <!-- Inicio de Informe de calificaciones -->
        <fo:block text-aling="left" font-weight="bold" font-size="12pt" color="{$txt-azul-claro}" space-after="5mm"> 
            Ficha de Calificación
        </fo:block>
        <fo:block text-align="left" font-size="10pt" color="{$txt-azul-claro}">
           &#8226; Calificación Aprobada en esta ficha: <xsl:value-of select="/informeGeneral/datosCalificaciones/califSugerida"/>
        </fo:block>
        <fo:block text-align="left" space-after="1mm" font-size="10pt" color="{$txt-azul-claro}">
           &#8226; Fecha de Aprobación: <xsl:value-of select="informeGeneral/datosCalificaciones/fechaAprobacion"/>
        </fo:block>
        <fo:block space-after="5mm" space-before="-3mm" color="{$txt-azul-claro}">___________________________________________________________________________</fo:block>
        <fo:block text-align="left" font-size="10pt" color="{$txt-azul-claro}">
           &#8226; Actividad económica: <xsl:value-of select="informeGeneral/datosCalificaciones/actEconomica"/>
        </fo:block>
        <fo:block text-align="left" font-size="10pt" color="{$txt-azul-claro}">
           &#8226; Calificación actual: &#0160; &#0160; <xsl:value-of select="informeGeneral/datosCalificaciones/califActual"/>
        </fo:block>
        <fo:block text-align="left" font-size="10pt" color="{$txt-azul-claro}" space-after="5mm" >
           &#8226; Regional: &#0160; &#0160; &#0160; &#0160; &#0160; &#0160; &#0160; &#0160; &#0160; &#0160; <xsl:value-of select="informeGeneral/datosCalificaciones/regional"/>
        </fo:block>
        <fo:block text-align="left" margin-left="280pt" padding-top="-48pt" font-size="10pt" color="{$txt-azul-claro}">
           &#8226; Banca: &#0160; &#0160; &#0160; &#0160; &#0160; &#0160; &#0160; &#0160; &#0160; &#0160; &#0160; &#0160; &#0160; &#0160; &#0160; &#0160; &#0160; &#0160; &#0160; &#0160; <xsl:value-of select="informeGeneral/datosCalificaciones/banca"/>
        </fo:block>
        <fo:block text-align="left" margin-left="280pt" font-size="10pt" color="{$txt-azul-claro}">
           &#8226; Fecha de calificación actual: <xsl:value-of select="informeGeneral/datosCalificaciones/fechaCalifActual"/>
        </fo:block>
        <fo:block text-align="left" margin-left="280pt" font-size="10pt" color="{$txt-azul-claro}">
           &#8226; Oficina: &#0160; &#0160; &#0160; &#0160; &#0160; &#0160; &#0160; &#0160; &#0160; &#0160; &#0160; &#0160; &#0160; &#0160; &#0160; &#0160; &#0160; &#0160; &#0160; &#0160; <xsl:value-of select="informeGeneral/datosCalificaciones/oficina"/>
        </fo:block>
        <fo:block space-after="5mm" space-before="-3mm" color="{$txt-azul-claro}">___________________________________________________________________________</fo:block>
        <fo:block text-align="left" font-size="10pt" color="{$txt-azul-claro}">
           &#8226; Ejecutivo del cliente: &#0160; &#0160; &#0160; &#0160; &#0160; &#0160; &#0160; &#0160; &#0160; &#0160; &#0160; &#0160; <xsl:value-of select="informeGeneral/datosCalificaciones/nomEjecutivoCliente"/>
        </fo:block>
        <fo:block text-align="left" font-size="10pt" color="{$txt-azul-claro}">
           &#8226; N° APROCRED asociado a la ficha: <xsl:value-of select="informeGeneral/datosCalificaciones/numAprocred"/>
        </fo:block>
        <fo:block text-align="left" margin-left="280pt"  padding-top="-25pt" font-size="10pt" color="{$txt-azul-claro}">
           &#8226; Elaborado Por: <xsl:value-of select="informeGeneral/datosCalificaciones/nomEjecutivo"/>
        </fo:block>
        <fo:block text-align="left" margin-left="280pt" font-size="10pt" color="{$txt-azul-claro}">
           &#8226; Aprobado Por: <xsl:value-of select="informeGeneral/datosCalificaciones/ejecutivoAprobador"/>
        </fo:block>
        <fo:block space-after="5mm" space-before="-3mm" color="{$txt-azul-claro}">___________________________________________________________________________</fo:block>
        <fo:block text-align="left" font-size="10pt" color="{$txt-azul-claro}">
           &#8226; Calificación sugerida por Area de Calificación: &#0160; <xsl:value-of select="informeGeneral/datosCalificaciones/califSugerida"/>
        </fo:block>
        <fo:block text-align="left" font-size="10pt" color="{$txt-azul-claro}">
           &#8226; PI: &#0160; &#0160; &#0160; &#0160; &#0160; &#0160; &#0160; &#0160; &#0160; &#0160; &#0160; &#0160; &#0160; &#0160; &#0160; &#0160; &#0160; &#0160; &#0160; &#0160; &#0160; &#0160; &#0160; &#0160; &#0160; &#0160; &#0160; &#0160; &#0160; &#0160; &#0160; &#0160; &#0160; &#0160; &#0160; <xsl:value-of select="informeGeneral/datosCalificaciones/pi"/>
        </fo:block>
        <fo:block space-after="5mm" space-before="-3mm" color="{$txt-azul-claro}">___________________________________________________________________________</fo:block>
        <fo:block text-align="left" font-weight="bold" font-size="12pt" color="{$txt-azul-claro}">
            Calificación Propuesta por Criterio Experto
        </fo:block>
        <fo:block space-after="5mm" space-before="-3mm" color="{$txt-azul-claro}">___________________________________________________________________________</fo:block>
        <fo:block text-align="left" font-size="10pt" color="{$txt-azul-claro}">
           &#8226; Calificación Experto: &#0160; &#0160; &#0160; &#0160; &#0160; &#0160; &#0160; &#0160; &#0160; &#0160; &#0160; &#0160; &#0160; &#0160; &#0160; <xsl:value-of select="informeGeneral/datosCalificaciones/califExperto"/>
        </fo:block>
        <fo:block text-align="left" font-size="10pt" color="{$txt-azul-claro}">
           &#8226; Calificación Propuesto por Ejecutivo: &#0160; &#0160; <xsl:value-of select="informeGeneral/datosCalificaciones/calificacionPropuesta/califPropEjec"/>
        </fo:block>
        <fo:block text-align="left" font-size="10pt" color="{$txt-azul-claro}">
           &#8226; Argumentación:
        </fo:block>
        <fo:table table-layout="fixed" width="17.6cm" wrap-option="wrap" hyphenate="true">
           <fo:table-column  />
           <fo:table-body width="21.5" padding-top="1pt">
               <fo:table-row>
                   <fo:table-cell>
                       <fo:block text-align="justify" font-size="10pt" color="{$txt-azul-claro}">
                           <xsl:value-of select="informeGeneral/datosCalificaciones/calificacionPropuesta/argumento"/>
                       </fo:block>
                   </fo:table-cell>
               </fo:table-row>
           </fo:table-body>
        </fo:table>
        <fo:block space-after="5mm" space-before="-3mm" color="{$txt-azul-claro}">___________________________________________________________________________</fo:block>
        <fo:block text-align="left" font-weight="bold" font-size="12pt" color="{$txt-azul-claro}">
            Resolución de Calificación
        </fo:block>
        <fo:block space-after="5mm" space-before="-3mm" color="{$txt-azul-claro}">___________________________________________________________________________</fo:block>
        <fo:block text-align="left" font-size="10pt" color="{$txt-azul-claro}">
           &#8226; Calificación Aprobada: &#0160; &#0160; <xsl:value-of select="informeGeneral/datosCalificaciones/califExperto"/>
        </fo:block>
        <fo:block text-align="left" font-size="10pt" color="{$txt-azul-claro}">
           &#8226; Argumentación:
        </fo:block>
        <fo:table table-layout="fixed" width="17.6cm" >
           <fo:table-column  />
           <fo:table-body padding-top="1pt" wrap-option="wrap" hyphenate="true">
               <fo:table-row>
                   <fo:table-cell>
                       <fo:block text-align="justify" font-size="10pt" color="{$txt-azul-claro}">
                           <fo:inline><xsl:value-of select="informeGeneral/datosCalificaciones/calificacionPropuesta/argumento"/></fo:inline>
                       </fo:block>
                   </fo:table-cell>
               </fo:table-row>
           </fo:table-body>
        </fo:table>
        <fo:block space-after="5mm" space-before="-3mm" color="{$txt-azul-claro}">___________________________________________________________________________</fo:block>
        <fo:table break-after="page"/>
        <!-- Fin de Informe de calificaciones -->
        <!-- Inicio de Informe de Evaluacion -->
        <fo:block text-align="left" font-weight="bold" font-size="12pt" color="{$txt-azul-claro}">
            Informe de Evaluación de Riesgo
        </fo:block>
         <fo:block space-before="-2mm" color="{$txt-azul-claro}">___________________________________________________________________________</fo:block>
         <fo:block padding-top="30pt" font-size="16pt" font-weight="bold" color="{$txt-azul-claro}">
             Informe
         </fo:block>
         <fo:table margin-left="0.2cm">
            <fo:table-column column-width="17.6cm"/>
            <fo:table-body  padding-top="1pt">
                <fo:table-row>
                    <fo:table-cell border="1pt solid {$txt-azul-claro}">
                        <fo:block text-align="left" padding="4pt" font-weight="normal" font-size="10pt" color="{$txt-azul-claro}" >
                            <xsl:value-of select="informeGeneral/datosCalificaciones/informeRiesgo"/>
                        </fo:block>
                    </fo:table-cell>
                </fo:table-row>
            </fo:table-body>
         </fo:table>
         <!-- Fin de Informe de Evaluacion -->
         <fo:table break-after="page"/>
         <!-- Inicio de Estrategia -->
         <fo:block text-align="left" font-weight="bold" font-size="12pt" color="{$txt-azul-claro}" space-after="5mm">
            Estrategia
        </fo:block>
        <fo:block text-align="left" color="{$txt-azul-claro}" font-size="10pt">
            Estrategia del cliente: &#160;&#160;&#160;&#160;&#160;&#160; <xsl:value-of select="informeGeneral/estrategia/estrategiaCliente"/> 
        </fo:block>
        <fo:block space-after="5mm" color="{$txt-azul-claro}">___________________________________________________________________________</fo:block>
        <fo:block text-align="left" space-after="5mm" font-weight="bold" font-size="12pt" color="{$txt-azul-claro}">
            Evaluación de la Industria 
        </fo:block>
        <fo:block text-align="left" space-after="3mm" font-size="10pt" color="{$txt-azul-claro}">
            Evaluación de la Industria: <xsl:value-of select="informeGeneral/estrategia/evaluacionIndustria" />
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
                            <xsl:value-of select="informeGeneral/estrategia/evaluacionIndustriaObs" />
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
            Cumplimiento Política PMD: <xsl:value-of select="informeGeneral/estrategia/participacion" />
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
                            <xsl:value-of select="informeGeneral/estrategia/participacionObs" />
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
            Capacidad de pago: &#160; &#160; &#160; <xsl:value-of select="informeGeneral/estrategia/capacidadPago" />
        </fo:block>
        <fo:table margin-left="0.2cm" space-after="5mm">
            <fo:table-column column-width="17.6cm"/>
            <fo:table-body >
                <fo:table-row>
                    <fo:table-cell border="1pt solid {$txt-azul-claro}">
                        <fo:block text-align="left" padding="4pt" font-weight="normal" font-size="10pt" color="{$txt-azul-claro}" >
                            <xsl:value-of select="informeGeneral/estrategia/capacidadPagoObs" />
                        </fo:block>
                    </fo:table-cell>
                </fo:table-row>
            </fo:table-body>
         </fo:table>
        <fo:block text-align="left" font-size="10pt" font-weight="bold" color="{$txt-azul-claro}">
            Continuidad: &#160; &#160; &#160; &#160; &#160; &#160; &#160; &#160; &#160; <xsl:value-of select="informeGeneral/estrategia/continuidad" />
        </fo:block>
        <fo:table margin-left="0.2cm" space-after="5mm">
            <fo:table-column column-width="17.6cm"/>
            <fo:table-body >
                <fo:table-row>
                    <fo:table-cell border="1pt solid {$txt-azul-claro}">
                        <fo:block text-align="left" padding="4pt" font-weight="normal" font-size="10pt" color="{$txt-azul-claro}" >
                            <xsl:value-of select="informeGeneral/estrategia/continuidadObs" />
                        </fo:block>
                    </fo:table-cell>
                </fo:table-row>
            </fo:table-body>
         </fo:table>
        <fo:block text-align="left" font-size="10pt" font-weight="bold" color="{$txt-azul-claro}">
            Colateral: &#160; &#160; &#160; &#160; &#160; &#160; &#160; &#160; &#160; &#160; &#160; &#160; <xsl:value-of select="informeGeneral/estrategia/colateral" />
        </fo:block>
        <fo:table margin-left="0.2cm" space-after="5mm">
            <fo:table-column column-width="17.6cm"/>
            <fo:table-body >
                <fo:table-row>
                    <fo:table-cell border="1pt solid {$txt-azul-claro}">
                        <fo:block text-align="left" padding="4pt" font-weight="normal" font-size="10pt" color="{$txt-azul-claro}" >
                            <xsl:value-of select="informeGeneral/estrategia/colateralObs" />
                        </fo:block>
                    </fo:table-cell>
                </fo:table-row>
            </fo:table-body>
         </fo:table>
        <fo:block text-align="left" font-size="10pt" font-weight="bold" color="{$txt-azul-claro}">
            Capital: &#160; &#160; &#160; &#160; &#160; &#160; &#160; &#160; &#160; &#160; &#160; &#160; &#160; &#160; <xsl:value-of select="informeGeneral/estrategia/capital" />
        </fo:block>
        <fo:table margin-left="0.2cm" space-after="5mm">
            <fo:table-column column-width="17.6cm"/>
            <fo:table-body >
                <fo:table-row>
                    <fo:table-cell border="1pt solid {$txt-azul-claro}">
                        <fo:block text-align="left" padding="4pt" font-weight="normal" font-size="10pt" color="{$txt-azul-claro}" >
                            <xsl:value-of select="informeGeneral/estrategia/capitalObs" />
                        </fo:block>
                    </fo:table-cell>
                </fo:table-row>
            </fo:table-body>
         </fo:table>
        <fo:block text-align="left" font-size="10pt" font-weight="bold" color="{$txt-azul-claro}">
            Carácter: &#160; &#160; &#160; &#160; &#160; &#160; &#160; &#160; &#160; &#160; &#160; &#160; &#160;  <xsl:value-of select="informeGeneral/estrategia/caracter" />
        </fo:block>
        <fo:table margin-left="0.2cm" space-after="5mm">
            <fo:table-column column-width="17.6cm"/>
            <fo:table-body >
                <fo:table-row>
                    <fo:table-cell border="1pt solid {$txt-azul-claro}">
                        <fo:block text-align="left" padding="4pt" font-weight="normal" font-size="10pt" color="{$txt-azul-claro}" >
                            <xsl:value-of select="informeGeneral/estrategia/caracterObs" />
                        </fo:block>
                    </fo:table-cell>
                </fo:table-row>
            </fo:table-body>
         </fo:table>
        <fo:block text-align="left" space-after="3mm" font-size="12pt" font-weight="bold" color="{$txt-azul-claro}">
            Evaluación Cliente: <xsl:value-of select="informeGeneral/estrategia/evaluacion" />
        </fo:block>
        <fo:block space-after="5mm" color="{$txt-azul-claro}">___________________________________________________________________________</fo:block>
        <fo:table break-after="page"/>
        <!-- FIN de Estrategia -->
        <!-- Inicio de CAR -->
        <fo:block text-align="left" font-weight="bold" font-size="12pt" color="{$txt-azul-claro}">
            Criterio de Aceptación de Riesgo (CAR).
        </fo:block>
        <fo:block text-align="left" font-family="Arial,Helvetica,sans-serif" font-weight="bold" space-after="3mm" space-before="7mm" font-size="10pt" color="{$txt-azul-claro}">
            Resultado C.A.R
        </fo:block>
        
        <fo:table font-size="10.00pt" table-layout="fixed" space-before="3mm">
            <fo:table-column column-width="5cm"/>
            <fo:table-column column-width="13cm"/>
            <fo:table-body border="inherit">
                <fo:table-row>
                    <fo:table-cell>
                        <fo:block text-align="left" font-family="Arial,Helvetica,sans-serif" font-weight="bold" space-after="3mm" space-before="7mm" font-size="10pt" color="{$txt-azul-claro}">
                            <xsl:value-of select="informeGeneral/estrategia/resultadoCar" />
                        </fo:block>
                    </fo:table-cell>
                    <fo:table-cell>
                        <xsl:for-each select="informeGeneral/estrategia/carPregunta">
                            <fo:block padding-left="6pt" color="{$txt-azul-claro}" text-align="justify" >
                                <xsl:value-of select="error" />
                            </fo:block>
                        </xsl:for-each>
                    </fo:table-cell>
                </fo:table-row>
                <fo:table-row border="inherit">
                    <fo:table-cell padding="4.00pt" border="inherit" font-size="10pt" font-weight="normal">
                        <fo:block color="{$txt-azul-claro}">
                            Recomendación Ejecutivo
                        </fo:block>
                    </fo:table-cell>
                    <fo:table-cell padding="4.00pt" border="inherit" font-size="10pt" font-weight="normal">
                        <fo:block color="{$txt-azul-claro}">
                            <xsl:value-of select="informeGeneral/estrategia/respuestaArg" />
                        </fo:block>
                    </fo:table-cell>
                </fo:table-row>
                <fo:table-row border="inherit">
                    <fo:table-cell padding="4.00pt" border="inherit" font-size="10pt" font-weight="normal">
                        <fo:block color="{$txt-azul-claro}">
                            Argumentación Ejecutivo
                        </fo:block>
                    </fo:table-cell>
                    <fo:table-cell padding="4.00pt" border="inherit" font-size="10.00pt" font-weight="normal" text-align="justify">
                        <fo:block color="{$txt-azul-claro}">
                            <xsl:value-of select="informeGeneral/estrategia/respuestaRec" />
                        </fo:block>
                    </fo:table-cell>
                </fo:table-row>
            </fo:table-body>
        </fo:table>
        <fo:block space-after="5mm" color="{$txt-azul-claro}">___________________________________________________________________________</fo:block>
        <fo:block font-family="Arial,Helvetica,sans-serif" font-weight="bold" space-before="7mm" color="{$txt-azul-claro}">
            Principales riesgos y Factores claves de Exito
        </fo:block>
        <fo:table font-size="10.00pt" table-layout="fixed">
            <fo:table-column column-width="180.00mm"/>
            <fo:table-header border="inherit" font-size="10.00pt" font-weight="bold" text-align="left">
                <fo:table-row  border="inherit">
                    <fo:table-cell  border="inherit" padding="4pt">
                        <fo:block margin-left="-5pt" color="{$txt-azul-claro}" >
                            Principales riesgos
                        </fo:block>
                    </fo:table-cell>
                </fo:table-row>
            </fo:table-header>
            <fo:table-body border="inherit">
                <xsl:for-each select="informeGeneral/estrategia/factor_riesgo">
                    <fo:table-row border="inherit">
                        <fo:table-cell padding="4.00pt" font-size="10.00pt" font-weight="normal" start-indent="10pt"> 
                            <fo:block margin-left="-5pt" color="{$txt-azul-claro}">
                                <xsl:value-of select="descripcion" />
                            </fo:block>
                        </fo:table-cell>
                    </fo:table-row>
                </xsl:for-each>
            </fo:table-body>
        </fo:table>
        <fo:block space-after="5mm" space-before="5mm" color="{$txt-azul-claro}">___________________________________________________________________________</fo:block>
        <fo:table font-size="10pt" table-layout="fixed" space-before="3mm" space-after="5mm">
            <fo:table-column column-width="180.00mm"/>
            <fo:table-header font-size="10.00pt" font-weight="bold" text-align="left">
                <fo:table-row  border="inherit">
                    <fo:table-cell padding="4pt">
                        <fo:block margin-left="-5pt" color="{$txt-azul-claro}">
                            Factores clave de exito
                        </fo:block>
                    </fo:table-cell>
                </fo:table-row>
            </fo:table-header>
            <fo:table-body >
                <xsl:for-each select="informeGeneral/estrategia/clave_exito">
                    <fo:table-row border="inherit">
                        <fo:table-cell padding="4.00pt" color="{$txt-azul-claro}" font-size="10.00pt" font-weight="normal" start-indent="10pt">
                            <fo:block margin-left="-5pt">
                                <xsl:value-of select="descripcion" />
                            </fo:block>
                        </fo:table-cell>
                    </fo:table-row>
                </xsl:for-each>
            </fo:table-body>
        </fo:table>
        <fo:block space-after="5mm" color="{$txt-azul-claro}">___________________________________________________________________________</fo:block>
        <fo:block font-family="Arial,Helvetica,sans-serif" font-size="12pt" font-weight="bold" space-before="7mm" color="{$txt-azul-claro}">
            C.A.R.
        </fo:block>
        <fo:table border="0.5pt solid {$txt-azul-claro}" font-size="10.00pt" table-layout="fixed">
            <fo:table-column column-width="10.00mm"/>
            <fo:table-column column-width="75.00mm"/>
            <fo:table-column column-width="90mm"/>
            <fo:table-header color="{$txt-azul-claro}"  font-size="10pt" text-align="center">
                <fo:table-row border="0.5pt solid" >
                    <fo:table-cell>
                        <fo:block border="1pt" border-color="{$txt-azul-claro}">
                            No.
                        </fo:block>
                    </fo:table-cell>
                    <fo:table-cell border="1pt">
                        <fo:block border="1pt">
                            Pregunta
                        </fo:block>
                    </fo:table-cell>
                    <fo:table-cell border="1pt">
                        <fo:block border="1pt">
                            Respuesta
                        </fo:block>
                    </fo:table-cell>
                </fo:table-row>
            </fo:table-header>
            <fo:table-body border-color="{$txt-azul-claro}">
                <xsl:for-each select="informeGeneral/estrategia/carPregunta">
                    <fo:table-row border-color="{$txt-azul-claro}" border="1pt solid">
                        <fo:table-cell padding="4.00pt" font-size="10.00pt" font-weight="normal" border="1pt solid" border-color="{$txt-azul-claro}">
                            <fo:block color="{$txt-azul-claro}" >
                                <xsl:value-of select="numero" />
                            </fo:block>
                        </fo:table-cell>
                        <fo:table-cell padding="4.00pt" font-size="10.00pt" font-weight="normal" border="1pt solid" border-color="{$txt-azul-claro}">
                            <fo:block color="{$txt-azul-claro}" border="1pt" border-color="{$txt-azul-claro}">
                                <xsl:value-of select="pregunta" />
                            </fo:block>
                        </fo:table-cell>
                        <fo:table-cell padding="4.00pt" font-size="10.00pt" font-weight="normal" border="1pt solid" border-color="{$txt-azul-claro}">
                            <fo:block color="{$txt-azul-claro}" text-align="justify" border="1pt" border-color="{$txt-azul-claro}">
                                <xsl:value-of select="respuesta" />
                            </fo:block>
                        </fo:table-cell>
                    </fo:table-row>
                </xsl:for-each>
            </fo:table-body>
        </fo:table>
        <fo:block space-after="5mm" space-before="5mm" color="{$txt-azul-claro}">___________________________________________________________________________</fo:block>
        <fo:block font-family="Arial,Helvetica,sans-serif" font-weight="bold" color="{$txt-azul-claro}" font-size="12pt">
            Actividad
        </fo:block>
        <fo:table width="180.00mm" table-layout="fixed" >
            <fo:table-column column-width="50.00mm"/>
            <fo:table-column column-width="130.00mm"/>
            <fo:table-body  border="inherit">
                <fo:table-row  border="inherit">
                    <fo:table-cell font-size="10.00pt"  text-align="left" font-weight="bold" padding="4pt">
                        <fo:block color="{$txt-azul-claro}">
                            Actividad:
                        </fo:block>
                    </fo:table-cell>
                    <fo:table-cell  text-align="left" padding="4pt" font-weight="normal" font-size="10.00pt">
                        <fo:block color="{$txt-azul-claro}">
                            <xsl:value-of select="informeGeneral/estrategia/actividadEconomicaCAR" />
                        </fo:block>
                    </fo:table-cell>
                </fo:table-row>
            </fo:table-body>
        </fo:table>
        <!-- FIN DE CAR -->
    </xsl:template>
</xsl:stylesheet>