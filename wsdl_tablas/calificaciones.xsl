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
                <xsl:attribute name="src"><xsl:value-of select="principal/calificacion/rutaImagen"/>bci_somos_diferentes.bmp</xsl:attribute>
            </fo:external-graphic>
        </fo:block>
        <fo:block padding-top="10pt" text-align="left" font-weight="bold" font-size="12pt" color="{$txt-azul-claro}">
            Ficha de Calificación.
        </fo:block>
        <fo:table font-size="10pt" table-layout="fixed" space-after="5mm" >
            <fo:table-column column-width="10cm"/>
            <fo:table-column column-width="7.6cm"/>
            <fo:table-body border="inherit">
                <fo:table-row>
                    <fo:table-cell border-top="0.7pt solid {$txt-azul-claro}" padding-top="3pt" padding-bottom="3pt" font-size="10pt" font-weight="normal">
                        <fo:block>
                            <fo:block font-size="10pt" color="{$txt-azul-claro}">
                                <fo:inline text-align="left">Nombre Cliente: &#0160; <xsl:value-of select="principal/calificacion/nombreCliente"/></fo:inline>
                            </fo:block>
                        </fo:block>
                    </fo:table-cell>
                    <fo:table-cell border-top="0.7pt solid {$txt-azul-claro}" padding-top="3pt" padding-bottom="3pt" font-size="10pt" font-weight="normal">
                        <fo:block text-align="left"  color="{$txt-azul-claro}" >
                            <fo:inline text-align="right">Rut Cliente: &#0160; <xsl:value-of select="principal/calificacion/rutCliente"/></fo:inline>
                        </fo:block>
                    </fo:table-cell>
                </fo:table-row>
                <fo:table-row >
                    <fo:table-cell border-top="0.7pt solid {$txt-azul-claro}" space-after="5mm" border-bottom="0.7pt solid {$txt-azul-claro}" padding-top="3pt" padding-bottom="3pt" font-size="10pt" font-weight="normal">
                        <fo:block text-align="left" font-size="10pt" color="{$txt-azul-claro}" >
                            N° de ficha asociada: <xsl:value-of select="/principal/calificacion/numeroCalificacion"/>
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
        <fo:block text-align="left" font-size="10pt" color="{$txt-azul-claro}" space-before="5mm" >
           &#8226; Calificación Aprobada en esta ficha: <xsl:value-of select="principal/calificacion/califSugerida"/>
        </fo:block>
        <fo:block text-align="left" space-after="1mm" font-size="10pt" color="{$txt-azul-claro}">
            &#8226; Fecha de Aprobación: <xsl:value-of select="principal/calificacion/fechaAprobacion"/>
        </fo:block>
        <fo:block space-before="-3mm" color="{$txt-azul-claro}" space-after="5mm">___________________________________________________________________________</fo:block>
        <fo:block text-align="left" font-size="10pt" color="{$txt-azul-claro}">
            &#8226; Actividad económica: <xsl:value-of select="principal/calificacion/actEconomica"/>
        </fo:block>
        <fo:block text-align="left" font-size="10pt" color="{$txt-azul-claro}">
            &#8226; Calificación actual: &#0160; &#0160; <xsl:value-of select="principal/calificacion/califActual"/>
        </fo:block>
        <fo:block text-align="left" font-size="10pt" color="{$txt-azul-claro}" space-after="5mm" >
            &#8226; Regional: &#0160; &#0160; &#0160; &#0160; &#0160; &#0160; &#0160; &#0160; &#0160; &#0160; <xsl:value-of select="principal/calificacion/Regional"/>
        </fo:block>
        <fo:block text-align="left" margin-left="280pt" padding-top="-48pt" font-size="10pt" color="{$txt-azul-claro}">
            &#8226; Banca: &#0160; &#0160; &#0160; &#0160; &#0160; &#0160; &#0160; &#0160; &#0160; &#0160; &#0160; &#0160; &#0160; &#0160; &#0160; &#0160; &#0160; &#0160; <xsl:value-of select="principal/calificacion/banca"/>
        </fo:block>
        <fo:block text-align="left" margin-left="280pt" font-size="10pt" color="{$txt-azul-claro}">
            &#8226; Fecha de calificación actual: &#0160; <xsl:value-of select="principal/calificacion/fechaCalifActual"/>
        </fo:block>
        <fo:block text-align="left" margin-left="280pt" font-size="10pt" color="{$txt-azul-claro}">
            &#8226; Oficina: &#0160; &#0160; &#0160; &#0160; &#0160; &#0160; &#0160; &#0160; &#0160; &#0160; &#0160; &#0160; &#0160; &#0160; &#0160; &#0160; &#0160; &#0160; <xsl:value-of select="principal/calificacion/oficina"/>
        </fo:block>
        <fo:block space-after="5mm" space-before="-3mm" color="{$txt-azul-claro}">___________________________________________________________________________</fo:block>
        <fo:block text-align="left" font-size="10pt" color="{$txt-azul-claro}">
           &#8226; Ejecutivo del cliente: &#0160; &#0160; &#0160; &#0160; &#0160; &#0160; &#0160; &#0160; &#0160; &#0160; &#0160; &#0160;  <xsl:value-of select="principal/calificacion/nomEjecutivoCliente"/>
        </fo:block>
        <fo:block text-align="left" font-size="10pt" color="{$txt-azul-claro}">
           &#8226; N° APROCRED asociado a la ficha: <xsl:value-of select="principal/calificacion/numAprocred"/>
        </fo:block>
        <fo:block text-align="left" margin-left="280pt"  padding-top="-25pt" font-size="10pt" color="{$txt-azul-claro}">
           &#8226; Elaborado Por: <xsl:value-of select="principal/calificacion/nomEjecutivo"/>
        </fo:block>
        <fo:block text-align="left" margin-left="280pt" font-size="10pt" color="{$txt-azul-claro}">
           &#8226; Aprobado Por: <xsl:value-of select="principal/calificacion/ejecutivoAprobador"/>
        </fo:block>
        <fo:block space-after="5mm" space-before="-3mm" color="{$txt-azul-claro}">___________________________________________________________________________</fo:block>
        <fo:block text-align="left" font-size="10pt" color="{$txt-azul-claro}">
           &#8226; Calificación sugerida por Area de Calificación: &#0160; <xsl:value-of select="principal/calificacion/califSugerida"/>
        </fo:block>
        <fo:block text-align="left" font-size="10pt" color="{$txt-azul-claro}">
           &#8226; PI: &#0160; &#0160; &#0160; &#0160; &#0160; &#0160; &#0160; &#0160; &#0160; &#0160; &#0160; &#0160; &#0160; &#0160; &#0160; &#0160; &#0160; &#0160; &#0160; &#0160; &#0160; &#0160; &#0160; &#0160; &#0160; &#0160; &#0160; &#0160; &#0160; &#0160; &#0160; &#0160; &#0160; &#0160; &#0160; <xsl:value-of select="principal/calificacion/pi"/>
        </fo:block>
        <fo:block space-after="5mm" space-before="-3mm" color="{$txt-azul-claro}">___________________________________________________________________________</fo:block>
        <fo:block text-align="left" font-weight="bold" font-size="12pt" color="{$txt-azul-claro}">
            Calificación Propuesta por Criterio Experto
        </fo:block>
        <fo:block space-after="3mm" space-before="-3mm" color="{$txt-azul-claro}">___________________________________________________________________________</fo:block>
        <fo:block text-align="left" font-size="10pt" color="{$txt-azul-claro}">
           &#8226; Calificación Experto: &#0160; &#0160; &#0160; &#0160; &#0160; &#0160; &#0160; &#0160; &#0160; &#0160; &#0160; &#0160; &#0160; &#0160; &#0160; <xsl:value-of select="principal/calificacion/califExperto"/>
        </fo:block>
        <fo:block text-align="left" font-size="10pt" color="{$txt-azul-claro}">
           &#8226; Calificación Propuesto por Ejecutivo: &#0160; &#0160; <xsl:value-of select="principal/calificacion/califPropEjec"/>
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
                           <xsl:value-of select="principal/calificacion/argumento"/>
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
           &#8226; Calificación Aprobada: &#0160; &#0160; <xsl:value-of select="principal/calificacion/califPropEjec"/>
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
                           <fo:inline><xsl:value-of select="principal/calificacion/argumento"/></fo:inline>
                       </fo:block>
                   </fo:table-cell>
               </fo:table-row>
           </fo:table-body>
        </fo:table>
        <fo:block space-after="5mm" space-before="-3mm" color="{$txt-azul-claro}">___________________________________________________________________________</fo:block>
    </xsl:template>
</xsl:stylesheet>