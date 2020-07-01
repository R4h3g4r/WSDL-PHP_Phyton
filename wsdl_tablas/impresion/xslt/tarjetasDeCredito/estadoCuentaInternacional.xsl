<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
    xmlns:fo="http://www.w3.org/1999/XSL/Format">
    <!--Variables-->
    <xsl:variable name="bgcolor">#737277</xsl:variable>
    <xsl:variable name="bgcolorcalendariomenor">#EFEFEF</xsl:variable>
    <xsl:variable name="bgcolorcalendarioigual">#FF9</xsl:variable>
    <xsl:variable name="bgcolorcalendariomayor">#FFFFFF</xsl:variable>
    <xsl:variable name="bgcolorverde">#228B22</xsl:variable>
    <xsl:variable name="bgcolorojo">#B22222</xsl:variable>
    <xsl:variable name="bgcolortexto">#FFFFFF</xsl:variable>
    <xsl:variable name="bgcolortotal">#000000</xsl:variable>
    <xsl:variable name="lineas">#000000</xsl:variable>
    <xsl:variable name="lineasBlanco">#FFFFFF</xsl:variable>
    <xsl:variable name="txt">#FFFFF</xsl:variable>
    <xsl:variable name="txtCabecera">#FFFFFF</xsl:variable> 
    <xsl:variable name="alto-filas">5mm</xsl:variable>
    <xsl:variable name="espacio-subtitulos">2mm</xsl:variable>
    <xsl:variable name="espacio-texto-celda-left">2mm</xsl:variable>
    <xsl:variable name="espacio-texto-celda-top">1mm</xsl:variable>
    <xsl:variable name="size-fuente-margen">7pt</xsl:variable>
    <xsl:variable name="sombreadoTablas">#CFCFCF</xsl:variable>
    <xsl:variable name="logo"><xsl:value-of select="estadoCuentaInternacional/logoBanca"/></xsl:variable>
    <xsl:variable name="visa"><xsl:value-of select="estadoCuentaInternacional/urlVisa"/></xsl:variable>
    <xsl:variable name="master"><xsl:value-of select="estadoCuentaInternacional/urlMaster"/></xsl:variable>
    <xsl:variable name="codigoBarra"><xsl:value-of select="estadoCuentaInternacional/codigoBarra"/></xsl:variable>
    <!-- Variables -->
    
    
    
    <xsl:template match="/">
        <fo:root xmlns:fo="http://www.w3.org/1999/XSL/Format">
            <!-- Propiedades pagina -->
            <fo:layout-master-set>
                <fo:simple-page-master master-name="pagina"
                    page-height="11in" page-width="8.5in"
                    margin-top="1mm"
                    margin-bottom="5mm"
                    margin-left="1cm"
                    margin-right="2cm">
                    <fo:region-body margin-top="2cm" margin-bottom="2.5cm" background-color="#ffffff"/> 
                    <fo:region-before extent="1cm"/>
                    <fo:region-after extent="5mm"/>
                    <fo:region-start extent="1mm"/>
                </fo:simple-page-master>
               <fo:simple-page-master master-name="pagina2"
                    page-height="11in" page-width="8.5in"
                    margin-top="1mm"
                    margin-bottom="5mm"
                    margin-left="1cm"
                    margin-right="2cm">
                    <fo:region-body margin-top="2cm" margin-bottom="2.5cm" background-color="#ffffff"/> 
                    <fo:region-before extent="1cm"/>
                    <fo:region-after extent="1mm"/>
                    <fo:region-start extent="1mm"/>
                </fo:simple-page-master>
            </fo:layout-master-set>
            <!-- Propiedades pagina -->
             <fo:page-sequence master-reference="pagina" initial-page-number="1" language="en" country="us">
                <fo:static-content flow-name="xsl-region-before">
                    <!-- imagen bci -->
                      <fo:block-container position="absolute" height="54pt" width="54pt"  >
                      <fo:block>
                         <xsl:if test="estadoCuentaInternacional/logotipoTarjeta = '4'">
                         <fo:external-graphic src="{$visa}"/>
                         </xsl:if>
                         <xsl:if test="estadoCuentaInternacional/logotipoTarjeta = '5'">
                          <fo:external-graphic src="{$master}"/>
                         </xsl:if>
                      </fo:block>
                      </fo:block-container>
                       <fo:block-container position="absolute" height="54pt" width="54pt"  left="485pt">
                      <fo:block>
                         <fo:external-graphic src="{$logo}"/>
                      </fo:block>
                      </fo:block-container>
                      

                    <!-- imagen bci -->
                </fo:static-content>
                <fo:static-content flow-name="xsl-region-after" >
        
                </fo:static-content>
                <fo:flow flow-name="xsl-region-body">
                    <xsl:call-template name="contenido" />
                </fo:flow>
            </fo:page-sequence>
            
            <fo:page-sequence master-reference="pagina2" initial-page-number="2" language="en" country="us">
                <fo:static-content flow-name="xsl-region-before">
                    <!-- imagen bci -->
                      <fo:block-container position="absolute" height="54pt" width="54pt"  >
                      <fo:block>
                         <xsl:if test="estadoCuentaInternacional/logotipoTarjeta = '4'">
                         <fo:external-graphic src="{$visa}"/>
                         </xsl:if>
                         <xsl:if test="estadoCuentaInternacional/logotipoTarjeta = '5'">
                          <fo:external-graphic src="{$master}"/>
                         </xsl:if>
                      </fo:block>
                      </fo:block-container>
                       <fo:block-container position="absolute" height="55pt" width="55pt"  left="485pt">
                      <fo:block>
                         <fo:external-graphic src="{$logo}"/>
                      </fo:block>
                      </fo:block-container>
                      

                    <!-- imagen bci -->
                </fo:static-content>
                <fo:static-content flow-name="xsl-region-after" >
        
                </fo:static-content>
                <fo:flow flow-name="xsl-region-body">
                    <xsl:call-template name="contenido2" />
                </fo:flow>
            </fo:page-sequence>
                           
        </fo:root>
    </xsl:template>
    
<xsl:template name="contenido">

<fo:block-container position="absolute" height="20pt" width="200pt"  left="283pt" top="60pt">
     <fo:block>
        <fo:external-graphic src="{$codigoBarra}"/>
     </fo:block>
