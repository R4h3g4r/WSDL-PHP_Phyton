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
                <xsl:attribute name="src"><xsl:value-of select="/informe/rutaImagen"/>bci_somos_diferentes.bmp</xsl:attribute>
            </fo:external-graphic>
        </fo:block>
        <fo:block padding-top="10pt" text-align="left" font-weight="bold" font-size="12pt" color="{$txt-azul-claro}">
            Informe de Evaluación de Riesgo
        </fo:block>
		<fo:table font-size="10pt" table-layout="fixed">
            <fo:table-column column-width="10cm"/>
            <fo:table-column column-width="7.6cm"/>
            <fo:table-body border="inherit">
                <fo:table-row>
                    <fo:table-cell border-top="0.7pt solid {$txt-azul-claro}" padding-top="3pt" padding-bottom="3pt" font-size="10pt" font-weight="normal">
                        <fo:block>
                            <fo:block font-size="10pt" color="{$txt-azul-claro}">
                                <fo:inline text-align="left">Nombre Cliente: &#0160; <xsl:value-of select="/informe/nombreCliente"/></fo:inline>
                            </fo:block>
                        </fo:block>
                    </fo:table-cell>
                    <fo:table-cell border-top="0.7pt solid {$txt-azul-claro}" padding-top="3pt" padding-bottom="3pt" font-size="10pt" font-weight="normal">
                        <fo:block text-align="left"  color="{$txt-azul-claro}" >
                            <fo:inline text-align="right">Rut Cliente: &#0160; <xsl:value-of select="/informe/rutCliente"/></fo:inline>
                        </fo:block>
                    </fo:table-cell>
                </fo:table-row>
                <fo:table-row >
                    <fo:table-cell border-top="0.7pt solid {$txt-azul-claro}" border-bottom="0.7pt solid {$txt-azul-claro}" padding-top="3pt" padding-bottom="3pt" font-size="10pt" font-weight="normal">
                        <fo:block text-align="left" font-size="10pt" color="{$txt-azul-claro}" >
                            N° de ficha asociada: <xsl:value-of select="/informe/idCalificacion"/>
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
         <fo:block padding-top="30pt" font-size="16pt" font-weight="bold" color="{$txt-azul-claro}">
             Informe
         </fo:block>
         <fo:table margin-left="0.2cm">
            <fo:table-column column-width="17.6cm"/>
            <fo:table-body  padding-top="1pt" wrap-option="wrap" hyphenate="true">
                <fo:table-row>
                    <fo:table-cell border="1pt solid {$txt-azul-claro}">
                        <fo:block text-align="left" padding="4pt" font-weight="normal" font-size="10pt" color="{$txt-azul-claro}" >
                            <xsl:value-of select="/informe/contenido"/>
                        </fo:block>
                    </fo:table-cell>
                </fo:table-row>
            </fo:table-body>
         </fo:table>
    </xsl:template>
</xsl:stylesheet>