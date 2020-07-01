<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format">
    <xsl:template match="DetalleNomina/detalle">
        <xsl:variable name="titulos">
            #FFFFFF
        </xsl:variable>
        <xsl:variable name="lineas">
            #EBEBEB
        </xsl:variable>
        <xsl:variable name="txt">
            #000000
        </xsl:variable>
        <xsl:variable name="sombreadoTablas">
            #CFCFCF
        </xsl:variable>
        <fo:root xmlns:fo="http://www.w3.org/1999/XSL/Format">
            <fo:layout-master-set>
                <fo:simple-page-master master-name="all-pages" page-width="8.5in" page-height="11in">
                    <fo:region-body padding="0" margin="0.7in" region-name="xsl-region-body" column-gap="0.25in"/>
                    <fo:region-before padding="0" region-name="xsl-region-before" display-align="after" extent="0.7in"/>
                    <fo:region-after padding="0" region-name="xsl-region-after" display-align="before" extent="0.7in"/>
                </fo:simple-page-master>
                <fo:page-sequence-master master-name="default-page">
                    <fo:repeatable-page-master-reference master-reference="all-pages"/>
                </fo:page-sequence-master>
            </fo:layout-master-set>
            <fo:page-sequence master-reference="default-page" initial-page-number="1" format="1">
              <fo:static-content flow-name="xsl-region-before" margin-left="2.7cm"  font-size="12pt" font-family="Arial">
                        <fo:block >
                              <fo:external-graphic width="100pt" >
                               <xsl:attribute name="src">
                               url('<xsl:value-of select="rutaLogoCabecera" />')
                               </xsl:attribute>
                             </fo:external-graphic>
                       </fo:block>
               </fo:static-content>
               <fo:static-content flow-name="xsl-region-after" margin-left="18.7cm" font-size="12pt" font-family="Arial">
                      <fo:block font-weight="bold" font-size="8pt" color="{$txt}" font-family="Arial Narrow">
                           <xsl:value-of select="fechaHoy" /> Página <fo:page-number/>
                      </fo:block>
                 </fo:static-content>
                <fo:flow flow-name="xsl-region-body">
                    <fo:block> 
                        <fo:table width="19cm" >
                            <fo:table-column column-width="1cm"/>
                            <fo:table-column column-width="1cm"/>
                            <fo:table-body>
                                <fo:table-row>
                                    <fo:table-cell number-columns-spanned="2">
                                        <fo:block font-size="10pt" color="{$txt}" font-family="Arial">
                                            <xsl:text>&#160;</xsl:text>
                                        </fo:block>
                                    </fo:table-cell>
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell number-columns-spanned="2">
                                        <fo:block font-size="10pt" color="{$txt}" font-family="Arial">
                                            <xsl:text>&#160;</xsl:text>
                                        </fo:block>
                                    </fo:table-cell>
                                </fo:table-row>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block font-weight="bold" font-size="12pt" color="#C6C6C6" font-family="Arial">
                                            Detalle de Nómina
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:block font-size="10pt" color="{$txt}" font-family="Arial">
                                        </fo:block>
                                    </fo:table-cell>
                                </fo:table-row>
                            </fo:table-body>
                        </fo:table>
                        <fo:block font-size="5pt" space-after="0.5cm" space-before="1cm">
                            <fo:block>
                                <fo:table width="19cm" >
                                    <fo:table-column column-width="1.5cm"/>
                                    <fo:table-column column-width="0.3mm"/>
                                    <fo:table-column column-width="1.5cm"/>
                                    <fo:table-body>
                                        <fo:table-row>
                                            <fo:table-cell number-columns-spanned="5" background-color="#C8C8C8" color="#FFFFFF">
                                                <fo:block font-weight="bold" font-size="12pt" font-family="Arial">
                                                    Datos Pagador
                                                </fo:block>
                                            </fo:table-cell>
                                        </fo:table-row>
                                        <fo:table-row>
                                            <fo:table-cell number-columns-spanned="5">
                                                <fo:block font-size="10pt" color="{$txt}" font-family="Arial">
                                                    <xsl:text>&#160;</xsl:text>
                                                </fo:block>
                                            </fo:table-cell>
                                        </fo:table-row>
                                        <fo:table-row>
                                            <fo:table-cell background-color="#F0F0F0" color="#666666">
                                                <fo:block font-size="10pt" font-family="Arial">
                                                    Nombre/Razón Social 
                                                </fo:block>
                                                <fo:block font-weight="bold" font-size="10pt" font-family="Arial">
                                                    <xsl:value-of select="razonSocial" />
                                                </fo:block>    
                                            </fo:table-cell>
                                            <fo:table-cell>
                                                <fo:block font-size="10pt" color="{$txt}" font-family="Arial">
                                                    <xsl:text>&#160;</xsl:text>
                                                </fo:block>
                                            </fo:table-cell>
                                            <fo:table-cell background-color="#F0F0F0" color="#666666">
                                                <fo:block font-size="10pt" font-family="Arial">
                                                    Rut Pagador
                                                </fo:block>
                                                <fo:block font-weight="bold" font-size="10pt" font-family="Arial">
                                                    <xsl:value-of select="rutEmpresa" />
                                                </fo:block>    
                                            </fo:table-cell>
                                            <fo:table-cell>
                                                <fo:block font-size="10pt" color="{$txt}" font-family="Arial">
                                                    <xsl:text>&#160;</xsl:text>
                                                </fo:block>
                                            </fo:table-cell>
                                       </fo:table-row>
                                    </fo:table-body>
                                </fo:table>
                                
                                
                                
                                
                                
                                <fo:table width="19cm" >
                                    <fo:table-column column-width="1cm"/>
                                    <fo:table-column column-width="0.3mm"/>
                                    <fo:table-column column-width="1cm"/>
                                    <fo:table-column column-width="0.3mm"/>
                                    <fo:table-column column-width="1cm"/>
                                    <fo:table-body>
                                        <fo:table-row>
                                            <fo:table-cell number-columns-spanned="5">
                                                <fo:block font-size="10pt" color="{$txt}" font-family="Arial">
                                                    <xsl:text>&#160;</xsl:text>
                                                </fo:block>
                                            </fo:table-cell>
                                        </fo:table-row>
                                        <fo:table-row>
                                            <fo:table-cell number-columns-spanned="5" background-color="#C8C8C8" color="#FFFFFF">
                                                <fo:block font-weight="bold" font-size="12pt" font-family="Arial">
                                                    Datos Nómina
                                                </fo:block>
                                            </fo:table-cell>
                                        </fo:table-row>
                                        <fo:table-row>
                                            <fo:table-cell number-columns-spanned="5">
                                                <fo:block font-size="10pt" color="{$txt}" font-family="Arial">
                                                    <xsl:text>&#160;</xsl:text>
                                                </fo:block>
                                            </fo:table-cell>
                                        </fo:table-row>
                                        <fo:table-row>
                                            <fo:table-cell background-color="#F0F0F0" color="#666666">
                                                <fo:block font-size="10pt" font-family="Arial">
                                                    Código Identificación
                                                </fo:block>
                                                <fo:block font-weight="bold" font-size="10pt" font-family="Arial">
                                                    <xsl:value-of select="numeroFolio" />
                                                </fo:block>    
                                            </fo:table-cell>
                                            <fo:table-cell>
                                                <fo:block font-size="10pt" color="{$txt}" font-family="Arial">
                                                    <xsl:text>&#160;</xsl:text>
                                                </fo:block>
                                            </fo:table-cell>
                                            <fo:table-cell background-color="#F0F0F0" color="#666666">
                                                <fo:block font-size="10pt" font-family="Arial">
                                                    Nombre Nómina
                                                </fo:block>
                                                <fo:block font-weight="bold" font-size="10pt" font-family="Arial">
                                                    <xsl:value-of select="nombreArchivo" />
                                                </fo:block>    
                                            </fo:table-cell>
                                            <fo:table-cell>
                                                <fo:block font-size="10pt" color="{$txt}" font-family="Arial">
                                                    <xsl:text>&#160;</xsl:text>
                                                </fo:block>
                                            </fo:table-cell>
                                            <fo:table-cell background-color="#F0F0F0" color="#666666">
                                                <fo:block font-size="10pt" font-family="Arial">
                                                    Cuenta Cargo
                                                </fo:block>
                                                <fo:block font-weight="bold" font-size="10pt" font-family="Arial">
                                                    <xsl:value-of select="cuentaCargoAbono" />
                                                </fo:block>    
                                            </fo:table-cell>
                                        </fo:table-row>
                                        <fo:table-row>
                                            <fo:table-cell number-columns-spanned="5">
                                                <fo:block font-size="4pt" color="{$txt}" font-family="Arial">
                                                    <xsl:text>&#160;</xsl:text>
                                                </fo:block>
                                            </fo:table-cell>
                                        </fo:table-row>
                                        <fo:table-row>
                                            <fo:table-cell background-color="#F0F0F0" color="#666666">
                                                <fo:block font-size="10pt" font-family="Arial">
                                                    Fecha Carga
                                                </fo:block>
                                                <fo:block font-weight="bold" font-size="10pt" font-family="Arial">
                                                    <xsl:value-of select="fechaCarga" />
                                                </fo:block>    
                                            </fo:table-cell>
                                            <fo:table-cell>
                                                <fo:block font-size="10pt" color="{$txt}" font-family="Arial">
                                                    <xsl:text>&#160;</xsl:text>
                                                </fo:block>
                                            </fo:table-cell>
                                            <fo:table-cell background-color="#F0F0F0" color="#666666">
                                                <fo:block font-size="10pt" font-family="Arial">
                                                    Fecha Pago
                                                </fo:block>
                                                <fo:block font-weight="bold" font-size="10pt" font-family="Arial">
                                                    <xsl:value-of select="fechaPago" />
                                                </fo:block>    
                                            </fo:table-cell>
                                            <fo:table-cell>
                                                <fo:block font-size="10pt" color="{$txt}" font-family="Arial">
                                                    <xsl:text>&#160;</xsl:text>
                                                </fo:block>
                                            </fo:table-cell>
                                            <fo:table-cell background-color="#F0F0F0" color="#666666">
                                                <fo:block font-size="10pt" font-family="Arial">
                                                    Monto a Pagar($)
                                                </fo:block>
                                                <fo:block font-weight="bold" font-size="10pt" font-family="Arial">
                                                    <xsl:value-of select="montoPagar" />
                                                </fo:block>    
                                            </fo:table-cell>
                                        </fo:table-row>
                                        <fo:table-row>
                                            <fo:table-cell number-columns-spanned="5">
                                                <fo:block font-size="10pt" color="{$txt}" font-family="Arial">
                                                    <xsl:text>&#160;</xsl:text>
                                                </fo:block>
                                            </fo:table-cell>
                                        </fo:table-row>
                                        <fo:table-row>
                                            <fo:table-cell background-color="#F0F0F0" color="#666666">
                                                <fo:block font-size="10pt" font-family="Arial">
                                                    Modalidad Cargo
                                                </fo:block>
                                                <fo:block font-weight="bold" font-size="10pt" font-family="Arial">
                                                    <xsl:value-of select="modalidadDePago" />
                                                </fo:block>    
                                            </fo:table-cell>
                                            <fo:table-cell>
                                                <fo:block font-size="10pt" color="{$txt}" font-family="Arial">
                                                    <xsl:text>&#160;</xsl:text>
                                                </fo:block>
                                            </fo:table-cell>
                                            <fo:table-cell background-color="#F0F0F0" color="#666666">
                                                <fo:block font-size="10pt" font-family="Arial">
                                                    Estado
                                                </fo:block>
                                                <fo:block font-weight="bold" font-size="10pt" font-family="Arial">
                                                    <xsl:value-of select="estadoNomina" />
                                                </fo:block>    
                                            </fo:table-cell>
                                            <fo:table-cell>
                                                <fo:block font-size="10pt" color="{$txt}" font-family="Arial">
                                                    <xsl:text>&#160;</xsl:text>
                                                </fo:block>
                                            </fo:table-cell>
                                        </fo:table-row>
                                        <fo:table-row>
                                            <fo:table-cell number-columns-spanned="5">
                                                <fo:block font-size="10pt" color="{$txt}" font-family="Arial">
                                                    <xsl:text>&#160;</xsl:text>
                                                </fo:block>
                                            </fo:table-cell>
                                        </fo:table-row>
                                    </fo:table-body>
                                </fo:table>
                                
                                
                                
                                
                                
                                <fo:block font-size="10pt" color="{$txt}" font-family="Arial">
                                    <xsl:text>&#160;</xsl:text>
                                </fo:block>
                                <fo:block font-size="10pt" color="{$txt}" font-family="Arial">
                                    <xsl:text>&#160;</xsl:text>
                                </fo:block>
                                <fo:block font-size="10pt" color="{$txt}" font-family="Arial">
                                    <xsl:text>&#160;</xsl:text>
                                </fo:block>
                                <fo:table width="19cm" background-color="#F0F0F0">
                                    <fo:table-column column-width="2cm"/>
                                    <fo:table-column column-width="0.3mm"/>
                                    <fo:table-column column-width="1cm"/>
                                    <fo:table-column column-width="0.3mm"/>
                                    <fo:table-column column-width="1cm"/>
                                    <fo:table-column column-width="0.3mm"/>
                                    <fo:table-column column-width="1cm"/>
                                    <fo:table-column column-width="0.3mm"/>
                                    <fo:table-column column-width="1cm"/>
                                    <fo:table-column column-width="0.3mm"/>
                                    <fo:table-column column-width="1cm"/>
                                    <fo:table-column column-width="0.3mm"/>
                                    <fo:table-column column-width="1cm"/>
                                    <fo:table-body>
                                        <fo:table-row>
                                            <fo:table-cell number-columns-spanned="13" color="#000000">
                                                <fo:block font-weight="bold" font-size="12pt" font-family="Arial">
                                                    Totales por Formas de Pago
                                                </fo:block>
                                            </fo:table-cell>
                                        </fo:table-row>
                                        <fo:table-row>
                                            <fo:table-cell number-columns-spanned="13">
                                                <fo:block font-size="4pt" color="{$txt}" font-family="Arial">
                                                    <xsl:text>&#160;</xsl:text>
                                                </fo:block>
                                            </fo:table-cell>
                                        </fo:table-row>
                                        <fo:table-row font-size="10pt">
                                            <fo:table-cell color="#FFFFFF" background-color="#C8C8C8" text-align="center">
                                                <fo:block font-weight="bold" font-family="Arial">
                                                    Forma de Pago
                                                </fo:block>
                                            </fo:table-cell>
                                            <fo:table-cell>
                                                <fo:block color="{$txt}" font-family="Arial">
                                                    <xsl:text>&#160;</xsl:text>
                                                </fo:block>
                                            </fo:table-cell>
                                            <fo:table-cell color="#FFFFFF" background-color="#C8C8C8" text-align="center">
                                                <fo:block font-weight="bold" font-family="Arial">
                                                    Nº de Pagos
                                                </fo:block>
                                            </fo:table-cell>
                                            <fo:table-cell>
                                                <fo:block color="{$txt}" font-family="Arial">
                                                    <xsl:text>&#160;</xsl:text>
                                                </fo:block>
                                            </fo:table-cell>
                                            <fo:table-cell color="#FFFFFF" background-color="#C8C8C8" text-align="center">
                                                <fo:block font-weight="bold" font-family="Arial">
                                                    Monto Total ($)
                                                </fo:block>
                                            </fo:table-cell>
                                            <fo:table-cell>
                                                <fo:block  color="{$txt}" font-family="Arial">
                                                    <xsl:text>&#160;</xsl:text>
                                                </fo:block>
                                            </fo:table-cell>
                                            <fo:table-cell color="#FFFFFF" background-color="#C8C8C8" text-align="center">
                                                <fo:block font-weight="bold" font-family="Arial">
                                                    Nº Rechazados
                                                </fo:block>
                                            </fo:table-cell>
                                            <fo:table-cell>
                                                <fo:block  color="{$txt}" font-family="Arial">
                                                    <xsl:text>&#160;</xsl:text>
                                                </fo:block>
                                            </fo:table-cell>
                                            <fo:table-cell color="#FFFFFF" background-color="#C8C8C8" text-align="center">
                                                <fo:block font-weight="bold" font-family="Arial">
                                                    Monto Rechazado ($)
                                                </fo:block>
                                            </fo:table-cell>
                                            <fo:table-cell>
                                                <fo:block  color="{$txt}" font-family="Arial">
                                                    <xsl:text>&#160;</xsl:text>
                                                </fo:block>
                                            </fo:table-cell>
                                            <fo:table-cell color="#FFFFFF" background-color="#C8C8C8" text-align="center">
                                                <fo:block font-weight="bold" font-family="Arial">
                                                    Nº Aceptados
                                                </fo:block>
                                            </fo:table-cell>
                                            <fo:table-cell>
                                                <fo:block  color="{$txt}" font-family="Arial">
                                                    <xsl:text>&#160;</xsl:text>
                                                </fo:block>
                                            </fo:table-cell>
                                            <fo:table-cell color="#FFFFFF" background-color="#C8C8C8" text-align="center">
                                                <fo:block font-weight="bold" font-family="Arial">
                                                    Monto Aceptado ($)
                                                </fo:block>
                                            </fo:table-cell>
                                        </fo:table-row>
                                        <xsl:for-each select="totalesFormasPago/lista">
                                            <fo:table-row font-size="8pt">
                                                <fo:table-cell color="#000000" background-color="#FFFFFF" text-align="left">
                                                    <fo:block font-family="Arial">
                                                        <xsl:value-of select="descripcionFormaPago" />
                                                    </fo:block>
                                                </fo:table-cell>
                                                <fo:table-cell>
                                                    <fo:block  color="{$txt}" font-family="Arial">
                                                        <xsl:text>&#160;</xsl:text>
                                                    </fo:block>
                                                </fo:table-cell>
                                                <fo:table-cell color="#000000" background-color="#FFFFFF" text-align="right">
                                                    <fo:block font-family="Arial">
                                                        <xsl:value-of select="totalRegistros" />
                                                    </fo:block>
                                                </fo:table-cell>
                                                <fo:table-cell>
                                                    <fo:block  color="{$txt}" font-family="Arial">
                                                        <xsl:text>&#160;</xsl:text>
                                                    </fo:block>
                                                </fo:table-cell>
                                                <fo:table-cell color="#000000" background-color="#FFFFFF" text-align="right">
                                                    <fo:block font-family="Arial">
                                                        <xsl:value-of select="montoTotal" />
                                                    </fo:block>
                                                </fo:table-cell>
                                                <fo:table-cell>
                                                    <fo:block  color="{$txt}" font-family="Arial">
                                                        <xsl:text>&#160;</xsl:text>
                                                    </fo:block>
                                                </fo:table-cell>
                                                <fo:table-cell color="#000000" background-color="#FFFFFF" text-align="right">
                                                    <fo:block font-family="Arial">
                                                        <xsl:value-of select="totalRechazados" />
                                                    </fo:block>
                                                </fo:table-cell>
                                                <fo:table-cell>
                                                    <fo:block  color="{$txt}" font-family="Arial">
                                                        <xsl:text>&#160;</xsl:text>
                                                    </fo:block>
                                                </fo:table-cell>
                                                <fo:table-cell color="#000000" background-color="#FFFFFF" text-align="right">
                                                    <fo:block font-family="Arial">
                                                        <xsl:value-of select="montoRechazados" />
                                                    </fo:block>
                                                </fo:table-cell>
                                                <fo:table-cell>
                                                    <fo:block  color="{$txt}" font-family="Arial">
                                                        <xsl:text>&#160;</xsl:text>
                                                    </fo:block>
                                                </fo:table-cell>
                                                <fo:table-cell color="#000000" background-color="#FFFFFF" text-align="right">
                                                    <fo:block font-family="Arial">
                                                        <xsl:value-of select="totalAceptados" />
                                                    </fo:block>
                                                </fo:table-cell>
                                                <fo:table-cell>
                                                    <fo:block  color="{$txt}" font-family="Arial">
                                                        <xsl:text>&#160;</xsl:text>
                                                    </fo:block>
                                                </fo:table-cell>
                                                <fo:table-cell color="#000000" background-color="#FFFFFF" text-align="right">
                                                    <fo:block font-family="Arial">
                                                        <xsl:value-of select="montoAceptados" />
                                                    </fo:block>
                                                </fo:table-cell>
                                            </fo:table-row>
                                            <fo:table-row>
                                                <fo:table-cell number-columns-spanned="13">
                                                    <fo:block font-size="2pt" color="{$txt}" font-family="Arial">
                                                        <xsl:text>&#160;</xsl:text>
                                                    </fo:block>
                                                </fo:table-cell>
                                            </fo:table-row>
                                        </xsl:for-each>
                                        <fo:table-row font-size="10pt">
                                            <fo:table-cell color="#000000" background-color="#FFFFFF" text-align="left">
                                                <fo:block font-weight="bold" font-family="Arial">
                                                    <xsl:value-of select="descripcionFormaPago" />
                                                </fo:block>
                                            </fo:table-cell>
                                            <fo:table-cell>
                                                <fo:block  color="{$txt}" font-family="Arial">
                                                    <xsl:text>&#160;</xsl:text>
                                                </fo:block>
                                            </fo:table-cell>
                                            <fo:table-cell color="#000000" background-color="#FFFFFF" text-align="right">
                                                <fo:block font-weight="bold" font-family="Arial">
                                                    <xsl:value-of select="totalRegistros" />
                                                </fo:block>
                                            </fo:table-cell>
                                            <fo:table-cell>
                                                <fo:block  color="{$txt}" font-family="Arial">
                                                    <xsl:text>&#160;</xsl:text>
                                                </fo:block>
                                            </fo:table-cell>
                                            <fo:table-cell color="#000000" background-color="#FFFFFF" text-align="right">
                                                <fo:block font-weight="bold" font-family="Arial">
                                                    <xsl:value-of select="montoTotal" />
                                                </fo:block>
                                            </fo:table-cell>
                                            <fo:table-cell>
                                                <fo:block  color="{$txt}" font-family="Arial">
                                                    <xsl:text>&#160;</xsl:text>
                                                </fo:block>
                                            </fo:table-cell>
                                            <fo:table-cell color="#000000" background-color="#FFFFFF" text-align="right">
                                                <fo:block font-weight="bold" font-family="Arial">
                                                    <xsl:value-of select="totalRechazados" />
                                                </fo:block>
                                            </fo:table-cell>
                                            <fo:table-cell>
                                                <fo:block  color="{$txt}" font-family="Arial">
                                                    <xsl:text>&#160;</xsl:text>
                                                </fo:block>
                                            </fo:table-cell>
                                            <fo:table-cell color="#000000" background-color="#FFFFFF" text-align="right">
                                                <fo:block font-weight="bold" font-family="Arial">
                                                    <xsl:value-of select="montoRechazados" />
                                                </fo:block>
                                            </fo:table-cell>
                                            <fo:table-cell>
                                                <fo:block  color="{$txt}" font-family="Arial">
                                                    <xsl:text>&#160;</xsl:text>
                                                </fo:block>
                                            </fo:table-cell>
                                            <fo:table-cell color="#000000" background-color="#FFFFFF" text-align="right">
                                                <fo:block font-weight="bold" font-family="Arial">
                                                    <xsl:value-of select="totalAceptados" />
                                                </fo:block>
                                            </fo:table-cell>
                                            <fo:table-cell>
                                                <fo:block  color="{$txt}" font-family="Arial">
                                                    <xsl:text>&#160;</xsl:text>
                                                </fo:block>
                                            </fo:table-cell>
                                            <fo:table-cell color="#000000" background-color="#FFFFFF" text-align="right">
                                                <fo:block font-weight="bold" font-family="Arial">
                                                    <xsl:value-of select="montoAceptados" />
                                                </fo:block>
                                            </fo:table-cell>
                                        </fo:table-row>
                                        <fo:table-row>
                                            <fo:table-cell number-columns-spanned="13">
                                                <fo:block font-size="2pt" color="{$txt}" font-family="Arial">
                                                    <xsl:text>&#160;</xsl:text>
                                                </fo:block>
                                            </fo:table-cell>
                                        </fo:table-row>
                                    </fo:table-body>
                                </fo:table>
                            </fo:block>
                        </fo:block>
                    <fo:block>
                    </fo:block>
                    <fo:block> 
                    </fo:block>
                   </fo:block>
                </fo:flow>
            </fo:page-sequence>
        </fo:root>
    </xsl:template>
</xsl:stylesheet>