</fo:block-container>


<!-- PDF ESTADIO CUENTA NACIONAL -->
<fo:block  font-size="5pt" space-after="1cm">
    <fo:table width="19cm" border="0.5pt solid {$lineas}"  >
    <fo:table-column column-width="5cm"  border="0.5pt solid {$lineas}"/>
    <fo:table-column column-width="13cm"/>
 
    <fo:table-header>
        <fo:table-row>
            <fo:table-cell number-columns-spanned="2" space-right="1cm"
                background-color="{$sombreadoTablas}" border="0.5pt solid {$lineas}">
                <fo:block font-size="12pt" font-family="Arial Narrow"  font-stretch="condensed" font-weight="bold" text-align="center"
                    color="{$txt}">
                    Estado de Cuenta Internacional de Tarjeta de Crédito
                </fo:block>
            </fo:table-cell>
        </fo:table-row>
    </fo:table-header>
    <fo:table-body>
        <fo:table-row>
            <fo:table-cell>
                <fo:block font-size="9pt" font-family="Arial Narrow"  font-stretch="condensed" space-after="1mm" space-before="1mm" color="{$txt}" margin-left="1mm">
                    Nombre del Titular
                </fo:block>
            </fo:table-cell>
            <fo:table-cell>
                    <fo:block font-size="9pt" font-family="Arial Narrow"  font-stretch="condensed" space-after="1mm" color="{$txt}" margin-left="1mm" space-before="1mm">
                        <xsl:value-of select="estadoCuentaInternacional/nombreTitular"/>
                    </fo:block>
            </fo:table-cell>
        </fo:table-row>
        <fo:table-row>
            <fo:table-cell>
                    <fo:block font-size="9pt" font-family="Arial Narrow"  font-stretch="condensed" space-after="1mm" color="{$txt}" margin-left="1mm">
                        Nº de Tarjeta de Crédito
                    </fo:block>
            </fo:table-cell>
            <fo:table-cell>
                    <fo:block font-size="9pt" font-family="Arial Narrow"  font-stretch="condensed" space-after="1mm" color="{$txt}" margin-left="1mm">
                        <xsl:value-of select="estadoCuentaInternacional/numeroTarjetaCredito"/>
                    </fo:block>
            </fo:table-cell>
        </fo:table-row>
        <fo:table-row>
            <fo:table-cell>
                    <fo:block font-size="9pt" font-family="Arial Narrow"  font-stretch="condensed" space-after="1mm" color="{$txt}" margin-left="1mm">
                        Fecha Estado de Cuenta
                    </fo:block>
            </fo:table-cell>
            <fo:table-cell>
                    <fo:block font-size="9pt" font-family="Arial Narrow"  font-stretch="condensed" space-after="1mm" color="{$txt}" margin-left="1mm">
                        <xsl:value-of select="estadoCuentaInternacional/fechaEstadoCuenta"/>
                    </fo:block>
            </fo:table-cell>
        </fo:table-row>
    </fo:table-body>
    </fo:table>
</fo:block>
<fo:table width="200pt" margin-left="75pt" space-after="1mm">
        <fo:table-column column-width="19cm" />
        <fo:table-column column-width="1cm" />
        <fo:table-column column-width="50pt" />
        <fo:table-body>
        <fo:table-row>
            <fo:table-cell>
                <fo:block font-size="6pt" space-after="1mm" color="{$txt}"
                    margin-left="10cm" >
                    0000000000000000000000000000000000
                </fo:block>
            </fo:table-cell>
            
            </fo:table-row>
            <fo:table-row>
                <fo:table-cell>
                    <fo:block font-size="9pt" font-family="Arial Narrow"  font-stretch="condensed" space-after="1mm" color="{$txt}"
                        margin-left="10cm">
                        <xsl:value-of select="estadoCuentaInternacional/nombreTitular"/>
                    </fo:block>
                </fo:table-cell>
            </fo:table-row>
            <fo:table-row>
                <fo:table-cell>
                    <fo:block font-size="9pt" font-family="Arial Narrow"  font-stretch="condensed" space-after="1mm" color="{$txt}"
                        margin-left="10cm">
                        <xsl:value-of select="estadoCuentaInternacional/direccionEnvio"/>
                    </fo:block>
                </fo:table-cell>
            </fo:table-row>
            <fo:table-row>
                <fo:table-cell>
                    <fo:block font-size="9pt" font-family="Arial Narrow"  font-stretch="condensed" space-after="1mm" color="{$txt}"
                        margin-left="10cm">
                        <xsl:value-of select="estadoCuentaInternacional/comunaEnvio"/>
                    </fo:block>
                </fo:table-cell>
            </fo:table-row>
        </fo:table-body>
    </fo:table>
    
    !-- Inicio Bloque Informacion general -->
<!-- Inicio cabecera Bloque Informacion general -->
<fo:block font-size="5pt" space-after="5mm">
    <fo:table table-layout="fixed" width="19cm" >
    <fo:table-column column-width="19cm" />
    <fo:table-body>
        <fo:table-row>
            <fo:table-cell background-color="{$sombreadoTablas}" border="0.5pt solid {$lineas}">
                    <fo:block font-size="9pt" font-family="Arial Narrow"  font-stretch="condensed" space-after="1mm" font-weight="bold" color="{$txt}" margin-left="5mm" space-before="1mm">
                       I.    INFORMACIÓN GENERAL
                    </fo:block>
            </fo:table-cell>
        </fo:table-row>
    </fo:table-body>
    </fo:table>
</fo:block>

<!-- Fin cabecera Bloque Informacion general -->

