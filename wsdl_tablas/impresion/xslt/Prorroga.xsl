<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:fn="http://www.w3.org/2005/02/xpath-functions" xmlns:xdt="http://www.w3.org/2005/02/xpath-datatypes">
    <xsl:variable name="fo:layout-master-set">
        <fo:layout-master-set>
            <fo:simple-page-master master-name="default-page" page-height="11in" page-width="8.5in" margin-left="0.6in" margin-right="0.6in">
                <fo:region-body margin-top="0.79in" margin-bottom="0.79in" />
            </fo:simple-page-master>
        </fo:layout-master-set>
    </xsl:variable>
    <xsl:output version="1.0" encoding="UTF-8" indent="no" omit-xml-declaration="no" media-type="text/html" />
    <xsl:decimal-format name="decimal" decimal-separator=',' grouping-separator='.' />
    <xsl:template match="/">
       <fo:root>
        <fo:layout-master-set>
            <fo:simple-page-master master-name="Letter" page-height="31.7cm" page-width="21.0cm" margin="1.5cm">
                <fo:region-body/>
            </fo:simple-page-master>
        </fo:layout-master-set>
        <fo:page-sequence master-reference="Letter">
            <fo:flow flow-name="xsl-region-body">
                <fo:block text-align="left" font-size="10pt">
                    <xsl:value-of select="Comprobante/Titulo"/>
                </fo:block>
                <fo:block border-before-width="1pt" space-before="5mm" font-family="sans-serif">
                <fo:block space-affter="1.1mm" text-align="left" font-size="8pt">
                    BCI Factoring
                </fo:block>
                <fo:block space-before="2mm" font-size="8pt">
                    <xsl:value-of select="Comprobante/NombreRepresentante"/>/ Ejecutivo de Cuentas 
                    <fo:block text-align="right" font-size="8pt">
                        Santiago,<xsl:value-of select="Comprobante/fechaHoy"/> 
                    </fo:block>
                </fo:block>
                <fo:block space-before="2mm" font-size="8pt" font-weight="bold">
                    Estimados señores:
                </fo:block>
                <fo:block space-before="2mm" font-size="8pt">
                    Solicito la prórroga del vencimiento de las facturas agregadas a esta solicitud de nuestro Cliente.
                </fo:block>
                
                <fo:block space-before="3mm" space-affter="1mm" font-size="10pt">
                    <xsl:value-of select="Comprobante/Subtitulo1"/>
                
                <fo:table>

                    <fo:table-column column-width="20mm"/>
                    <fo:table-column column-width="20mm"/>
                    <fo:table-column column-width="30mm"/>
                    <fo:table-column column-width="20mm"/>
                    <fo:table-column column-width="20mm"/>
                    <fo:table-column column-width="20mm"/>
                    <fo:table-column column-width="20mm"/>
                    <fo:table-column column-width="20mm"/>
                    
                    <fo:table-header>
                        <fo:table-row background-color="#848484">
                            <fo:table-cell border-style="solid" border-width="0.5pt">
                                <fo:block font-size="8pt" text-align="center">N° Documento</fo:block>
                            </fo:table-cell>
                            <fo:table-cell  border-style="solid" border-width="0.5pt">
                                <fo:block   font-size="8pt" text-align="center">Rut Deudor</fo:block>
                            </fo:table-cell>
                            <fo:table-cell   border-style="solid" border-width="0.5pt">
                                <fo:block  font-size="8pt" text-align="center">Razón Social Deudor</fo:block>
                            </fo:table-cell>
                            <fo:table-cell   border-style="solid" border-width="0.5pt">
                                <fo:block font-size="8pt" text-align="center">Monto Documento</fo:block>
                            </fo:table-cell>
                            <fo:table-cell  border-style="solid" border-width="0.5pt">
                                <fo:block font-size="8pt" text-align="center">Monto Anticipado</fo:block>
                            </fo:table-cell>
                            <fo:table-cell   border-style="solid" border-width="0.5pt">
                                <fo:block font-size="8pt" text-align="center">Fecha Vencimiento</fo:block>
                            </fo:table-cell>
                            <fo:table-cell   border-style="solid" border-width="0.5pt">
                                <fo:block font-size="8pt" text-align="center">Tasa Mora</fo:block>
                            </fo:table-cell>
                            <fo:table-cell   border-style="solid" border-width="0.5pt">
                                <fo:block font-size="8pt" text-align="center">Fecha Prórroga</fo:block>
                            </fo:table-cell>
                        </fo:table-row>
                    </fo:table-header>
                    <xsl:for-each select="//Comprobante/tablaVigente">
                        <fo:table-body>
                            <fo:table-row >
                                <fo:table-cell border-style="solid" border-width="0.5pt">
                                    <fo:block  font-size="8pt" text-align="center">
                                        <xsl:value-of select="numDoc"/>
