<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format">
    <xsl:template match="/">
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
                <fo:simple-page-master master-name="all-pages" page-width="210mm" page-height="297mm" margin-top="15mm">
                    <fo:region-body padding="0" margin="0.7in" region-name="xsl-region-body" column-gap="0.25in" />
                    <fo:region-before region-name="xsl-region-before" extent="7in"/>
                    <fo:region-after padding="0" region-name="xsl-region-after" display-align="before" extent="0.7in" />
                </fo:simple-page-master>
                <fo:page-sequence-master master-name="default-page">
                    <fo:repeatable-page-master-reference master-reference="all-pages" />
                </fo:page-sequence-master>
            </fo:layout-master-set>
            <fo:page-sequence master-reference="default-page" initial-page-number="1" format="1">
                <fo:static-content flow-name="xsl-region-before">
                    <fo:block>
                        <fo:table width="21cm" space-after="4mm">
                            <fo:table-column column-width="2cm" />  <!-- margen -->
                            <fo:table-column column-width="14cm" /> <!-- BCI -->
                            <fo:table-column />                     <!-- Sello Agua -->
                            <fo:table-body>
                                <fo:table-row>
                                    <fo:table-cell>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:external-graphic width="100pt">
                                            <xsl:attribute name="src">
                                               url('<xsl:value-of select="ComprobanteFirmaNominasLinea/rutaLogoCabecera" />')
                                            </xsl:attribute>
                                        </fo:external-graphic>
                                    </fo:table-cell>
                                    <fo:table-cell>
                                        <fo:external-graphic width="100pt">
                                            <xsl:attribute name="src">
                                               url('<xsl:value-of select="ComprobanteFirmaNominasLinea/rutaLogoSelloAgua" />')
                                            </xsl:attribute>
                                        </fo:external-graphic>
                                    </fo:table-cell>
                                </fo:table-row>
                             </fo:table-body>
                        </fo:table>
                    </fo:block>
                </fo:static-content>
                <fo:static-content flow-name="xsl-region-after" margin-left="18.7cm" font-size="12pt">
                    <fo:block font-weight="bold" font-size="8pt" color="{$txt}" >
                        Página
                        <fo:page-number />
                    </fo:block>
                </fo:static-content>
                <fo:flow flow-name="xsl-region-body">
                    <fo:block margin-left="117mm">
                        <fo:block margin-left="5mm" width="200pt" height="200pt" space-before="6mm">
                        
							<fo:block font-weight="normal" text-align="left" font-size="10pt" color="{$txt}"  space-before="12mm">
								Estimado Cliente
                            </fo:block>
							<fo:block font-weight="normal" text-align="left" font-size="10pt" color="{$txt}">
								Usted ha firmado la/las siguiente(s) nómina(s) de pago.
							</fo:block>
							<fo:block font-weight="normal" text-align="left" font-size="10pt" color="{$txt}">
								Revise el estado para determinar si quedan firmas pendientes o se produjo algún error en el proceso.
							</fo:block>
							
                            <fo:block space-before="7mm">
                                <fo:table width="16cm">
                                    <fo:table-column column-width="8cm" />
                                    <fo:table-column column-width="8cm" />
                                    <fo:table-body>
                                        <fo:table-row>
                                            <fo:table-cell>
                                                <fo:block text-align="left" font-size="10pt" color="{$txt}">
                                                    <fo:inline font-weight="bold">
                                                        Rut Empresa
                                                    </fo:inline>
                                                </fo:block>
                                            </fo:table-cell>
                                            
                                            <fo:table-cell>
                                                <fo:block font-weight="normal" text-align="left" font-size="10pt" color="{$txt}">
                                                    <fo:inline font-weight="bold">
                                                        Razón Social
                                                    </fo:inline>
                                                </fo:block>
                                            </fo:table-cell>
                                            
                                        </fo:table-row>
                                        <fo:table-row>
											<fo:table-cell>
                                                <fo:block text-align="left" font-size="10pt" color="{$txt}" >
                                                    <fo:inline font-weight="normal">
                                                        <xsl:value-of
                                                select="ComprobanteFirmaNominasLinea/nominas/rutEmpresa" />
                                            -
                                            <xsl:value-of select="ComprobanteFirmaNominasLinea/nominas/dv" />
                                                    </fo:inline>
                                                </fo:block>
                                            </fo:table-cell>
                                            
                                            <fo:table-cell>
                                                <fo:block font-weight="normal" text-align="left" font-size="10pt" color="{$txt}" >
                                                    <fo:inline font-weight="normal">
                                                        <xsl:value-of
                                                select="ComprobanteFirmaNominasLinea/nominas/nombreEmpresa" />
                                                    </fo:inline>
                                                </fo:block>
                                            </fo:table-cell>
                                        </fo:table-row>
                                        
                                    </fo:table-body>
                                </fo:table>
                            </fo:block>


							<fo:block space-before="3mm">
                                <fo:table width="16cm">
                                    <fo:table-column column-width="8cm" />
                                    <fo:table-column column-width="8cm" />
                                    <fo:table-body>
                                        <fo:table-row>
                                            <fo:table-cell>
                                                <fo:block text-align="left" font-size="10pt" color="{$txt}">
                                                    <fo:inline font-weight="bold">
                                                        Rut Usuario
                                                    </fo:inline>
                                                </fo:block>
                                            </fo:table-cell>
                                            
                                            <fo:table-cell>
                                                <fo:block font-weight="normal" text-align="left" font-size="10pt" color="{$txt}">
                                                    <fo:inline font-weight="bold">
                                                        Nombre
                                                    </fo:inline>
                                                </fo:block>
                                            </fo:table-cell>
                                            
                                        </fo:table-row>
                                        <fo:table-row>
											<fo:table-cell>
                                                <fo:block text-align="left" font-size="10pt" color="{$txt}" >
                                                    <fo:inline font-weight="normal">
                                                        <xsl:value-of
                                                select="ComprobanteFirmaNominasLinea/nominas/rutUsuario" />
                                            -
                                            <xsl:value-of select="ComprobanteFirmaNominasLinea/nominas/digitoVerificadorUsuario" />
                                                    </fo:inline>
                                                </fo:block>
                                            </fo:table-cell>
                                            
                                            <fo:table-cell>
                                                <fo:block font-weight="normal" text-align="left" font-size="10pt" color="{$txt}" >
                                                    <fo:inline font-weight="normal">
                                                        <xsl:value-of
                                                select="ComprobanteFirmaNominasLinea/nominas/nombreUsuario" />
                                                    </fo:inline>
                                                </fo:block>
                                            </fo:table-cell>
                                        </fo:table-row>
                                        
                                    </fo:table-body>
                                </fo:table>
                            </fo:block>
                            <fo:block space-before="3mm">
                                <fo:table width="16cm">
                                    <fo:table-column column-width="8cm" />
                                    <fo:table-column column-width="8cm" />
                                    <fo:table-body>
                                        <fo:table-row>
                                            <fo:table-cell>
                                                <fo:block text-align="left" font-size="10pt" color="{$txt}">
                                                    <fo:inline font-weight="bold">
                                                        Fecha Firma
                                                    </fo:inline>
                                                </fo:block>
                                            </fo:table-cell>
                                            <fo:table-cell>
                                            </fo:table-cell>
                                        </fo:table-row>
                                        <fo:table-row>
											<fo:table-cell>
                                                <fo:block text-align="left" font-size="10pt" color="{$txt}" >
                                                    <fo:inline font-weight="normal">
                                                        <xsl:value-of
                                                select="ComprobanteFirmaNominasLinea/nominas/fechaHoraFirma" />
                                                    </fo:inline>
                                                </fo:block>
                                            </fo:table-cell>
                                            <fo:table-cell>
                                            </fo:table-cell>
                                        </fo:table-row>
                                    </fo:table-body>
                                </fo:table>
                            </fo:block>
                            