<!-- Inicio bloque descripcion cupos-->
<fo:block font-size="5pt" space-after="2cm">
    <fo:table table-layout="fixed" width="11cm">
    <fo:table-column column-width="1.1cm"/>
    <fo:table-column column-width="1cm"/>
    <fo:table-column column-width="1cm"/>
    <fo:table-column column-width="1cm"/>
    <fo:table-body>
        <fo:table-row>
            <fo:table-cell>
            </fo:table-cell>
            <fo:table-cell border="0.5pt solid {$lineas}" background-color="{$sombreadoTablas}">
                    <fo:block font-size="9pt" font-family="Arial Narrow"  font-stretch="condensed" space-after="1mm"  font-weight="bold" color="{$txt}" margin-left="1mm">
                       Cupo Total
                    </fo:block>
            </fo:table-cell>
            <fo:table-cell border="0.5pt solid {$lineas}" background-color="{$sombreadoTablas}">
                    <fo:block font-size="9pt" font-family="Arial Narrow"  font-stretch="condensed" space-after="1mm"  font-weight="bold" color="{$txt}" margin-left="1mm">
                       Cupo Utilizado
                    </fo:block>
            </fo:table-cell>
            <fo:table-cell border="0.5pt solid {$lineas}" background-color="{$sombreadoTablas}">
                    <fo:block font-size="9pt" font-family="Arial Narrow"  font-stretch="condensed" space-after="1mm"  font-weight="bold" color="{$txt}" margin-left="1mm">
                       Cupo Disponible
                    </fo:block>
            </fo:table-cell>
        </fo:table-row>
        <fo:table-row>
            <fo:table-cell border="0.5pt solid {$lineas}">
                    <fo:block font-size="9pt" font-family="Arial Narrow"  font-stretch="condensed" space-after="1mm" color="{$txt}" margin-left="1mm">
                       Cupo Total
                    </fo:block>
            </fo:table-cell>
            <fo:table-cell border="0.5pt solid {$lineas}">
                    <fo:block font-size="9pt" font-family="Arial Narrow"  font-stretch="condensed" space-after="1mm" color="{$txt}" margin-left="1mm">
                        <xsl:value-of select="estadoCuentaInternacional/cupoTotalDolar/total"/>
                    </fo:block>
            </fo:table-cell>
            <fo:table-cell border="0.5pt solid {$lineas}">
                    <fo:block font-size="9pt" font-family="Arial Narrow"  font-stretch="condensed" space-after="1mm" color="{$txt}" margin-left="1mm">
                        <xsl:value-of select="estadoCuentaInternacional/cupoTotalDolar/utilizado"/>
                    </fo:block>
            </fo:table-cell>
            <fo:table-cell border="0.5pt solid {$lineas}">
                    <fo:block font-size="9pt" font-family="Arial Narrow"  font-stretch="condensed" space-after="1mm" color="{$txt}" margin-left="1mm">
                        <xsl:value-of select="estadoCuentaInternacional/cupoTotalDolar/disponible"/>
                    </fo:block>
            </fo:table-cell>
        </fo:table-row>
        <fo:table-row>
            <fo:table-cell border="0.5pt solid {$lineas}">
                    <fo:block font-size="9pt" font-family="Arial Narrow"  font-stretch="condensed" space-after="1mm" color="{$txt}" margin-left="1mm">
                       Cupo Total Avance en Efectivo
                    </fo:block>
            </fo:table-cell>
            <fo:table-cell border="0.5pt solid {$lineas}" >
                    <fo:block font-size="9pt" font-family="Arial Narrow"  font-stretch="condensed" space-after="1mm" color="{$txt}" margin-left="1mm">
                        <xsl:value-of select="estadoCuentaInternacional/cupoTotalAvanceEfectivoDolar/totalAvance"/>
                    </fo:block>
            </fo:table-cell>
            <fo:table-cell border="0.5pt solid {$lineas}">
                    <fo:block font-size="9pt" font-family="Arial Narrow"  font-stretch="condensed" space-after="1mm" color="{$txt}" margin-left="1mm">
                        <xsl:value-of select="estadoCuentaInternacional/cupoTotalAvanceEfectivoDolar/utilizadoAvance"/>
                    </fo:block>
            </fo:table-cell>
            <fo:table-cell border="0.5pt solid {$lineas}">
                    <fo:block font-size="9pt" font-family="Arial Narrow"  font-stretch="condensed" space-after="1mm" color="{$txt}" margin-left="1mm">
                        <xsl:value-of select="estadoCuentaInternacional/cupoTotalAvanceEfectivoDolar/disponibleAvance"/>
                    </fo:block>
            </fo:table-cell>
        </fo:table-row>
    </fo:table-body>
    </fo:table>
</fo:block>

<!-- Fin bloque descripcion cupos-->
    





<fo:block font-size="5pt" space-after="5mm">
    <fo:table table-layout="fixed" width="19cm" >
    <fo:table-column column-width="19cm" />
    <fo:table-body>
        <fo:table-row>
            <fo:table-cell background-color="{$sombreadoTablas}" border="0.5pt solid {$lineas}">
                    <fo:block space-before="1mm" font-size="9pt" font-family="Arial Narrow"  font-stretch="condensed" space-after="1mm" font-weight="bold" color="{$txt}" margin-left="5mm">
                       II.    DETALLE
                    </fo:block>
            </fo:table-cell>
        </fo:table-row>
    </fo:table-body>
    </fo:table>
</fo:block>


