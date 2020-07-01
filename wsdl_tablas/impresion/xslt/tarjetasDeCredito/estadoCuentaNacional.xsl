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
    <xsl:variable name="logo"><xsl:value-of select="estadoCuentaNacional/logoBanca"/></xsl:variable>
    <xsl:variable name="logoRot"><xsl:value-of select="estadoCuentaNacional/logoBancaRot"/></xsl:variable>
    <xsl:variable name="visa"><xsl:value-of select="estadoCuentaNacional/urlVisa"/></xsl:variable>
    <xsl:variable name="visaRot"><xsl:value-of select="estadoCuentaNacional/urlVisaRot"/></xsl:variable>
    <xsl:variable name="master"><xsl:value-of select="estadoCuentaNacional/urlMaster"/></xsl:variable>
    <xsl:variable name="masterRot"><xsl:value-of select="estadoCuentaNacional/urlMasterRot"/></xsl:variable>
    <xsl:variable name="codigoBarra"><xsl:value-of select="estadoCuentaNacional/codigoBarra"/></xsl:variable>
    
    
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
                <fo:simple-page-master  master-name="otra"
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
                      <fo:block-container position="absolute" height="54pt" width="54pt">
                      <fo:block>
                         <xsl:if test="estadoCuentaNacional/periodoActual/logotipoTarjeta = '4'">
                         <fo:external-graphic src="{$visa}"/>
                         </xsl:if>
                         <xsl:if test="estadoCuentaNacional/periodoActual/logotipoTarjeta = '5'">
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
            <fo:page-sequence master-reference="otra" initial-page-number="2" language="en" country="us" >
                <fo:static-content flow-name="xsl-region-before">
                    <!-- imagen bci -->
                      <fo:block-container position="absolute" height="54pt" width="54pt"  >
                      <fo:block>
                         <xsl:if test="estadoCuentaNacional/periodoActual/logotipoTarjeta = '4'">
                         <fo:external-graphic src="{$visa}"/>
                         </xsl:if>
                         <xsl:if test="estadoCuentaNacional/periodoActual/logotipoTarjeta = '5'">
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
                    <xsl:call-template name="contenido2"/>
                </fo:flow>
            </fo:page-sequence>
               <fo:page-sequence master-reference="pagina2"  language="en" country="us">
                <fo:static-content flow-name="xsl-region-before">
                    <!-- imagen bci -->
                      <fo:block-container position="absolute" height="54pt" width="54pt"  >
                      <fo:block>
                         <xsl:if test="estadoCuentaNacional/periodoActual/logotipoTarjeta = '4'">
                         <fo:external-graphic src="{$visa}"/>
                         </xsl:if>
                         <xsl:if test="estadoCuentaNacional/periodoActual/logotipoTarjeta = '5'">
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
                    <xsl:call-template name="contenido3" />
                </fo:flow>
            </fo:page-sequence> 
        </fo:root>
    </xsl:template>
    
<xsl:template name="contenido">

<!-- PDF ESTADIO CUENTA NACIONAL -->


<fo:block-container position="absolute" height="20pt" width="200pt"  left="283pt" top="60pt">
     <fo:block>
        <fo:external-graphic src="{$codigoBarra}"/>
     </fo:block>
</fo:block-container>

<fo:block  font-size="5pt" space-after="1cm">
    <fo:table width="19cm" border="0.5pt solid {$lineas}"  >
    <fo:table-column column-width="3.5cm"  border="0.5pt solid {$lineas}"/>
    <fo:table-column column-width="14.5cm"/>
      

    <fo:table-header space-after="1mm">
        <fo:table-row>
            <fo:table-cell number-columns-spanned="2" space-right="1cm"
                background-color="{$sombreadoTablas}" border="0.5pt solid {$lineas}">
                <fo:block font-size="12pt" font-family="Arial Narrow" font-stretch="condensed" font-weight="bold" text-align="center" 
                    color="{$txt}">
                    Estado de Cuenta Nacional de Tarjeta de Crédito
                </fo:block>
            </fo:table-cell>
        </fo:table-row >
    </fo:table-header>
    <fo:table-body>
        <fo:table-row>
            <fo:table-cell>
                <fo:block font-size="9pt" font-family="Arial Narrow" font-stretch="condensed" space-after="1mm" color="{$txt}" margin-left="1mm" >
                    Nombre del Titular
                </fo:block>
            </fo:table-cell>
            <fo:table-cell>
                    <fo:block font-size="9pt" font-family="Arial Narrow" font-stretch="condensed" space-after="1mm" color="{$txt}" margin-left="1mm">
                         <xsl:value-of select="estadoCuentaNacional/nombreTitular"/>
                    </fo:block>
            </fo:table-cell>
        </fo:table-row>
        <fo:table-row>
            <fo:table-cell>
                    <fo:block font-size="9pt" font-family="Arial Narrow" font-stretch="condensed" space-after="1mm" color="{$txt}" margin-left="1mm">
                        Nº de Tarjeta de Crédito
                    </fo:block>
            </fo:table-cell>
            <fo:table-cell>
                    <fo:block font-size="9pt" font-family="Arial Narrow" font-stretch="condensed" space-after="1mm" color="{$txt}" margin-left="1mm">
                        <xsl:value-of select="estadoCuentaNacional/numeroTarjetaCredito"/>
                    </fo:block>
            </fo:table-cell>
        </fo:table-row>
        <fo:table-row>
            <fo:table-cell>
                    <fo:block font-size="9pt" font-family="Arial Narrow" font-stretch="condensed" space-after="1mm" color="{$txt}" margin-left="1mm">
                        Fecha Estado de Cuenta
                    </fo:block>
            </fo:table-cell>
            <fo:table-cell>
                    <fo:block font-size="9pt" font-family="Arial Narrow" font-stretch="condensed" space-after="1mm" color="{$txt}" margin-left="1mm">
                        <xsl:value-of select="estadoCuentaNacional/fechaEstadoCuenta"/>
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
            <fo:table-cell>
                <fo:block font-size="9pt" font-family="Arial Narrow" font-stretch="condensed" space-after="1mm" color="{$txt}"
                    margin-left="5mm">
                </fo:block>
            </fo:table-cell>
            </fo:table-row>
            <fo:table-row>
                <fo:table-cell>
                    <fo:block font-size="9pt" font-family="Arial Narrow" font-stretch="condensed" space-after="1mm" color="{$txt}"
                        margin-left="10cm">
                        <xsl:value-of select="estadoCuentaNacional/nombreTitular"/>
                    </fo:block>
                </fo:table-cell>
            </fo:table-row>
            <fo:table-row>
                <fo:table-cell>
                    <fo:block font-size="9pt" font-family="Arial Narrow" font-stretch="condensed" space-after="1mm" color="{$txt}"
                        margin-left="10cm">
                        <xsl:value-of select="estadoCuentaNacional/direccionEnvio"/>
                    </fo:block>
                </fo:table-cell>
            </fo:table-row>
            <fo:table-row>
                <fo:table-cell>
                    <fo:block font-size="9pt" font-family="Arial Narrow" font-stretch="condensed" space-after="1mm" color="{$txt}"
                        margin-left="10cm">
                        <xsl:value-of select="estadoCuentaNacional/comunaEnvio"/>
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
                    <fo:block font-size="9pt" font-family="Arial Narrow" font-stretch="condensed" space-before="1mm" space-after="1mm" font-weight="bold" color="{$txt}" margin-left="5mm">
                       I.    INFORMACIÓN GENERAL
                    </fo:block>
            </fo:table-cell>
        </fo:table-row>
    </fo:table-body>
    </fo:table>
</fo:block>

<!-- Fin cabecera Bloque Informacion general -->

<!-- Inicio bloque descripcion cupos-->
<fo:block font-size="5pt" space-after="3mm">
    <fo:table table-layout="fixed" width="14cm">
    <fo:table-column column-width="2.2cm"/>
    <fo:table-column column-width="2cm"/>
    <fo:table-column column-width="2cm"/>
    <fo:table-column column-width="2cm"/>
    <fo:table-body>
        <fo:table-row>
            <fo:table-cell>
            </fo:table-cell>
            <fo:table-cell border="0.5pt solid {$lineas}" background-color="{$sombreadoTablas}">
                    <fo:block font-size="9pt" font-family="Arial Narrow" font-stretch="condensed" space-after="1mm"  font-weight="bold" color="{$txt}" margin-left="1mm">
                       Cupo Total
                    </fo:block>
            </fo:table-cell>
            <fo:table-cell border="0.5pt solid {$lineas}" background-color="{$sombreadoTablas}">
                    <fo:block font-size="9pt" font-family="Arial Narrow" font-stretch="condensed" space-after="1mm"  font-weight="bold" color="{$txt}" margin-left="1mm">
                       Cupo Utilizado
                    </fo:block>
            </fo:table-cell>
            <fo:table-cell border="0.5pt solid {$lineas}" background-color="{$sombreadoTablas}">
                    <fo:block font-size="9pt" font-family="Arial Narrow" font-stretch="condensed" space-after="1mm"  font-weight="bold" color="{$txt}" margin-left="1mm">
                       Cupo Disponible
                    </fo:block>
            </fo:table-cell>
        </fo:table-row>
        <fo:table-row>
            <fo:table-cell border="0.5pt solid {$lineas}">
                    <fo:block font-size="9pt" font-family="Arial Narrow" font-stretch="condensed" space-after="1mm" color="{$txt}" margin-left="1mm">
                       Cupo Total
                    </fo:block>
            </fo:table-cell>
            <fo:table-cell border="0.5pt solid {$lineas}">
                    <fo:block font-size="9pt" font-family="Arial Narrow" font-stretch="condensed" space-after="1mm" color="{$txt}" margin-left="1mm">
                        <xsl:value-of select="estadoCuentaNacional/cupoTotal/total"/>
                    </fo:block>
            </fo:table-cell>
            <fo:table-cell border="0.5pt solid {$lineas}">
                    <fo:block font-size="9pt" font-family="Arial Narrow" font-stretch="condensed" space-after="1mm" color="{$txt}" margin-left="1mm">
                        <xsl:value-of select="estadoCuentaNacional/cupoTotal/utilizado"/>
                    </fo:block>
            </fo:table-cell>
            <fo:table-cell border="0.5pt solid {$lineas}">
                    <fo:block font-size="9pt" font-family="Arial Narrow" font-stretch="condensed" space-after="1mm" color="{$txt}" margin-left="1mm">
                        <xsl:value-of select="estadoCuentaNacional/cupoTotal/disponible"/>
                    </fo:block>
            </fo:table-cell>
        </fo:table-row>
        <fo:table-row>
            <fo:table-cell border="0.5pt solid {$lineas}">
                    <fo:block font-size="9pt" font-family="Arial Narrow" font-stretch="condensed" space-after="1mm" color="{$txt}" margin-left="1mm">
                       Cupo Total Avance en Efectivo
                    </fo:block>
            </fo:table-cell>
            <fo:table-cell border="0.5pt solid {$lineas}" >
                    <fo:block font-size="9pt" font-family="Arial Narrow" font-stretch="condensed" space-after="1mm" color="{$txt}" margin-left="1mm">
                        <xsl:value-of select="estadoCuentaNacional/cupoTotalAvanceEfectivo/total"/>
                    </fo:block>
            </fo:table-cell>
            <fo:table-cell border="0.5pt solid {$lineas}">
                    <fo:block font-size="9pt" font-family="Arial Narrow" font-stretch="condensed" space-after="1mm" color="{$txt}" margin-left="1mm">
                        <xsl:value-of select="estadoCuentaNacional/cupoTotalAvanceEfectivo/utilizado"/>
                    </fo:block>
            </fo:table-cell>
            <fo:table-cell border="0.5pt solid {$lineas}">
                    <fo:block font-size="9pt" font-family="Arial Narrow" font-stretch="condensed" space-after="1mm" color="{$txt}" margin-left="1mm">
                        <xsl:value-of select="estadoCuentaNacional/cupoTotalAvanceEfectivo/disponible"/>
                    </fo:block>
            </fo:table-cell>
        </fo:table-row>
    </fo:table-body>
    </fo:table>
