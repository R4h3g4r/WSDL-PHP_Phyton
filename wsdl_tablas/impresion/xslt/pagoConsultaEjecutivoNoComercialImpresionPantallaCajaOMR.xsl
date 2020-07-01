<?xml version="1.0" encoding="iso-8859-1"?>
<xsl:stylesheet version="1.1" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format" exclude-result-prefixes="fo">
    <xsl:output method="xml" version="1.0" omit-xml-declaration="no" indent="yes"/>

    <xsl:param name="IMG_URL"/>
    
    <xsl:template match="pagoConsultaImpresionpantalla">
        <fo:root xmlns:fo="http://www.w3.org/1999/XSL/Format">
            <fo:layout-master-set>
                <fo:simple-page-master master-name="impresionPantalla" page-width="215.9mm" page-height="279.4mm" margin-top="10mm" margin-bottom="10mm" margin-left="10mm" margin-right="10mm">
                    <fo:region-body/>
                    
                </fo:simple-page-master>
            </fo:layout-master-set>
            <fo:page-sequence master-reference="impresionPantalla">
                <fo:flow flow-name="xsl-region-body">
                
                
                    <fo:block font-family="Times" text-align="left" font-size="9pt" line-height="4mm">
                    
                        <fo:block>
                            <fo:table table-layout="fixed" width="195.9mm">
                                <fo:table-column column-width="proportional-column-width(92)"/>
                                <fo:table-column column-width="proportional-column-width(8)"/>
                                <fo:table-body>
                                    <fo:table-row font-weight="bold">
                                        <fo:table-cell>
                                            <fo:external-graphic>
                                                <xsl:attribute name="src">
                                                    <xsl:value-of select="rutaImagen"/>02-logo-bci.gif
                                                </xsl:attribute>
                                            </fo:external-graphic>
                                        </fo:table-cell>
                                        <fo:table-cell padding-before="1cm">
                                            <fo:block font-size="9pt" font-weight="bold" space-after="1mm" text-align="right" color="#000000">
                                                <xsl:value-of select="fechaImpresion"/>
                                            </fo:block>
                                        </fo:table-cell>
                                    </fo:table-row>
                                </fo:table-body>
                            </fo:table>
                        </fo:block>

                        <fo:block space-before="4mm">
                        <fo:block>
                            <fo:table table-layout="fixed" width="195.9mm">
                                <fo:table-column column-width="proportional-column-width(100)"/>
                                <fo:table-body>
                                    <fo:table-row font-weight="bold" background-color="#FFFFFF">
                                        <fo:table-cell>
                                
                                            <fo:block float="right" color="#333333" font-size="11px" font-weight="bold">
                                                Pago de la Consulta de Sobregiro
                                            </fo:block>
                                            
                                        </fo:table-cell>
                                    </fo:table-row>
                                </fo:table-body>
                            </fo:table>
                        </fo:block>
                        </fo:block>

                        <!-- Separador -->
                        <fo:block space-after="2mm">
                            <fo:leader color="#CCCCCC" leader-pattern="rule" leader-length="21cm"/>
                        </fo:block>
                        <!-- Separador -->

                        <fo:block space-before="4mm">
                        <fo:block>
                            <fo:table table-layout="fixed" width="195.9mm">
                                <fo:table-column column-width="proportional-column-width(35)"/>
                                <fo:table-column column-width="proportional-column-width(25)"/>
                                <fo:table-column column-width="proportional-column-width(40)"/>
                                <fo:table-body>
                                    <fo:table-row font-weight="bold" background-color="#FFFFFF">
                                        <fo:table-cell color="#000000">
                                            <fo:block>
                                                Oficina : <xsl:value-of select="oficinaejecon"/>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell color="#000000">
                                            <fo:block>
                                                Ejecutivo : <xsl:value-of select="ejecon"/>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell color="#000000">
                                            <fo:block>
                                                Cantidad de Cheques en Consulta : <xsl:value-of select="cancheqcon"/>
                                            </fo:block>
                                        </fo:table-cell>

                                    </fo:table-row>
                                </fo:table-body>
                            </fo:table>
                        </fo:block>
                        </fo:block>

                        <!-- Separador -->
                        <fo:block space-after="2mm">
                        </fo:block>
                        <!-- Separador -->

                        <fo:block>
                            <fo:table table-layout="fixed" width="195.9mm">
                                <fo:table-column column-width="proportional-column-width(13)"/>
                                <fo:table-column column-width="proportional-column-width(11)"/>
                                <fo:table-column column-width="proportional-column-width(10)"/>
                                <fo:table-column column-width="proportional-column-width(22)"/>
                                <fo:table-column column-width="proportional-column-width(8)"/>
                                <fo:table-column column-width="proportional-column-width(8)"/>
                                <fo:table-column column-width="proportional-column-width(10)"/>
                                <fo:table-column column-width="proportional-column-width(12)"/>
                                <fo:table-column column-width="proportional-column-width(10)"/>
                                <fo:table-column column-width="proportional-column-width(8)"/>
                                <fo:table-column column-width="proportional-column-width(6)"/>
                                <fo:table-body>
                                    <fo:table-row font-weight="bold"  background-color="#E1E1E1">
                                        <fo:table-cell border="0.1pt solid black">
                                            <fo:block padding-left="1mm">
                                                Oficina
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell border="0.1pt solid black">
                                            <fo:block padding-left="1mm">
                                                Ejecutivo
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell border="0.1pt solid black">
                                            <fo:block padding-left="1mm">
                                                Cuenta
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell border="0.1pt solid black">
                                            <fo:block padding-left="1mm">
                                                Nombre Cliente
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell border="0.1pt solid black">
                                            <fo:block padding-left="1mm">
                                                Tipo Movto.
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell border="0.1pt solid black">
                                            <fo:block padding-left="1mm">
                                                Serial
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell border="0.1pt solid black">
                                            <fo:block padding-left="1mm">
                                                Monto $
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell border="0.1pt solid black">
                                            <fo:block padding-left="1mm">
                                                Disponible $
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell border="0.1pt solid black">
                                            <fo:block padding-left="1mm">
                                                Resuelto por 
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell border="0.1pt solid black">
                                            <fo:block padding-left="1mm">
                                                Acción
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell border="0.1pt solid black">
                                            <fo:block padding-left="1mm">
                                                Even Pendi
                                            </fo:block>
                                        </fo:table-cell>
                                    </fo:table-row>
                                    <fo:table-row>
                                        <fo:table-cell border="0.1pt solid black">
                                            <fo:block padding-left="1mm">
                                                <xsl:value-of select="oficinalinea" />
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell border="0.1pt solid black">
                                            <fo:block padding-left="1mm">
                                                <xsl:value-of select="ejeclinea" />
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell border="0.1pt solid black">
                                            <fo:block padding-left="1mm">
                                                <xsl:value-of select="cta" />
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell border="0.1pt solid black">
                                            <fo:block padding-left="1mm">
                                                <xsl:value-of select="nomcli" />
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell border="0.1pt solid black">
                                            <fo:block padding-left="1mm">
                                                <xsl:value-of select="tipmov" />
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell border="0.1pt solid black">
                                            <fo:block padding-left="1mm">
                                                <xsl:value-of select="serial" />
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell border="0.1pt solid black" text-align="right">
                                            <fo:block padding-left="1mm">
                                                <xsl:value-of select="monto" />
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell border="0.1pt solid black" text-align="right">
                                            <fo:block padding-left="1mm">
                                                <xsl:value-of select="disponible" />
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell border="0.1pt solid black">
                                            <fo:block padding-left="1mm">
                                                <xsl:value-of select="resueltopor" />
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell border="0.1pt solid black">
                                            <fo:block padding-left="1mm">
                                                <xsl:value-of select="accion" />
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell border="0.1pt solid black">
                                            <fo:block padding-left="1mm">
                                                <xsl:value-of select="eventospend" />
                                            </fo:block>
                                        </fo:table-cell>
                                    </fo:table-row>
                                </fo:table-body>
                            </fo:table>
                        </fo:block>

                        <!-- Separador -->
                        <fo:block space-after="2mm">
                            <fo:leader color="#CCCCCC" leader-pattern="rule" leader-length="21cm"/>
                        </fo:block>
                        <!-- Separador -->

                        <fo:block>
                            <fo:table table-layout="fixed" width="195.9mm">
                                <fo:table-column column-width="proportional-column-width(50)"/>
                                <fo:table-column column-width="proportional-column-width(50)"/>
                                <fo:table-body>
                                    <fo:table-row font-weight="bold">
                                        <fo:table-cell>
                                            <fo:block font-weight="bold" text-align="left" >
                                                Saldo a las <xsl:value-of select="saldoalas" />
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell>
                                            <fo:block font-weight="bold">
                                                Estado ICR : <xsl:value-of select="estadoicr" />
                                            </fo:block>
                                        </fo:table-cell>
                                    </fo:table-row>
                                </fo:table-body>
                            </fo:table>
                        </fo:block>
                        
                        <!-- Separador -->
                        <fo:block space-after="2mm">
                        </fo:block>
                        <!-- Separador -->

                        <fo:block>
                            <fo:table table-layout="fixed" width="195.9mm">
                                <fo:table-column column-width="proportional-column-width(49)"/>
                                <fo:table-column column-width="proportional-column-width(5)"/>
                                <fo:table-column column-width="proportional-column-width(50)"/>
                                <fo:table-body>
                                    <fo:table-row font-weight="bold" height="20mm">
                                    
                                        <fo:table-cell>
                                            <fo:block>
                                                <fo:table table-layout="fixed">
                                                    <fo:table-column column-width="proportional-column-width(23)"/>
                                                    <fo:table-column column-width="proportional-column-width(26)"/>
                                                    <fo:table-body>
                                                        <fo:table-row font-weight="bold">
                                                            <fo:table-cell>
                                                                <fo:block font-weight="bold" border="0.1pt solid black">
                                                                    Retenciones Bci $
                                                                </fo:block>
                                                            </fo:table-cell>
                                                            <fo:table-cell border="0.1pt solid black">
                                                                <fo:block>
                                                                    <xsl:value-of select="retenbci"/>
                                                                </fo:block>
                                                            </fo:table-cell>
                                                        </fo:table-row>
                                                        <fo:table-row font-weight="bold">
                                                            <fo:table-cell>
                                                                <fo:block font-weight="bold" border="0.1pt solid black" >
                                                                    Retenciones más 3D $
                                                                </fo:block>
                                                            </fo:table-cell>
                                                            <fo:table-cell border="0.1pt solid black">
                                                                <fo:block  >
                                                                    <xsl:value-of select="retenmas3d"/>
                                                                </fo:block>
                                                            </fo:table-cell>
                                                        </fo:table-row>
                                                        <fo:table-row font-weight="bold">
                                                            <fo:table-cell>
                                                                <fo:block font-weight="bold" border="0.1pt solid black" >
                                                                    Retenciones hasta 3D $
                                                                </fo:block>
                                                            </fo:table-cell>
                                                            <fo:table-cell border="0.1pt solid black">
                                                                <fo:block>
                                                                    <xsl:value-of select="retenhasta3d"/>
                                                                </fo:block>
                                                            </fo:table-cell>
                                                        </fo:table-row>
                                                        <fo:table-row font-weight="bold">
                                                            <fo:table-cell>
                                                                <fo:block font-weight="bold" border="0.1pt solid black" >
                                                                    Retenciones Canje $
                                                                </fo:block>
                                                            </fo:table-cell>
                                                            <fo:table-cell border="0.1pt solid black">
                                                                <fo:block>
                                                                    <xsl:value-of select="retencanje"/>
                                                                </fo:block>
                                                            </fo:table-cell>
                                                        </fo:table-row>
                                                        <fo:table-row font-weight="bold">
                                                            <fo:table-cell>
                                                                <fo:block font-weight="bold" border="0.1pt solid black" >
                                                                    Sobregiro Disponible $
                                                                </fo:block>
                                                            </fo:table-cell>
                                                            <fo:table-cell border="0.1pt solid black">
                                                                <fo:block>
                                                                    <xsl:value-of select="sobregirodisp"/>
                                                                </fo:block>
                                                            </fo:table-cell>
                                                        </fo:table-row>
                                                        <fo:table-row font-weight="bold">
                                                            <fo:table-cell>
                                                                <fo:block font-weight="bold" border="0.1pt solid black" >
                                                                    Línea de Emergencia
                                                                </fo:block>
                                                            </fo:table-cell>
                                                            <fo:table-cell border="0.1pt solid black">
                                                                <fo:block>
                                                                    <xsl:value-of select="estadoLineaEmergencia"/>
                                                                </fo:block>
                                                            </fo:table-cell>
                                                        </fo:table-row>
                                                    </fo:table-body>
                                                </fo:table>
                                            </fo:block>
                                        </fo:table-cell> 
                                        
                                        <fo:table-cell>
                                        
                                        </fo:table-cell>
                                        
                                        <fo:table-cell>
                                            <fo:block>
                                                <fo:table table-layout="fixed">
                                                    <fo:table-column column-width="proportional-column-width(26)"/>
                                                    <fo:table-column column-width="proportional-column-width(24)"/>
                                                    <fo:table-body>
                                                        <fo:table-row font-weight="bold">
                                                            <fo:table-cell>
                                                                <fo:block font-weight="bold" border="0.1pt solid black">
                                                                    Ret. VV/DAP/C .Fiscal MP
                                                                </fo:block>
                                                            </fo:table-cell>
                                                            <fo:table-cell border="0.1pt solid black">
                                                                <fo:block>
                                                                    <xsl:value-of select="retvvdapcfis"/>
                                                                </fo:block>
                                                            </fo:table-cell>
                                                        </fo:table-row>
                                                        <fo:table-row font-weight="bold">
                                                            <fo:table-cell>
                                                                <fo:block font-weight="bold" border="0.1pt solid black" >
                                                                    Saldo Disponible Ini. Día
                                                                </fo:block>
                                                            </fo:table-cell>
                                                            <fo:table-cell border="0.1pt solid black">
                                                                <fo:block>
                                                                    <xsl:value-of select="saldodispinidia"/>
                                                                </fo:block>
                                                            </fo:table-cell>
                                                        </fo:table-row>
                                                        <fo:table-row font-weight="bold">
                                                            <fo:table-cell>
                                                                <fo:block font-weight="bold" border="0.1pt solid black" >
                                                                    Saldo Contable $
                                                                </fo:block>
                                                            </fo:table-cell>
                                                            <fo:table-cell border="0.1pt solid black">
                                                                <fo:block>
                                                                    <xsl:value-of select="saldoctbl"/>
                                                                </fo:block>
                                                            </fo:table-cell>
                                                        </fo:table-row>
                                                        <fo:table-row font-weight="bold">
                                                            <fo:table-cell>
                                                                <fo:block font-weight="bold" border="0.1pt solid black" >
                                                                    Saldo Disponible $
                                                                </fo:block>
                                                            </fo:table-cell>
                                                            <fo:table-cell border="0.1pt solid black">
                                                                <fo:block>
                                                                    <xsl:value-of select="saldodisp"/>
                                                                </fo:block>
                                                            </fo:table-cell>
                                                        </fo:table-row>
                                                        <fo:table-row font-weight="bold">
                                                            <fo:table-cell>
                                                                <fo:block font-weight="bold" border="0.1pt solid black" >
                                                                    
                                                                </fo:block>
                                                            </fo:table-cell>
                                                            <fo:table-cell border="0.1pt solid black">
                                                                <fo:block>
                                                                    
                                                                </fo:block>
                                                            </fo:table-cell>
                                                        </fo:table-row>
                                                        <fo:table-row font-weight="bold">
                                                            <fo:table-cell>
                                                                <fo:block font-weight="bold" border="0.1pt solid black" >
                                                                    Cupo Línea de Emergencia $
                                                                </fo:block>
                                                            </fo:table-cell>
                                                            <fo:table-cell border="0.1pt solid black">
                                                                <fo:block>
                                                                    <xsl:value-of select="saldoLineaEmergencia"/>
                                                                </fo:block>
                                                            </fo:table-cell>
                                                        </fo:table-row>
                                                    </fo:table-body>
                                                </fo:table>
                                            </fo:block>
                                        </fo:table-cell>
                                    </fo:table-row>
                                </fo:table-body>
                            </fo:table>
                        </fo:block>

                        <!-- Separador -->
                        <fo:block space-after="2mm">
                            <fo:leader color="#CCCCCC" leader-pattern="rule" leader-length="21cm"/>
                        </fo:block>
                        <!-- Separador -->

                        <fo:block space-before="4mm" font-weight="bold" color="#000000">
                            Datos Adicionales
                        </fo:block>

                        <!-- Separador -->
                        <fo:block space-after="2mm">

                        </fo:block>
                        <!-- Separador -->

                        <fo:block>
                            <fo:table table-layout="fixed" width="195.9mm">
                                <fo:table-column column-width="proportional-column-width(49)"/>
                                <fo:table-column column-width="proportional-column-width(5)"/>
                                <fo:table-column column-width="proportional-column-width(50)"/>
                                <fo:table-body>
                                    <fo:table-row font-weight="bold" height="20mm">
                                    
                                        <fo:table-cell>
                                            <fo:block>
                                                <fo:table table-layout="fixed">
                                                    <fo:table-column column-width="proportional-column-width(23)"/>
                                                    <fo:table-column column-width="proportional-column-width(26)"/>
                                                    <fo:table-body>
                                                        <fo:table-row font-weight="bold">
                                                            <fo:table-cell>
                                                                <fo:block font-weight="bold"  border="0.1pt solid black">
                                                                    Oficina / Banco Receptor 
                                                                </fo:block>
                                                            </fo:table-cell>
                                                            <fo:table-cell border="0.1pt solid black">
                                                                <fo:block>
                                                                     <xsl:value-of select="ofibancorecep"/>
                                                                </fo:block>
                                                            </fo:table-cell>
                                                        </fo:table-row>
                                                        <fo:table-row font-weight="bold">
                                                            <fo:table-cell>
                                                                <fo:block font-weight="bold" border="0.1pt solid black" >
                                                                    Protestos Fondos
                                                                </fo:block>
                                                            </fo:table-cell>
                                                            <fo:table-cell border="0.1pt solid black">
                                                                <fo:block>
                                                                     <xsl:value-of select="protestosfondos"/>
                                                                </fo:block>
                                                            </fo:table-cell>
                                                        </fo:table-row>
                                                        <fo:table-row font-weight="bold">
                                                            <fo:table-cell>
                                                                <fo:block font-weight="bold" border="0.1pt solid black" >
                                                                    Aclaraciones Fondos
                                                                </fo:block>
                                                            </fo:table-cell>
                                                            <fo:table-cell border="0.1pt solid black">
                                                                <fo:block>
                                                                     <xsl:value-of select="aclarafondos"/>
                                                                </fo:block>
                                                            </fo:table-cell>
                                                        </fo:table-row>
                                                        <fo:table-row font-weight="bold">
                                                            <fo:table-cell>
                                                                <fo:block font-weight="bold" border="0.1pt solid black" >
                                                                    Fecha Ultimo Protesto
                                                                </fo:block>
                                                            </fo:table-cell>
                                                            <fo:table-cell border="0.1pt solid black">
                                                                <fo:block>
                                                                     <xsl:value-of select="fecultprotesto"/>
                                                                </fo:block>
                                                            </fo:table-cell>
                                                        </fo:table-row>
                                                        <fo:table-row font-weight="bold">
                                                            <fo:table-cell>
                                                                <fo:block font-weight="bold" border="0.1pt solid black" >
                                                                    Estado
                                                                </fo:block>
                                                            </fo:table-cell>
                                                            <fo:table-cell border="0.1pt solid black">
                                                                <fo:block>
                                                                     <xsl:value-of select="estado"/>
                                                                </fo:block>
                                                            </fo:table-cell>
                                                        </fo:table-row>
                                                        <fo:table-row font-weight="bold">
                                                            <fo:table-cell>
                                                                <fo:block font-weight="bold" border="0.1pt solid black" >
                                                                    Resuelto por
                                                                </fo:block>
                                                            </fo:table-cell>
                                                            <fo:table-cell border="0.1pt solid black">
                                                                <fo:block>
                                                                     <xsl:value-of select="resueltopor2"/>
                                                                </fo:block>
                                                            </fo:table-cell>
                                                        </fo:table-row>
                                                        <fo:table-row font-weight="bold">
                                                            <fo:table-cell>
                                                                <fo:block font-weight="bold" border="0.1pt solid black" >
                                                                    Otro Motivo Rechazo
                                                                </fo:block>
                                                            </fo:table-cell>
                                                            <fo:table-cell border="0.1pt solid black">
                                                                <fo:block>
                                                                     <xsl:value-of select="glosaGprMensaje1"/>
                                                                </fo:block>
                                                            </fo:table-cell>
                                                        </fo:table-row>
                                                    </fo:table-body>
                                                </fo:table>
                                            </fo:block>
                                        </fo:table-cell> 
                                        
                                        <fo:table-cell>
                                        
                                        </fo:table-cell>
                                        
                                        <fo:table-cell>
                                            <fo:block>
                                                <fo:table table-layout="fixed">
                                                    <fo:table-column column-width="proportional-column-width(26)"/>
                                                    <fo:table-column column-width="proportional-column-width(24)"/>
                                                    <fo:table-body>
                                                        <fo:table-row font-weight="bold">
                                                            <fo:table-cell>
                                                                <fo:block font-weight="bold" border="0.1pt solid black" >
                                                                    Cuenta Depósito  
                                                                </fo:block>
                                                            </fo:table-cell>
                                                            <fo:table-cell border="0.1pt solid black">
                                                                <fo:block>
                                                                     <xsl:value-of select="cuentadeposito"/>
                                                                </fo:block>
                                                            </fo:table-cell>
                                                        </fo:table-row>
                                                        <fo:table-row font-weight="bold">
                                                            <fo:table-cell>
                                                                <fo:block font-weight="bold" border="0.1pt solid black" >
                                                                    Oficina  
                                                                </fo:block>
                                                            </fo:table-cell>
                                                            <fo:table-cell border="0.1pt solid black">
                                                                <fo:block>
                                                                     <xsl:value-of select="oficinacargo"/>
                                                                </fo:block>
                                                            </fo:table-cell>
                                                        </fo:table-row>
                                                        <fo:table-row font-weight="bold">
                                                            <fo:table-cell>
                                                                <fo:block font-weight="bold" border="0.1pt solid black" >
                                                                    Sobregiro No Pactado  
                                                                </fo:block>
                                                            </fo:table-cell>
                                                            <fo:table-cell border="0.1pt solid black">
                                                                <fo:block>
                                                                     <xsl:value-of select="sobregironopactado"/>
                                                                </fo:block>
                                                            </fo:table-cell>
                                                        </fo:table-row>
                                                        <fo:table-row font-weight="bold">
                                                            <fo:table-cell>
                                                                <fo:block font-weight="bold" border="0.1pt solid black" >
                                                                    Antiguedad Cuenta
                                                                </fo:block>
                                                            </fo:table-cell>
                                                            <fo:table-cell border="0.1pt solid black">
                                                                <fo:block>
                                                                     <xsl:value-of select="antiguedadcta"/>
                                                                </fo:block>
                                                            </fo:table-cell>
                                                        </fo:table-row>
                                                        <fo:table-row font-weight="bold">
                                                            <fo:table-cell>
                                                                <fo:block font-weight="bold" border="0.1pt solid black" >
                                                                    Cantidad ONP
                                                                </fo:block>
                                                            </fo:table-cell>
                                                            <fo:table-cell border="0.1pt solid black">
                                                                <fo:block>
                                                                     <xsl:value-of select="cantonp"/>
                                                                </fo:block>
                                                            </fo:table-cell>
                                                        </fo:table-row>
                                                        <fo:table-row font-weight="bold">
                                                            <fo:table-cell border="0.1pt solid black">
                                                                <fo:block>
                                                                     <xsl:value-of select="glosaGprMensaje2"/>
                                                                </fo:block>
                                                            </fo:table-cell>
                                                            <fo:table-cell border="0.1pt solid black">
                                                                <fo:block>
                                                                     <xsl:value-of select="glosaGprMensaje3"/>
                                                                </fo:block>
                                                            </fo:table-cell>
                                                        </fo:table-row>
                                                    </fo:table-body>
                                                </fo:table>
                                            </fo:block>
                                        </fo:table-cell>
                                    </fo:table-row>
                                </fo:table-body>
                            </fo:table>
                        </fo:block>

                        
                    </fo:block>
                </fo:flow>     
            </fo:page-sequence>
        </fo:root>
    </xsl:template>
</xsl:stylesheet>