<fo:block font-size="5pt" space-after="3.7cm">
    <fo:table table-layout="fixed" width="8cm">
    <fo:table-column column-width="2cm" />
    <fo:table-column column-width="1cm"/>
    
    <fo:table-body>
        <fo:table-row>
            <fo:table-cell background-color="{$sombreadoTablas}" border="0.5pt solid {$lineas}">
                    <fo:block space-before="1mm" font-size="9pt" font-family="Arial Narrow"  font-stretch="condensed" space-after="1mm" font-weight="bold" color="{$txt}" margin-left="1mm">
                       1.    INFORMACIÓN DE PAGO
                    </fo:block>
            </fo:table-cell>
            <fo:table-cell background-color="{$sombreadoTablas}" border="0.5pt solid {$lineas}">
                    <fo:block font-size="9pt" font-family="Arial Narrow"  font-stretch="condensed" space-after="1mm" font-weight="bold" color="{$txt}" margin-left="1mm">
                    </fo:block>
            </fo:table-cell>
        </fo:table-row>
        <fo:table-row>
	        <fo:table-cell border="0.5pt solid {$lineas}">
	            <fo:block font-size="9pt" font-family="Arial Narrow"  font-stretch="condensed" space-after="1mm" color="{$txt}"
	                margin-left="1mm" >
	                Período Facturado Desde
	            </fo:block>
	        </fo:table-cell>
	        <fo:table-cell border="0.5pt solid {$lineas}">
	            <fo:block font-size="9pt" font-family="Arial Narrow"  font-stretch="condensed" space-after="1mm" color="{$txt}"
	                margin-right="1mm" text-align="right">
	                <xsl:value-of select="estadoCuentaInternacional/periodoFacturacionAnterior/desde" />
	            </fo:block>
	        </fo:table-cell>
	    </fo:table-row>
	    <fo:table-row>
            <fo:table-cell border="0.5pt solid {$lineas}">
                <fo:block font-size="9pt" font-family="Arial Narrow"  font-stretch="condensed" space-after="1mm" color="{$txt}"
                    margin-left="1mm" >
                     Período Facturado Hasta
                </fo:block>
            </fo:table-cell>
            <fo:table-cell border="0.5pt solid {$lineas}">
                <fo:block font-size="9pt" font-family="Arial Narrow"  font-stretch="condensed" space-after="1mm" color="{$txt}"
                    margin-right="1mm" text-align="right">
                <xsl:value-of select="estadoCuentaInternacional/periodoFacturacionAnterior/hasta" />
                </fo:block>
            </fo:table-cell>
        </fo:table-row>
        <fo:table-row>
            <fo:table-cell border="0.5pt solid {$lineas}">
                <fo:block font-size="9pt" font-family="Arial Narrow"  font-stretch="condensed" space-after="1mm" color="{$txt}"
                    margin-left="1mm" >
                Saldo Anterior Facturado
                </fo:block>
            </fo:table-cell>
            <fo:table-cell border="0.5pt solid {$lineas}">
                <fo:block font-size="9pt" font-family="Arial Narrow"  font-stretch="condensed" space-after="1mm" color="{$txt}"
                    margin-right="1mm" text-align="right">
                <xsl:value-of select="estadoCuentaInternacional/saldoAnteriorFacturado" />
                </fo:block>
            </fo:table-cell>
        </fo:table-row>
        <fo:table-row>
            <fo:table-cell border="0.5pt solid {$lineas}">
                <fo:block font-size="9pt" font-family="Arial Narrow"  font-stretch="condensed" space-after="1mm" color="{$txt}"
                    margin-left="1mm" >
                Abono Realizado
                </fo:block>
            </fo:table-cell>
            <fo:table-cell border="0.5pt solid {$lineas}">
                <fo:block font-size="9pt" font-family="Arial Narrow"  font-stretch="condensed" space-after="1mm" color="{$txt}"
                   margin-right="1mm" text-align="right">
                <xsl:value-of select="estadoCuentaInternacional/abonoRealizado" />
                </fo:block>
            </fo:table-cell>
        </fo:table-row>
        <fo:table-row>
            <fo:table-cell border="0.5pt solid {$lineas}">
                <fo:block font-size="9pt" font-family="Arial Narrow"  font-stretch="condensed" space-after="1mm" color="{$txt}"
                    margin-left="1mm" >
               Traspaso Deuda Nacional
                </fo:block>
            </fo:table-cell>
            <fo:table-cell border="0.5pt solid {$lineas}">
                <fo:block font-size="9pt" font-family="Arial Narrow"  font-stretch="condensed" space-after="1mm" color="{$txt}"
                    margin-right="1mm" text-align="right">
                <xsl:value-of select="estadoCuentaInternacional/traspasoDeudaNacional" />
                </fo:block>
            </fo:table-cell>
        </fo:table-row>
        <fo:table-row>
            <fo:table-cell border="0.5pt solid {$lineas}">
                <fo:block font-size="9pt" font-family="Arial Narrow"  font-stretch="condensed" space-after="1mm" color="{$txt}"
                    margin-left="1mm" >
                Deuda Total
                </fo:block>
            </fo:table-cell>
            <fo:table-cell border="0.5pt solid {$lineas}">
                <fo:block font-size="9pt" font-family="Arial Narrow"  font-stretch="condensed" space-after="1mm" color="{$txt}"
                    margin-right="1mm" text-align="right">
                <xsl:value-of select="estadoCuentaInternacional/deudaTotal" />
                </fo:block>
            </fo:table-cell>
        </fo:table-row>
        <fo:table-row>
            <fo:table-cell border="0.5pt solid {$lineas}">
                <fo:block font-size="9pt" font-family="Arial Narrow"  font-stretch="condensed" space-after="1mm" color="{$txt}"
                    margin-left="1mm" >
                Pagar Hasta
                </fo:block>
            </fo:table-cell>
            <fo:table-cell border="0.5pt solid {$lineas}">
                <fo:block font-size="9pt" font-family="Arial Narrow"  font-stretch="condensed" space-after="1mm" color="{$txt}"
                    margin-right="1mm" text-align="right">
                <xsl:value-of select="estadoCuentaInternacional/pagarHasta" />
                </fo:block>
            </fo:table-cell>
        </fo:table-row>
    </fo:table-body>
    </fo:table>
</fo:block>


<fo:block-container position="absolute" height="50pt" width="50pt"  left="282pt" top="460pt">
                      <fo:block>
                         <fo:external-graphic src="{$logo}"/>
                      </fo:block>
               </fo:block-container>
<fo:table width="200pt" space-after="2mm">
        <fo:table-column column-width="5cm" />
        <fo:table-column column-width="5cm" />
        <fo:table-column column-width="10cm" />
        <fo:table-body>
        <fo:table-row>
            <fo:table-cell>
                <fo:block font-size="9pt" font-family="Arial Narrow"  font-stretch="condensed" space-after="1mm" color="{$txt}">
                EMISOR
                </fo:block>
            </fo:table-cell>
            <fo:table-cell>
                  
            </fo:table-cell>
            <fo:table-cell>
                <fo:block margin-left="0cm" font-size="9pt" font-family="Arial Narrow"  font-stretch="condensed" color="{$txt}" space-after="2mm">
                 CLIENTE
                </fo:block>
                   <fo:block margin-left="1mm" font-family="Arial Narrow"  font-stretch="condensed" font-size="7pt" color="{$txt}">
                 Estimado cliente,para pagar este estado de cuenta por caja, debe completar los
                 números &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160; 
                 de su tarjeta en los casilleros correspondientes. 
                </fo:block>
            </fo:table-cell>
            </fo:table-row>
        </fo:table-body>
    </fo:table>
