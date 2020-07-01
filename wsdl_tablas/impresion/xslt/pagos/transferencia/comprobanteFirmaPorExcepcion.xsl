<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format">
    <xsl:template match="comprobante">
        <xsl:variable name="txt">
            #000000
        </xsl:variable>
        <fo:root xmlns:fo="http://www.w3.org/1999/XSL/Format">
            <fo:layout-master-set>
                <fo:simple-page-master master-name="all-pages" page-width="210mm" page-height="297mm" margin-top="30mm">
                    <fo:region-body padding="0" margin="25mm" region-name="xsl-region-body" column-gap="0.25in" font-size="5pt"/>
                    <fo:region-before region-name="xsl-region-before" extent="7in"/>
                    <fo:region-after padding="0" region-name="xsl-region-after" display-align="before" extent="0.7in"/>
                </fo:simple-page-master>
                <fo:page-sequence-master master-name="default-page">
                    <fo:repeatable-page-master-reference master-reference="all-pages"/>
                </fo:page-sequence-master>
            </fo:layout-master-set>
            <fo:page-sequence master-reference="default-page" initial-page-number="1" format="1">
                <fo:static-content flow-name="xsl-region-before">
                    <fo:block>
                        <fo:table width="21cm" space-after="4mm">
                            <fo:table-column column-width="2cm" />  <!-- margen -->
                            <fo:table-column column-width="14cm" /> <!-- BCI -->
                            <fo:table-body>
                                <fo:table-row>
                                    <fo:table-cell>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:external-graphic width="100pt">
                                            <xsl:attribute name="src">
                                               url('<xsl:value-of select="rutaLogoCabecera" />')
                                            </xsl:attribute>
                                        </fo:external-graphic>
                                    </fo:table-cell>
                                </fo:table-row>
                             </fo:table-body>
                        </fo:table>
                        <fo:table width="21cm" space-after="4mm">
                            <fo:table-column column-width="2.7cm" />  <!-- margen -->
                            <fo:table-column />                     <!-- Sello Agua -->
                            <fo:table-body>
                                <fo:table-row>
                                    <fo:table-cell>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <xsl:if test="estado = 'PRO'">
                                            <fo:external-graphic width="100pt">
                                                <xsl:attribute name="src">
                                                   url('<xsl:value-of select="rutaLogoSelloAgua" />')
                                                </xsl:attribute>
                                            </fo:external-graphic>
                                        </xsl:if>
                                    </fo:table-cell>
                                </fo:table-row>
                             </fo:table-body>
                        </fo:table>
                    </fo:block>
                </fo:static-content>                
                <fo:static-content flow-name="xsl-region-after" margin-left="18.7cm" font-size="12pt" >
                    <fo:block font-weight="bold" font-size="8pt" color="{$txt}" >
                        Página
                        <fo:page-number/>
                    </fo:block>
                </fo:static-content>
                <fo:flow flow-name="xsl-region-body">
                    <fo:block font-size="10pt"> 
                        <fo:table>
                            <fo:table-column width="1mm"/>
                            <fo:table-column/>
                            <fo:table-column/>
                            <fo:table-column/>
                            <fo:table-body>
                                <fo:table-row height="5mm">
                                    <fo:table-cell/>
                                    <fo:table-cell number-columns-spanned="3">
                                        <fo:block font-weight="bold">
                                            Estimado Colaborador: 
                                        </fo:block>
                                    </fo:table-cell>
                                </fo:table-row>
                                <fo:table-row height="10mm">
                                    <fo:table-cell/>
                                    <fo:table-cell number-columns-spanned="3">
                                        <xsl:if test="estado != 'PRO'">
                                            <fo:block>
                                                No se ha podido realizar la Firma de la Transferencia: 
                                            </fo:block>
                                        </xsl:if>
                                        <xsl:if test="estado = 'PRO'">
                                            <fo:block>
                                                Se ha firmado exitosamente la siguiente transferencia: 
                                            </fo:block>
                                        </xsl:if>
                                    </fo:table-cell>
                                </fo:table-row>
                                <fo:table-row height="5mm">
                                    <fo:table-cell/>
                                    <fo:table-cell>
                                        <fo:block>
                                            ID Transferencia
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block>
                                            Cuenta Cargo
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block>
                                            Rut Pagador 
                                        </fo:block>
                                    </fo:table-cell>
                                </fo:table-row>
                                <fo:table-row height="15mm">
                                    <fo:table-cell/>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            <xsl:value-of select="identificador" />
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            <xsl:value-of select="cuentaCargo" />
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            <xsl:value-of select="rutPagador" />
                                        </fo:block>
                                    </fo:table-cell>
                                </fo:table-row>
                                <fo:table-row height="5mm">
                                    <fo:table-cell/>
                                    <fo:table-cell>
                                        <fo:block>
                                            Banco Destino
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block>
                                            Cuenta Destino
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block>
                                            Monto
                                        </fo:block>
                                    </fo:table-cell>
                                </fo:table-row>
                                <fo:table-row height="15mm">
                                    <fo:table-cell/>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            <xsl:value-of select="bancoDestino" />
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            <xsl:value-of select="cuentaDestino" />
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            $ <xsl:value-of select="monto" />
                                        </fo:block>
                                    </fo:table-cell>
                                </fo:table-row>
                                <fo:table-row height="5mm">
                                    <fo:table-cell/>
                                    <fo:table-cell>
                                        <fo:block>
                                            Fecha de Pago 
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block>
                                            Estado
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell/>
                                </fo:table-row>
                                <fo:table-row height="15mm">
                                    <fo:table-cell/>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            <xsl:value-of select="fechaPago" />
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold">
                                            <xsl:value-of select="descripcionEstado" />
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell/>
                                </fo:table-row>
                                <xsl:if test="estado = 'REC'">
                                    <fo:table-row height="5mm">
                                        <fo:table-cell/>
                                        <fo:table-cell number-columns-spanned="3">
                                            <fo:block border="solid red" background-color="#ffffc6">
                                                <xsl:value-of select="motivo" />
                                            </fo:block>
                                        </fo:table-cell>
                                    </fo:table-row>
                                </xsl:if>
                                <xsl:if test="estado = 'PEN' and motivo != ''">
                                    <fo:table-row height="5mm">
                                        <fo:table-cell/>
                                        <fo:table-cell number-columns-spanned="3">
                                            <fo:block border="solid red" background-color="#ffffc6">
                                                <xsl:value-of select="motivo" />
                                            </fo:block>
                                        </fo:table-cell>
                                    </fo:table-row>
                                </xsl:if>
                            </fo:table-body>
                        </fo:table>
                    </fo:block>
                </fo:flow>
            </fo:page-sequence>
        </fo:root>
    </xsl:template>
</xsl:stylesheet>