</fo:block>

<!-- Fin bloque descripcion cupos-->
    



<!-- Inicio bloque tasa interes vigente-->
<fo:table>
<fo:table-column column-width="15cm"/> 
<fo:table-column column-width="5cm"/> 
<fo:table-body>
<fo:table-row>
 <fo:table-cell>
     <fo:block font-size="5pt">
    <fo:table table-layout="fixed" width="11cm">
    <fo:table-column column-width="2.5cm"/>
    <fo:table-column column-width="1.5cm"/>
    <fo:table-column column-width="1.5cm"/>
    <fo:table-column column-width="1.5cm"/>
    <fo:table-body>
        <fo:table-row>
            <fo:table-cell>
            </fo:table-cell>
            <fo:table-cell border="0.5pt solid {$lineas}" background-color="{$sombreadoTablas}">
                    <fo:block font-size="9pt" font-family="Arial Narrow" font-stretch="condensed" space-after="1mm"  font-weight="bold" color="{$txt}" text-align="center">
                       Rotativo
                    </fo:block>
            </fo:table-cell>
            <fo:table-cell border="0.5pt solid {$lineas}" background-color="{$sombreadoTablas}">
                    <fo:block font-size="9pt" font-family="Arial Narrow" font-stretch="condensed" space-after="1mm"  font-weight="bold" color="{$txt}" text-align="center">
                       Cuotas
                    </fo:block>
            </fo:table-cell>
            <fo:table-cell border="0.5pt solid {$lineas}" background-color="{$sombreadoTablas}">
                    <fo:block font-size="9pt" font-family="Arial Narrow" font-stretch="condensed" space-after="1mm"  font-weight="bold" color="{$txt}" text-align="center">
                       Avance
                    </fo:block>
            </fo:table-cell>
        </fo:table-row>
        <fo:table-row>
            <fo:table-cell border="0.5pt solid {$lineas}">
                    <fo:block font-size="9pt" font-family="Arial Narrow" font-stretch="condensed" space-after="1mm" color="{$txt}" text-align="center" space-before="1mm">
                       TASA INTERÉS VIGENTE
                    </fo:block>
            </fo:table-cell>
            <fo:table-cell border="0.5pt solid {$lineas}">
                    <fo:block font-size="9pt" font-family="Arial Narrow" font-stretch="condensed" space-after="1mm" color="{$txt}" text-align="center">
                        <xsl:value-of select="estadoCuentaNacional/tasaInteresVigente/rotativo"/>
                    </fo:block>
            </fo:table-cell>
            <fo:table-cell border="0.5pt solid {$lineas}">
                    <fo:block font-size="9pt" font-family="Arial Narrow" font-stretch="condensed" space-after="1mm" color="{$txt}" text-align="center">
                        <xsl:value-of select="estadoCuentaNacional/tasaInteresVigente/cuotas"/>
                    </fo:block>
            </fo:table-cell>
            <fo:table-cell border="0.5pt solid {$lineas}">
                    <fo:block font-size="9pt" font-family="Arial Narrow" font-stretch="condensed" space-after="1mm" color="{$txt}" text-align="center">
                        <xsl:value-of select="estadoCuentaNacional/tasaInteresVigente/avance"/>
                    </fo:block>
            </fo:table-cell>
        </fo:table-row>
        <fo:table-row>
            <fo:table-cell border="0.5pt solid {$lineas}">
                    <fo:block font-size="9pt" font-family="Arial Narrow" font-stretch="condensed" space-after="1mm" color="{$txt}"  space-before="1mm" text-align="center">
                       CAE
                    </fo:block>
            </fo:table-cell>
            <fo:table-cell border="0.5pt solid {$lineas}">
                    <fo:block font-size="9pt" font-family="Arial Narrow" font-stretch="condensed" space-after="1mm" color="{$txt}" text-align="center">
                        <xsl:value-of select="estadoCuentaNacional/CAE/rotativo"/>
                    </fo:block>
            </fo:table-cell>
            <fo:table-cell border="0.5pt solid {$lineas}">
                    <fo:block font-size="9pt" font-family="Arial Narrow" font-stretch="condensed" space-after="1mm" color="{$txt}" text-align="center">
                        <xsl:value-of select="estadoCuentaNacional/CAE/cuotas"/>
                    </fo:block>
            </fo:table-cell>
            <fo:table-cell border="0.5pt solid {$lineas}">
                    <fo:block font-size="9pt" font-family="Arial Narrow" font-stretch="condensed" space-after="1mm" color="{$txt}" text-align="center">
                        <xsl:value-of select="estadoCuentaNacional/CAE/avance"/>
                    </fo:block>
            </fo:table-cell>
        </fo:table-row>
    </fo:table-body>
    </fo:table>
</fo:block>
 </fo:table-cell>
  <fo:table-cell>
      <fo:block margin-left="">
                <fo:table width="4cm">
                <fo:table-column column-width="4cm"/>
                <fo:table-body>
                <fo:table-row>
                  <fo:table-cell border="0.5pt solid {$lineas}">
                    <fo:block margin-left="0.5cm" space-after="5mm" font-weight="bold" font-size="12pt" font-family="Arial Narrow" font-stretch="condensed">
                         CAE PREPAGO
                    </fo:block>
                  </fo:table-cell>
                </fo:table-row>
                    <fo:table-row>
                  <fo:table-cell border="0.5pt solid {$lineas}">
                    <fo:block  margin-left="1.5cm" font-weight="bold" font-size="12pt" font-family="Arial Narrow" font-stretch="condensed">
                        <xsl:value-of select="estadoCuentaNacional/caePrepago"/>
                    </fo:block>
                  </fo:table-cell>
                </fo:table-row>
                    <fo:table-row>
                  <fo:table-cell border="0.5pt solid {$lineas}">
                    <fo:block font-size="9pt" margin-left="0.8cm" space-after="5mm">
                         
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



<fo:table space-after="5mm">
<fo:table-column column-width="8.5cm"/> 
<fo:table-column column-width="12cm"/> 
<fo:table-body>
<fo:table-row>
 <fo:table-cell>
  <fo:block font-size="9pt" font-family="Arial Narrow" font-stretch="condensed" color="{$txt}">
CAE se calcula sobre un supuesto de gasto mensual de 20 UF 
y pagadero en 12 cuotas.
</fo:block>
 </fo:table-cell>
 <fo:table-cell>
 <fo:block font-size="5pt" >
    <fo:table table-layout="fixed" width="10.5cm">
    <fo:table-column column-width="1.5cm" />
    <fo:table-column column-width="1.5cm"/>
    <fo:table-column column-width="18.5mm"/>
    <fo:table-body>
        <fo:table-row   >
            <fo:table-cell>
            
            </fo:table-cell>
            <fo:table-cell border="0.5pt solid {$lineas}">
                    <fo:block font-size="9pt" font-family="Arial Narrow" font-stretch="condensed" space-after="1mm" color="{$txt}" text-align="center">
                       Desde
                    </fo:block>
            </fo:table-cell>
            <fo:table-cell border="0.5pt solid {$lineas}">
                    <fo:block font-size="9pt" font-family="Arial Narrow" font-stretch="condensed" space-after="1mm" color="{$txt}" text-align="center">
                       Hasta
                    </fo:block>
            </fo:table-cell>
        </fo:table-row>
        <fo:table-row>
            <fo:table-cell border="0.5pt solid {$lineas}">
                    <fo:block font-size="9pt" font-family="Arial Narrow" font-stretch="condensed" space-after="1mm" color="{$txt}" text-align="center">
                       Período Facturado
                    </fo:block>
            </fo:table-cell>
            <fo:table-cell border="0.5pt solid {$lineas}">
                    <fo:block font-size="9pt" font-family="Arial Narrow" font-stretch="condensed" space-after="1mm" color="{$txt}" text-align="center">
                        <xsl:value-of select="estadoCuentaNacional/periodoFacturado/desde"/>
                    </fo:block>
            </fo:table-cell>
            <fo:table-cell border="0.5pt solid {$lineas}">
                    <fo:block font-size="9pt" font-family="Arial Narrow" font-stretch="condensed" space-after="1mm" color="{$txt}" margin-left="12mm">
                        <xsl:value-of select="estadoCuentaNacional/periodoFacturado/hasta"/>
                    </fo:block>
            </fo:table-cell>
        </fo:table-row>
        <fo:table-row>
            <fo:table-cell border="0.5pt solid {$lineas}">
                    <fo:block font-size="9pt" font-family="Arial Narrow" font-stretch="condensed" space-after="1mm" color="{$txt}" margin-left="7mm">
                       Pagar Hasta
                    </fo:block>
            </fo:table-cell>
            <fo:table-cell  border="0.5pt solid {$lineas}" number-columns-spanned="2">
                    <fo:block font-size="9pt" font-family="Arial Narrow" font-stretch="condensed" space-after="1mm" color="{$txt}" margin-left="3cm">
                        <xsl:value-of select="estadoCuentaNacional/pagarHasta"/>
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