<!--            INICIO tabla nominas Enviadas a Pago -->         
                            <xsl:if test="ComprobanteFirmaNominasLinea/nominas/listaNominasEnviadasPago != '' ">
                             	<fo:block font-weight="normal" space-before="3mm" text-align="left" font-size="12pt" color="{$txt}">
	                                <fo:inline font-weight="bold">
	                                    Nóminas envíadas a pago
	                                </fo:inline>
	                            </fo:block>   
                            
								<fo:block font-size="5pt" space-before="2mm" space-after="0.5cm">
	                                <fo:table  width="17cm">
	                                    <fo:table-column column-width="0.5cm" />
	                                    <fo:table-column column-width="3cm" />
	                                    <fo:table-column column-width="3.5cm" />
	                                    <fo:table-column column-width="3cm" />
	                                    <fo:table-column column-width="3cm" />
	                                    <fo:table-column column-width="4cm" />
	                                    <fo:table-body >
	                                        <fo:table-row >
	                                            <fo:table-cell>
	                                            </fo:table-cell>
	                                            <fo:table-cell border-color="black" background-color="#BDBDBD" number-rows-spanned="1" border="0.5pt solid {$lineas}">
	                                                <fo:block font-weight="bold" font-size="10pt" text-align="center"   space-after="1mm" space-before="1mm" color="{$txt}" margin-left="1mm">
	                                                    Código de Identificación
	                                                </fo:block>
	                                            </fo:table-cell>
												<fo:table-cell border-color="black" background-color="#BDBDBD" number-rows-spanned="1" border="0.5pt solid {$lineas}">
	                                                <fo:block font-weight="bold" font-size="10pt" text-align="center"   space-after="1mm" space-before="1mm" color="{$txt}" margin-left="1mm">
	                                                    Fecha Pago
	                                                </fo:block>
	                                            </fo:table-cell>
	                                            <fo:table-cell  border-color="black" background-color="#BDBDBD" number-rows-spanned="1" border="0.5pt solid {$lineas}">
	                                                <fo:block font-weight="bold" font-size="10pt" text-align="center"   space-after="1mm" space-before="1mm" color="{$txt}" margin-left="1mm">
	                                                    Cuenta de Origen
	                                                </fo:block>
	                                            </fo:table-cell>
	                                            <fo:table-cell  border-color="black" background-color="#BDBDBD" number-rows-spanned="1" border="0.5pt solid {$lineas}">
	                                                <fo:block font-weight="bold" font-size="10pt" text-align="center"   space-after="1mm" space-before="1mm" color="{$txt}" margin-left="1mm">
	                                                    Pagos
	                                                </fo:block>
	                                            </fo:table-cell>
	                                            <fo:table-cell border-color="black" background-color="#BDBDBD" number-rows-spanned="1" border="0.5pt solid {$lineas}">
	                                                <fo:block font-weight="bold" font-size="10pt" text-align="center"   space-after="1mm" space-before="1mm" color="{$txt}" margin-left="1mm">
	                                                    Monto Total Aceptado
	                                                </fo:block>
	                                            </fo:table-cell>
	                                        </fo:table-row>
	                                        <xsl:for-each select="ComprobanteFirmaNominasLinea/nominas/listaNominasEnviadasPago/datosListaNominas">
	                                            <fo:table-row>
	                                                <fo:table-cell>
	                                                </fo:table-cell>
	                                                <fo:table-cell border-color="black" border-left-style="solid" number-columns-spanned="1" border="0.5pt solid {$lineas}">
	                                                    <fo:block font-size="11pt" text-align="center"   space-before="1mm" color="{$txt}" margin-left="1mm">
	                                                        <xsl:value-of select="numTransferencia" />
	                                                    </fo:block>
	                                                </fo:table-cell>
	                                                <fo:table-cell border-color="black" border-left-style="solid" number-columns-spanned="1" border="0.5pt solid {$lineas}">
	                                                    <fo:block font-size="11pt" text-align="center"   space-before="1mm" color="{$txt}" margin-left="1mm">
	                                                        <xsl:value-of select="fechaPago" />
	                                                    </fo:block>
	                                                </fo:table-cell>
	                                                <fo:table-cell border-color="black" border-left-style="solid" number-columns-spanned="1" border="0.5pt solid {$lineas}">
	                                                    <fo:block font-size="11pt" text-align="center"   space-before="1mm" color="{$txt}" margin-left="1mm">
	                                                        <xsl:value-of select="ctaOrigen" />
	                                                    </fo:block>
	                                                </fo:table-cell>
	                                                <fo:table-cell border-color="black" border-left-style="solid" number-columns-spanned="1" border="0.5pt solid {$lineas}">
	                                                    <fo:block font-size="11pt" text-align="right"   space-before="1mm" color="{$txt}" margin-left="1mm">
	                                                        <xsl:value-of select="cantidadPagosAceptados" />
	                                                    </fo:block>
	                                                </fo:table-cell>
	                                                <fo:table-cell border-color="black" border-left-style="solid" number-columns-spanned="1" border="0.5pt solid {$lineas}">
	                                                    <fo:block font-size="11pt" text-align="right"   space-before="1mm" color="{$txt}" margin-left="1mm">
	                                                        $ <xsl:value-of select="montoTotalAceptado" />
	                                                    </fo:block>
	                                                </fo:table-cell>
	                                            </fo:table-row>
	                                        </xsl:for-each>
	                                    </fo:table-body>
	                                </fo:table>
	                            </fo:block>
							</xsl:if>
