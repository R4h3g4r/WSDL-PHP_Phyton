<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format">
    <xsl:template match="SaldosCorporativos">
        <xsl:variable name="titulos">
            #FFFFFF
        </xsl:variable>
        <xsl:variable name="lineas">
            #EBEBEB
        </xsl:variable>
        <xsl:variable name="totalesEmpresas">
            #EEEEEE
        </xsl:variable>
        <xsl:variable name="sombreadoTablas">
            #CECECE
        </xsl:variable>
        <xsl:variable name="sombreadoTotales">
            #EFF8FB
        </xsl:variable>
        
        <fo:root xmlns:fo="http://www.w3.org/1999/XSL/Format">
            <fo:layout-master-set>
                <fo:simple-page-master master-name="all-pages" page-width="8.5in" page-height="11in" margin-top="1cm" margin-bottom="1cm">
                    <fo:region-body padding="0" margin="0.7in" region-name="xsl-region-body" column-gap="0.25in"/>
                    <fo:region-before padding="0" region-name="xsl-region-before" display-align="after" extent="0.7in"/>
                    <fo:region-after padding="0" region-name="xsl-region-after" display-align="before" extent="0.7in"/>
                </fo:simple-page-master>
                <fo:page-sequence-master master-name="default-page">
                    <fo:repeatable-page-master-reference master-reference="all-pages"/>
                </fo:page-sequence-master>
            </fo:layout-master-set>
            <fo:page-sequence master-reference="default-page" initial-page-number="1" format="1">
              <fo:static-content flow-name="xsl-region-before" margin-left="16cm" font-size="12pt" >
                        <fo:block>
                              <fo:external-graphic width="100pt" >
                               <xsl:attribute name="src">
                               url('<xsl:value-of select="rutaLogoCabecera" />')
                               </xsl:attribute>
                             </fo:external-graphic>
                       </fo:block>
               </fo:static-content>
               <fo:static-content flow-name="xsl-region-after" margin-left="18.7cm" font-size="12pt" >
                      <fo:block font-weight="bold" font-size="8pt">
                           <xsl:value-of select="fechaHoy" /> Página <fo:page-number/>
                      </fo:block>
                 </fo:static-content>
                <fo:flow flow-name="xsl-region-body">
                    <fo:block> 
                        <fo:table width="19cm" >
                            <fo:table-column column-width="1cm"/>
                            <fo:table-body>
                                <fo:table-row>
                                    <fo:table-cell>
                                        <fo:block space-after="0.5cm" space-before="0.5cm" font-weight="bold" font-size="15pt" >
                                            Cuentas Corrientes Saldo Corporativo
                                        </fo:block>
                                    </fo:table-cell>
                                </fo:table-row>
                                <fo:table-row>
                                            <fo:table-cell >
                                                <fo:block font-weight="bold" font-size="12pt" >
                                                    Información de Cuentas Corrientes
                                                </fo:block>
                                            </fo:table-cell>
                                        </fo:table-row>
                            </fo:table-body>
                        </fo:table>
                        <fo:block font-size="10pt" space-after="0.5cm" space-before="1cm">
                            <fo:block>
                                <fo:table width="19cm" >
                                    <fo:table-column column-width="10cm"/>
                                    <fo:table-column column-width="10mm"/>
                                    <fo:table-column column-width="10cm"/>
                                    <fo:table-body>
                                        