<fo:block font-size="5pt" space-after="5mm">
    <fo:table table-layout="fixed" width="19cm" >
    <fo:table-column column-width="19cm" />
    <fo:table-body>
        <fo:table-row>
            <fo:table-cell background-color="{$sombreadoTablas}" border="0.5pt solid {$lineas}">
                    <fo:block font-size="9pt" font-family="Arial Narrow" font-stretch="condensed" space-after="1mm" font-weight="bold" color="{$txt}" margin-left="5mm" space-before="1mm">
                       II.    DETALLE
                    </fo:block>
            </fo:table-cell>
        </fo:table-row>
    </fo:table-body>
    </fo:table>
</fo:block>


<fo:block font-size="5pt" space-after="2.5cm">
    <fo:table table-layout="fixed" width="14cm">
    <fo:table-column column-width="4cm"/>
    <fo:table-column column-width="1.5cm"/>
    <fo:table-column column-width="1.5cm"/>
    <fo:table-body>
        <fo:table-row>
            <fo:table-cell border="0.5pt solid {$lineas}" background-color="{$sombreadoTablas}">
            <fo:block font-size="9pt" font-family="Arial Narrow" font-stretch="condensed" space-after="1mm"  font-weight="bold" color="{$txt}" margin-left="1mm" space-before="1mm">
                       1.PERÍODO ANTERIOR
            </fo:block>
            </fo:table-cell>
            <fo:table-cell border="0.5pt solid {$lineas}" background-color="{$sombreadoTablas}">
                    <fo:block font-size="9pt" font-family="Arial Narrow" font-stretch="condensed" space-after="1mm"  font-weight="bold" color="{$txt}" margin-left="1mm">
                       Desde
                    </fo:block>
            </fo:table-cell>
            <fo:table-cell border="0.5pt solid {$lineas}" background-color="{$sombreadoTablas}">
                    <fo:block font-size="9pt" font-family="Arial Narrow" font-stretch="condensed" space-after="1mm"  font-weight="bold" color="{$txt}" margin-left="1mm">
                       Hasta
                    </fo:block>
            </fo:table-cell>
        </fo:table-row>
        <fo:table-row>
            <fo:table-cell border="0.5pt solid {$lineas}">
                    <fo:block font-size="9pt" font-family="Arial Narrow" font-stretch="condensed" space-after="1mm" color="{$txt}" margin-left="1mm">
                       Período de Facturacion Anterior
                    </fo:block>
            </fo:table-cell>
            <fo:table-cell border="0.5pt solid {$lineas}">
                    <fo:block font-size="9pt" font-family="Arial Narrow" font-stretch="condensed" space-after="1mm" color="{$txt}" margin-left="1mm">
                        <xsl:value-of select="estadoCuentaNacional/periodoFacturacionAnterior/desde"/>
                    </fo:block>
            </fo:table-cell>
            <fo:table-cell border="0.5pt solid {$lineas}">
                    <fo:block font-size="9pt" font-family="Arial Narrow" font-stretch="condensed" space-after="1mm" color="{$txt}" margin-left="1mm">
                        <xsl:value-of select="estadoCuentaNacional/periodoFacturacionAnterior/hasta"/>
                    </fo:block>
            </fo:table-cell>
        </fo:table-row>
    <fo:table-row>
        <fo:table-cell border="0.5pt solid {$lineas}">
            <fo:block font-size="9pt" font-family="Arial Narrow" font-stretch="condensed" color="{$txt}" space-after="1mm"
                margin-left="1mm">
                Saldo Adeudado Inicio Período Anterior
            </fo:block>
            <fo:block font-size="9pt" font-family="Arial Narrow" font-stretch="condensed" space-after="1mm" color="{$txt}"
                margin-left="1mm">
                Monto Facturado a Pagar (Período Anterior)
            </fo:block>
            <fo:block font-size="9pt" font-family="Arial Narrow" font-stretch="condensed" space-after="1mm" color="{$txt}"
                margin-left="1mm">
                Monto Pagado Período Anterior
            </fo:block>
            <fo:block font-size="9pt" font-family="Arial Narrow" font-stretch="condensed" space-after="1mm" color="{$txt}"
                margin-left="1mm">
                Saldo Adeudado Final Período Anterior
            </fo:block>
        </fo:table-cell>
        <fo:table-cell border="0.5pt solid {$lineas}">
            <fo:block font-size="9pt" font-family="Arial Narrow" font-stretch="condensed" space-after="1mm" color="{$txt}"
                margin-left="1mm">
                <xsl:value-of select="estadoCuentaNacional/saldoAdeudadoInicioPeriodoAnterior"/>
            </fo:block>
            <fo:block font-size="9pt" font-family="Arial Narrow" font-stretch="condensed" space-after="1mm" color="{$txt}"
                margin-left="1mm">
                <xsl:value-of select="estadoCuentaNacional/montoFacturadoPagar"/>
            </fo:block>
            <fo:block font-size="9pt" font-family="Arial Narrow" font-stretch="condensed" space-after="1mm" color="{$txt}"
                margin-left="1mm">
                <xsl:value-of select="estadoCuentaNacional/montoPagadoPeriodoAnterior"/>
            </fo:block>
            <fo:block font-size="9pt" font-family="Arial Narrow" font-stretch="condensed" space-after="1mm" color="{$txt}"
                margin-left="1mm">
                <xsl:value-of select="estadoCuentaNacional/saldoAdeudadoFinalPeriodoAnterior"/>
            </fo:block>
        </fo:table-cell>
    </fo:table-row>
       
    </fo:table-body>
    </fo:table>
</fo:block>

<fo:block-container position="absolute" height="50pt" width="50pt"  left="282pt" top="470pt">
     <fo:block>
        <fo:external-graphic src="{$logo}"/>
     </fo:block>
</fo:block-container>
<fo:table width="200pt" space-after="1mm">
        <fo:table-column column-width="5cm" />
        <fo:table-column column-width="5cm" />
        <fo:table-column column-width="9cm" />
        <fo:table-body>
        <fo:table-row>
            <fo:table-cell>
                <fo:block font-size="9pt" font-family="Arial Narrow" font-stretch="condensed" space-after="1mm" color="{$txt}">
                EMISOR
                </fo:block>
            </fo:table-cell>
            <fo:table-cell>
                  
            </fo:table-cell>
            <fo:table-cell>
                <fo:block font-size="9pt" font-family="Arial Narrow" font-stretch="condensed" color="{$txt}" space-after="2mm">
                 CLIENTE
                </fo:block>
                   <fo:block margin-left="1mm" font-size="7pt" font-family="Arial Narrow" font-stretch="condensed" color="{$txt}">
                 Estimado cliente,para pagar este estado de cuenta por caja, debe completar los
                 números de su tarjeta en los casilleros correspondientes. 
                </fo:block>
            </fo:table-cell>
            </fo:table-row>
        </fo:table-body>
    </fo:table>





<fo:block-container position="absolute" top="198.4mm" right="10cm" width="200pt" height="200pt">
<fo:block font-size="5pt" space-after="2mm">
    <fo:table table-layout="fixed" width="9cm">
    <fo:table-column column-width="4.5cm"/>
    <fo:table-column column-width="4.5cm"/>
    <fo:table-body>
        <fo:table-row>
            <fo:table-cell border="0.5pt solid {$lineas}" number-columns-spanned="2">
                    <fo:block font-size="9pt" font-family="Arial Narrow" font-stretch="condensed" space-after="1mm"  font-weight="bold" color="{$txt}" text-align="center">
                       COMPROBANTE DE PAGO
                    </fo:block>
            </fo:table-cell>
        </fo:table-row>
        <fo:table-row>
            <fo:table-cell border="0.5pt solid {$lineas}">
                    <fo:block font-size="9pt" font-family="Arial Narrow" font-stretch="condensed" space-after="1mm" font-weight="bold" color="{$txt}" margin-left="1mm">
                       Nombre
                    </fo:block>
                    <fo:block font-size="9pt" font-family="Arial Narrow" font-stretch="condensed" space-after="1mm" color="{$txt}" margin-left="1mm">
                        <xsl:value-of select="estadoCuentaNacional/comprobanteDePago/nombre" />
                    </fo:block>
            </fo:table-cell>
            <fo:table-cell border="0.5pt solid {$lineas}">
                    <fo:block font-size="9pt" font-family="Arial Narrow" font-stretch="condensed" space-after="1mm" font-weight="bold" color="{$txt}" margin-left="1mm">
                       Número de Cuenta
                    </fo:block>
                    <fo:block font-size="9pt" font-family="Arial Narrow" font-stretch="condensed" space-after="1mm" color="{$txt}" margin-left="1mm">
                        <xsl:value-of select="estadoCuentaNacional/numeroTarjetaCredito" />
                    </fo:block>
            </fo:table-cell>
        </fo:table-row>
        <fo:table-row>
            <fo:table-cell border="0.5pt solid {$lineas}">
                    <fo:block font-size="9pt" font-family="Arial Narrow" font-stretch="condensed" space-after="4.4mm" font-weight="bold" color="{$txt}" margin-left="1mm">
                       Pagar Hasta
                    </fo:block>
                     <fo:block font-size="9pt" font-family="Arial Narrow" font-stretch="condensed" space-after="1mm" color="{$txt}" margin-left="1mm">
                        <xsl:value-of select="estadoCuentaNacional/comprobanteDePago/pagarHasta" />
                    </fo:block>
            </fo:table-cell>
            <fo:table-cell border="0.5pt solid {$lineas}" >
                    <fo:block font-size="9pt" font-family="Arial Narrow" font-stretch="condensed" space-after="1mm" font-weight="bold" color="{$txt}" margin-left="1mm">
                       Monto Total Facturado  &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160; a Pagar
                    </fo:block>
                    <fo:block font-size="9pt" font-family="Arial Narrow" font-stretch="condensed" space-after="1mm" color="{$txt}" margin-left="1mm">
                        <xsl:value-of select="estadoCuentaNacional/comprobanteDePago/montoTotalFacturadoPagar" />
                    </fo:block>
            </fo:table-cell>
         </fo:table-row>
         <fo:table-row>
            <fo:table-cell border="0.5pt solid {$lineas}">
                    <fo:block font-size="9pt" font-family="Arial Narrow" font-stretch="condensed" space-after="1mm" font-weight="bold" color="{$txt}" margin-left="1mm">
                       Monto Mínimo a Pagar
                    </fo:block>
                    <fo:block font-size="9pt" font-family="Arial Narrow" font-stretch="condensed" space-after="1mm" color="{$txt}" margin-left="1mm">
                        <xsl:value-of select="estadoCuentaNacional/comprobanteDePago/montoMinimoPagar" />
                    </fo:block>
            </fo:table-cell>
            <fo:table-cell border="0.5pt solid {$lineas}" >
                    <fo:block font-size="9pt" font-family="Arial Narrow" font-stretch="condensed" space-after="1mm" color="{$txt}" margin-left="1mm"  font-weight="bold">
                       Monto cancelado
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
                    <fo:block font-size="9pt" font-family="Arial Narrow" font-stretch="condensed" space-after="1mm" color="{$txt}"
                        margin-left="3mm">
                        Cheque
                    </fo:block>
                </fo:table-cell>
                <fo:table-cell border="0.5pt solid {$lineas}">
                    <fo:block font-size="9pt" font-family="Arial Narrow" font-stretch="condensed" color="{$txt}"
                        margin-left="3cm">
                    </fo:block>
                </fo:table-cell>
                <fo:table-cell>
                    <fo:block font-size="9pt" font-family="Arial Narrow" font-stretch="condensed" space-after="1mm" color="{$txt}"
                        margin-left="2cm">
                        Efectivo
                    </fo:block>
                </fo:table-cell>
                <fo:table-cell border="0.5pt solid {$lineas}">
                    <fo:block font-size="9pt" font-family="Arial Narrow" font-stretch="condensed" color="{$txt}"
                        margin-left="8cm">
                    </fo:block>
                </fo:table-cell>
            </fo:table-row>
        </fo:table-body>
    </fo:table>