<!--            FIN tabla nominas Enviadas a Pago -->                            


<!--            INICIO tabla nominas Pendientes de Firma  -->         
                            <xsl:if test="ComprobanteFirmaNominasLinea/nominas/listaNominasPendFir != '' ">
                             	<fo:block font-weight="normal" space-before="3mm" text-align="left" font-size="12pt" color="{$txt}">
	                                <fo:inline font-weight="bold">
	                                    Pendientes de firma
	                                </fo:inline>
	                            </fo:block>   
                            
								<fo:block font-size="5pt" space-before="2mm" space-after="0.5cm">
	                                <fo:table  width="17cm">
	                                    <fo:table-column column-width="0.5cm" />
	                                    <fo:table-column column-width="3cm" />
	                                    <fo:table-column column-width="3.5cm" />
	                                    <fo:table-column column-width="3cm" />
	                                    <fo:table-column column-width="3cm" />
	                                    <fo:table-column column-width="4cm" />
	                                    <fo:table-body >
	                                        <fo:table-row >
	                                            <fo:table-cell>
	                                            </fo:table-cell>
	                                            <fo:table-cell border-color="black" background-color="#BDBDBD" number-rows-spanned="1" border="0.5pt solid {$lineas}">
	                                                <fo:block font-weight="bold" font-size="10pt" text-align="center"   space-after="1mm" space-before="1mm" color="{$txt}" margin-left="1mm">
	                                                    Código de Identificación
	                                                </fo:block>
	                                            </fo:table-cell>
												<fo:table-cell border-color="black" background-color="#BDBDBD" number-rows-spanned="1" border="0.5pt solid {$lineas}">
	                                                <fo:block font-weight="bold" font-size="10pt" text-align="center"   space-after="1mm" space-before="1mm" color="{$txt}" margin-left="1mm">
	                                                    Fecha Pago
	                                                </fo:block>
	                                            </fo:table-cell>
	                                            <fo:table-cell  border-color="black" background-color="#BDBDBD" number-rows-spanned="1" border="0.5pt solid {$lineas}">
	                                                <fo:block font-weight="bold" font-size="10pt" text-align="center"   space-after="1mm" space-before="1mm" color="{$txt}" margin-left="1mm">
	                                                    Cuenta de Origen
	                                                </fo:block>
	                                            </fo:table-cell>
	                                            <fo:table-cell  border-color="black" background-color="#BDBDBD" number-rows-spanned="1" border="0.5pt solid {$lineas}">
	                                                <fo:block font-weight="bold" font-size="10pt" text-align="center"   space-after="1mm" space-before="1mm" color="{$txt}" margin-left="1mm">
	                                                    Pagos
	                                                </fo:block>
	                                            </fo:table-cell>
	                                            <fo:table-cell border-color="black" background-color="#BDBDBD" number-rows-spanned="1" border="0.5pt solid {$lineas}">
	                                                <fo:block font-weight="bold" font-size="10pt" text-align="center"   space-after="1mm" space-before="1mm" color="{$txt}" margin-left="1mm">
	                                                    Monto Total Aceptado
	                                                </fo:block>
	                                            </fo:table-cell>
	                                        </fo:table-row>
	                                        <xsl:for-each select="ComprobanteFirmaNominasLinea/nominas/listaNominasPendFir/datosListaNominas">
	                                            <fo:table-row>
	                                                <fo:table-cell>
	                                                </fo:table-cell>
	                                                <fo:table-cell border-color="black" border-left-style="solid" number-columns-spanned="1" border="0.5pt solid {$lineas}">
	                                                    <fo:block font-size="11pt" text-align="center"   space-before="1mm" color="{$txt}" margin-left="1mm">
	                                                        <xsl:value-of select="numTransferencia" />
	                                                    </fo:block>
	                                                </fo:table-cell>
	                                                <fo:table-cell border-color="black" border-left-style="solid" number-columns-spanned="1" border="0.5pt solid {$lineas}">
	                                                    <fo:block font-size="11pt" text-align="center"   space-before="1mm" color="{$txt}" margin-left="1mm">
	                                                        <xsl:value-of select="fechaPago" />
	                                                    </fo:block>
	                                                </fo:table-cell>
	                                                <fo:table-cell border-color="black" border-left-style="solid" number-columns-spanned="1" border="0.5pt solid {$lineas}">
	                                                    <fo:block font-size="11pt" text-align="center"   space-before="1mm" color="{$txt}" margin-left="1mm">
	                                                        <xsl:value-of select="ctaOrigen" />
	                                                    </fo:block>
	                                                </fo:table-cell>
	                                                <fo:table-cell border-color="black" border-left-style="solid" number-columns-spanned="1" border="0.5pt solid {$lineas}">
	                                                    <fo:block font-size="11pt" text-align="right"   space-before="1mm" color="{$txt}" margin-left="1mm">
	                                                        <xsl:value-of select="cantidadPagosAceptados" />
	                                                    </fo:block>
	                                                </fo:table-cell>
	                                                <fo:table-cell border-color="black" border-left-style="solid" number-columns-spanned="1" border="0.5pt solid {$lineas}">
	                                                    <fo:block font-size="11pt" text-align="right"   space-before="1mm" color="{$txt}" margin-left="1mm">
	                                                        $ <xsl:value-of select="montoTotalAceptado" />
	                                                    </fo:block>
	                                                </fo:table-cell>
	                                            </fo:table-row>
	                                        </xsl:for-each>
	                                    </fo:table-body>
	                                </fo:table>
	                            </fo:block>
							</xsl:if>
