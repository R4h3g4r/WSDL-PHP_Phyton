<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format">
    <xsl:template match="historial">
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
                               url('<xsl:value-of select="detalle/rutaLogoCabecera" />')
                               </xsl:attribute>
                             </fo:external-graphic>
                       </fo:block>
               </fo:static-content>
               <fo:static-content flow-name="xsl-region-after" margin-left="18.7cm" font-size="12pt" font-family="Arial">
                      <fo:block font-weight="bold" font-size="8pt" color="{$txt}" font-family="Arial Narrow">
                           Página   <fo:page-number/>
                      </fo:block>
                 </fo:static-content>
                <fo:flow flow-name="xsl-region-body">
                 <fo:block background-position="center"  margin-left="117mm"  background-repeat="no-repeat"> 
                 <fo:block margin-left="40mm"  width="200pt" height="100pt" >
                        <fo:block>
                        <fo:table width="50cm" space-after="1cm" >
                        <fo:table-column column-width="25cm"/>
                        <fo:table-column column-width="25cm"/>
                          <fo:table-body>
                             <fo:table-row>
                                <fo:table-cell>
                                  <fo:block font-weight="bold" margin-left="70mm"  font-size="12pt" color="{$txt}" font-family="Arial">Historial de Nómina</fo:block>    
                               </fo:table-cell>
                             </fo:table-row>
                        </fo:table-body>
                       </fo:table>
                    </fo:block>
                    </fo:block>
                      <fo:block font-size="5pt" space-after="0.5cm" space-before="1cm">
                            <fo:table width="19cm" >
                                <fo:table-column column-width="2cm"/>
                                <fo:table-column column-width="3cm"/>
                                <fo:table-column column-width="5cm"/>
                                <fo:table-column column-width="3cm"/>
                                <fo:table-header space-after="1cm">
                                    <fo:table-row margin-left="0mm">
                                        <fo:table-cell number-columns-spanned="8">
                                          <fo:block font-weight="bold" text-align="left" font-size="10pt" color="{$txt}" font-family="Arial">
                                          Código de Identificación:
                                          <xsl:value-of select="encabezado/codigo"/>
                                          </fo:block>
                                          <fo:block font-weight="bold" text-align="left" font-size="10pt" color="{$txt}" font-family="Arial">
                                          Rut Pagador:
                                          <xsl:value-of select="encabezado/rutPagador"/>
                                          </fo:block>
                                          <fo:block font-weight="bold" text-align="left" font-size="10pt" color="{$txt}" font-family="Arial">
                                          Razón Social:
                                          <xsl:value-of select="encabezado/razonSocial"/>
                                          </fo:block>
                                        </fo:table-cell>
                                    </fo:table-row>
                                </fo:table-header>
                                <fo:table-body>
                                    <fo:table-row>
                                        <fo:table-cell number-rows-spanned="1" border="0.5pt solid {$lineas}">
                                            <fo:block font-size="8pt" font-family="Arial" text-align="left" font-stretch="condensed" space-after="1mm" space-before="1mm" color="{$txt}" margin-left="1mm">
                                                Evento
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell number-rows-spanned="1" border="0.5pt solid {$lineas}">
                                            <fo:block font-size="9pt" font-family="Arial" text-align="left" font-stretch="condensed" space-after="1mm" space-before="1mm" color="{$txt}" margin-left="1mm">
                                                Fecha y Hora
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell number-rows-spanned="1" border="0.5pt solid {$lineas}">
                                            <fo:block font-size="9pt" font-family="Arial" text-align="left" font-stretch="condensed" space-after="1mm" space-before="1mm" color="{$txt}" margin-left="1mm">
                                                Usuario
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell number-rows-spanned="1" border="0.5pt solid {$lineas}">
                                            <fo:block font-size="9pt" font-family="Arial" text-align="left" font-stretch="condensed" space-after="1mm" space-before="1mm" color="{$txt}" margin-left="1mm">
                                                Glosa
                                            </fo:block>
                                        </fo:table-cell>
                                    </fo:table-row>
                                    <xsl:for-each select="detalle/historial">
                                        <fo:table-row>
                                         <fo:table-cell border-left-style="solid" number-columns-spanned="1" border="0.5pt solid {$lineas}">
                                                <fo:block font-size="8pt" font-family="Arial" text-align="left" font-stretch="condensed" space-before="1mm" color="{$txt}" margin-left="1mm">
                                                    <xsl:value-of select="evento"/>
                                                </fo:block>
                                            </fo:table-cell>
                                             <fo:table-cell border-left-style="solid" number-columns-spanned="1" border="0.5pt solid {$lineas}">
                                                <fo:block font-size="8pt" font-family="Arial" text-align="left" font-stretch="condensed" space-before="1mm" color="{$txt}" margin-left="1mm">
                                                    <xsl:value-of select="fechaEvento"/>
                                                 </fo:block>
                                            </fo:table-cell>
                                             <fo:table-cell border-left-style="solid" number-columns-spanned="1" border="0.5pt solid {$lineas}">
                                                <fo:block font-size="8pt" font-family="Arial" text-align="left" font-stretch="condensed" space-before="1mm" color="{$txt}" margin-left="1mm">
                                                    <xsl:value-of select="usuario"/>
                                                 </fo:block>
                                            </fo:table-cell>
                                              <fo:table-cell border-left-style="solid" number-columns-spanned="1" border="0.5pt solid {$lineas}">
                                              <fo:block font-size="8pt" font-family="Arial" text-align="left" font-stretch="condensed" space-before="1mm" color="{$txt}" margin-left="1mm">
                                                    <xsl:value-of select="glosa"/>
                                                 </fo:block>
                                            </fo:table-cell>
                                        </fo:table-row>
                                    </xsl:for-each>
                                </fo:table-body>
                            </fo:table>
                        </fo:block>
                    <fo:block>
                    </fo:block>
                    <fo:block> 
                    </fo:block>
                   </fo:block> 
                    <fo:block space-before="1cm" font-size="8pt" margin-left="0mm">
                           Estimado Cliente,
                    </fo:block>
                     <fo:block space-before="0cm" font-size="8pt" margin-left="0mm">
                           Recuerde imprimir o guardar este comprobante como respaldo de su operación.
                    </fo:block>
                </fo:flow>
            </fo:page-sequence>
        </fo:root>
    </xsl:template>
</xsl:stylesheet>
