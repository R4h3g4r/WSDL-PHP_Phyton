<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:fo="http://www.w3.org/1999/XSL/Format" version="1.0">
    <xsl:template match="certificado">
        <fo:root xmlns:fo="http://www.w3.org/1999/XSL/Format">
            <fo:layout-master-set>
                <!-- layout for the first page -->
                <fo:simple-page-master master-name="first" page-height="29.7cm" page-width="21cm"
                    margin-top="1cm" margin-bottom="2cm" margin-left="2.5cm" margin-right="2.5cm"
                    border="thick solid red">
                    <fo:region-body margin-top="3cm" />
                    <fo:region-before extent="3cm" />
                    <fo:region-after extent="1.5cm" />
                </fo:simple-page-master>
                <!-- layout for the other pages -->
                <fo:simple-page-master master-name="rest" page-height="29.7cm" page-width="21cm"
                    margin-top="1cm" margin-bottom="2cm" margin-left="2.5cm" margin-right="2.5cm"
                    border="thick solid red">
                    <fo:region-body margin-top="2.5cm" />
                    <fo:region-before extent="2.5cm" />
                    <fo:region-after extent="1.5cm" />
                </fo:simple-page-master>
                <fo:page-sequence-master master-name="basicPSM">
                    <fo:repeatable-page-master-alternatives>
                        <fo:conditional-page-master-reference master-reference="first"
                            page-position="first" />
                        <fo:conditional-page-master-reference master-reference="rest"
                            page-position="rest" />
                        <!-- recommended fallback procedure -->
                        <fo:conditional-page-master-reference master-reference="rest" />
                    </fo:repeatable-page-master-alternatives>
                </fo:page-sequence-master>
            </fo:layout-master-set>
            <!-- end: defines page layout -->
            <!-- actual layout -->
            <fo:page-sequence master-reference="basicPSM">


                <fo:static-content flow-name="xsl-region-before">
                    <fo:block text-align="end" font-size="10pt" font-family="serif"
                        line-height="14pt"> Pagina. <fo:page-number />
                    </fo:block>
                </fo:static-content>

                <fo:flow flow-name="xsl-region-body">
                    <fo:block padding-top="3pt" text-align="center" space-after.optimum="15pt"
                        line-height="24pt" font-family="sans-serif" font-size="18pt"
                        text-decoration="underline"> ACLARACIÓN DE DOCUMENTO </fo:block>
                    <fo:block padding-left="3pt" text-align="left" font-family="sans-serif"
                        font-size="11pt"> Santiago, <xsl:value-of select="dia_actual" /> de
                            <xsl:value-of select="mes_actual" /> del <xsl:value-of
                            select="anho_actual" />
                    </fo:block>
                    <fo:block padding-right="3pt" text-align="right" font-family="sans-serif"
                        font-size="11pt"> Número Confirmatorio :</fo:block>
                    <fo:block padding-right="3pt" text-align="right" font-family="sans-serif"
                        font-size="11pt">
                        <xsl:value-of select="numero_conformacion" />
                    </fo:block>
                    <fo:block padding-top="8pt" text-align="left" font-weight="bold"
                        font-family="sans-serif" font-size="11pt"> Señores </fo:block>
                    <fo:block text-align="left" font-weight="bold" font-family="sans-serif"
                        font-size="11pt"> BOLETIN DE INFORMACIÓN COMERCIALES </fo:block>
                    <fo:block text-align="left" font-weight="bold" font-family="sans-serif"
                        font-size="11pt" text-decoration="underline"> Presente </fo:block>
                    <fo:block padding-top="15pt" text-align="left" font-family="sans-serif"
                        font-size="11pt"> Ref.: Aclaración de Documentos(s)</fo:block>

                    <fo:block padding-top="20pt" text-align="justify"> Ponemos en su conocimiento
                        que <xsl:value-of select="glosa_inicial" />, pertenecientes al señor(a)
                            <fo:inline font-weight="bold">
                            <xsl:value-of select="nombres" />
                        </fo:inline><fo:inline font-weight="bold">
                            <xsl:value-of select="apellidos" />
                        </fo:inline> , Rut <xsl:value-of select="rut" />, <xsl:value-of
                            select="glosa_final" /></fo:block>
                    <fo:block padding-top="20pt" padding-bottom="20pt">
                        <fo:table>
                            <fo:table-column column-width="2.5cm" />
                            <fo:table-column column-width="2.5cm" />
                            <fo:table-column column-width="2.5cm" />
                            <fo:table-column column-width="2.5cm" />
                            <fo:table-column column-width="2.5cm" />
                            <fo:table-column column-width="2.5cm" />
                            <fo:table-header>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold" text-align="center"
                                            vertical-align="middle" font-size="10pt">Tipo
                                        Dcto</fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold" text-align="center"
                                            vertical-align="middle" font-size="10pt">Nº
                                        Dcto</fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold" text-align="center"
                                            vertical-align="middle" font-size="10pt"
                                        >Monto</fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold" text-align="center"
                                            vertical-align="middle" font-size="10pt">Fec
                                        Prt/Aclar.</fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold" text-align="center"
                                            vertical-align="middle" font-size="10pt"
                                        >Fec./Aclar.</fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold" text-align="center"
                                            vertical-align="middle" font-size="10pt">Nº
                                        bol/Pag</fo:block>
                                    </fo:table-cell>
                                </fo:table-row>
                            </fo:table-header>

                            <fo:table-body>
                                <xsl:for-each select="documentos/documento">
                                    <fo:table-row>
                                        <fo:table-cell padding-top="10pt">
                                            <fo:block border-right-width="0.5pt" text-align="center"
                                                vertical-align="middle" font-size="10pt">
                                                <xsl:value-of select="tipo_doc" />
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell padding-top="10pt">
                                            <fo:block border-right-width="0.5pt" text-align="center"
                                                vertical-align="middle" font-size="10pt">
                                                <xsl:value-of select="nro_doc" />
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell padding-top="10pt">
                                            <fo:block border-right-width="0.5pt" text-align="center"
                                                vertical-align="middle" font-size="10pt">$ 
                                                <xsl:value-of select="monto" />
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell padding-top="10pt">
                                            <fo:block border-right-width="0.5pt" text-align="center"
                                                vertical-align="middle" font-size="10pt">
                                                <xsl:value-of select="fec_prt" />
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell padding-top="10pt">
                                            <fo:block border-right-width="0.5pt" text-align="center"
                                                vertical-align="middle" font-size="10pt">
                                                <xsl:value-of select="fec_aclar" />
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell padding-top="10pt">
                                            <fo:block text-align="center" vertical-align="middle"
                                                font-size="10pt">
                                                <xsl:value-of select="n_bol" />
                                            </fo:block>
                                        </fo:table-cell>
                                    </fo:table-row>
                                </xsl:for-each>
                            </fo:table-body>
                        </fo:table>
                    </fo:block>
                   <fo:block text-align="justify" padding-top="50pt"> Sirvase efectuar la(s)
                        aclaración(es) correspondiente(s). </fo:block>
                    <fo:block font-weight="bold"> Banco Crédito e Inversiones </fo:block>
		    <xsl:if test="urlFirma">
                        <fo:block text-align="right">
                            <fo:external-graphic width="110px" height="144px" scaling="uniform">
                                <xsl:attribute name="src">
                                    <xsl:value-of select="urlFirma" />
                                </xsl:attribute>
                            </fo:external-graphic>
                        </fo:block>
                    </xsl:if>
                    <fo:block padding-top="20pt" padding-right="3pt" text-align="right"  font-family="sans-serif" font-size="11pt" >Jefe de Operaciones</fo:block>
                </fo:flow>
            </fo:page-sequence>
        </fo:root>
    </xsl:template>
</xsl:stylesheet>