-<xsl:value-of select="numCuota"/>
                                    </fo:block>
                                </fo:table-cell>
                                <fo:table-cell  border-style="solid" border-width="0.5pt">
                                    <fo:block font-size="8pt" text-align="center">
                                        <xsl:value-of select='format-number(rutDeudor, "###.###.###","decimal")'/>-<xsl:value-of select="digitoVerificador"/>
                                    </fo:block>
                                </fo:table-cell>
                                <fo:table-cell  border-style="solid" border-width="0.5pt">
                                    <fo:block font-size="8pt" text-align="center" >
                                        <xsl:value-of select="razonSocialDeudor"/>                                    
                                    </fo:block>
                                </fo:table-cell>
                                <fo:table-cell  border-style="solid" border-width="0.5pt">
                                    <fo:block font-size="8pt" text-align="right" >
                                        <xsl:value-of select='format-number(montoDocumento, "###.###.###","decimal")'/>                                                
                                    </fo:block>
                                </fo:table-cell>
                                <fo:table-cell  border-style="solid" border-width="0.5pt">
                                    <fo:block font-size="8pt" text-align="right" >
                                        <xsl:value-of select='format-number(montoAnticipo, "###.###.###","decimal")'/>                            
                                    </fo:block>
                                </fo:table-cell>
                                <fo:table-cell  border-style="solid" border-width="0.5pt">
                                    <fo:block font-size="8pt" text-align="center" >
                                        <xsl:value-of select="fechaVencimiento"/>    
                                    </fo:block>
                                </fo:table-cell>
                                <fo:table-cell  border-style="solid" border-width="0.5pt">
                                    <fo:block font-size="8pt" text-align="right" >
                                        <xsl:value-of select='tazaMora'/>%
                                    </fo:block>
                                </fo:table-cell>
                                <fo:table-cell  border-style="solid" border-width="0.5pt">
                                    <fo:block font-size="8pt" text-align="center" >
                                        <xsl:value-of select="fechaProrroga"/>
                                    </fo:block>
                                </fo:table-cell>
                            </fo:table-row>
                        </fo:table-body>
                    </xsl:for-each>
                </fo:table>
                </fo:block>
                <fo:block space-before="3mm" space-affter="0.1mm" font-size="10pt">
                    <xsl:value-of select="Comprobante/Subtitulo1" />
                
                <fo:table >

                    <fo:table-column column-width="20mm"/>
                    <fo:table-column column-width="20mm"/>
                    <fo:table-column column-width="30mm"/>
                    <fo:table-column column-width="20mm"/>
                    <fo:table-column column-width="20mm"/>
                    <fo:table-column column-width="20mm"/>
                    <fo:table-column column-width="20mm"/>
                    <fo:table-column column-width="20mm"/>
                    
                    <fo:table-header>
                        <fo:table-row background-color="#848484">
                            <fo:table-cell border-style="solid" border-width="0.5pt">
                                <fo:block font-size="8pt" text-align="center">N° Documento</fo:block>
                            </fo:table-cell>
                            <fo:table-cell  border-style="solid" border-width="0.5pt">
                                <fo:block   font-size="8pt" text-align="center">Rut Deudor</fo:block>
                            </fo:table-cell>
                            <fo:table-cell   border-style="solid" border-width="0.5pt">
                                <fo:block  font-size="8pt" text-align="center">Razón Social Deudor</fo:block>
                            </fo:table-cell>
                            <fo:table-cell   border-style="solid" border-width="0.5pt">
                                <fo:block font-size="8pt" text-align="center">Monto Documento</fo:block>
                            </fo:table-cell>
                            <fo:table-cell  border-style="solid" border-width="0.5pt">
                                <fo:block font-size="8pt" text-align="center">Monto Anticipado</fo:block>
                            </fo:table-cell>
                            <fo:table-cell   border-style="solid" border-width="0.5pt">
                                <fo:block font-size="8pt" text-align="center">Fecha Vencimiento</fo:block>
                            </fo:table-cell>
                            <fo:table-cell   border-style="solid" border-width="0.5pt">
                                <fo:block font-size="8pt" text-align="center">Tasa Mora</fo:block>
                            </fo:table-cell>
                            <fo:table-cell   border-style="solid" border-width="0.5pt">
                                <fo:block font-size="8pt" text-align="center">Fecha Prórroga</fo:block>
                            </fo:table-cell>
                        </fo:table-row>
                    </fo:table-header>
                    <xsl:for-each select="//Comprobante/tablaMoroso">
                        <fo:table-body>
                            <fo:table-row >
                                <fo:table-cell border-style="solid" border-width="0.5pt">
                                    <fo:block  font-size="8pt" text-align="center">
                                        <xsl:value-of select="numDoc"/>