<xsl:for-each select="cuentas/cuentasAsociadas">
                         <fo:table-row font-size="10pt">
                           <fo:table-cell text-align="center"> 
                              <fo:table width="17cm" border="0.5pt solid {$lineas}" background-color="{$sombreadoTablas}" >
                                    <fo:table-column column-width="14cm"/>
                                    <fo:table-column column-width="4cm"/>
                                    <fo:table-dcolumn column-width="1cm"/>
                                    <fo:table-body>
                                        <fo:table-row font-size="10pt">
                                            <fo:table-cell text-align="left">
                                                <fo:block space-before="0.2cm" space-after="0.2cm" font-weight="bold" >
                                                     <xsl:value-of select="nombreEmpresa" />
                                                </fo:block>
                                            </fo:table-cell>
                                            <fo:table-cell text-align="rigth">
                                                <fo:block space-before="0.2cm" space-after="0.2cm" font-weight="bold" >
                                                     <xsl:value-of select="rutEmpresa" />
                                                </fo:block>
                                            </fo:table-cell>
                                        </fo:table-row>
                                        <fo:table-row>
                                            <fo:table-cell number-columns-spanned="13">
                                                <fo:block font-size="2pt" >
                                                    <xsl:text>&#160;</xsl:text>
                                                </fo:block>
                                            </fo:table-cell>
                                        </fo:table-row>
                                    </fo:table-body>
                                </fo:table>
                                </fo:table-cell>
                                </fo:table-row>
                                           
<xsl:for-each select="listaCuentas">                         
                                                    
          <fo:table-row font-size="9pt">
                                            <fo:table-cell text-align="center">
                                                <fo:block >                                            
                       <fo:table border="0.5pt solid {$lineas}">
                            <fo:table-column column-width="25mm"/><!-- Número Cuenta -->
                            <fo:table-column column-width="20mm"/><!-- Moneda -->
                            <fo:table-column column-width="27mm"/><!-- Saldo Contable 9AM -->
                            <fo:table-column column-width="27mm"/><!-- Ret. 1 Día -->
                            <fo:table-column column-width="27mm"/><!-- Ret. + 1 Día -->
                            <fo:table-column column-width="27mm"/><!-- Saldo Contable -->
                            <fo:table-column column-width="27mm"/><!-- Saldo Disponible -->
                            <fo:table-header background-color="{$sombreadoTablas}" color="{$titulos}" >
                                <fo:table-row height="5mm" text-align="center" border="solid">
                                    <fo:table-cell >
                                        <fo:block space-before="0.2cm" space-after="0.2cm" >
                                            Número Cuenta
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell border="0.5pt solid {$lineas}">
                                        <fo:block space-before="0.2cm" space-after="0.2cm" >
                                            Moneda
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell border="0.5pt solid {$lineas}">
                                        <fo:block space-before="0.2cm" space-after="0.2cm" >
                                            Saldo Contable 9AM
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell border="0.5pt solid {$lineas}">
                                        <fo:block space-before="0.2cm" space-after="0.2cm" >
                                            Ret. 1 Día
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell border="0.5pt solid {$lineas}">
                                        <fo:block space-before="0.2cm" space-after="0.2cm" >
                                            Ret. +1 Día
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell border="0.5pt solid {$lineas}">
                                        <fo:block space-before="0.2cm" space-after="0.2cm" >
                                            Saldo Contable
                                        </fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell border="0.5pt solid {$lineas}">
                                        <fo:block space-before="0.2cm" space-after="0.2cm" >
                                            Saldo Disponible
                                        </fo:block>
                                    </fo:table-cell>
                                    
                                </fo:table-row>
                            </fo:table-header>
                            <fo:table-body>
                            
                            
                            
                            
                            
                            
<xsl:for-each select="cuentasCLP/saldosCLP">
                                   <fo:table-row text-align="center">
                                        <fo:table-cell border="0.5pt solid {$lineas}">
                                            <fo:block space-before="0.2cm" space-after="0.2cm" text-align="right">
                                                <xsl:value-of select="numeroCuenta"/>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell border="0.5pt solid {$lineas}">
                                            <fo:block  space-before="0.2cm" space-after="0.2cm" text-align="right">
                                                <xsl:value-of select="moneda"/>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell border="0.5pt solid {$lineas}">
                                            <fo:block  space-before="0.2cm" space-after="0.2cm" text-align="right">
                                                <xsl:value-of select="saldoContableAM"/>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell border="0.5pt solid {$lineas}">
                                            <fo:block  space-before="0.2cm" space-after="0.2cm" text-align="right">
                                                <xsl:value-of select="ret1Dia"/>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell border="0.5pt solid {$lineas}">
                                            <fo:block  space-before="0.2cm" space-after="0.2cm" text-align="right">
                                                <xsl:value-of select="retMas1Dia"/>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell border="0.5pt solid {$lineas}">
                                            <fo:block  space-before="0.2cm" space-after="0.2cm" text-align="right">
                                                <xsl:value-of select="saldoContable"/>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell border="0.5pt solid {$lineas}">
                                            <fo:block  space-before="0.2cm" space-after="0.2cm" text-align="right">
                                                <xsl:value-of select="saldoDisponible"/>
                                            </fo:block>
                                        </fo:table-cell>
                                    </fo:table-row>