</fo:block>
</fo:block-container>

<fo:block-container position="absolute" top="198.4mm" left="10cm" width="200pt" height="200pt">
<fo:block font-size="5pt" space-after="2mm">
    <fo:table table-layout="fixed" width="9cm">
    <fo:table-column column-width="4.5cm"/>
    <fo:table-column column-width="4.5cm"/>
    <fo:table-body>
        <fo:table-row>
            <fo:table-cell border="0.5pt solid {$lineas}" number-columns-spanned="2">
                    <fo:block font-size="9pt" font-family="Arial Narrow" font-stretch="condensed" space-after="1mm"  font-weight="bold" color="{$txt}" text-align="center">
                       COMPROBANTE DE PAGO
                    </fo:block>
            </fo:table-cell>
        </fo:table-row>
        <fo:table-row>
            <fo:table-cell border="0.5pt solid {$lineas}">
                    <fo:block font-size="9pt" font-family="Arial Narrow" font-stretch="condensed" space-after="1mm" font-weight="bold" color="{$txt}" margin-left="1mm">
                       Nombre
                    </fo:block>
                    <fo:block font-size="9pt" font-family="Arial Narrow" font-stretch="condensed" space-after="1mm" color="{$txt}" margin-left="1mm">
                        <xsl:value-of select="estadoCuentaNacional/comprobanteDePago/nombre" />
                    </fo:block>
            </fo:table-cell>
            <fo:table-cell border="0.5pt solid {$lineas}">
                    <fo:block font-size="9pt" font-family="Arial Narrow" font-stretch="condensed" space-after="1mm" font-weight="bold" color="{$txt}" margin-left="1mm">
                       Número de Cuenta
                    </fo:block>
                    <fo:block font-size="9pt" font-family="Arial Narrow" font-stretch="condensed" space-after="1mm" color="{$txt}" margin-left="1mm">
                        <xsl:value-of select="estadoCuentaNacional/numeroTarjetaCredito" />
                    </fo:block>
            </fo:table-cell>
        </fo:table-row>
        <fo:table-row>
            <fo:table-cell border="0.5pt solid {$lineas}">
                    <fo:block font-size="9pt" font-family="Arial Narrow" font-stretch="condensed" space-after="4.4mm" font-weight="bold" color="{$txt}" margin-left="1mm">
                       Pagar Hasta
                    </fo:block>
                     <fo:block font-size="9pt" font-family="Arial Narrow" font-stretch="condensed" space-after="1mm" color="{$txt}" margin-left="1mm">
                        <xsl:value-of select="estadoCuentaNacional/comprobanteDePago/pagarHasta" />
                    </fo:block>
            </fo:table-cell>
            <fo:table-cell border="0.5pt solid {$lineas}" >
                    <fo:block font-size="9pt" font-family="Arial Narrow" font-stretch="condensed" space-after="1mm" font-weight="bold" color="{$txt}" margin-left="1mm">
                       Monto Total Facturado  &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160; a Pagar
                    </fo:block>
                    <fo:block font-size="9pt" font-family="Arial Narrow" font-stretch="condensed" space-after="1mm" color="{$txt}" margin-left="1mm">
                        <xsl:value-of select="estadoCuentaNacional/comprobanteDePago/montoTotalFacturadoPagar" />
                    </fo:block>
            </fo:table-cell>
         </fo:table-row>
         <fo:table-row>
            <fo:table-cell border="0.5pt solid {$lineas}">
                    <fo:block font-size="9pt" font-family="Arial Narrow" font-stretch="condensed" space-after="1mm" font-weight="bold" color="{$txt}" margin-left="1mm">
                       Monto Mínimo a Pagar
                    </fo:block>
                    <fo:block font-size="9pt" font-family="Arial Narrow" font-stretch="condensed" space-after="1mm" color="{$txt}" margin-left="1mm">
                        <xsl:value-of select="estadoCuentaNacional/comprobanteDePago/montoMinimoPagar" />
                    </fo:block>
            </fo:table-cell>
            <fo:table-cell border="0.5pt solid {$lineas}" >
                    <fo:block font-size="9pt" font-family="Arial Narrow" font-stretch="condensed" space-after="1mm" color="{$txt}" margin-left="1mm"  font-weight="bold">
                       Monto cancelado
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
                    <fo:block font-size="9pt" font-family="Arial Narrow" font-stretch="condensed" space-after="1mm" color="{$txt}"
                        margin-left="3mm">
                        Cheque
                    </fo:block>
                </fo:table-cell>
                <fo:table-cell border="0.5pt solid {$lineas}">
                    <fo:block font-size="9pt" font-family="Arial Narrow narrow" color="{$txt}"
                        margin-left="3cm">
                    </fo:block>
                </fo:table-cell>
                <fo:table-cell>
                    <fo:block font-size="9pt" font-family="Arial Narrow" font-stretch="condensed" space-after="1mm" color="{$txt}"
                        margin-left="2cm">
                        Efectivo
                    </fo:block>
                </fo:table-cell>
                <fo:table-cell border="0.5pt solid {$lineas}">
                    <fo:block font-size="9pt" font-family="Arial Narrow" font-stretch="condensed" color="{$txt}"
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
    <fo:table-column column-width="2.8cm"/>
    <fo:table-column  column-width="1.3cm"/>
    <fo:table-column  column-width="1.7cm" />
    <fo:table-column  column-width="5cm"/>
    <fo:table-column  column-width="1.5cm" />
    <fo:table-column  column-width="1.5cm"/>
    <fo:table-column  column-width="1cm"  />
    <fo:table-column  column-width="1.5cm"/>
    
 

    <fo:table-body>
      <fo:table-row>
            <fo:table-cell number-columns-spanned="8" space-right="1cm"
                background-color="{$sombreadoTablas}" border="0.5pt solid {$lineas}">
                <fo:block font-size="9pt" font-family="Arial Narrow" font-stretch="condensed" space-after="1mm" space-before="1mm" font-weight="bold" color="{$txt}"  margin-left="1mm">
                    2.PERÍODO ACTUAL
                </fo:block>
            </fo:table-cell>
        </fo:table-row>
        <fo:table-row>
            <fo:table-cell number-rows-spanned="2" border="0.5pt solid {$lineas}">
                <fo:block font-size="9pt" color="{$txt}" font-family="Arial Narrow" font-stretch="condensed" margin-left="1mm">
                    Lugar de Operación
                </fo:block>
            </fo:table-cell>
            <fo:table-cell number-rows-spanned="2" border="0.5pt solid {$lineas}">
                    <fo:block font-size="9pt" font-family="Arial Narrow" font-stretch="condensed" color="{$txt}" margin-left="1mm">
                        Fecha Operación
                    </fo:block>
            </fo:table-cell>
            <fo:table-cell number-rows-spanned="2" border="0.5pt solid {$lineas}">
                    <fo:block font-size="9pt" font-family="Arial Narrow" font-stretch="condensed" space-after="1mm" color="{$txt}" margin-left="1mm">
                        Código Referencia
                    </fo:block>
            </fo:table-cell>
             <fo:table-cell number-rows-spanned="2" border="0.5pt solid {$lineas}">
                    <fo:block font-size="9pt" font-family="Arial Narrow" font-stretch="condensed" space-after="1mm" color="{$txt}" margin-left="1mm">
                        Descripción Operación o Cobro
                    </fo:block>
            </fo:table-cell>
            <fo:table-cell number-rows-spanned="2" border="0.5pt solid {$lineas}">
                    <fo:block font-size="9pt" font-family="Arial Narrow" font-stretch="condensed" space-after="1mm" color="{$txt}" margin-left="1mm">
                        Monto Operación o Cobro
                    </fo:block>
            </fo:table-cell>
            <fo:table-cell number-rows-spanned="2" border="0.5pt solid {$lineas}">
                    <fo:block font-size="9pt" font-family="Arial Narrow" font-stretch="condensed" space-after="1mm" color="{$txt}" margin-left="1mm">
                        Monto  &#160; Total a Pagar
                    </fo:block>
            </fo:table-cell>
            <fo:table-cell number-columns-spanned="2" border="0.5pt solid {$lineas}">
                    <fo:block font-size="9pt" font-family="Arial Narrow" font-stretch="condensed" space-after="1mm" color="{$txt}" margin-left="1mm">
                        Cargo del Mes
                    </fo:block>
                    <fo:block>
      
                    </fo:block>
            </fo:table-cell>
        </fo:table-row>
        <fo:table-row>
           <fo:table-cell border="0.5pt solid {$lineas}">
                    <fo:block font-size="9pt" font-family="Arial Narrow" font-stretch="condensed" space-after="1mm" color="{$txt}" margin-left="1mm">
                        N° Cuota
                    </fo:block>
            </fo:table-cell>
            <fo:table-cell border="0.5pt solid {$lineas}">
                <fo:block font-size="9pt" font-family="Arial Narrow" font-stretch="condensed" space-after="1mm" color="{$txt}" margin-left="1mm">
                        Valor Cuota Mensual                 
                </fo:block>
            </fo:table-cell>
        </fo:table-row>
        <fo:table-row>
            <fo:table-cell number-columns-spanned="7" space-right="1cm"  border="0.5pt solid {$lineas}">
                <fo:block font-size="8pt" space-before="1mm" font-family="Arial Narrow" font-stretch="condensed" space-after="1mm" font-weight="bold" color="{$txt}" margin-left="6.9cm">
                    1.TOTAL OPERACIONES 
                </fo:block>
            </fo:table-cell>
            <fo:table-cell number-columns-spanned="2" space-right="1cm" border="0.5pt solid {$lineas}">
                <fo:block font-size="8pt" space-before="1mm" font-family="Arial Narrow" font-stretch="condensed" space-after="1mm" font-weight="bold" color="{$txt}" text-align="right" margin-right="1mm">
                        <xsl:value-of select="estadoCuentaNacional/periodoActual/totalOperaciones/totalOperacionesSinCuotas"/>
                  </fo:block>
            </fo:table-cell>
        </fo:table-row>
        
           <xsl:for-each select="estadoCuentaNacional/periodoActual/totalOperaciones/operacion">
          <fo:table-row>
                <fo:table-cell border-left-style="solid">
                    <fo:block font-size="8pt" font-family="Arial Narrow" font-stretch="condensed"  space-before="1mm" color="{$txt}" margin-left="1mm">
                         <xsl:value-of select="lugarOperacion"/>            
                    </fo:block>
                 </fo:table-cell>
           <fo:table-cell border-left-style="solid">
                    <fo:block font-size="8pt" font-family="Arial Narrow" font-stretch="condensed"  space-before="1mm" color="{$txt}" margin-left="1mm">
                         <xsl:value-of select="fechaOperacion"/>            
                    </fo:block>
           </fo:table-cell>
           <fo:table-cell border-left-style="solid">
                    <fo:block font-size="8pt" font-family="Arial Narrow" font-stretch="condensed"  space-before="1mm" color="{$txt}" margin-left="1mm">
                         <xsl:value-of select="codigoReferencia"/>            
                    </fo:block>
           </fo:table-cell>
           <fo:table-cell border-left-style="solid">
                    <fo:block font-size="8pt" font-family="Arial Narrow" font-stretch="condensed" space-before="1mm" color="{$txt}" margin-left="1mm">
                         <xsl:value-of select="descripcionOperacionCobro"/>            
                    </fo:block>
           </fo:table-cell>
           <fo:table-cell border-left-style="solid">
                    <fo:block font-size="8pt" font-family="Arial Narrow" font-stretch="condensed"  space-before="1mm" color="{$txt}" text-align="right" margin-right="1mm">
                         <xsl:value-of select="montoOperacionCobro"/>            
                    </fo:block>
           </fo:table-cell>
           <fo:table-cell border-left-style="solid">
                    <fo:block font-size="8pt" font-family="Arial Narrow" font-stretch="condensed"  space-before="1mm" color="{$txt}" text-align="right" margin-right="1mm">
                         <xsl:value-of select="montoTotalPagar"/>            
                    </fo:block>
           </fo:table-cell>
              <fo:table-cell border-left-style="solid">
                    <fo:block font-size="8pt" font-family="Arial Narrow" font-stretch="condensed"  space-before="1mm" color="{$txt}" margin-right="1mm" text-align="right">
                         <xsl:value-of select="numeroCuota"/>            
                    </fo:block>
           </fo:table-cell>
           <fo:table-cell border-left-style="solid">
                    <fo:block font-size="8pt" font-family="Arial Narrow" font-stretch="condensed"  space-before="1mm" color="{$txt}" text-align="right" margin-right="1mm">
                         <xsl:value-of select="valorCuotaMensual"/>            
                    </fo:block>
           </fo:table-cell>
                </fo:table-row>
         </xsl:for-each>
       
          <xsl:for-each select="estadoCuentaNacional/periodoActual/totalOperacionesConCuotas/operacion">
                  <fo:table-row>
                    <fo:table-cell border-left-style="solid">
                    <fo:block font-size="8pt" font-family="Arial Narrow" font-stretch="condensed"  space-before="1mm" color="{$txt}" margin-left="1mm">
                         <xsl:value-of select="lugarOperacion"/>           
                    </fo:block>
           </fo:table-cell>
           <fo:table-cell border-left-style="solid">
                    <fo:block font-size="8pt" font-family="Arial Narrow" font-stretch="condensed"  space-before="1mm" color="{$txt}" margin-left="1mm">
                         <xsl:value-of select="fechaOperacion"/>            
                    </fo:block>
           </fo:table-cell>
           <fo:table-cell border-left-style="solid">
                    <fo:block font-size="8pt" font-family="Arial Narrow" font-stretch="condensed" space-before="1mm" color="{$txt}" margin-left="1mm">
                         <xsl:value-of select="codigoReferencia"/>            
                    </fo:block>
           </fo:table-cell>
           <fo:table-cell border-left-style="solid">
	                <fo:block font-size="8pt" font-family="Arial Narrow" font-stretch="condensed" space-before="1mm" color="{$txt}" margin-left="1mm">
	                    <xsl:value-of select="descripcionOperacionCobro"/>            
	                </fo:block>
           </fo:table-cell>
           <fo:table-cell border-left-style="solid">
                    <fo:block font-size="8pt" font-family="Arial Narrow" font-stretch="condensed" space-before="1mm" color="{$txt}" text-align="right" margin-right="1mm">
                         <xsl:value-of select="montoOperacionCobro"/>            
                    </fo:block>
           </fo:table-cell>
           <fo:table-cell border-left-style="solid">
                    <fo:block font-size="8pt" font-family="Arial Narrow" font-stretch="condensed" space-before="1mm" color="{$txt}" text-align="right" margin-right="1mm">
                         <xsl:value-of select="montoTotalPagar"/>            
                    </fo:block>
           </fo:table-cell>
              <fo:table-cell border-left-style="solid">
                    <fo:block font-size="8pt" font-family="Arial Narrow" font-stretch="condensed" space-before="1mm" color="{$txt}" margin-right="1mm" text-align="right">
                         <xsl:value-of select="numeroCuota"/>            
                    </fo:block>
           </fo:table-cell>
           <fo:table-cell border-left-style="solid">
                    <fo:block font-size="8pt" font-family="Arial Narrow" font-stretch="condensed" space-before="1mm" color="{$txt}" text-align="right" margin-right="1mm">
                         <xsl:value-of select="valorCuotaMensual"/>            
                    </fo:block>
           </fo:table-cell>
        </fo:table-row>
        </xsl:for-each>
         <fo:table-row>
            <fo:table-cell number-columns-spanned="7" border="0.5pt solid {$lineas}">
                <fo:block font-size="8pt" space-before="1mm" font-family="Arial Narrow" font-stretch="condensed" space-after="1mm" font-weight="bold" color="{$txt}" margin-left="6.9cm">
                    2.PRODUCTOS O SERVICIOS VOLUNTARIAMENTE CONTRATADOS 
                </fo:block>   
            </fo:table-cell>
            <fo:table-cell border="0.5pt solid {$lineas}">
                <fo:block font-size="8pt" font-family="Arial Narrow" font-stretch="condensed"  space-before="1mm" space-after="1mm" font-weight="bold" color="{$txt}" text-align="right" margin-right="1mm">
                        <xsl:value-of select="estadoCuentaNacional/periodoActual/productosServiciosVoluntariamenteContratados/totalProductosServicios"/>
                </fo:block>   
            </fo:table-cell>
        </fo:table-row>
            <xsl:for-each select="estadoCuentaNacional/periodoActual/productosServiciosVoluntariamenteContratados/operacion">
                 <fo:table-row>
                    <fo:table-cell border-left-style="solid">
                    <fo:block font-size="8pt" font-family="Arial Narrow" font-stretch="condensed" space-before="1mm" color="{$txt}" margin-left="1mm">
                         <xsl:value-of select="lugarOperacion"/>            
                    </fo:block>
           </fo:table-cell>
           <fo:table-cell border-left-style="solid">
                    <fo:block font-size="8pt" font-family="Arial Narrow" font-stretch="condensed" space-before="1mm" color="{$txt}" margin-left="1mm">
                         <xsl:value-of select="fechaOperacion"/>            
                    </fo:block>
           </fo:table-cell>
           <fo:table-cell border-left-style="solid">
                    <fo:block font-size="8pt" font-family="Arial Narrow" font-stretch="condensed" space-before="1mm" color="{$txt}" margin-left="1mm">
                         <xsl:value-of select="codigoReferencia"/>            
                    </fo:block>
           </fo:table-cell>
           <fo:table-cell border-left-style="solid">
                    <fo:block font-size="8pt" font-family="Arial Narrow" font-stretch="condensed" space-before="1mm" color="{$txt}" margin-left="1mm">
                         <xsl:value-of select="descripcionOperacionCobro"/>            
                    </fo:block>
           </fo:table-cell>
           <fo:table-cell border-left-style="solid">
                    <fo:block font-size="8pt" font-family="Arial Narrow" font-stretch="condensed" space-before="1mm" color="{$txt}" text-align="right" margin-right="1mm">
                         <xsl:value-of select="montoOperacionCobro"/>            
                    </fo:block>
           </fo:table-cell>
           <fo:table-cell border-left-style="solid">
                    <fo:block font-size="8pt" font-family="Arial Narrow" font-stretch="condensed" space-before="1mm" color="{$txt}" text-align="right" margin-right="1mm">
                         <xsl:value-of select="montoTotalPagar"/>            
                    </fo:block>
           </fo:table-cell>
              <fo:table-cell border-left-style="solid">
                    <fo:block font-size="8pt" font-family="Arial Narrow" font-stretch="condensed" space-before="1mm" color="{$txt}" margin-right="1mm" text-align="right">
                         <xsl:value-of select="numeroCuota"/>            
                    </fo:block>
           </fo:table-cell>
           <fo:table-cell border-left-style="solid">
                    <fo:block font-size="8pt" font-family="Arial Narrow" font-stretch="condensed" space-before="1mm" color="{$txt}" text-align="right" margin-right="1mm">
                         <xsl:value-of select="valorCuotaMensual"/>            
                    </fo:block>
           </fo:table-cell>
          </fo:table-row>
        </xsl:for-each>
      <fo:table-row>
            <fo:table-cell number-columns-spanned="7" border="0.5pt solid {$lineas}">
                <fo:block font-size="8pt" space-before="1mm" font-family="Arial Narrow" font-stretch="condensed" space-after="1mm" font-weight="bold" color="{$txt}" margin-left="6.9cm">
                    3.CARGOS, COMISIONES, IMPUESTOS Y ABONOS
                </fo:block>   
            </fo:table-cell>
            <fo:table-cell border="0.5pt solid {$lineas}">
                <fo:block font-size="8pt" font-family="Arial Narrow" font-stretch="condensed" space-before="1mm" space-after="1mm" font-weight="bold" color="{$txt}" text-align="right" margin-right="1mm">
                        <xsl:value-of select="estadoCuentaNacional/periodoActual/cargosComisionesImpuestosYAbonos/totalCargosComisionesImpuestosAbonos"/>
                </fo:block>   
            </fo:table-cell>
        </fo:table-row>
        
            <xsl:for-each select="estadoCuentaNacional/periodoActual/cargosComisionesImpuestosYAbonos/operacion">
            <fo:table-row>
                    <fo:table-cell border-left-style="solid">
                    <fo:block font-size="8pt" font-family="Arial Narrow" font-stretch="condensed" space-before="1mm" color="{$txt}" margin-left="1mm">
                         <xsl:value-of select="lugarOperacion"/>            
                    </fo:block>
           </fo:table-cell>
           <fo:table-cell border-left-style="solid">
                    <fo:block font-size="8pt" font-family="Arial Narrow" font-stretch="condensed" space-before="1mm" color="{$txt}" margin-left="1mm">
                         <xsl:value-of select="fechaOperacion"/>            
                    </fo:block>
           </fo:table-cell>
           <fo:table-cell border-left-style="solid">
                    <fo:block font-size="8pt" font-family="Arial Narrow" font-stretch="condensed" space-before="1mm" color="{$txt}" margin-left="1mm">
                         <xsl:value-of select="codigoReferencia"/>            
                    </fo:block>
           </fo:table-cell>
           <fo:table-cell border-left-style="solid">
                    <fo:block font-size="8pt" font-family="Arial Narrow" font-stretch="condensed" space-before="1mm" color="{$txt}" margin-left="1mm">
                         <xsl:value-of select="descripcionOperacionCobro"/>            
                    </fo:block>
           </fo:table-cell>
           <fo:table-cell border-left-style="solid">
                    <fo:block font-size="8pt" font-family="Arial Narrow" font-stretch="condensed" space-before="1mm" color="{$txt}" text-align="right" margin-right="1mm">
                         <xsl:value-of select="montoOperacionCobro"/>            
                    </fo:block>
           </fo:table-cell>
           <fo:table-cell border-left-style="solid">
                    <fo:block font-size="8pt" font-family="Arial Narrow" font-stretch="condensed" space-before="1mm" color="{$txt}" text-align="right" margin-right="1mm">
                         <xsl:value-of select="montoTotalPagar"/>            
                    </fo:block>
           </fo:table-cell>
              <fo:table-cell border-left-style="solid">
                    <fo:block font-size="8pt" font-family="Arial Narrow" font-stretch="condensed" space-before="1mm" color="{$txt}" margin-right="1mm" text-align="right">
                         <xsl:value-of select="numeroCuota"/>            
                    </fo:block>
           </fo:table-cell>
           <fo:table-cell border-left-style="solid">
                    <fo:block font-size="8pt" font-family="Arial Narrow" font-stretch="condensed" space-before="1mm" color="{$txt}" text-align="right" margin-right="1mm">
                         <xsl:value-of select="valorCuotaMensual"/>            
                    </fo:block>
           </fo:table-cell>
        </fo:table-row>
        </xsl:for-each>
      
        <fo:table-row>
            <fo:table-cell number-columns-spanned="7" border="0.5pt solid {$lineas}">
                <fo:block font-size="8pt" font-family="Arial Narrow" font-stretch="condensed" space-after="1mm"  space-before="1mm" font-weight="bold" color="{$txt}" margin-left="6.9cm">
                    4.INFORMACION COMPRAS EN CUOTAS EN PERIODO
                </fo:block>   
            </fo:table-cell>
            <fo:table-cell border="0.5pt solid {$lineas}">
                <fo:block font-size="8pt" font-family="Arial Narrow" font-stretch="condensed" space-before="1mm" space-after="1mm" font-weight="bold" color="{$txt}" text-align="right" margin-right="1mm">
                        <xsl:value-of select="estadoCuentaNacional/periodoActual/informacionComprasEnCuotasEnPeriodo/totalInformacionComprasEnCuotas"/>
                </fo:block>   
            </fo:table-cell>
        </fo:table-row>
        
            <xsl:for-each select="estadoCuentaNacional/periodoActual/informacionComprasEnCuotasEnPeriodo/operacion">
            <fo:table-row>
                    <fo:table-cell border-left-style="solid">
                    <fo:block font-size="8pt" font-family="Arial Narrow" font-stretch="condensed" space-before="1mm" color="{$txt}" margin-left="1mm">
                         <xsl:value-of select="lugarOperacion"/>            
                    </fo:block>
           </fo:table-cell>
           <fo:table-cell border-left-style="solid">
                    <fo:block font-size="8pt" font-family="Arial Narrow" font-stretch="condensed" space-before="1mm" color="{$txt}" margin-left="1mm">
                         <xsl:value-of select="fechaOperacion"/>            
                    </fo:block>
           </fo:table-cell>
           <fo:table-cell border-left-style="solid">
                    <fo:block font-size="8pt" font-family="Arial Narrow" font-stretch="condensed" space-before="1mm" color="{$txt}" margin-left="1mm">
                         <xsl:value-of select="codigoReferencia"/>            
                    </fo:block>
           </fo:table-cell>
           <fo:table-cell border-left-style="solid">
                    <fo:block font-size="8pt" font-family="Arial Narrow" font-stretch="condensed" space-before="1mm" color="{$txt}" margin-left="1mm">
                         <xsl:value-of select="descripcionOperacionCobro"/>            
                    </fo:block>
           </fo:table-cell>
           <fo:table-cell border-left-style="solid">
                    <fo:block font-size="8pt" font-family="Arial Narrow" font-stretch="condensed" space-before="1mm" color="{$txt}" text-align="right" margin-right="1mm">
                         <xsl:value-of select="montoOperacionCobro"/>            
                    </fo:block>
           </fo:table-cell>
           <fo:table-cell border-left-style="solid">
                    <fo:block font-size="8pt" font-family="Arial Narrow" font-stretch="condensed" space-before="1mm" color="{$txt}" text-align="right" margin-right="1mm">
                         <xsl:value-of select="montoTotalPagar"/>            
                    </fo:block>
           </fo:table-cell>
              <fo:table-cell border-left-style="solid">
                    <fo:block font-size="8pt" font-family="Arial Narrow" font-stretch="condensed" space-before="1mm" color="{$txt}" margin-right="1mm" text-align="right">
                         <xsl:value-of select="numeroCuota"/>            
                    </fo:block>
           </fo:table-cell>
           <fo:table-cell border-left-style="solid">
                    <fo:block font-size="8pt" font-family="Arial Narrow" font-stretch="condensed" space-before="1mm" color="{$txt}" text-align="right" margin-right="1mm">
                         <xsl:value-of select="valorCuotaMensual"/>            
                    </fo:block>
           </fo:table-cell>
        </fo:table-row>
        </xsl:for-each>
      
     </fo:table-body>
    </fo:table>
