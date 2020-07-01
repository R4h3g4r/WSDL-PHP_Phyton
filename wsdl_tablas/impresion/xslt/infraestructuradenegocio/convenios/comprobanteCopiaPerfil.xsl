<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format">
    <xsl:template match="DetalleComprobante/detalle">
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
                            <fo:table-column column-width="30cm"/>
                            <fo:table-column column-width="30cm"/>

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
                                        <fo:block font-weight="bold" font-size="17pt" color="black" font-family="Arial">
                                            Número de Comprobante <xsl:value-of select="numeroComprobante" />
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
                                                    Datos Comprobante
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
                                                    Nombre Usuario Origen
                                                </fo:block>
                                                <fo:block font-weight="bold" font-size="10pt" font-family="Arial">
                                                    <xsl:value-of select="nombreUsuarioOrigen" />
                                                </fo:block>
                                            </fo:table-cell>
                                            <fo:table-cell>
                                                <fo:block font-size="10pt" color="{$txt}" font-family="Arial">
                                                    <xsl:text>&#160;</xsl:text>
                                                </fo:block>
                                            </fo:table-cell>
                                            <fo:table-cell background-color="#F0F0F0" color="#666666">
                                                <fo:block font-size="10pt" font-family="Arial">
                                                    Rut Usuario Origen
                                                </fo:block>
                                                <fo:block font-weight="bold" font-size="10pt" font-family="Arial">
                                                    <xsl:value-of select="rutUsuarioOrigen" />
                                                </fo:block>    
                                            </fo:table-cell>
                                            <fo:table-cell>
                                                <fo:block font-size="10pt" color="{$txt}" font-family="Arial">
                                                    <xsl:text>&#160;</xsl:text>
                                                </fo:block>
                                            </fo:table-cell>
                                            <fo:table-cell background-color="#F0F0F0" color="#666666">
                                                <fo:block font-size="10pt" font-family="Arial">
                                                    Perfil Usuario Origen
                                                </fo:block>
                                                <fo:block font-weight="bold" font-size="10pt" font-family="Arial">
                                                    <xsl:value-of select="perfilUsuarioOrigen" /> 
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
                                                    Razon Social
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
                                                    Rut Empresa Origen
                                                </fo:block>
                                                <fo:block font-weight="bold" font-size="10pt" font-family="Arial">
                                                    <xsl:value-of select="rutEmpresaOrigen" />
                                                </fo:block>    
                                            </fo:table-cell>
                                            <fo:table-cell>
                                                <fo:block font-size="10pt" color="{$txt}" font-family="Arial">
                                                    <xsl:text>&#160;</xsl:text>
                                                </fo:block>
                                            </fo:table-cell>
                                            <fo:table-cell background-color="#F0F0F0" color="#666666">
                                                <fo:block font-size="10pt" font-family="Arial">
                                                    N° Convenio
                                                </fo:block>
                                                <fo:block font-weight="bold" font-size="10pt" font-family="Arial">
                                                    <xsl:value-of select="numeroConvenio" />
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
                                                    Nombre Usuario Destino
                                                </fo:block>
                                                <fo:block font-weight="bold" font-size="10pt" font-family="Arial">
                                                    <xsl:value-of select="nombreUsuarioDestino" />
                                                </fo:block>    
                                            </fo:table-cell>
                                            <fo:table-cell>
                                                <fo:block font-size="10pt" color="{$txt}" font-family="Arial">
                                                    <xsl:text>&#160;</xsl:text>
                                                </fo:block>
                                            </fo:table-cell>
                                            <fo:table-cell background-color="#F0F0F0" color="#666666">
                                                <fo:block font-size="10pt" font-family="Arial">
                                                    Rut Usuario Destino
                                                </fo:block>
                                                <fo:block font-weight="bold" font-size="10pt" font-family="Arial">
                                                    <xsl:value-of select="rutUsuarioDestino" />
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
                                        <fo:table-row>
                                            <fo:table-cell background-color="#F0F0F0" color="#666666">
                                                <fo:block font-size="10pt" font-family="Arial">
                                                    Nombre Supervisor
                                                </fo:block>
                                                <fo:block font-weight="bold" font-size="10pt" font-family="Arial">
                                                    <xsl:value-of select="nombreSupervisor" />
                                                </fo:block>    
                                            </fo:table-cell>
                                            <fo:table-cell>
                                                <fo:block font-size="10pt" color="{$txt}" font-family="Arial">
                                                    <xsl:text>&#160;</xsl:text>
                                                </fo:block>
                                            </fo:table-cell>
                                            <fo:table-cell background-color="#F0F0F0" color="#666666">
                                                <fo:block font-size="10pt" font-family="Arial">
                                                    Rut Supervisor
                                                </fo:block>
                                                <fo:block font-weight="bold" font-size="10pt" font-family="Arial">
                                                    <xsl:value-of select="rutSupervisor" />
                                                </fo:block>    
                                            </fo:table-cell>
                                            <fo:table-cell>
                                                <fo:block font-size="10pt" color="{$txt}" font-family="Arial">
                                                    <xsl:text>&#160;</xsl:text>
                                                </fo:block>
                                            </fo:table-cell>
                                            <fo:table-cell background-color="#F0F0F0" color="#666666">
                                            	<fo:block font-size="10pt" font-family="Arial">
                                                    Fecha Hora Solicitud
                                                </fo:block>
                                                <fo:block font-weight="bold" font-size="10pt" font-family="Arial">
                                                    <xsl:value-of select="fechaHoraSolicitud" />
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
                                    <fo:table-column column-width="1cm"/>
                                    <fo:table-column column-width="0.3mm"/>
                                    <fo:table-column column-width="1cm"/>
                                    <fo:table-column column-width="0.3mm"/>
                                    <fo:table-column column-width="1cm"/>
                                    <fo:table-column column-width="0.3mm"/>
                                    <fo:table-column column-width="1cm"/>
                                    <fo:table-column column-width="0.3mm"/>
                                    <fo:table-column column-width="4cm"/>
                                    <fo:table-body>
                                        <fo:table-row>
                                            <fo:table-cell number-columns-spanned="13" color="#000000">
                                                <fo:block font-weight="bold" font-size="10pt" font-family="Arial">
                                                   Estos son los convenios donde el usuario destino quedará habilitado
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
                                                    N° de Solicitud
                                                </fo:block>
                                            </fo:table-cell>
                                            <fo:table-cell>
                                                <fo:block color="{$txt}" font-family="Arial">
                                                    <xsl:text>&#160;</xsl:text>
                                                </fo:block>
                                            </fo:table-cell>
                                            <fo:table-cell color="#FFFFFF" background-color="#C8C8C8" text-align="center">
                                                <fo:block font-weight="bold" font-family="Arial">
                                                    Convenio
                                                </fo:block>
                                            </fo:table-cell>
                                            <fo:table-cell>
                                                <fo:block color="{$txt}" font-family="Arial">
                                                    <xsl:text>&#160;</xsl:text>
                                                </fo:block>
                                            </fo:table-cell>
                                            <fo:table-cell color="#FFFFFF" background-color="#C8C8C8" text-align="center">
                                                <fo:block font-weight="bold" font-family="Arial">
                                                   Tipo Perfil
                                                </fo:block>
                                            </fo:table-cell>
                                            <fo:table-cell>
                                                <fo:block  color="{$txt}" font-family="Arial">
                                                    <xsl:text>&#160;</xsl:text>
                                                </fo:block>
                                            </fo:table-cell>
                                            <fo:table-cell color="#FFFFFF" background-color="#C8C8C8" text-align="center">
                                                <fo:block font-weight="bold" font-family="Arial">
                                                    Rut Empresa
                                                </fo:block>
                                            </fo:table-cell>
                                            <fo:table-cell>
                                                <fo:block  color="{$txt}" font-family="Arial">
                                                    <xsl:text>&#160;</xsl:text>
                                                </fo:block>
                                            </fo:table-cell>
                                            <fo:table-cell color="#FFFFFF" background-color="#C8C8C8" text-align="center">
                                                <fo:block font-weight="bold" font-family="Arial">
                                                   Nombre Empresa
                                                </fo:block>
                                            </fo:table-cell>
                                            <fo:table-cell>
                                                <fo:block  color="{$txt}" font-family="Arial">
                                                    <xsl:text>&#160;</xsl:text>
                                                </fo:block>
                                            </fo:table-cell>                                          
                                        </fo:table-row>
                                        <xsl:for-each select="tablaSolicitudes/lista">
                                            <fo:table-row font-size="8pt">
                                                <fo:table-cell color="#000000" background-color="#FFFFFF" text-align="center">
                                                    <fo:block font-family="Arial">
                                                        <xsl:value-of select="numeroSolicitud" />
                                                    </fo:block>
                                                </fo:table-cell>
                                                <fo:table-cell>
                                                    <fo:block  color="{$txt}" font-family="Arial">
                                                        <xsl:text>&#160;</xsl:text>
                                                    </fo:block>
                                                </fo:table-cell>
                                                <fo:table-cell color="#000000" background-color="#FFFFFF" text-align="center">
                                                    <fo:block font-family="Arial">
                                                        <xsl:value-of select="numeroConvenio" />
                                                    </fo:block>
                                                </fo:table-cell>
                                                <fo:table-cell>
                                                    <fo:block  color="{$txt}" font-family="Arial">
                                                        <xsl:text>&#160;</xsl:text>
                                                    </fo:block>
                                                </fo:table-cell>
                                                <fo:table-cell color="#000000" background-color="#FFFFFF" text-align="center">
                                                    <fo:block font-family="Arial">
                                                        <xsl:value-of select="tipoPerfil" />
                                                    </fo:block>
                                                </fo:table-cell>
                                                <fo:table-cell>
                                                    <fo:block  color="{$txt}" font-family="Arial">
                                                        <xsl:text>&#160;</xsl:text>
                                                    </fo:block>
                                                </fo:table-cell>
                                                <fo:table-cell color="#000000" background-color="#FFFFFF" text-align="center">
                                                    <fo:block font-family="Arial">
                                                        <xsl:value-of select="rutEmpresa" />
                                                    </fo:block>
                                                </fo:table-cell>
                                                <fo:table-cell>
                                                    <fo:block  color="{$txt}" font-family="Arial">
                                                        <xsl:text>&#160;</xsl:text>
                                                    </fo:block>
                                                </fo:table-cell>
                                                <fo:table-cell color="#000000" background-color="#FFFFFF" text-align="center">
                                                    <fo:block font-family="Arial">
                                                        <xsl:value-of select="nombreEmpresa" />
                                                    </fo:block>
                                                </fo:table-cell>
                                                <fo:table-cell>
                                                    <fo:block  color="{$txt}" font-family="Arial">
                                                        <xsl:text>&#160;</xsl:text>
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