<!--            FIN tabla nominas Pendientes de Firma -->     




<!--            INICIO tabla nominas Diferidas  -->         
                            <xsl:if test="ComprobanteFirmaNominasLinea/nominas/listaNominasDiferidas != '' ">
                             	<fo:block font-weight="normal" space-before="3mm" text-align="left" font-size="12pt" color="{$txt}">
	                                <fo:inline font-weight="bold">
	                                    Nóminas diferidas
	                                </fo:inline>
	                            </fo:block>   
                            
								<fo:block font-size="5pt" space-before="2mm" space-after="0.5cm">
	                                <fo:table  width="17cm">
	                                    <fo:table-column column-width="0.5cm" />
	                                    <fo:table-column column-width="3cm" />
	                                    <fo:table-column column-width="3.5cm" />
	                                    <fo:table-column column-width="3cm" />
	                                    <fo:table-column column-width="3cm" />
	                                    <fo:table-column column-width="4cm" />
	                                    <fo:table-body >
	                                        <fo:table-row >
	                                            <fo:table-cell>
	                                            </fo:table-cell>
	                                            <fo:table-cell border-color="black" background-color="#BDBDBD" number-rows-spanned="1" border="0.5pt solid {$lineas}">
	                                                <fo:block font-weight="bold" font-size="10pt" text-align="center"   space-after="1mm" space-before="1mm" color="{$txt}" margin-left="1mm">
	                                                    Código de Identificación
	                                                </fo:block>
	                                            </fo:table-cell>
												<fo:table-cell border-color="black" background-color="#BDBDBD" number-rows-spanned="1" border="0.5pt solid {$lineas}">
	                                                <fo:block font-weight="bold" font-size="10pt" text-align="center"   space-after="1mm" space-before="1mm" color="{$txt}" margin-left="1mm">
	                                                    Fecha Pago
	                                                </fo:block>
	                                            </fo:table-cell>
	                                            <fo:table-cell  border-color="black" background-color="#BDBDBD" number-rows-spanned="1" border="0.5pt solid {$lineas}">
	                                                <fo:block font-weight="bold" font-size="10pt" text-align="center"   space-after="1mm" space-before="1mm" color="{$txt}" margin-left="1mm">
	                                                    Cuenta de Origen
	                                                </fo:block>
	                                            </fo:table-cell>
	                                            <fo:table-cell  border-color="black" background-color="#BDBDBD" number-rows-spanned="1" border="0.5pt solid {$lineas}">
	                                                <fo:block font-weight="bold" font-size="10pt" text-align="center"   space-after="1mm" space-before="1mm" color="{$txt}" margin-left="1mm">
	                                                    Pagos
	                                                </fo:block>
	                                            </fo:table-cell>
	                                            <fo:table-cell border-color="black" background-color="#BDBDBD" number-rows-spanned="1" border="0.5pt solid {$lineas}">
	                                                <fo:block font-weight="bold" font-size="10pt" text-align="center"   space-after="1mm" space-before="1mm" color="{$txt}" margin-left="1mm">
	                                                    Monto Total Aceptado
	                                                </fo:block>
	                                            </fo:table-cell>
	                                        </fo:table-row>
	                                        <xsl:for-each select="ComprobanteFirmaNominasLinea/nominas/listaNominasDiferidas/datosListaNominas">
	                                            <fo:table-row>
	                                                <fo:table-cell>
	                                                </fo:table-cell>
	                                                <fo:table-cell border-color="black" border-left-style="solid" number-columns-spanned="1" border="0.5pt solid {$lineas}">
	                                                    <fo:block font-size="11pt" text-align="center"   space-before="1mm" color="{$txt}" margin-left="1mm">
	                                                        <xsl:value-of select="numTransferencia" />
	                                                    </fo:block>
	                                                </fo:table-cell>
	                                                <fo:table-cell border-color="black" border-left-style="solid" number-columns-spanned="1" border="0.5pt solid {$lineas}">
	                                                    <fo:block font-size="11pt" text-align="center"   space-before="1mm" color="{$txt}" margin-left="1mm">
	                                                        <xsl:value-of select="fechaPago" />
	                                                    </fo:block>
	                                                </fo:table-cell>
	                                                <fo:table-cell border-color="black" border-left-style="solid" number-columns-spanned="1" border="0.5pt solid {$lineas}">
	                                                    <fo:block font-size="11pt" text-align="center"   space-before="1mm" color="{$txt}" margin-left="1mm">
	                                                        <xsl:value-of select="ctaOrigen" />
	                                                    </fo:block>
	                                                </fo:table-cell>
	                                                <fo:table-cell border-color="black" border-left-style="solid" number-columns-spanned="1" border="0.5pt solid {$lineas}">
	                                                    <fo:block font-size="11pt" text-align="right"   space-before="1mm" color="{$txt}" margin-left="1mm">
	                                                        <xsl:value-of select="cantidadPagosAceptados" />
	                                                    </fo:block>
	                                                </fo:table-cell>
	                                                <fo:table-cell border-color="black" border-left-style="solid" number-columns-spanned="1" border="0.5pt solid {$lineas}">
	                                                    <fo:block font-size="11pt" text-align="right"   space-before="1mm" color="{$txt}" margin-left="1mm">
	                                                        $ <xsl:value-of select="montoTotalAceptado" />
	                                                    </fo:block>
	                                                </fo:table-cell>
	                                            </fo:table-row>
	                                        </xsl:for-each>
	                                    </fo:table-body>
	                                </fo:table>
	                            </fo:block>
							</xsl:if>