</fo:block>

</xsl:template>

<xsl:template name="contenido3">
<fo:block font-size="5pt" space-after="1mm">
    <fo:table table-layout="fixed" width="19cm">
    <fo:table-column column-width="1.5cm" />
    <fo:table-column column-width="0.5cm"/>
    <fo:table-column column-width="1.5cm"/>
    
    <fo:table-body>
        <fo:table-row>
            <fo:table-cell number-columns-spanned="3" background-color="{$sombreadoTablas}" border="0.5pt solid {$lineas}">
                    <fo:block font-size="9pt" font-family="Arial Narrow" font-stretch="condensed" space-after="1mm" space-before="1mm" font-weight="bold" color="{$txt}" margin-left="5mm">
                       III.    INFORMACIÓN DE PAGO
                    </fo:block>
            </fo:table-cell>
        </fo:table-row>
        <fo:table-row>
        <fo:table-cell border="0.5pt solid {$lineas}">
            <fo:block font-size="9pt" font-family="Arial Narrow" font-stretch="condensed" color="{$txt}" space-after="1mm"
                margin-left="1mm">
                Monto Total Facturado a Pagar
            </fo:block>
            <fo:block font-size="9pt" font-family="Arial Narrow" font-stretch="condensed" space-after="1mm" color="{$txt}"
                margin-left="1mm">
                Monto Mínimo a Pagar
            </fo:block>
            <fo:block font-size="9pt" font-family="Arial Narrow" font-stretch="condensed" space-after="1mm" color="{$txt}"
                margin-left="1mm">
                Costo Monetario Prepago
            </fo:block>
            <fo:block font-size="9pt" font-family="Arial Narrow" font-stretch="condensed" space-after="1mm" color="{$txt}"
                margin-left="1mm">
                Cargo Automático
            </fo:block>
        </fo:table-cell>
        <fo:table-cell border="0.5pt solid {$lineas}">
            <fo:block font-size="9pt" font-family="Arial Narrow" font-stretch="condensed" space-after="1mm" color="{$txt}"
                margin-left="1mm">
                <xsl:value-of select="estadoCuentaNacional/informacionDePago/montoTotalFacturadoPagar" />
            </fo:block>
            <fo:block font-size="9pt" font-family="Arial Narrow" font-stretch="condensed" space-after="1mm" color="{$txt}"
                margin-left="1mm">
                <xsl:value-of select="estadoCuentaNacional/informacionDePago/montoMinimoPagar" />
            </fo:block>
            <fo:block font-size="9pt" font-family="Arial Narrow" font-stretch="condensed" space-after="1mm" color="{$txt}"
                margin-left="1mm">
                <xsl:value-of select="estadoCuentaNacional/informacionDePago/costoMonetarioPrepago" />
            </fo:block>
            <fo:block font-size="9pt" font-family="Arial Narrow" font-stretch="condensed" space-after="1mm" color="{$txt}"
                margin-left="1mm">
                <xsl:value-of select="estadoCuentaNacional/informacionDePago/cargoAutomatico" />
            </fo:block>
        </fo:table-cell>
    </fo:table-row>
       
    </fo:table-body>
    </fo:table>