</xsl:for-each>
<xsl:if test="count(cuentasCLP/saldosCLP) > 0">
                                <fo:table-row background-color="{$totalesEmpresas}" text-align="center">
                                        <fo:table-cell border="0.5pt solid {$lineas}" number-columns-spanned="2">
                                            <fo:block space-before="0.2cm" space-after="0.2cm" >Saldos Totales</fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell border="0.5pt solid {$lineas}">
                                            <fo:block  space-before="0.2cm" space-after="0.2cm" text-align="right">
                                                <xsl:value-of select="cuentasCLP/totalSaldoContableAM"/>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell border="0.5pt solid {$lineas}">
                                            <fo:block  space-before="0.2cm" space-after="0.2cm" text-align="right">
                                                <xsl:value-of select="cuentasCLP/totalRet1Dia"/>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell border="0.5pt solid {$lineas}">
                                            <fo:block  space-before="0.2cm" space-after="0.2cm" text-align="right">
                                                <xsl:value-of select="cuentasCLP/totalRetMas1Dia"/>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell border="0.5pt solid {$lineas}">
                                            <fo:block  space-before="0.2cm" space-after="0.2cm" text-align="right">
                                                <xsl:value-of select="cuentasCLP/totalSaldoContable"/>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell border="0.5pt solid {$lineas}">
                                            <fo:block  space-before="0.2cm" space-after="0.2cm" text-align="right">
                                                <xsl:value-of select="cuentasCLP/totalSaldoDisponible"/>
                                            </fo:block>
                                        </fo:table-cell>
                                    </fo:table-row>
</xsl:if>
<xsl:for-each select="cuentasUSD/saldosUSD">
                                    <fo:table-row >
                                        <fo:table-cell border="0.5pt solid {$lineas}">
                                            <fo:block  space-before="0.2cm" space-after="0.2cm" text-align="right">
                                                <xsl:value-of select="numeroCuenta"/>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell border="0.5pt solid {$lineas}">
                                            <fo:block  space-before="0.2cm" space-after="0.2cm" text-align="right">
                                                <xsl:value-of select="moneda"/>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell border="0.5pt solid {$lineas}">
                                            <fo:block  space-before="0.2cm" space-after="0.2cm" text-align="right">
                                                <xsl:value-of select="saldoContableAM"/>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell border="0.5pt solid {$lineas}">
                                            <fo:block  space-before="0.2cm" space-after="0.2cm" text-align="right">
                                                <xsl:value-of select="ret1Dia"/>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell border="0.5pt solid {$lineas}">
                                            <fo:block  space-before="0.2cm" space-after="0.2cm" text-align="right">
                                                <xsl:value-of select="retMas1Dia"/>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell border="0.5pt solid {$lineas}">
                                            <fo:block  space-before="0.2cm" space-after="0.2cm" text-align="right">
                                                <xsl:value-of select="saldoContable"/>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell border="0.5pt solid {$lineas}">
                                            <fo:block  space-before="0.2cm" space-after="0.2cm" text-align="right">
                                                <xsl:value-of select="saldoDisponible"/>
                                            </fo:block>
                                        </fo:table-cell>
                                    </fo:table-row>