<!--            FIN tabla nominas Diferidas-->     


<!--            INICIO tabla nominas Sin Fondo  -->         
                            <xsl:if test="ComprobanteFirmaNominasLinea/nominas/listaNominasSinFondos != '' ">
                             	<fo:block font-weight="normal" space-before="3mm" text-align="left" font-size="12pt" color="{$txt}">
	                                <fo:inline font-weight="bold">
	                                    Sin fondos
	                                </fo:inline>
	                            </fo:block>   
                            
								<fo:block font-size="5pt" space-before="2mm" space-after="0.5cm">
	                                <fo:table  width="17cm">
	                                    <fo:table-column column-width="0.5cm" />
	                                    <fo:table-column column-width="3cm" />
	                                    <fo:table-column column-width="3.5cm" />
	                                    <fo:table-column column-width="3cm" />
	                                    <fo:table-column column-width="3cm" />
	                                    <fo:table-column column-width="4cm" />
	                                    <fo:table-body >
	                                        <fo:table-row >
	                                            <fo:table-cell>
	                                            </fo:table-cell>
	                                            <fo:table-cell border-color="black" background-color="#BDBDBD" number-rows-spanned="1" border="0.5pt solid {$lineas}">
	                                                <fo:block font-weight="bold" font-size="10pt" text-align="center"   space-after="1mm" space-before="1mm" color="{$txt}" margin-left="1mm">
	                                                    Código de Identificación
	                                                </fo:block>
	                                            </fo:table-cell>
												<fo:table-cell border-color="black" background-color="#BDBDBD" number-rows-spanned="1" border="0.5pt solid {$lineas}">
	                                                <fo:block font-weight="bold" font-size="10pt" text-align="center"   space-after="1mm" space-before="1mm" color="{$txt}" margin-left="1mm">
	                                                    Fecha Pago
	                                                </fo:block>
	                                            </fo:table-cell>
	                                            <fo:table-cell  border-color="black" background-color="#BDBDBD" number-rows-spanned="1" border="0.5pt solid {$lineas}">
	                                                <fo:block font-weight="bold" font-size="10pt" text-align="center"   space-after="1mm" space-before="1mm" color="{$txt}" margin-left="1mm">
	                                                    Cuenta de Origen
	                                                </fo:block>
	                                            </fo:table-cell>
	                                            <fo:table-cell  border-color="black" background-color="#BDBDBD" number-rows-spanned="1" border="0.5pt solid {$lineas}">
	                                                <fo:block font-weight="bold" font-size="10pt" text-align="center"   space-after="1mm" space-before="1mm" color="{$txt}" margin-left="1mm">
	                                                    Pagos
	                                                </fo:block>
	                                            </fo:table-cell>
	                                            <fo:table-cell border-color="black" background-color="#BDBDBD" number-rows-spanned="1" border="0.5pt solid {$lineas}">
	                                                <fo:block font-weight="bold" font-size="10pt" text-align="center"   space-after="1mm" space-before="1mm" color="{$txt}" margin-left="1mm">
	                                                    Monto Total Aceptado
	                                                </fo:block>
	                                            </fo:table-cell>
	                                        </fo:table-row>
	                                        <xsl:for-each select="ComprobanteFirmaNominasLinea/nominas/listaNominasSinFondos/datosListaNominas">
	                                            <fo:table-row>
	                                                <fo:table-cell>
	                                                </fo:table-cell>
	                                                <fo:table-cell border-color="black" border-left-style="solid" number-columns-spanned="1" border="0.5pt solid {$lineas}">
	                                                    <fo:block font-size="11pt" text-align="center"   space-before="1mm" color="{$txt}" margin-left="1mm">
	                                                        <xsl:value-of select="numTransferencia" />
	                                                    </fo:block>
	                                                </fo:table-cell>
	                                                <fo:table-cell border-color="black" border-left-style="solid" number-columns-spanned="1" border="0.5pt solid {$lineas}">
	                                                    <fo:block font-size="11pt" text-align="center"   space-before="1mm" color="{$txt}" margin-left="1mm">
	                                                        <xsl:value-of select="fechaPago" />
	                                                    </fo:block>
	                                                </fo:table-cell>
	                                                <fo:table-cell border-color="black" border-left-style="solid" number-columns-spanned="1" border="0.5pt solid {$lineas}">
	                                                    <fo:block font-size="11pt" text-align="center"   space-before="1mm" color="{$txt}" margin-left="1mm">
	                                                        <xsl:value-of select="ctaOrigen" />
	                                                    </fo:block>
	                                                </fo:table-cell>
	                                                <fo:table-cell border-color="black" border-left-style="solid" number-columns-spanned="1" border="0.5pt solid {$lineas}">
	                                                    <fo:block font-size="11pt" text-align="right"   space-before="1mm" color="{$txt}" margin-left="1mm">
	                                                        <xsl:value-of select="cantidadPagosAceptados" />
	                                                    </fo:block>
	                                                </fo:table-cell>
	                                                <fo:table-cell border-color="black" border-left-style="solid" number-columns-spanned="1" border="0.5pt solid {$lineas}">
	                                                    <fo:block font-size="11pt" text-align="right"   space-before="1mm" color="{$txt}" margin-left="1mm">
	                                                        $ <xsl:value-of select="montoTotalAceptado" />
	                                                    </fo:block>
	                                                </fo:table-cell>
	                                            </fo:table-row>
	                                        </xsl:for-each>
	                                    </fo:table-body>
	                                </fo:table>
	                            </fo:block>
							</xsl:if>