</fo:block>
<fo:block font-size="9pt" font-family="Arial Narrow" font-stretch="condensed" space-after="5mm" color="{$txt}"
    margin-left="1mm">
    * La liberación de Monto Mínimo a Pagar no impide que se devengen intereses por el saldo insoluto.
</fo:block>



<fo:block font-size="5pt" space-after="3mm">
    <fo:table table-layout="fixed" width="14cm">
    <fo:table-column column-width="2cm"/>
    <fo:table-column column-width="2cm"/>
    <fo:table-column column-width="2cm"/>
    <fo:table-column column-width="2cm"/>
    <fo:table-column column-width="2cm"/>
    
    <fo:table-body>
        <fo:table-row>
            <fo:table-cell number-columns-spanned="5" background-color="{$sombreadoTablas}" border="0.5pt solid {$lineas}">
                    <fo:block font-size="9pt" font-family="Arial Narrow" font-stretch="condensed" space-after="1mm" space-before="1mm"  font-weight="bold" color="{$txt}" text-align="center">
                       VENCIMIENTO PRÓXIMOS 4 MESES
                    </fo:block>
            </fo:table-cell>
        </fo:table-row>
        <fo:table-row>
            <fo:table-cell border="0.5pt solid {$lineas}">
                    <fo:block font-size="9pt" font-family="Arial Narrow" font-stretch="condensed" space-after="1mm" color="{$txt}" margin-left="1mm">
                       SALDO
                    </fo:block>
                    <fo:block font-size="9pt" font-family="Arial Narrow" font-stretch="condensed" space-after="1mm" color="{$txt}" margin-left="1mm">
                       CAPITAL
                    </fo:block>
                    <fo:block font-size="9pt" font-family="Arial Narrow" font-stretch="condensed" space-after="1mm" color="{$txt}" margin-left="1mm">
                       CUOTAS
                    </fo:block>
            </fo:table-cell>
            <fo:table-cell border="0.5pt solid {$lineas}">
                    <fo:block font-size="9pt" font-family="Arial Narrow" font-stretch="condensed" space-after="1mm" color="{$txt}" margin-left="1mm">
                        <xsl:value-of select="estadoCuentaNacional/vencimientoProximos4Meses/mes1" />
                    </fo:block>
            </fo:table-cell>
            <fo:table-cell border="0.5pt solid {$lineas}">
                    <fo:block font-size="9pt" font-family="Arial Narrow" font-stretch="condensed" space-after="1mm" color="{$txt}" margin-left="1mm">
                        <xsl:value-of select="estadoCuentaNacional/vencimientoProximos4Meses/mes2" />
                    </fo:block>
            </fo:table-cell>
            <fo:table-cell border="0.5pt solid {$lineas}">
                    <fo:block font-size="9pt" font-family="Arial Narrow" font-stretch="condensed" space-after="1mm" color="{$txt}" margin-left="1mm">
                        <xsl:value-of select="estadoCuentaNacional/vencimientoProximos4Meses/mes3" />
                    </fo:block>
            </fo:table-cell>
            <fo:table-cell border="0.5pt solid {$lineas}">
                    <fo:block font-size="9pt" font-family="Arial Narrow" font-stretch="condensed" space-after="1mm" color="{$txt}" margin-left="1mm">
                        <xsl:value-of select="estadoCuentaNacional/vencimientoProximos4Meses/mes4" />
                    </fo:block>
            </fo:table-cell>
        </fo:table-row>
        <fo:table-row>
            <fo:table-cell border="0.5pt solid {$lineas}">
                    <fo:block font-size="9pt" font-family="Arial Narrow" font-stretch="condensed" space-after="1mm" color="{$txt}" margin-left="1mm">
                        <xsl:value-of select="estadoCuentaNacional/vencimientoProximos4Meses/saldoCapitalCuotas" />
                    </fo:block>
            </fo:table-cell>
            <fo:table-cell border="0.5pt solid {$lineas}" >
                    <fo:block font-size="9pt" font-family="Arial Narrow" font-stretch="condensed" space-after="1mm" color="{$txt}" margin-left="1mm">
                        <xsl:value-of select="estadoCuentaNacional/vencimientoProximos4Meses/montoMes1" />
                    </fo:block>
            </fo:table-cell>
            <fo:table-cell border="0.5pt solid {$lineas}">
                    <fo:block font-size="9pt" font-family="Arial Narrow" font-stretch="condensed" space-after="1mm" color="{$txt}" margin-left="1mm">
                        <xsl:value-of select="estadoCuentaNacional/vencimientoProximos4Meses/montoMes2" />
                    </fo:block>
            </fo:table-cell>
            <fo:table-cell border="0.5pt solid {$lineas}">
                    <fo:block font-size="9pt" font-family="Arial Narrow" font-stretch="condensed" space-after="1mm" color="{$txt}" margin-left="1mm">
                        <xsl:value-of select="estadoCuentaNacional/vencimientoProximos4Meses/montoMes3" />
                    </fo:block>
            </fo:table-cell>
            <fo:table-cell border="0.5pt solid {$lineas}">
                    <fo:block font-size="9pt" font-family="Arial Narrow" font-stretch="condensed" space-after="1mm" color="{$txt}" margin-left="1mm">
                        <xsl:value-of select="estadoCuentaNacional/vencimientoProximos4Meses/montoMes4" />
                    </fo:block>
            </fo:table-cell>
        </fo:table-row>
    </fo:table-body>
    </fo:table>
