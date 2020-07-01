<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format">

    <!-- VARIABLES DE CONFIGURACION -->
    <xsl:variable name="tamano-texto">8pt</xsl:variable>
    <xsl:variable name="tamano-titulo">16pt</xsl:variable>
    <xsl:variable name="tamano-subtitulo">9pt</xsl:variable>
    <xsl:variable name="color-subrayado">#000000</xsl:variable>
    <xsl:variable name="fuente-texto">Arial,Helvetica,sans-serif</xsl:variable>

    <!-- PARAMETROS -->
    <xsl:param name="imagenes"/>

    <!-- INICIO PDF -->
    <xsl:template match="/">
        <fo:root xmlns:fo="http://www.w3.org/1999/XSL/Format" xmlns:fox="http://xml.apache.org/fop/extensions">
            <fo:layout-master-set>
                <fo:simple-page-master margin-right="1.3cm" margin-left="1.3cm" margin-bottom="0.95cm" margin-top="0.95cm" page-width="21.6cm" page-height="27.9cm" master-name="first">
                    <fo:region-body margin-bottom="1.5cm" margin-top="1.5cm"/>
                    <fo:region-before extent="2cm"/>
                    <fo:region-after extent="0.5cm"/>
                </fo:simple-page-master>
            </fo:layout-master-set>

            <fo:page-sequence master-reference="first" id="pagina" language="en" hyphenate="true" initial-page-number="1" >
                <fo:static-content flow-name="xsl-region-before">
                    <xsl:call-template name="titulo">
                        <xsl:with-param name="texto">
                            SOLICITUD DE CREDITO BANCA <xsl:value-of select="/analisis-solicitud/banca"/> - N&#xb0; <xsl:value-of select="/analisis-solicitud/idSolicitud"/>
                        </xsl:with-param>
                    </xsl:call-template>
                </fo:static-content>

                <fo:static-content flow-name="xsl-region-after">
                   <!-- Separador -->
                    <fo:block font-size="{$tamano-texto}" text-align="center" font-family="{$fuente-texto}" border-top-style="solid" border-top-color="#CCCCCC" border-top-width="0.5pt">
                      P&#225;gina <fo:page-number/> de <fo:page-number-citation ref-id="endofdoc"/>
                    </fo:block>
                </fo:static-content>

                <fo:flow flow-name="xsl-region-body">
                    <xsl:call-template name="cabecera"/>
                    <xsl:call-template name="tablaGrupoEconomico"/>
                    <xsl:call-template name="analisis"/>
                    <fo:block id="endofdoc"/>
                </fo:flow>
            </fo:page-sequence>

        </fo:root>
    </xsl:template>

    <!-- TITULO-->
    <xsl:template name="titulo">
        <xsl:param name="texto"/>
        <fo:block font-size="{$tamano-titulo}" font-weight="bold" text-align="left" font-family="{$fuente-texto}" border-bottom-style="solid" border-bottom-color="#CCCCCC" border-bottom-width="0.5pt" margin-bottom="3pt" margin-top="10pt">
            <xsl:value-of select="$texto"/>
        </fo:block>
        <fo:block font-size="{$tamano-titulo}">&#160;</fo:block>
    </xsl:template>

    <!-- CABECERA -->
    <xsl:template name="cabecera">
        <fo:block> </fo:block>
        <fo:block font-size="{$tamano-texto}" font-weight="normal" space-after="1cm" font-family="{$fuente-texto}">
            <fo:table padding-top="5pt" table-layout="fixed">
                <fo:table-column column-width="4cm"/>
                <fo:table-column column-width="8cm"/>
                <fo:table-column column-width="6cm"/>
                <fo:table-body>
                    <fo:table-row font-weight="bold">
                        <fo:table-cell>
                            <fo:block/>
                        </fo:table-cell>
                        <fo:table-cell border-style="solid" padding="1pt">
                            <fo:block>SOLICITUD DE CREDITO BANCA <xsl:value-of select="analisis-solicitud/banca"/>
                            </fo:block>
                        </fo:table-cell>
                        <fo:table-cell border-style="solid" padding="1pt">
                            <fo:block>FECHA: <xsl:value-of select="analisis-solicitud/fechaSolicitud"/>
                            </fo:block>
                        </fo:table-cell>
                    </fo:table-row>
                    <fo:table-row>
                        <fo:table-cell>
                            <fo:block>
                                <fo:external-graphic vertical-align="middle">
                                    <xsl:attribute name="src"><xsl:value-of select="$imagenes"/>bci_somos_diferentes.bmp</xsl:attribute>
                                </fo:external-graphic>
                            </fo:block>
                        </fo:table-cell>
                        <fo:table-cell border-style="solid" padding="1pt">
                            <fo:block>NOMBRE:  <xsl:value-of select="/analisis-solicitud/solicitante/datosSolicitante/nombreSolicitante"/>
                            </fo:block>
                            <fo:block border-bottom-style="solid">RUT: <xsl:value-of select="/analisis-solicitud/solicitante/datosSolicitante/rut"/>-<xsl:value-of select="/analisis-solicitud/solicitante/datosSolicitante/digito"/>
                            </fo:block>
                        </fo:table-cell>
                        <fo:table-cell border-style="solid" padding="1pt">
                            <fo:block>OFICINA:  <xsl:value-of select="/analisis-solicitud/oficina"/>
                            </fo:block>
                            <fo:block>FONO: <xsl:value-of select="/analisis-solicitud/fonoEjecutivo"/>
                            </fo:block>
                            <fo:block>EJECUTIVO: <xsl:value-of select="/analisis-solicitud/ejecutivo"/>
                            </fo:block>
                            <fo:block>BANCA: <xsl:value-of select="/analisis-solicitud/banca"/>
                            </fo:block>
                            <fo:block>FEC. CTA CTE.: <xsl:value-of select="/analisis-solicitud/fecCtaCte"/>
                            </fo:block>
                        </fo:table-cell>
                    </fo:table-row>
                </fo:table-body>
            </fo:table>
        </fo:block>
    </xsl:template>

    <!-- TABLA GRUPO ECONOMICO -->
    <xsl:template name="tablaGrupoEconomico">
        <fo:block font-size="{$tamano-texto}"> &#xa0;</fo:block>
        <fo:block font-size="{tamano-subtitulo}" font-weight="bold">GRUPO ECONOMICO</fo:block>
        <fo:block font-size="{$tamano-texto}" font-weight="normal" space-after="1cm" font-family="{$fuente-texto}">
            <fo:table table-layout="fixed">
                <fo:table-column column-width="3cm"/>
                <fo:table-column column-width="6.5cm"/>
                <fo:table-column column-width="3.5cm"/>
                <fo:table-column column-width="3cm"/>
                <fo:table-column column-width="3cm"/>
                <fo:table-body>
                    <fo:table-row font-weight="bold">
                        <fo:table-cell padding="1pt" border-bottom-style="solid" border-top-style="solid" border-right-style="solid" border-left-style="solid" text-align="center">
                            <fo:block>RUT</fo:block>
                        </fo:table-cell>
                        <fo:table-cell padding="1pt" border-bottom-style="solid" border-top-style="solid" border-right-style="solid" border-left-style="solid" text-align="center">
                            <fo:block>NOMBRE</fo:block>
                        </fo:table-cell>
                        <fo:table-cell padding="1pt" border-bottom-style="solid" border-top-style="solid" border-right-style="solid" border-left-style="solid" text-align="center">
                            <fo:block>PERIODO VIGENCIA</fo:block>
                        </fo:table-cell>
                        <fo:table-cell padding="1pt" border-bottom-style="solid" border-top-style="solid" border-right-style="solid" border-left-style="solid" text-align="center">
                            <fo:block>MONTO LCG (M$)</fo:block>
                        </fo:table-cell>
                        <fo:table-cell padding="1pt" border-bottom-style="solid" border-top-style="solid" border-right-style="solid" border-left-style="solid" text-align="center">
                            <fo:block>GARANTIAS (M$)</fo:block>
                        </fo:table-cell>
                    </fo:table-row>
                    <xsl:for-each select="//grupo-solicitantes/listado-solicitantes">
                        <fo:table-row>
                            <fo:table-cell padding="1pt" border-bottom-style="solid" border-top-style="solid" border-right-style="solid" border-left-style="solid">
                                <fo:block>
                                    <xsl:value-of select="rut"/>-<xsl:value-of select="digitoVerificador"/>
                                </fo:block>
                            </fo:table-cell>
                            <fo:table-cell padding="1pt" border-bottom-style="solid" border-top-style="solid" border-right-style="solid" border-left-style="solid">
                                <fo:block>
                                    <xsl:value-of select="nombreSolicitante"/>
                                </fo:block>
                            </fo:table-cell>
                            <fo:table-cell padding="1pt" border-bottom-style="solid" border-top-style="solid" border-right-style="solid" border-left-style="solid" text-align="right">
                                <fo:block>
                                    <xsl:value-of select="periodoVigencia"/>
                                </fo:block>
                            </fo:table-cell>
                            <fo:table-cell padding="1pt" border-bottom-style="solid" border-top-style="solid" border-right-style="solid" border-left-style="solid" text-align="right">
                                <fo:block>
                                    <xsl:value-of select="montoMaximoLCG"/>
                                </fo:block>
                            </fo:table-cell>
                            <fo:table-cell padding="1pt" border-bottom-style="solid" border-top-style="solid" border-right-style="solid" border-left-style="solid" text-align="right">
                                <fo:block>
                                    <xsl:value-of select="sumaGarantias"/>
                                </fo:block>
                            </fo:table-cell>
                        </fo:table-row>
                    </xsl:for-each>

                    <fo:table-row>
                        <fo:table-cell number-columns-spanned="2">
                            <fo:block/>
                        </fo:table-cell>
                        <fo:table-cell padding="1pt" text-align="right">
                            <fo:block font-size="{$tamano-texto}" font-weight="bold">Monto Total Lineas(M$)</fo:block>
                        </fo:table-cell>
                        <fo:table-cell padding="1pt" text-align="right">
                            <fo:block>
                                <xsl:value-of select="/analisis-solicitud/sumaTotalLineas"/>
                            </fo:block>
                        </fo:table-cell>
                        <fo:table-cell padding="1pt" text-align="right">
                            <fo:block>
                                <xsl:value-of select="/analisis-solicitud/sumaTotalGarantias"/>
                            </fo:block>
                        </fo:table-cell>
                    </fo:table-row>
                    <fo:table-row>
                        <fo:table-cell number-columns-spanned="2">
                            <fo:block/>
                        </fo:table-cell>
                        <fo:table-cell padding="1pt" text-align="right">
                            <fo:block font-weight="bold">
                                <xsl:value-of select="/analisis-solicitud/excedente-deficit"/> (M$)
                            </fo:block>
                        </fo:table-cell>
                        <fo:table-cell padding="1pt" text-align="right">
                            <fo:block>
                                <xsl:value-of select="/analisis-solicitud/monto-excedente-deficit"/>
                            </fo:block>
                        </fo:table-cell>
                        <fo:table-cell padding="1pt">
                            <fo:block/>
                        </fo:table-cell>
                    </fo:table-row>
                </fo:table-body>
            </fo:table>
        </fo:block>
    </xsl:template>

    <!-- ANALISIS -->
    <xsl:template name="analisis">

        <!-- Tabla cabecera Analisis -->
        <xsl:call-template name="tabla-analisis"/>

        <!-- Actividad -->
        <xsl:call-template name="comentarios">
            <xsl:with-param name="titulo" select="'Actividad'"/>
            <xsl:with-param name="texto"  select="/analisis-solicitud/analisis/recomendacion-eje"/>
        </xsl:call-template>

        <!--Historia-->
        <xsl:call-template name="comentarios">
            <xsl:with-param name="titulo" select="'Historia'"/>
            <xsl:with-param name="texto"  select="/analisis-solicitud/analisis/historia"/>
        </xsl:call-template>

        <!-- Solicitud -->
        <xsl:call-template name="comentarios">
            <xsl:with-param name="titulo" select="'Solicitud'"/>
            <xsl:with-param name="texto"  select="/analisis-solicitud/analisis/hechos-relevantes"/>
        </xsl:call-template>

        <!-- Detalle Carga Financiera -->
        <xsl:choose>
         <xsl:when test="/analisis-solicitud/origenSolicitud = 'EMP'">
        <xsl:call-template name="analisis-financiero"/>
        </xsl:when>
        </xsl:choose>

        <!-- Comentarios a Carga Financiera-->
        <xsl:call-template name="comentarios">
            <xsl:with-param name="titulo" select="'Comentarios a Carga Financiera'"/>
            <xsl:with-param name="texto"  select="/analisis-solicitud/analisis/comentarios"/>
        </xsl:call-template>

        <!-- Analisis financiero y operaciones empresa -->
        <xsl:call-template name="activos-relevantes"/>

        <!-- Comentarios al balance -->
        <xsl:call-template name="comentarios">
            <xsl:with-param name="titulo" select="'Comentarios al Balance'"/>
            <xsl:with-param name="texto"  select="/analisis-solicitud/analisis/comentarios-balance"/>
        </xsl:call-template>

        <!-- Comentarios Estado de Resultados -->
        <xsl:call-template name="comentarios">
            <xsl:with-param name="titulo" select="'Comentarios Estados de Resultados'"/>
            <xsl:with-param name="texto"  select="/analisis-solicitud/analisis/comentarios-est-resul"/>
        </xsl:call-template>

        <!-- Recomendacion del Ejecutivo -->
        <xsl:call-template name="comentarios">
            <xsl:with-param name="titulo" select="'Recomendacion del Ejecutivo'"/>
            <xsl:with-param name="texto"  select="/analisis-solicitud/analisis/otros"/>
        </xsl:call-template>
    </xsl:template>

    <!-- TABLA INICIAL ANALISIS -->
    <xsl:template name="tabla-analisis">
        <fo:block font-size="{$tamano-texto}" font-weight="normal" space-after="0.5cm" font-family="{$fuente-texto}">
            <fo:table table-layout="fixed">
                <fo:table-column column-width="11cm"/>
                <fo:table-column column-width="4cm"/>
                <fo:table-column column-width="4cm"/>
                <fo:table-body>
                    <fo:table-row>
                        <fo:table-cell text-align="center" border-style="solid" padding="1pt">
                            <fo:block>Detalle de su Actividad</fo:block>
                        </fo:table-cell>
                        <fo:table-cell text-align="center" border-style="solid" padding="1pt">
                            <fo:block>Fundada A&#241;o</fo:block>
                        </fo:table-cell>
                        <fo:table-cell text-align="center" border-style="solid" padding="1pt">
                            <fo:block>Apertura cc</fo:block>
                        </fo:table-cell>
                    </fo:table-row>
                    <fo:table-row>
                        <fo:table-cell text-align="left" border-style="solid" padding="1pt">
                            <fo:block><xsl:value-of select="/analisis-solicitud/analisis/detalle-actividad"/>&#160;</fo:block>
                        </fo:table-cell>
                        <fo:table-cell text-align="center" border-style="solid" padding="1pt">
                            <fo:block><xsl:value-of select="/analisis-solicitud/analisis/fundada-anio"/>&#160;</fo:block>
                        </fo:table-cell>
                        <fo:table-cell text-align="center" border-style="solid" padding="1pt">
                            <fo:block><xsl:value-of select="/analisis-solicitud/analisis/apertura-cc"/>&#160;</fo:block>
                        </fo:table-cell>
                    </fo:table-row>
                </fo:table-body>
            </fo:table>
        </fo:block>
    </xsl:template>

    <!-- DETALLE ANALISIS FINANCIERO Y CARGA EMPRESA -->
    <xsl:template name="analisis-financiero">

        <fo:block font-size="{$tamano-texto}" font-weight="normal" font-family="{$fuente-texto}" padding-before="10pt">
            <fo:table table-layout="fixed">
                <fo:table-column column-width="3cm"/>       <!-- Tipo Deuda -->
                <fo:table-column column-width="5cm"/>       <!-- Banco -->
                <fo:table-column column-width="3cm"/>       <!-- Saldo Insoluto -->
                <fo:table-column column-width="2cm"/>       <!-- Plazo -->
                <fo:table-column column-width="3cm"/>       <!-- Valor Cuota -->
                <fo:table-column column-width="3cm"/>       <!-- Destino -->
               
                <fo:table-body>
                    <fo:table-row>
                        <fo:table-cell text-align="left" border-style="solid" padding="1pt" number-columns-spanned="8">
                            <fo:block>Detalle Carga Financiera, incluye Cr&#233;dito solicitado</fo:block>
                        </fo:table-cell>
                    </fo:table-row>
                    <fo:table-row>
                        <fo:table-cell text-align="center" border-style="solid" padding="1pt">
                            <fo:block>Tipo de Deuda</fo:block>
                        </fo:table-cell>
                        <fo:table-cell text-align="center" border-style="solid" padding="1pt">
                            <fo:block>Banco</fo:block>
                        </fo:table-cell>
                        <fo:table-cell text-align="center" border-style="solid" padding="1pt">
                            <fo:block>Saldo Insoluto (M$)</fo:block>
                        </fo:table-cell>
                        <fo:table-cell text-align="center" border-style="solid" padding="1pt">
                            <fo:block>Plazo (n/m)</fo:block>
                        </fo:table-cell>
                        <fo:table-cell text-align="center" border-style="solid" padding="1pt">
                            <fo:block>Valor Cuota (M$)</fo:block>
                        </fo:table-cell>
                        <fo:table-cell text-align="center" border-style="solid" padding="1pt">
                            <fo:block>Destino</fo:block>
                        </fo:table-cell>
                    </fo:table-row>

                    <!-- Listado campos -->
                    <xsl:choose>
                        <xsl:when test="//carga-finan-analisis/listado-cargas">
                            <xsl:for-each select="//carga-finan-analisis/listado-cargas">
                                <fo:table-row>
                                    <fo:table-cell text-align="left" border-style="solid" padding="1pt">
                                        <fo:block><xsl:value-of select="tipo-deuda"/>&#160;</fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell text-align="left" border-style="solid" padding="1pt">
                                        <fo:block><xsl:value-of select="banco"/>&#160;</fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell text-align="right" border-style="solid" padding="1pt">
                                        <fo:block><xsl:value-of select="saldo-insoluto"/>&#160;</fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell text-align="center" border-style="solid" padding="1pt">
                                        <fo:block>
                                            <xsl:value-of select="cuotaActual"/> &#47; <xsl:value-of select="plazo"/>&#160;
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell text-align="right" border-style="solid" padding="1pt">
                                        <fo:block><xsl:value-of select="valor-cuota"/>&#160;</fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell text-align="left" border-style="solid" padding="1pt">
                                        <fo:block><xsl:value-of select="destino"/>&#160;</fo:block>
                                    </fo:table-cell>
                                </fo:table-row>
                            </xsl:for-each>
                        </xsl:when>
                        <xsl:otherwise>
                            <fo:table-row>
                                <fo:table-cell text-align="center" border-style="solid" padding="1pt" number-columns-spanned="8">
                                    <fo:block>No se encontraron registros</fo:block>
                                </fo:table-cell>
                            </fo:table-row>
                        </xsl:otherwise>
                    </xsl:choose>
                </fo:table-body>
            </fo:table>
        </fo:block>

        <!-- Primera tabla de totales -->
        <fo:table table-layout="fixed" width="19cm">
            <fo:table-column column-width="proportional-column-width(1)"/>
            <fo:table-column/>
            <fo:table-column column-width="proportional-column-width(1)"/>
        </fo:table>

        <!-- Segunda tabla de totales -->
        <xsl:call-template name="segunda-tabla-totales-carga"/>

        <fo:block space-after="10pt"/>
    </xsl:template>


    <!-- 2º TABLA DE TOTALES - DETALLE ANALISIS FINANCIERO Y CARGA EMPRESA -->
    <xsl:template name="segunda-tabla-totales-carga">
        <fo:block font-size="{$tamano-texto}" font-weight="normal" font-family="{$fuente-texto}" padding-before="10pt">
            <fo:table table-layout="fixed">
                <fo:table-column column-width="5cm"/>       <!-- campo -->
                <fo:table-column column-width="3cm"/>       <!-- valor -->
                <fo:table-body>
                    <fo:table-row>
                        <fo:table-cell text-align="left" border-style="solid" padding="1pt">
                            <fo:block>Total Carga Financiera Anual (M$)</fo:block>
                        </fo:table-cell>
                        <fo:table-cell text-align="left" border-style="solid" padding="1pt">
                            <fo:block><xsl:value-of select="/analisis-solicitud/carga-finan-analisis/total-carga-anual"/>&#160;</fo:block>
                        </fo:table-cell>
                    </fo:table-row>
                    <fo:table-row>
                        <fo:table-cell text-align="left" border-style="solid" padding="1pt">
                            <fo:block>Generaci&#243;n (GOB) (M$)</fo:block>
                        </fo:table-cell>
                        <fo:table-cell text-align="left" border-style="solid" padding="1pt">
                            <fo:block><xsl:value-of select="/analisis-solicitud/carga-finan-analisis/generacion-gob"/>&#160;</fo:block>
                        </fo:table-cell>
                    </fo:table-row>
                    <fo:table-row>
                        <fo:table-cell text-align="left" border-style="solid" padding="1pt">
                            <fo:block>Ebitda (M$)</fo:block>
                        </fo:table-cell>
                        <fo:table-cell text-align="left" border-style="solid" padding="1pt">
                            <fo:block><xsl:value-of select="/analisis-solicitud/carga-finan-analisis/ingresos-exogenos"/>&#160;</fo:block>
                        </fo:table-cell>
                    </fo:table-row>
                    <fo:table-row>
                        <fo:table-cell text-align="left" border-style="solid" padding="1pt">
                            <fo:block>Excedente &#47; D&#233;ficit</fo:block>
                        </fo:table-cell>
                        <fo:table-cell text-align="left" border-style="solid" padding="1pt">
                            <fo:block><xsl:value-of select="/analisis-solicitud/carga-finan-analisis/excedent-deficit"/>&#160;</fo:block>
                        </fo:table-cell>
                    </fo:table-row>
                </fo:table-body>
            </fo:table>
        </fo:block>
    </xsl:template>

    <!-- DETALLE ACTIVOS RELEVANTES -->
    <xsl:template name="activos-relevantes">

        <fo:block padding-before="5pt" padding-after="5pt" font-weight="bold" text-align="left" font-family="{$fuente-texto}" >
            An&#225;lisis Financiero y Operacional Empresa
        </fo:block>

        <fo:block font-size="{$tamano-texto}" text-align="left" font-family="{$fuente-texto}" border-top-style="solid" border-top-color="{$color-subrayado}" border-top-width="1pt" space-after="0.5cm"/>

        <fo:block font-size="{$tamano-texto}" font-weight="normal" font-family="{$fuente-texto}" space-after="10pt">
            <fo:table table-layout="fixed">
                <fo:table-column column-width="2.8cm"/>       <!-- Tipo Bien -->
                <fo:table-column column-width="7cm"/>       <!-- Tipos, caracteristicas -->
                <fo:table-column column-width="2.2cm"/>       <!-- valor coml. -->
                <fo:table-column column-width="7cm"/>      <!-- comentarios -->
                <fo:table-body>
                    <fo:table-row>
                        <fo:table-cell text-align="left" border-style="solid" padding="1pt" number-columns-spanned="4">
                            <fo:block>Detalle de Activos Relevantes</fo:block>
                        </fo:table-cell>
                    </fo:table-row>
                    <fo:table-row>
                        <fo:table-cell text-align="center" border-style="solid" padding="1pt">
                            <fo:block>Tipo de Bien</fo:block>
                        </fo:table-cell>
                        <fo:table-cell text-align="center" border-style="solid" padding="1pt">
                            <fo:block>Tipos, Caracter&#237;sticas</fo:block>
                        </fo:table-cell>
                        <fo:table-cell text-align="center" border-style="solid" padding="1pt">
                            <fo:block>Valor Coml. s&#47;g Pol&#237;tica (M$)</fo:block>
                        </fo:table-cell>
                        <fo:table-cell text-align="center" border-style="solid" padding="1pt">
                            <fo:block>Comentarios</fo:block>
                        </fo:table-cell>
                    </fo:table-row>

                    <!-- Listado campos -->
                    <xsl:choose>
                        <xsl:when test="//activos-relevantes/activos">
                            <xsl:for-each select="//activos-relevantes/activos">
                                <fo:table-row>
                                    <fo:table-cell text-align="left" border-style="solid" padding="1pt">
                                        <fo:block><xsl:value-of select="tipo-bien"/>&#160;</fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell text-align="left" border-style="solid" padding="1pt">
                                        <fo:block white-space-collapse="false">
                                            <xsl:value-of select="tipos-caract"/>&#160;
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell text-align="right" border-style="solid" padding="1pt">
                                        <fo:block><xsl:value-of select="comp-politicas"/>&#160;</fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell text-align="left" border-style="solid" padding="1pt">
                                        <fo:block white-space-collapse="false">
                                            <xsl:value-of select="comentarios"/>&#160;
                                        </fo:block>
                                    </fo:table-cell>
                                </fo:table-row>
                            </xsl:for-each>
                        </xsl:when>
                        <xsl:otherwise>
                            <fo:table-row>
                                <fo:table-cell text-align="center" border-style="solid" padding="1pt" number-columns-spanned="4">
                                    <fo:block>No se encontraron registros</fo:block>
                                </fo:table-cell>
                            </fo:table-row>
                        </xsl:otherwise>
                    </xsl:choose>
                </fo:table-body>
            </fo:table>
        </fo:block>
    </xsl:template>

    <!-- COMENTARIOS -->
    <xsl:template name="comentarios">
        <xsl:param name="titulo"/>
        <xsl:param name="texto"/>
        <fo:block font-size="{$tamano-texto}" font-weight="bold" text-align="left" font-family="{$fuente-texto}" margin-bottom="3pt" padding-before="10pt">
            <xsl:value-of select="$titulo"/>
        </fo:block>
        <fo:block font-size="{$tamano-texto}" text-align="left" font-family="{$fuente-texto}" border-top-style="solid" border-top-color="{$color-subrayado}" border-top-width="1pt" margin-bottom="20pt"/>
        <fo:block font-size="{$tamano-texto}" font-weight="normal" text-align="left" font-family="{$fuente-texto}" padding-before="5pt" padding-after="10pt" white-space-collapse="false">
            <xsl:value-of disable-output-escaping="yes" select="$texto"/>
        </fo:block>
    </xsl:template>
</xsl:stylesheet>