-<xsl:value-of select="numCuota"/>
                                    </fo:block>
                                </fo:table-cell>
                                <fo:table-cell  border-style="solid" border-width="0.5pt">
                                    <fo:block font-size="8pt" text-align="center">
                                        <xsl:value-of select='format-number(rutDeudor, "###.###.###","decimal")'/>-<xsl:value-of select="digitoVerificador"/>
                                    </fo:block>
                                </fo:table-cell>
                                <fo:table-cell  border-style="solid" border-width="0.5pt">
                                    <fo:block font-size="8pt" text-align="center" >
                                        <xsl:value-of select="razonSocialDeudor"/>                                    
                                    </fo:block>
                                </fo:table-cell>
                                <fo:table-cell  border-style="solid" border-width="0.5pt">
                                    <fo:block font-size="8pt" text-align="right" >
                                        <xsl:value-of select='format-number(montoDocumento, "###.###.###","decimal")'/>                                                
                                    </fo:block>
                                </fo:table-cell>
                                <fo:table-cell  border-style="solid" border-width="0.5pt">
                                    <fo:block font-size="8pt" text-align="right" >
                                        <xsl:value-of select='format-number(montoAnticipo, "###.###.###","decimal")'/>                            
                                    </fo:block>
                                </fo:table-cell>
                                <fo:table-cell  border-style="solid" border-width="0.5pt">
                                    <fo:block font-size="8pt" text-align="center" >
                                        <xsl:value-of select="fechaVencimiento"/>    
                                    </fo:block>
                                </fo:table-cell>
                                <fo:table-cell  border-style="solid" border-width="0.5pt">
                                    <fo:block font-size="8pt" text-align="right" >
                                        <xsl:value-of select='tazaMora'/>%
                                    </fo:block>
                                </fo:table-cell>
                                <fo:table-cell  border-style="solid" border-width="0.5pt">
                                    <fo:block font-size="8pt" text-align="center" >
                                        <xsl:value-of select="fechaProrroga"/>
                                    </fo:block>
                                </fo:table-cell>
                            </fo:table-row>
                        </fo:table-body>
                    </xsl:for-each>
                </fo:table>
                </fo:block>
                <fo:block  space-before="3mm" space-affter="2.1mm" font-size="8pt" text-align="left" >Agradeciendo la gestión,</fo:block>
                <fo:block font-size="8pt" text-align="left" font-weight="bold">
                    <fo:block>
                        <xsl:value-of select="Comprobante/NombreRepresentante"/>
                    </fo:block>
                    <fo:block>
                        <xsl:value-of select="Comprobante/NombreEmpresa"/>
                    </fo:block>
                    <fo:block>
                        <xsl:value-of select='format-number(Comprobante/RutEmpresa, "###.###.###","decimal")'/>-<xsl:value-of select="Comprobante/DVEmpresa"/>
                    </fo:block>
                </fo:block>
                </fo:block>
            </fo:flow>
        </fo:page-sequence>
    </fo:root>
    </xsl:template>
</xsl:stylesheet>