</fo:block>

<fo:block font-size="5pt" space-after="5mm">
    <fo:table table-layout="fixed" width="11cm">
    <fo:table-column column-width="3cm"/>
    <fo:table-column column-width="1.5cm"/>
    <fo:table-column column-width="1.5cm"/>
    
    <fo:table-body>
        <fo:table-row>
            <fo:table-cell>
            </fo:table-cell>
            <fo:table-cell border="0.5pt solid {$lineas}" background-color="{$sombreadoTablas}">
                    <fo:block font-size="9pt" font-family="Arial Narrow" font-stretch="condensed" space-after="1mm" color="{$txt}" text-align="center" font-weight="bold">
                       Desde
                    </fo:block>
            </fo:table-cell>
            <fo:table-cell border="0.5pt solid {$lineas}" background-color="{$sombreadoTablas}">
                    <fo:block font-size="9pt" font-family="Arial Narrow" font-stretch="condensed" space-after="1mm" color="{$txt}" text-align="center" font-weight="bold">
                       Hasta
                    </fo:block>
            </fo:table-cell>
        </fo:table-row>
        <fo:table-row>
            <fo:table-cell border="0.5pt solid {$lineas}">
                    <fo:block font-size="9pt" font-family="Arial Narrow" font-stretch="condensed" space-after="1mm" color="{$txt}" margin-left="1mm">
                       Próximo Período de Facturación
                    </fo:block>
            </fo:table-cell>
            <fo:table-cell border="0.5pt solid {$lineas}">
                    <fo:block font-size="9pt" font-family="Arial Narrow" font-stretch="condensed" space-after="1mm" color="{$txt}" margin-left="1mm">
                        <xsl:value-of select="estadoCuentaNacional/proximoPeriodoFacturacion/desde" />
                    </fo:block>
            </fo:table-cell>
            <fo:table-cell border="0.5pt solid {$lineas}">
                    <fo:block font-size="9pt" font-family="Arial Narrow" font-stretch="condensed" space-after="1mm" color="{$txt}" margin-left="1mm">
                        <xsl:value-of select="estadoCuentaNacional/proximoPeriodoFacturacion/hasta" />
                    </fo:block>
            </fo:table-cell>
        </fo:table-row>
    </fo:table-body>
    </fo:table>
</fo:block>

<fo:block-container position="absolute" top="110.4mm" left="12cm" width="70pt" height="30pt">
<fo:block font-size="5pt" space-after="2mm">
    <fo:table width="70pt" height="10pt">
        <fo:table-column column-width="2mm" />
        <fo:table-column column-width="1.5cm" />
        
        <fo:table-body>
        <fo:table-row>
                <fo:table-cell background-color="{$bgcolortotal}">
                    <fo:block font-size="6pt" space-after="1mm" color="{$txt}" margin-left="3mm" >
                    </fo:block>
                </fo:table-cell>
                <fo:table-cell>
                    <fo:block font-size="6pt" space-after="1mm" color="{$txt}" margin-left="3mm">
                         Monto Facturado
                    </fo:block>
                </fo:table-cell>
            </fo:table-row>
            <fo:table-row space-after="2mm">
                <fo:table-cell>
                <fo:block font-size="6pt" space-after="1mm" color="{$txt}" margin-left="3mm">
                    </fo:block>
                </fo:table-cell>
                <fo:table-cell>
                <fo:block font-size="6pt" space-after="1mm" color="{$txt}" margin-left="3mm">
                    </fo:block>
                </fo:table-cell>
            </fo:table-row>
            <fo:table-row>
                <fo:table-cell background-color="{$sombreadoTablas}">
                    <fo:block font-size="6pt" space-after="1mm" color="{$txt}" margin-left="3mm" >
    
                    </fo:block>
                </fo:table-cell>
                <fo:table-cell>
                    <fo:block font-size="6pt" space-after="1mm" color="{$txt}" margin-left="3mm">
                         Monto Pagado
                    </fo:block>
                </fo:table-cell>
            </fo:table-row>
        </fo:table-body>
    </fo:table>
</fo:block>
</fo:block-container>

<fo:block-container position="absolute" top="75.4mm" left="0.5cm" width="500pt" height="30pt">
	<fo:block font-size="9pt" font-family="Arial Narrow" font-stretch="condensed" space-after="1mm" color="{$txt}" margin-left="5.5cm" font-weight="bold">
	                        Evolución Montos Facturados y Pagados
	</fo:block>
</fo:block-container>