</xsl:for-each>
<xsl:if test="count(cuentasUSD/saldosUSD) > 0">
                                 <fo:table-row background-color="{$totalesEmpresas}" >
                                        <fo:table-cell border="0.5pt solid {$lineas}" number-columns-spanned="2">
                                            <fo:block space-before="0.2cm" space-after="0.2cm">Saldos Totales</fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell border="0.5pt solid {$lineas}">
                                            <fo:block  space-before="0.2cm" space-after="0.2cm" text-align="right">
                                                <xsl:value-of select="cuentasUSD/totalSaldoContableAM"/>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell border="0.5pt solid {$lineas}">
                                            <fo:block  space-before="0.2cm" space-after="0.2cm" text-align="right">
                                                <xsl:value-of select="cuentasUSD/totalRet1Dia"/>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell border="0.5pt solid {$lineas}">
                                            <fo:block  space-before="0.2cm" space-after="0.2cm" text-align="right">
                                                <xsl:value-of select="cuentasUSD/totalRetMas1Dia"/>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell border="0.5pt solid {$lineas}">
                                            <fo:block  space-before="0.2cm" space-after="0.2cm" text-align="right">
                                                <xsl:value-of select="cuentasUSD/totalSaldoContable"/>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell border="0.5pt solid {$lineas}">
                                            <fo:block  space-before="0.2cm" space-after="0.2cm" text-align="right">
                                                <xsl:value-of select="cuentasUSD/totalSaldoDisponible"/>
                                            </fo:block>
                                        </fo:table-cell>
                                    </fo:table-row>
                                
</xsl:if>
<xsl:for-each select="cuentasEUR/saldosEUR">
                                    <fo:table-row >
                                        <fo:table-cell border="0.5pt solid {$lineas}">
                                            <fo:block  space-before="0.2cm" space-after="0.2cm" text-align="right">
                                                <xsl:value-of select="numeroCuenta"/>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell border="0.5pt solid {$lineas}">
                                            <fo:block  space-before="0.2cm" space-after="0.2cm" text-align="right">
                                                <xsl:value-of select="moneda"/>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell border="0.5pt solid {$lineas}">
                                            <fo:block  space-before="0.2cm" space-after="0.2cm" text-align="right">
                                                <xsl:value-of select="saldoContableAM"/>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell border="0.5pt solid {$lineas}">
                                            <fo:block  space-before="0.2cm" space-after="0.2cm" text-align="right">
                                                <xsl:value-of select="ret1Dia"/>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell border="0.5pt solid {$lineas}">
                                            <fo:block  space-before="0.2cm" space-after="0.2cm" text-align="right">
                                                <xsl:value-of select="retMas1Dia"/>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell border="0.5pt solid {$lineas}">
                                            <fo:block  space-before="0.2cm" space-after="0.2cm" text-align="right">
                                                <xsl:value-of select="saldoContable"/>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell border="0.5pt solid {$lineas}">
                                            <fo:block  space-before="0.2cm" space-after="0.2cm" text-align="right">
                                                <xsl:value-of select="saldoDisponible"/>
                                            </fo:block>
                                        </fo:table-cell>
                                    </fo:table-row>
</xsl:for-each>
<xsl:if test="count(cuentasEUR/saldosEUR) > 0">
                                <fo:table-row background-color="{$totalesEmpresas}">
                                        <fo:table-cell border="0.5pt solid {$lineas}" number-columns-spanned="2">
                                            <fo:block space-before="0.2cm" space-after="0.2cm" >Saldos Totales</fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell border="0.5pt solid {$lineas}">
                                            <fo:block  space-before="0.2cm" space-after="0.2cm" text-align="right">
                                                <xsl:value-of select="cuentasEUR/totalSaldoContableAM"/>&#160;&#160;
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell border="0.5pt solid {$lineas}">
                                            <fo:block  space-before="0.2cm" space-after="0.2cm" text-align="right">
                                                <xsl:value-of select="cuentasEUR/totalRet1Dia"/>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell border="0.5pt solid {$lineas}">
                                            <fo:block  space-before="0.2cm" space-after="0.2cm" text-align="right">
                                                <xsl:value-of select="cuentasEUR/totalRetMas1Dia"/>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell border="0.5pt solid {$lineas}">
                                            <fo:block  space-before="0.2cm" space-after="0.2cm" text-align="right">
                                                <xsl:value-of select="cuentasEUR/totalSaldoContable"/>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell border="0.5pt solid {$lineas}">
                                            <fo:block  space-before="0.2cm" space-after="0.2cm" text-align="right">
                                                <xsl:value-of select="cuentasEUR/totalSaldoDisponible"/>
                                            </fo:block>
                                        </fo:table-cell>
                                    </fo:table-row>