<fo:block-container position="absolute" top="193.4mm" right="10cm" width="200pt" height="200pt">
<fo:block font-size="5pt" space-after="2mm">
    <fo:table table-layout="fixed" width="9cm">
    <fo:table-column column-width="4.5cm"/>
    <fo:table-column column-width="4.5cm"/>
    <fo:table-body>
        <fo:table-row>
            <fo:table-cell border="0.5pt solid {$lineas}" number-columns-spanned="2">
                    <fo:block font-size="9pt" font-family="Arial Narrow"  font-stretch="condensed" space-after="1mm"  font-weight="bold" color="{$txt}" margin-left="18mm">
                       COMPROBANTE DE PAGO
                    </fo:block>
            </fo:table-cell>
        </fo:table-row>
        <fo:table-row>
            <fo:table-cell border="0.5pt solid {$lineas}">
                    <fo:block font-size="9pt" font-family="Arial Narrow"  font-stretch="condensed" space-after="1mm" font-weight="bold" color="{$txt}" margin-left="1mm">
                       Nombre
                    </fo:block>
                    <fo:block font-size="9pt" font-family="Arial Narrow"  font-stretch="condensed" space-after="1mm" color="{$txt}" margin-left="1mm">
                        <xsl:value-of select="estadoCuentaInternacional/comprobanteDePago/nombre" />
                    </fo:block>
            </fo:table-cell>
            <fo:table-cell border="0.5pt solid {$lineas}">
                    <fo:block font-size="9pt" font-family="Arial Narrow"  font-stretch="condensed" space-after="1mm" font-weight="bold" color="{$txt}" margin-left="1mm">
                       Número de Cuenta
                    </fo:block>
                    <fo:block font-size="9pt" font-family="Arial Narrow"  font-stretch="condensed" space-after="1mm" color="{$txt}" margin-left="1mm">
                        <xsl:value-of select="estadoCuentaInternacional/numeroTarjetaCredito" />
                    </fo:block>
            </fo:table-cell>
        </fo:table-row>
        <fo:table-row>
            <fo:table-cell border="0.5pt solid {$lineas}">
                    <fo:block font-size="9pt" font-family="Arial Narrow"  font-stretch="condensed" space-after="1mm" font-weight="bold" color="{$txt}" margin-left="1mm">
                       Pagar Hasta
                    </fo:block>
                     <fo:block font-size="9pt" font-family="Arial Narrow"  font-stretch="condensed" space-after="1mm" color="{$txt}" margin-left="1mm">
                        <xsl:value-of select="estadoCuentaInternacional/comprobanteDePago/pagarHasta" />
                    </fo:block>
            </fo:table-cell>
            <fo:table-cell border="0.5pt solid {$lineas}" >
                    <fo:block font-size="9pt" font-family="Arial Narrow"  font-stretch="condensed" space-after="1mm" font-weight="bold" color="{$txt}" margin-left="1mm">
                       Monto Facturado
                    </fo:block>
                    <fo:block font-size="9pt" font-family="Arial Narrow"  font-stretch="condensed" space-after="1mm" color="{$txt}" margin-left="1mm">
                        <xsl:value-of select="estadoCuentaInternacional/comprobanteDePago/montoTotalFacturadoPagar" />
                    </fo:block>
            </fo:table-cell>
         </fo:table-row>
         <fo:table-row height="1cm"> 
            <fo:table-cell border="0.5pt solid {$lineas}">
                    <fo:block font-size="9pt" font-family="Arial Narrow"  font-stretch="condensed" space-after="1mm" font-weight="bold" color="{$txt}" margin-left="1mm">
                       Monto Cancelado
                    </fo:block>
                    <fo:block font-size="9pt" font-family="Arial Narrow"  font-stretch="condensed" space-after="1mm" color="{$txt}" margin-left="1mm">
                        <xsl:value-of select="estadoCuentaInternacional/comprobanteDePago/montoMinimoPagar" />
                    </fo:block>
            </fo:table-cell>
            <fo:table-cell border="0.5pt solid {$lineas}" >
                    <fo:block font-size="9pt" font-family="Arial Narrow"  font-stretch="condensed" space-after="1mm"  color="{$txt}" margin-left="1mm">
                    </fo:block>
            </fo:table-cell>
         </fo:table-row>
    
    </fo:table-body>
    </fo:table>
</fo:block>

<fo:block>
    <fo:table>
        <fo:table-column column-width="2cm" />
        <fo:table-column column-width="1cm" />
        <fo:table-column column-width="3.8cm" />
        <fo:table-column column-width="1cm" />
        <fo:table-body>
            <fo:table-row>
                <fo:table-cell>
                    <fo:block font-size="9pt" font-family="Arial Narrow"  font-stretch="condensed" space-after="1mm" color="{$txt}"
                        margin-left="1mm">
                        Cheque
                    </fo:block>
                </fo:table-cell>
                <fo:table-cell border="0.5pt solid {$lineas}">
                    <fo:block font-size="9pt" font-family="Arial Narrow"  font-stretch="condensed" color="{$txt}"
                        margin-left="3cm">
                    </fo:block>
                </fo:table-cell>
                <fo:table-cell>
                    <fo:block font-size="9pt" font-family="Arial Narrow"  font-stretch="condensed" space-after="1mm" color="{$txt}"
                        margin-left="2cm">
                        Efectivo
                    </fo:block>
                </fo:table-cell>
                <fo:table-cell border="0.5pt solid {$lineas}">
                    <fo:block font-size="9pt" font-family="Arial Narrow"  font-stretch="condensed" color="{$txt}"
                        margin-left="8cm">
                    </fo:block>
                </fo:table-cell>
            </fo:table-row>
        </fo:table-body>
    </fo:table>
</fo:block>
</fo:block-container>

