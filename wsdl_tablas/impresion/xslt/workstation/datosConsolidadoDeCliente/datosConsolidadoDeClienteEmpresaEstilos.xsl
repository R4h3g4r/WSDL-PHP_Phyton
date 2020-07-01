<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format">
    <xsl:variable name="color-texto">#0361A2</xsl:variable>
    <xsl:variable name="tamano-texto">8pt</xsl:variable>
    <xsl:variable name="fuente-texto">Arial,Helvetica,sans-serif</xsl:variable>
    <xsl:template name="user_default">
        <xsl:param name="rut" />
        <xsl:param name="nombre" />
        <fo:block font-size="{$tamano-texto}" color="{$color-texto}" font-weight="normal" space-after="1mm"
            font-family="{$fuente-texto}">
            <fo:table table-layout="fixed">
                <fo:table-column column-width="10cm" />
                <fo:table-column column-width="9cm" />
                <fo:table-body>
                    <fo:table-row>
                        <fo:table-cell>
                            <fo:block text-align="left">
                                <xsl:value-of select="$nombre" />
                            </fo:block>
                        </fo:table-cell>
                        <fo:table-cell>
                            <fo:block text-align="right">
                                <fo:inline>RUT:</fo:inline>
                                <fo:inline>
                                    <xsl:value-of select="$rut" />
                                </fo:inline>
                            </fo:block>
                        </fo:table-cell>
                    </fo:table-row>
                </fo:table-body>
            </fo:table>
        </fo:block>
    </xsl:template>
    <xsl:template name="titulo">
        <xsl:param name="texto" />
        <fo:block font-size="16pt" color="#70A0C1" font-weight="bold" text-align="left" font-family="{$fuente-texto}"
            border-bottom-style="solid" border-bottom-color="#CCCCCC" border-bottom-width="0.5pt"
            space-after="3pt" space-before="10pt">
            <xsl:value-of select="$texto" />
        </fo:block>
    </xsl:template>
    <xsl:template name="subtitulo">
        <xsl:param name="texto" />
        <fo:block background-color="#EFEFEF" color="{$color-texto}" border="0.3pt solid #E2E2E2" 
            font-size="13pt" font-weight="bold" font-family="{$fuente-texto}"
            space-after="3pt" space-before="7pt" padding-top="2pt" padding-bottom="2pt">
            <fo:inline padding-left="2pt">
                <xsl:value-of select="$texto" />
            </fo:inline>
        </fo:block>
    </xsl:template>
    <xsl:template name="subtitulomin">
        <xsl:param name="texto" />
        <fo:block font-size="{$tamano-texto}" color="{$color-texto}" font-weight="bold"
            text-align="left" font-family="{$fuente-texto}"
            space-before="5pt" space-after="5pt">
            <xsl:value-of select="$texto" />
        </fo:block>
    </xsl:template>
    <xsl:template name="mensaje">
        <xsl:param name="texto" />
        <fo:block font-size="{$tamano-texto}" color="#444444" font-weight="bold"
            text-align="left" font-family="{$fuente-texto}"
            space-before="5pt" space-after="5pt">
            <xsl:value-of select="$texto" />
        </fo:block>
    </xsl:template>
    <xsl:template name="tablacelda">
        <xsl:param name="texto" />
        <fo:table-cell border="0.3pt solid #E2E2E2" vertical-align="middle"
            padding-left="2pt" padding-right="2pt">
            <fo:block color="{$color-texto}" font-size="{$tamano-texto}" font-weight="bold"
                font-family="{$fuente-texto}" text-align="left">
                <xsl:value-of select="$texto" />
            </fo:block>
        </fo:table-cell>
    </xsl:template>
    <xsl:template name="tablaceldadatotexto">
        <xsl:param name="texto" />
        <xsl:param name="text-align" select="'left'" />
        <xsl:param name="tamano-texto-param" select="'8pt'" />
        <xsl:param name="colspan" select="0"/>
        <xsl:param name="rowspan" select="0"/>
        <fo:table-cell border="0.3pt solid #E2E2E2" padding-left="2pt" padding-right="2pt"
            number-columns-spanned="{$colspan}" number-rows-spanned="{$rowspan}">
            <fo:block color="#444444" font-size="{$tamano-texto-param}" font-weight="normal"
                text-align="{$text-align}" font-family="{$fuente-texto}">
                <xsl:value-of select="$texto" />
            </fo:block>
        </fo:table-cell>
    </xsl:template>
    <xsl:template name="tablaheadhorizontal">
        <xsl:param name="texto" />
        <xsl:param name="vineta" select="'true'"/>
        <fo:table-cell border="0.3px solid #E2E2E2" background-color="#EFEFEF" padding-left="2pt" vertical-align="middle">
            <fo:block color="{$color-texto}" font-size="{$tamano-texto}" font-weight="normal"
                text-align="left" font-family="{$fuente-texto}">
                <xsl:if test="$vineta='true'">
                    <fo:external-graphic width="1.5px" height="1.5px" vertical-align="middle">
                        <xsl:attribute name="src">
                             <xsl:value-of select="relojEverest/imagenes/ruta"/>01-bullet1-rj.gif
                        </xsl:attribute>
                    </fo:external-graphic>
                </xsl:if>
                <fo:inline padding-left="4pt">
                    <xsl:value-of select="$texto" />
                </fo:inline>
            </fo:block>
        </fo:table-cell>
    </xsl:template>
    <xsl:template name="tablaheadverticalsimple">
        <xsl:param name="texto" />
        <xsl:param name="colspan" select="0"/>
        <xsl:param name="rowspan" select="0"/>
        <fo:table-cell border="0.3px solid #E2E2E2" background-color="#EFEFEF"
            number-columns-spanned="{$colspan}" number-rows-spanned="{$rowspan}">
            <fo:block color="{$color-texto}" font-size="{$tamano-texto}" font-weight="normal"
                text-align="center" font-family="{$fuente-texto}">
                <xsl:value-of select="$texto" />
            </fo:block>
        </fo:table-cell>
    </xsl:template>
    <xsl:template name="tablaheadverticaldestacado">
        <xsl:param name="texto" />
        <xsl:param name="colspan" select="0"/>
        <xsl:param name="rowspan" select="0"/>
        <xsl:param name="tamano-texto-param" select="'8pt'" />
        <fo:table-cell border="0.3px solid #E2E2E2" background-color="#EFEFEF"
            number-columns-spanned="{$colspan}" number-rows-spanned="{$rowspan}">
            <fo:block color="{$color-texto}" font-size="{$tamano-texto-param}" font-weight="bold"
                text-align="center" vertical-align="middle">
                <xsl:value-of select="$texto" />
            </fo:block>
        </fo:table-cell>
    </xsl:template>
</xsl:stylesheet>