</xsl:if>
<xsl:for-each select="cuentasOTR/saldosOTR">
                                   <fo:table-row>
                                        <fo:table-cell border="0.5pt solid {$lineas}">
                                            <fo:block  space-before="0.2cm" space-after="0.2cm" text-align="right">
                                                <xsl:value-of select="numeroCuenta"/>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell border="0.5pt solid {$lineas}">
                                            <fo:block  space-before="0.2cm" space-after="0.2cm" text-align="right">
                                                <xsl:value-of select="moneda"/>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell border="0.5pt solid {$lineas}">
                                            <fo:block  space-before="0.2cm" space-after="0.2cm" text-align="right">
                                                <xsl:value-of select="saldoContableAM"/>&#160;&#160;
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell border="0.5pt solid {$lineas}">
                                            <fo:block  space-before="0.2cm" space-after="0.2cm" text-align="right">
                                                <xsl:value-of select="ret1Dia"/>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell border="0.5pt solid {$lineas}">
                                            <fo:block  space-before="0.2cm" space-after="0.2cm" text-align="right">
                                                <xsl:value-of select="retMas1Dia"/>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell border="0.5pt solid {$lineas}">
                                            <fo:block  space-before="0.2cm" space-after="0.2cm" text-align="right">
                                                <xsl:value-of select="saldoContable"/>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell border="0.5pt solid {$lineas}">
                                            <fo:block  space-before="0.2cm" space-after="0.2cm" text-align="right">
                                                <xsl:value-of select="saldoDisponible"/>
                                            </fo:block>
                                        </fo:table-cell>
                                    </fo:table-row>
</xsl:for-each>
<xsl:if test="count(cuentasOTR/saldosOTR) > 0">
                                <fo:table-row background-color="{$totalesEmpresas}" >
                                        <fo:table-cell border="0.5pt solid {$lineas}" number-columns-spanned="2">
                                            <fo:block space-before="0.2cm" space-after="0.2cm" >Saldos Totales</fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell border="0.5pt solid {$lineas}">
                                            <fo:block  space-before="0.2cm" space-after="0.2cm" text-align="right" >Sin Info</fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell border="0.5pt solid {$lineas}">
                                            <fo:block  space-before="0.2cm" space-after="0.2cm" text-align="right" >Sin Info</fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell border="0.5pt solid {$lineas}">
                                            <fo:block  space-before="0.2cm" space-after="0.2cm" text-align="right" >Sin Info</fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell border="0.5pt solid {$lineas}">
                                            <fo:block  space-before="0.2cm" space-after="0.2cm" text-align="right" >Sin Info</fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell border="0.5pt solid {$lineas}">
                                            <fo:block  space-before="0.2cm" space-after="0.2cm" text-align="right" >Sin Info</fo:block>
                                        </fo:table-cell>
                                    </fo:table-row>
</xsl:if>
                            </fo:table-body>
                        </fo:table>            
          		</fo:block>
               </fo:table-cell>
              </fo:table-row>                                          
</xsl:for-each>                 
</xsl:for-each>