<!--            FIN tabla nominas Sin Fondo -->  

                            
                            
<!--            inicio tabla nominas Error Firma -->
                            <xsl:if test="ComprobanteFirmaNominasLinea/nominas/listaNominasErrorFirma != '' ">
                             	<fo:block font-weight="normal" space-before="3mm" text-align="left" font-size="12pt" color="{$txt}">
	                                <fo:inline font-weight="bold">
	                                    Firmas con error
	                                </fo:inline>
	                            </fo:block>                               
								<fo:block font-size="5pt" space-before="2mm" space-after="0.5cm">
	                                <fo:table  width="17cm">
	                                    <fo:table-column column-width="0.5cm" />
	                                    <fo:table-column column-width="3cm" />
	                                    <fo:table-column column-width="13.5cm" />
	                                    <fo:table-body >
	                                        <fo:table-row >
	                                            <fo:table-cell>
	                                            </fo:table-cell>
	                                            <fo:table-cell border-color="black" background-color="#BDBDBD" number-rows-spanned="1" border="0.5pt solid {$lineas}">
	                                                <fo:block font-weight="bold" font-size="10pt" text-align="center"  space-after="1mm" space-before="1mm" color="{$txt}" margin-left="1mm">
	                                                    Código de Identificación 
	                                                </fo:block>
	                                            </fo:table-cell>
												<fo:table-cell border-color="black" background-color="#BDBDBD" number-rows-spanned="1" border="0.5pt solid {$lineas}">
	                                                <fo:block font-weight="bold" font-size="10pt" text-align="center"   space-after="1mm" space-before="1mm" color="{$txt}" margin-left="1mm">
	                                                    Observaciones
	                                                </fo:block>
	                                            </fo:table-cell>
	                                        </fo:table-row>
	                                        <xsl:for-each select="ComprobanteFirmaNominasLinea/nominas/listaNominasErrorFirma/datosListaNominas">
	                                            <fo:table-row>
	                                                <fo:table-cell>
	                                                </fo:table-cell>
	                                                <fo:table-cell border-color="black" border-left-style="solid" number-columns-spanned="1" border="0.5pt solid {$lineas}">
	                                                    <fo:block font-size="11pt" text-align="center"   space-before="1mm" color="{$txt}" margin-left="1mm">
	                                                        <xsl:value-of select="numTransferencia" />
	                                                    </fo:block>
	                                                </fo:table-cell>
	                                                <fo:table-cell border-color="black" border-left-style="solid" number-columns-spanned="1" border="0.5pt solid {$lineas}">
	                                                    <fo:block font-size="11pt" text-align="center"   space-before="1mm" color="{$txt}" margin-left="1mm">
	                                                        <xsl:value-of select="descripcionEstadoProceso" />
	                                                    </fo:block>
	                                                </fo:table-cell>
	                                            </fo:table-row>
	                                        </xsl:for-each>
	                                    </fo:table-body>
	                                </fo:table>
	                            </fo:block>
							</xsl:if>
							
	<!--            FIN tabla nominas Error Firma -->
							
							
                        </fo:block>
                        
                        <xsl:if test="position() = last()">
                            <fo:table space-after="7cm">
                                <fo:table-column column-width="0.5cm" />
                                <fo:table-column column-width="2cm" />
                                <fo:table-body>
                                    <fo:table-row>
                                        <fo:table-cell margin-left="16.7cm">
                                            <fo:block font-size="8pt" font-weight="bold">
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell margin-left="17.2cm">
                                            <fo:block font-size="8pt" font-weight="bold">
                                            </fo:block>
                                        </fo:table-cell>
                                    </fo:table-row>
                                </fo:table-body>
                            </fo:table>
                        </xsl:if>
                        <xsl:if test="position() != last()">
                            <fo:table space-after="7cm">
                                <fo:table-column column-width="0.5cm" />
                                <fo:table-column column-width="2cm" />
                                <fo:table-body>
                                    <fo:table-row>
                                        <fo:table-cell margin-left="16.7cm">
                                            <fo:block font-size="8pt" font-weight="bold">
                                            </fo:block>
                                        </fo:table-cell>
                                        <fo:table-cell margin-left="17.2cm">
                                            <fo:block font-size="8pt" font-weight="bold">
                                            </fo:block>
                                        </fo:table-cell>
                                    </fo:table-row>
                                </fo:table-body>
                            </fo:table>
                        </xsl:if>
                        <fo:block space-before="1cm" font-size="8pt" margin-left="0mm">
                            Estimado Cliente,
                        </fo:block>
                        <fo:block space-before="0cm" font-size="8pt" margin-left="0mm">
                            Guarde este comprobante como respaldo de su
                            operación. Ante cualquier consulta comunicarse con la Mesa de Ayuda
                        </fo:block>
                    </fo:block>
                </fo:flow>
            </fo:page-sequence>
        </fo:root>
    </xsl:template>
</xsl:stylesheet>