<fo:block-container position="absolute" top="193.4mm" left="10cm" width="200pt" height="200pt">
<fo:block font-size="5pt" space-after="2mm">
    <fo:table table-layout="fixed" width="9cm">
    <fo:table-column column-width="4.5cm"/>
    <fo:table-column column-width="4.5cm"/>
    <fo:table-body>
        <fo:table-row>
            <fo:table-cell border="0.5pt solid {$lineas}" number-columns-spanned="2">
                    <fo:block font-size="9pt" font-family="Arial Narrow"  font-stretch="condensed" space-after="1mm"  font-weight="bold" color="{$txt}" margin-left="18mm">
                       COMPROBANTE DE PAGO
                    </fo:block>
            </fo:table-cell>
        </fo:table-row>
        <fo:table-row>
            <fo:table-cell border="0.5pt solid {$lineas}">
                    <fo:block font-size="9pt" font-family="Arial Narrow"  font-stretch="condensed" space-after="1mm" font-weight="bold" color="{$txt}" margin-left="1mm">
                       Nombre
                    </fo:block>
                    <fo:block font-size="9pt" font-family="Arial Narrow"  font-stretch="condensed" space-after="1mm" color="{$txt}" margin-left="1mm">
                        <xsl:value-of select="estadoCuentaInternacional/comprobanteDePago/nombre" />
                    </fo:block>
            </fo:table-cell>
            <fo:table-cell border="0.5pt solid {$lineas}">
                    <fo:block font-size="9pt" font-family="Arial Narrow"  font-stretch="condensed" space-after="1mm" font-weight="bold" color="{$txt}" margin-left="1mm">
                       Número de Cuenta
                    </fo:block>
                    <fo:block font-size="9pt" font-family="Arial Narrow"  font-stretch="condensed" space-after="1mm" color="{$txt}" margin-left="1mm">
                        <xsl:value-of select="estadoCuentaInternacional/numeroTarjetaCredito" />
                    </fo:block>
            </fo:table-cell>
        </fo:table-row>
        <fo:table-row>
            <fo:table-cell border="0.5pt solid {$lineas}">
                    <fo:block font-size="9pt" font-family="Arial Narrow"  font-stretch="condensed" space-after="1mm" font-weight="bold" color="{$txt}" margin-left="1mm">
                       Pagar Hasta
                    </fo:block>
                     <fo:block font-size="9pt" font-family="Arial Narrow"  font-stretch="condensed" space-after="1mm" color="{$txt}" margin-left="1mm">
                        <xsl:value-of select="estadoCuentaInternacional/comprobanteDePago/pagarHasta" />
                    </fo:block>
            </fo:table-cell>
            <fo:table-cell border="0.5pt solid {$lineas}" >
                    <fo:block font-size="9pt" font-family="Arial Narrow"  font-stretch="condensed" space-after="1mm" font-weight="bold" color="{$txt}" margin-left="1mm">
                       Monto Facturado
                    </fo:block>
                    <fo:block font-size="9pt" font-family="Arial Narrow"  font-stretch="condensed" space-after="1mm" color="{$txt}" margin-left="1mm">
                        <xsl:value-of select="estadoCuentaInternacional/comprobanteDePago/montoTotalFacturadoPagar" />
                    </fo:block>
            </fo:table-cell>
         </fo:table-row>
         <fo:table-row height="1cm" >
            <fo:table-cell border="0.5pt solid {$lineas}">
                    <fo:block font-size="9pt" font-family="Arial Narrow"  font-stretch="condensed" space-after="1mm" font-weight="bold" color="{$txt}" margin-left="1mm">
                       Monto Cancelado
                    </fo:block>
                    <fo:block font-size="9pt" font-family="Arial Narrow"  font-stretch="condensed" space-after="1mm" color="{$txt}" margin-left="1mm">
                        <xsl:value-of select="estadoCuentaInternacional/comprobanteDePago/montoMinimoPagar" />
                    </fo:block>
            </fo:table-cell>
            <fo:table-cell border="0.5pt solid {$lineas}" >
                    <fo:block font-size="9pt" font-family="Arial Narrow"  font-stretch="condensed" space-after="1mm" color="{$txt}" margin-left="1mm">

                    </fo:block>
            </fo:table-cell>
         </fo:table-row>
    
    </fo:table-body>
    </fo:table>
</fo:block>

<fo:block>
    <fo:table>
        <fo:table-column column-width="2cm" />
        <fo:table-column column-width="1cm" />
        <fo:table-column column-width="3.8cm" />
        <fo:table-column column-width="1cm" />
        <fo:table-body>
            <fo:table-row>
                <fo:table-cell>
                    <fo:block font-size="9pt" font-family="Arial Narrow"  font-stretch="condensed" space-after="1mm" color="{$txt}"
                        margin-left="1mm">
                        Cheque
                    </fo:block>
                </fo:table-cell>
                <fo:table-cell border="0.5pt solid {$lineas}">
                    <fo:block font-size="9pt" font-family="Arial Narrow"  font-stretch="condensed" color="{$txt}"
                        margin-left="3cm">
                    </fo:block>
                </fo:table-cell>
                <fo:table-cell>
                    <fo:block font-size="9pt" font-family="Arial Narrow"  font-stretch="condensed" space-after="1mm" color="{$txt}"
                        margin-left="2cm">
                        Efectivo
                    </fo:block>
                </fo:table-cell>
                <fo:table-cell border="0.5pt solid {$lineas}">
                    <fo:block font-size="9pt" font-family="Arial Narrow"  font-stretch="condensed" color="{$txt}"
                        margin-left="8cm">
                    </fo:block>
                </fo:table-cell>
            </fo:table-row>
        </fo:table-body>
    </fo:table>
</fo:block>
</fo:block-container>

</xsl:template>

<xsl:template name="contenido2">