<!-- Totales Saldos Corporativos -->



					<fo:table-row >
                           <fo:table-cell text-align="center"> 
                              <fo:table space-before="0.5cm" width="17cm" border="0.5pt solid {$lineas}" background-color="{$sombreadoTotales}" >
                                    <fo:table-column column-width="14cm"/>
                                    <fo:table-column column-width="4cm"/>
                                    <fo:table-dcolumn column-width="1cm"/>
                                    <fo:table-body >
                                        <fo:table-row font-size="10pt">
                                            <fo:table-cell text-align="left">
                                                <fo:block space-before="0.2cm" space-after="0.2cm" font-weight="bold" >
                                                     Total Corporativo
                                                </fo:block>
                                            </fo:table-cell>
                                            <fo:table-cell text-align="rigth">
                                                <fo:block space-before="0.2cm" space-after="0.2cm" font-weight="bold" >
                                                     <xsl:text>&#160;</xsl:text>
                                                </fo:block>
                                            </fo:table-cell>
                                        </fo:table-row>
                                        <fo:table-row>
                                            <fo:table-cell number-columns-spanned="13">
                                                <fo:block font-size="2pt" >
                                                    <xsl:text>&#160;</xsl:text>
                                                </fo:block>
                                            </fo:table-cell>
                                        </fo:table-row>
                                    </fo:table-body>
                                </fo:table>
                                </fo:table-cell>
                                </fo:table-row>
                                
                                
                                