<fo:table width="400pt" height="150pt" margin-left="30pt" space-after="5mm">
        <fo:table-column  column-width="500pt"/>
        <fo:table-body>
            <fo:table-row>
                <fo:table-cell>
                    <!-- INICIO Cabecera TDC -->
                    <fo:block>
                        <fo:instream-foreign-object>
                            <svg width="371pt" height="200pt" xmlns="http://www.w3.org/2000/svg">
                                <desc>Grafico</desc>
                           
                                <rect x="1" y="1" width="360" height="199" fill="none"
                                    stroke="gray" />

                                <desc>Linea Horizontal y Vertical como dimensiones del grafico
                                </desc>
                                <line x1="35" y1="170" x2="280" y2="170" stroke-width="20" />
                                <line x1="50" y1="180" x2="50" y2="20" stroke-width="20" />

                                <desc>Datos dimension vertical</desc>
                                <g font-family="Arial Narrow" font-stretch="condensed" font-size="6">
                                    <text x="20" y="168"> <xsl:value-of select="estadoCuentaNacional/datosGrafico/montoMayor7" /></text>
                                    <text x="20" y="145"><xsl:value-of select="estadoCuentaNacional/datosGrafico/montoMayor6" /></text>
                                    <text x="20" y="120"><xsl:value-of select="estadoCuentaNacional/datosGrafico/montoMayor5" /></text>
                                    <text x="20" y="95"><xsl:value-of select="estadoCuentaNacional/datosGrafico/montoMayor4" /></text>
                                    <text x="20" y="70"><xsl:value-of select="estadoCuentaNacional/datosGrafico/montoMayor3" /></text>
                                    <text x="20" y="45"><xsl:value-of select="estadoCuentaNacional/datosGrafico/montoMayor2" /></text>
                                    <text x="20" y="20"><xsl:value-of select="estadoCuentaNacional/datosGrafico/montoMayor1" /></text>
                                </g>
                                <desc>Datos dimension horizontal</desc>
                                <g font-family="Arial Narrow" font-stretch="condensed" font-size="6">
                                    <text x="55" y="180"><xsl:value-of select="estadoCuentaNacional/mesesGrafico/mes1" /></text>
                                    <text x="90" y="180"><xsl:value-of select="estadoCuentaNacional/mesesGrafico/mes2" /></text>
                                    <text x="125" y="180"><xsl:value-of select="estadoCuentaNacional/mesesGrafico/mes3" /></text>
                                    <text x="160" y="180"><xsl:value-of select="estadoCuentaNacional/mesesGrafico/mes4" /></text>
                                    <text x="195" y="180"><xsl:value-of select="estadoCuentaNacional/mesesGrafico/mes5" /></text>
                                    <text x="230" y="180"><xsl:value-of select="estadoCuentaNacional/mesesGrafico/mes6" /></text>
                                </g>

                                <xsl:variable name="inicioBarrasX">
                                    55
                                </xsl:variable>
                                <xsl:for-each select="estadoCuentaNacional/grafico/data">
                                    <xsl:variable name="item">
                                        <xsl:value-of select="item" />
                                    </xsl:variable>
                                    <xsl:variable name="montoFact">
                                        <xsl:value-of select="montoFacturado" />
                                    </xsl:variable>
                                    <xsl:variable name="montoPag">
                                        <xsl:value-of select="montoPagado" />
                                    </xsl:variable>
                                    <rect x="{$inicioBarrasX + $item*18}" y="{170 - $montoFact}"
                                        width="10pt" height="{$montoFact}" style="fill:black;" />
                                    <rect x="{$inicioBarrasX + $item*18 + 11}" y="{170 - $montoPag}"
                                        width="10pt" height="{$montoPag}" style="fill:grey;" />
                                </xsl:for-each>
                            </svg>
                        </fo:instream-foreign-object>
                    </fo:block>
                </fo:table-cell>
            </fo:table-row>
        </fo:table-body>
    </fo:table>

                <fo:block-container position="absolute" top="163mm" left="6.3cm" width="220pt" height="55pt">
                    <fo:block>
                        <fo:table table-layout="fixed" width="9cm">
                        <fo:table-column column-width="4cm" />
                        <fo:table-column column-width="4cm" />
                        <fo:table-body>
                            <fo:table-row>
                                <fo:table-cell border="0.5pt solid {$lineas}">
                                    <fo:block font-size="9pt" font-family="Arial Narrow" font-stretch="condensed" space-after="1mm" font-weight="bold"
                                        color="{$txt}" margin-left="10mm">
                                        Monto deuda UF
                                    </fo:block>
                                </fo:table-cell>
                                <fo:table-cell border="0.5pt solid {$lineas}">
                                    <fo:block font-size="9pt" font-family="Arial Narrow" font-stretch="condensed" space-after="1mm" font-weight="bold"
                                        color="{$txt}" margin-left="20mm">
                                        %
                                    </fo:block>
                                </fo:table-cell>
                            </fo:table-row>
                            <fo:table-row>
                                <fo:table-cell border="0.5pt solid {$lineas}">
                                    <fo:block font-size="9pt" font-family="Arial Narrow" font-stretch="condensed" space-after="1mm" 
                                        color="{$txt}" margin-left="3mm">
                                        <xsl:value-of select="estadoCuentaNacional/costosPorAtraso/montoDeudaUF/hasta" />
                                    </fo:block>
                                </fo:table-cell>
                                <fo:table-cell border="0.5pt solid {$lineas}">
                                    <fo:block font-size="9pt" font-family="Arial Narrow" font-stretch="condensed" space-after="1mm" 
                                        color="{$txt}" margin-left="20mm">
                                        <xsl:value-of select="estadoCuentaNacional/costosPorAtraso/montoDeudaUF/porcentaje1" />
                                    </fo:block>
                                </fo:table-cell>
                            </fo:table-row>
                            <fo:table-row>
                                <fo:table-cell border="0.5pt solid {$lineas}">
                                    <fo:block font-size="9pt" font-family="Arial Narrow" font-stretch="condensed" space-after="1mm" 
                                        color="{$txt}" margin-left="3mm">
                                        <xsl:value-of select="estadoCuentaNacional/costosPorAtraso/montoDeudaUF/excedanHasta" />
                                    </fo:block>
                                </fo:table-cell>
                                <fo:table-cell border="0.5pt solid {$lineas}">
                                    <fo:block font-size="9pt" font-family="Arial Narrow" font-stretch="condensed" space-after="1mm" 
                                        color="{$txt}" margin-left="20mm">
                                        <xsl:value-of select="estadoCuentaNacional/costosPorAtraso/montoDeudaUF/porcentaje2" />
                                    </fo:block>
                                </fo:table-cell>
                            </fo:table-row>
                            <fo:table-row>
                                <fo:table-cell border="0.5pt solid {$lineas}">
                                    <fo:block font-size="9pt" font-family="Arial Narrow" font-stretch="condensed" space-after="1mm" 
                                        color="{$txt}" margin-left="3mm">
                                        <xsl:value-of select="estadoCuentaNacional/costosPorAtraso/montoDeudaUF/excedan" />
                                    </fo:block>
                                </fo:table-cell>
                                <fo:table-cell border="0.5pt solid {$lineas}">
                                    <fo:block font-size="9pt" font-family="Arial Narrow" font-stretch="condensed" space-after="1mm" 
                                        color="{$txt}" margin-left="20mm">
                                        <xsl:value-of select="estadoCuentaNacional/costosPorAtraso/montoDeudaUF/porcentaje3" />
                                    </fo:block>
                                </fo:table-cell>
                            </fo:table-row>
                    
                        </fo:table-body>
                    </fo:table>
                    </fo:block>
               </fo:block-container>

<fo:block  font-size="5pt">
    <fo:table width="14cm" border="0.5pt solid {$lineas}"  >
    <fo:table-column column-width="6cm"  border="0.5pt solid {$lineas}"/>
    <fo:table-column  column-width="12cm"/>
 
    <fo:table-header>
        <fo:table-row>
            <fo:table-cell number-columns-spanned="2" space-right="1cm"
                background-color="{$sombreadoTablas}" border="0.5pt solid {$lineas}">
                <fo:block font-size="9pt" font-family="Arial Narrow" font-stretch="condensed" space-after="1mm" space-before="1mm" font-weight="bold" color="{$txt}" margin-left="5mm">
                    IV.    COSTOS POR ATRASO 
                </fo:block>
            </fo:table-cell>
        </fo:table-row>
    </fo:table-header>
    <fo:table-body>
        <fo:table-row>
            <fo:table-cell>
                <fo:block font-size="12pt" font-family="Arial Narrow" font-stretch="condensed" space-after="1mm" space-before="1mm" color="{$txt}" margin-left="1mm">
                    Interés Moratorio
                </fo:block>
                <fo:block font-size="12pt" font-family="Arial Narrow" font-stretch="condensed" space-after="1mm" color="{$txt}" margin-left="1mm">
                    Cargo de Cobranza
                </fo:block>
            </fo:table-cell>
            <fo:table-cell>
                    <fo:block font-size="12pt" space-before="1mm" font-family="Arial Narrow" font-stretch="condensed" space-after="2cm" color="{$txt}" margin-left="3mm">
                            <xsl:value-of select="estadoCuentaNacional/costosPorAtraso/interesMoratorio" />  
                    </fo:block>              
                 
            </fo:table-cell>
        </fo:table-row>
    </fo:table-body>
    </fo:table>
</fo:block>


<fo:block font-size="9pt"
    color="{$txt}">
    <xsl:value-of select="estadoCuentaNacional/mensaje/linea1" />
</fo:block>
<fo:block font-size="9pt"
    color="{$txt}">
    <xsl:value-of select="estadoCuentaNacional/mensaje/linea2" />
</fo:block>
<fo:block font-size="9pt"
    color="{$txt}">
    <xsl:value-of select="estadoCuentaNacional/mensaje/linea3" />
</fo:block>
<fo:block font-size="9pt"
    color="{$txt}">
    <xsl:value-of select="estadoCuentaNacional/mensaje/linea4" />
</fo:block>



<fo:block-container position="absolute" top="200mm" right="10cm" width="220pt" height="50pt" border="0.5pt solid {$lineas}">
<fo:block font-size="5pt" space-after="2mm">
    <fo:table table-layout="fixed" width="220pt"  height="60pt" >
    <fo:table-column column-width="220pt"/>
    <fo:table-body>
        <fo:table-row>
            <fo:table-cell>
                <fo:block text-align="center" font-size="9pt">    
                    <xsl:value-of select="estadoCuentaNacional/frases/frase"/>
				</fo:block>
            </fo:table-cell>
         </fo:table-row>
    
    </fo:table-body>
    </fo:table>
</fo:block>
</fo:block-container>

<fo:block-container position="absolute" top="200mm" left="10cm" width="220pt" height="50pt" border="0.5pt solid {$lineas}">
<fo:block font-size="5pt" space-after="2mm">
    <fo:table table-layout="fixed" width="199pt"  height="60pt" >
    <fo:table-column column-width="199pt"/>
    <fo:table-body>
        <fo:table-row >
            <fo:table-cell >
                   <fo:block text-align="center" font-size="9pt">    
                    <xsl:value-of select="estadoCuentaNacional/frases/frase1"/>
                    <xsl:value-of select="estadoCuentaNacional/frases/frase2" />
                    <xsl:value-of select="estadoCuentaNacional/frases/frase3" />
                </fo:block>
            </fo:table-cell>
         </fo:table-row>
    
    </fo:table-body>
    </fo:table>
</fo:block>
</fo:block-container>


</xsl:template>

</xsl:stylesheet>
    