<fo:block  font-size="5pt">
    <fo:table width="19cm" border="0.5pt solid {$lineas}"  >
    <fo:table-column column-width="4.1cm"/>
    <fo:table-column  column-width="1.3cm"/>
    <fo:table-column  column-width="4.6cm" />
    <fo:table-column  column-width="2.5cm" />
    <fo:table-column  column-width="0.8cm"/>
    <fo:table-column  column-width="1.4cm"  />
    <fo:table-column  column-width="1.4cm"/>
    
 

    <fo:table-body>
      <fo:table-row>
            <fo:table-cell number-columns-spanned="8" space-right="1cm"
                background-color="{$sombreadoTablas}" border="0.5pt solid {$lineas}">
                <fo:block font-size="9pt" font-family="Arial Narrow"  space-before="1mm" font-stretch="condensed" space-after="1mm" font-weight="bold" color="{$txt}" margin-left="5mm">
                    2.INFORMACIÓN DE TRANSACCIONES
                </fo:block>
            </fo:table-cell>
        </fo:table-row>
        <fo:table-row>
            <fo:table-cell border="0.5pt solid {$lineas}">
                <fo:block font-size="9pt" font-family="Arial Narrow"  font-stretch="condensed" space-after="1mm" color="{$txt}" margin-left="1mm" >
                    Número Referencia &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;  Internacional
                </fo:block>
            </fo:table-cell>
            <fo:table-cell border="0.5pt solid {$lineas}">
                    <fo:block font-size="9pt" font-family="Arial Narrow"  font-stretch="condensed" space-after="1mm" color="{$txt}" margin-left="1mm">
                        Fecha Operación
                    </fo:block>
            </fo:table-cell>
            <fo:table-cell border="0.5pt solid {$lineas}">
                    <fo:block font-size="9pt" font-family="Arial Narrow"  font-stretch="condensed" space-after="1mm" color="{$txt}" margin-left="1mm">
                        Descripción Operación o Cobro
                    </fo:block>
            </fo:table-cell>
             <fo:table-cell  border="0.5pt solid {$lineas}">
                    <fo:block font-size="9pt" font-family="Arial Narrow"  font-stretch="condensed" space-after="1mm" color="{$txt}" margin-left="1mm">
                        Ciudad
                    </fo:block>
            </fo:table-cell>
            <fo:table-cell  border="0.5pt solid {$lineas}">
                    <fo:block font-size="9pt" font-family="Arial Narrow"  font-stretch="condensed" space-after="1mm" color="{$txt}" margin-left="1mm">
                        Pais
                    </fo:block>
            </fo:table-cell>
            <fo:table-cell  border="0.5pt solid {$lineas}">
                    <fo:block font-size="9pt" font-family="Arial Narrow"  font-stretch="condensed" space-after="1mm" color="{$txt}" margin-left="1mm">
                        Monto Moneda Origen
                    </fo:block>
            </fo:table-cell>
            <fo:table-cell number-columns-spanned="2" border="0.5pt solid {$lineas}">
                    <fo:block font-size="9pt" font-family="Arial Narrow"  font-stretch="condensed" space-after="1mm" color="{$txt}" margin-left="1mm">
                        Monto US$
                    </fo:block>
            </fo:table-cell>
        </fo:table-row>
       
         <fo:table-row>
	            <fo:table-cell number-columns-spanned="5" border="0.5pt solid {$lineas}">
                <fo:block font-size="8pt" space-before="1mm" font-family="Arial Narrow"  font-stretch="condensed" space-after="1mm" font-weight="bold" color="{$txt}" margin-left="1mm">
                    TOTAL DE PAGOS
                </fo:block>   
            </fo:table-cell>
            <fo:table-cell border="0.5pt solid {$lineas}" number-columns-spanned="2">
                <fo:block space-before="1mm" font-size="8pt" font-family="Arial Narrow"  font-stretch="condensed" space-after="1mm" font-weight="bold" color="{$txt}" text-align="right" margin-right="1mm">
                <xsl:value-of select="estadoCuentaInternacional/periodoActual/totalDePagos/totalOperacionesPagos"/>        
                </fo:block>   
            </fo:table-cell>
        </fo:table-row>
        
            <xsl:for-each select="estadoCuentaInternacional/periodoActual/totalDePagos/operacion">
            <fo:table-row>
                    <fo:table-cell border-left-style="solid">
                    <fo:block font-size="8pt" font-family="Arial Narrow"  font-stretch="condensed" space-after="1mm" color="{$txt}" margin-left="1mm">
                         <xsl:value-of select="numeroReferenciaInternacional"/>            
                    </fo:block>
           </fo:table-cell>
           <fo:table-cell border-left-style="solid">
                    <fo:block font-size="8pt" font-family="Arial Narrow"  font-stretch="condensed" space-after="1mm" color="{$txt}" margin-left="1mm">
                         <xsl:value-of select="fechaOperacion"/>            
                    </fo:block>
           </fo:table-cell>
           <fo:table-cell border-left-style="solid">
                    <fo:block font-size="8pt" font-family="Arial Narrow"  font-stretch="condensed" space-after="1mm" color="{$txt}" margin-left="1mm">
                         <xsl:value-of select="descripcionOperacionCobro"/>            
                    </fo:block>
           </fo:table-cell>
           <fo:table-cell border-left-style="solid">
                    <fo:block font-size="8pt" font-family="Arial Narrow"  font-stretch="condensed" space-after="1mm" color="{$txt}" margin-left="1mm">
                         <xsl:value-of select="ciudad"/>            
                    </fo:block>
           </fo:table-cell>
           <fo:table-cell border-left-style="solid">
                    <fo:block font-size="8pt" font-family="Arial Narrow"  font-stretch="condensed" space-after="1mm" color="{$txt}" margin-left="1mm">
                         <xsl:value-of select="pais"/>            
                    </fo:block>
           </fo:table-cell>
              <fo:table-cell border-left-style="solid">
                    <fo:block font-size="8pt" font-family="Arial Narrow"  font-stretch="condensed" space-after="1mm" color="{$txt}" margin-left="1mm">
                         <xsl:value-of select="montoMonedaOrigen"/>            
                    </fo:block>
           </fo:table-cell>
           <fo:table-cell border-left-style="solid">
                    <fo:block font-size="8pt" font-family="Arial Narrow"  font-stretch="condensed" space-after="1mm" color="{$txt}" margin-left="1mm">
                         <xsl:value-of select="montoDolares"/>            
                    </fo:block>
           </fo:table-cell>
        </fo:table-row>
        </xsl:for-each>
      <fo:table-row>
            <fo:table-cell number-columns-spanned="5" border="0.5pt solid {$lineas}">
                <fo:block font-size="8pt" space-before="1mm" font-family="Arial Narrow"  font-stretch="condensed" space-after="1mm" font-weight="bold" color="{$txt}" margin-left="1mm">
                    TOTAL COMPRAS
                </fo:block>   
            </fo:table-cell>
            <fo:table-cell border="0.5pt solid {$lineas}" number-columns-spanned="2">
                <fo:block space-before="1mm" font-size="8pt" font-family="Arial Narrow"  font-stretch="condensed" space-after="1mm" font-weight="bold" color="{$txt}" text-align="right" margin-right="1mm">
                        <xsl:value-of select="estadoCuentaInternacional/periodoActual/totalDeCompras/totalCargosComisionesImpuestosAbonos"/> 
                </fo:block>   
            </fo:table-cell>
        </fo:table-row>
        
            <xsl:for-each select="estadoCuentaInternacional/periodoActual/totalDeCompras/operacion">
            <fo:table-row>
                    <fo:table-cell border-left-style="solid">
                    <fo:block font-size="8pt" font-family="Arial Narrow"  font-stretch="condensed" space-after="1mm" color="{$txt}" margin-left="1mm">
                         <xsl:value-of select="numeroReferenciaInternacional"/>            
                    </fo:block>
           </fo:table-cell>
           <fo:table-cell border-left-style="solid">
                    <fo:block font-size="8pt" font-family="Arial Narrow"  font-stretch="condensed" space-after="1mm" color="{$txt}" margin-left="1mm">
                         <xsl:value-of select="fechaOperacion"/>            
                    </fo:block>
           </fo:table-cell>
           <fo:table-cell border-left-style="solid">
                    <fo:block font-size="8pt" font-family="Arial Narrow"  font-stretch="condensed" space-after="1mm" color="{$txt}" margin-left="1mm">
                         <xsl:value-of select="descripcionOperacionCobro"/>            
                    </fo:block>
           </fo:table-cell>
           <fo:table-cell border-left-style="solid">
                    <fo:block font-size="8pt" font-family="Arial Narrow"  font-stretch="condensed" space-after="1mm" color="{$txt}" margin-left="1mm">
                         <xsl:value-of select="ciudad"/>            
                    </fo:block>
           </fo:table-cell>
           <fo:table-cell border-left-style="solid">
                    <fo:block font-size="8pt" font-family="Arial Narrow"  font-stretch="condensed" space-after="1mm" color="{$txt}" margin-left="1mm">
                         <xsl:value-of select="pais"/>            
                    </fo:block>
           </fo:table-cell>
              <fo:table-cell border-left-style="solid">
                    <fo:block font-size="8pt" font-family="Arial Narrow"  font-stretch="condensed" space-after="1mm" color="{$txt}" margin-left="1mm">
                         <xsl:value-of select="montoMonedaOrigen"/>            
                    </fo:block>
           </fo:table-cell>
           <fo:table-cell border-left-style="solid">
                    <fo:block font-size="8pt" font-family="Arial Narrow"  font-stretch="condensed" space-after="1mm" color="{$txt}" margin-left="1mm">
                         <xsl:value-of select="montoDolares"/>            
                    </fo:block>
           </fo:table-cell>
        </fo:table-row>
        </xsl:for-each>
      
        <fo:table-row>
            <fo:table-cell number-columns-spanned="5" border="0.5pt solid {$lineas}">
                <fo:block space-before="1mm" font-size="8pt" font-family="Arial Narrow"  font-stretch="condensed" space-after="1mm" font-weight="bold" color="{$txt}" margin-left="1mm">
                    OTROS CARGOS Y ABONOS A LA CUENTA
                </fo:block>   
            </fo:table-cell>
            <fo:table-cell border="0.5pt solid {$lineas}" number-columns-spanned="2">
                <fo:block space-before="1mm" font-size="8pt" font-family="Arial Narrow"  font-stretch="condensed" space-after="1mm" font-weight="bold" color="{$txt}" text-align="right" margin-right="1mm">
                        <xsl:value-of select="estadoCuentaInternacional/periodoActual/otrosCargosAbonos/totalInformacionComprasEnCuotas"/>
                </fo:block>   
            </fo:table-cell>
        </fo:table-row>
        
            <xsl:for-each select="estadoCuentaInternacional/periodoActual/otrosCargosAbonos/operacion">
            <fo:table-row>
                    <fo:table-cell border-left-style="solid">
                    <fo:block font-size="8pt" font-family="Arial Narrow"  font-stretch="condensed" space-after="1mm" color="{$txt}" margin-left="1mm">
                         <xsl:value-of select="numeroReferenciaInternacional"/>            
                    </fo:block>
           </fo:table-cell>
           <fo:table-cell border-left-style="solid">
                    <fo:block font-size="8pt" font-family="Arial Narrow"  font-stretch="condensed" space-after="1mm" color="{$txt}" margin-left="1mm">
                         <xsl:value-of select="fechaOperacion"/>            
                    </fo:block>
           </fo:table-cell>
           <fo:table-cell border-left-style="solid">
                    <fo:block font-size="8pt" font-family="Arial Narrow"  font-stretch="condensed" space-after="1mm" color="{$txt}" margin-left="1mm">
                         <xsl:value-of select="descripcionOperacionCobro"/>            
                    </fo:block>
           </fo:table-cell>
           <fo:table-cell border-left-style="solid">
                    <fo:block font-size="8pt" font-family="Arial Narrow"  font-stretch="condensed" space-after="1mm" color="{$txt}" margin-left="1mm">
                         <xsl:value-of select="ciudad"/>            
                    </fo:block>
           </fo:table-cell>
           <fo:table-cell border-left-style="solid">
                    <fo:block font-size="8pt" font-family="Arial Narrow"  font-stretch="condensed" space-after="1mm" color="{$txt}" margin-left="1mm">
                         <xsl:value-of select="pais"/>            
                    </fo:block>
           </fo:table-cell>
              <fo:table-cell border-left-style="solid">
                    <fo:block font-size="8pt" font-family="Arial Narrow"  font-stretch="condensed" space-after="1mm" color="{$txt}" margin-left="1mm">
                         <xsl:value-of select="montoMonedaOrigen"/>            
                    </fo:block>
           </fo:table-cell>
           <fo:table-cell border-left-style="solid">
                    <fo:block font-size="8pt" font-family="Arial Narrow"  font-stretch="condensed" space-after="1mm" color="{$txt}" margin-left="1mm">
                         <xsl:value-of select="montoDolares"/>            
                    </fo:block>
           </fo:table-cell>
        </fo:table-row>
        </xsl:for-each>
      
     </fo:table-body>
    </fo:table>
</fo:block>

</xsl:template>




</xsl:stylesheet>
    