<fo:table-row font-size="9pt">
                                            <fo:table-cell text-align="center">
                              <fo:table width="17cm" >
                                    <fo:table-column column-width="25mm"/><!-- Número Cuenta -->
                            <fo:table-column column-width="20mm"/><!-- Moneda -->
                            <fo:table-column column-width="27mm"/><!-- Saldo Contable 9AM -->
                            <fo:table-column column-width="27mm"/><!-- Ret. 1 Día -->
                            <fo:table-column column-width="27mm"/><!-- Ret. + 1 Día -->
                            <fo:table-column column-width="27mm"/><!-- Saldo Contable -->
                            <fo:table-column column-width="27mm"/><!-- Saldo Disponible -->
                                    <fo:table-body>
                                        <fo:table-row>
                                            <fo:table-cell font-weight="bold" background-color="{$sombreadoTotales}"  border="0.5pt solid {$lineas}" number-columns-spanned="2">
                                            <fo:block space-before="0.2cm" space-after="0.2cm" >Saldos Corporativos CLP</fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell font-size="8pt" background-color="{$sombreadoTotales}" border="0.5pt solid {$lineas}">
                                            <fo:block  space-before="0.2cm" space-after="0.2cm" text-align="right">
                                                <xsl:value-of select="cuentas/totalesFinales/saldoContableAMCLP"/>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell font-size="8pt" background-color="{$sombreadoTotales}" border="0.5pt solid {$lineas}">
                                            <fo:block  space-before="0.2cm" space-after="0.2cm" text-align="right">
                                                <xsl:value-of select="cuentas/totalesFinales/ret1DiaCLP"/>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell font-size="8pt" background-color="{$sombreadoTotales}" border="0.5pt solid {$lineas}">
                                            <fo:block  space-before="0.2cm" space-after="0.2cm" text-align="right">
                                                <xsl:value-of select="cuentas/totalesFinales/retMas1DiaCLP"/>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell font-size="8pt" background-color="{$sombreadoTotales}" border="0.5pt solid {$lineas}">
                                            <fo:block  space-before="0.2cm" space-after="0.2cm" text-align="right">
                                                <xsl:value-of select="cuentas/totalesFinales/saldoContableCLP"/>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell font-size="8pt" background-color="{$sombreadoTotales}" border="0.5pt solid {$lineas}">
                                            <fo:block  space-before="0.2cm" space-after="0.2cm" text-align="right">
                                                <xsl:value-of select="cuentas/totalesFinales/saldoDisponibleCLP"/>
                                            </fo:block>
                                        </fo:table-cell>
                                        </fo:table-row>
                                        <fo:table-row background-color="{$sombreadoTotales}">
                                         <fo:table-cell font-weight="bold" border="0.5pt solid {$lineas}" number-columns-spanned="2">
                                            <fo:block space-before="0.2cm" space-after="0.2cm" >Saldos Corporativos USD</fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell font-size="8pt" background-color="{$sombreadoTotales}" border="0.5pt solid {$lineas}">
                                            <fo:block  space-before="0.2cm" space-after="0.2cm" text-align="right">
                                                <xsl:value-of select="cuentas/totalesFinales/saldoContableAMUSD"/>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell font-size="8pt" background-color="{$sombreadoTotales}" border="0.5pt solid {$lineas}">
                                            <fo:block  space-before="0.2cm" space-after="0.2cm" text-align="right">
                                                <xsl:value-of select="cuentas/totalesFinales/ret1DiaUSD"/>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell font-size="8pt" background-color="{$sombreadoTotales}" border="0.5pt solid {$lineas}">
                                            <fo:block  space-before="0.2cm" space-after="0.2cm" text-align="right">
                                                <xsl:value-of select="cuentas/totalesFinales/retMas1DiaUSD"/>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell font-size="8pt" background-color="{$sombreadoTotales}" border="0.5pt solid {$lineas}">
                                            <fo:block  space-before="0.2cm" space-after="0.2cm" text-align="right">
                                                <xsl:value-of select="cuentas/totalesFinales/saldoContableUSD"/>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell font-size="8pt" background-color="{$sombreadoTotales}" border="0.5pt solid {$lineas}">
                                            <fo:block  space-before="0.2cm" space-after="0.2cm" text-align="right">
                                                <xsl:value-of select="cuentas/totalesFinales/saldoDisponibleUSD"/>
                                            </fo:block>
                                        </fo:table-cell>
                                        </fo:table-row>
                                        <fo:table-row >
                                            <fo:table-cell background-color="{$sombreadoTotales}" border="0.5pt solid {$lineas}" number-columns-spanned="2">
                                            <fo:block font-weight="bold" space-before="0.2cm" space-after="0.2cm" >Saldos Corporativos EUR</fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell font-size="8pt" background-color="{$sombreadoTotales}" border="0.5pt solid {$lineas}">
                                            <fo:block  space-before="0.2cm" space-after="0.2cm" text-align="right">
                                                <xsl:value-of select="cuentas/totalesFinales/saldoContableAMEUR"/>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell font-size="8pt" background-color="{$sombreadoTotales}" border="0.5pt solid {$lineas}">
                                            <fo:block  space-before="0.2cm" space-after="0.2cm" text-align="right">
                                                <xsl:value-of select="cuentas/totalesFinales/ret1DiaEUR"/>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell font-size="8pt" background-color="{$sombreadoTotales}" border="0.5pt solid {$lineas}">
                                            <fo:block  space-before="0.2cm" space-after="0.2cm" text-align="right">
                                                <xsl:value-of select="cuentas/totalesFinales/retMas1DiaEUR"/>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell font-size="8pt" background-color="{$sombreadoTotales}" border="0.5pt solid {$lineas}">
                                            <fo:block  space-before="0.2cm" space-after="0.2cm" text-align="right">
                                                <xsl:value-of select="cuentas/totalesFinales/saldoContableEUR"/>
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell font-size="8pt" background-color="{$sombreadoTotales}" border="0.5pt solid {$lineas}">
                                            <fo:block  space-before="0.2cm" space-after="0.2cm" text-align="right">
                                                <xsl:value-of select="cuentas/totalesFinales/saldoDisponibleEUR"/>
                                            </fo:block>
                                        </fo:table-cell>
                                        </fo:table-row>
                                    </fo:table-body>
                                </fo:table>
                                </fo:table-cell>
                                </fo:table-row>
<!-- FIN Totales Saldos Corporativos -->
                                        <fo:table-row>
                                            <fo:table-cell number-columns-spanned="13">
                                                <fo:block font-size="2pt" >
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

