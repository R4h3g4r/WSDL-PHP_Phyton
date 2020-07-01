<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format">
    <xsl:template name="productosVigentes">
        <xsl:call-template name="subtitulo">
            <xsl:with-param name="texto" select="'Productos Vigentes'" />
        </xsl:call-template>
        <xsl:choose>
            <xsl:when test="relojEverest/productosVigentes/cuentasCorrientesMonedaNacional/cuenta">
                <xsl:call-template name="subtitulomin">
                    <xsl:with-param name="texto" select="'CUENTA CORRIENTE NACIONAL'" />
                </xsl:call-template>
                <fo:table text-align="left" table-layout="fixed">
                    <fo:table-column column-width="3.8cm"/>
                    <fo:table-column column-width="3.8cm"/>
                    <fo:table-column column-width="3.8cm"/>
                    <fo:table-column column-width="3.8cm"/>
                    <fo:table-column column-width="3.8cm"/>
                    <fo:table-body>
                        <fo:table-row>
                            <xsl:call-template name="tablaheadverticaldestacado">
                                <xsl:with-param name="texto" select="'Nº Cuenta'" />
                            </xsl:call-template>
                            <xsl:call-template name="tablaheadverticaldestacado">
                                <xsl:with-param name="texto" select="'Saldo Disponible'" />
                            </xsl:call-template>
                            <xsl:call-template name="tablaheadverticaldestacado">
                                <xsl:with-param name="texto" select="'Saldo Contable'" />
                            </xsl:call-template>
                            <xsl:call-template name="tablaheadverticaldestacado">
                                <xsl:with-param name="texto" select="'Retenciones'" />
                            </xsl:call-template>
                            <xsl:call-template name="tablaheadverticaldestacado">
                                <xsl:with-param name="texto" select="'4 Últimos Cheques'" />
                            </xsl:call-template>
                        </fo:table-row>
                        <xsl:for-each select="relojEverest/productosVigentes/cuentasCorrientesMonedaNacional/cuenta">
                            <fo:table-row>
                                <xsl:call-template name="tablaceldadatotexto">
                                    <xsl:with-param name="texto" select="numeroCuenta" />
                                </xsl:call-template>
                                <xsl:call-template name="tablaceldadatotexto">
                                    <xsl:with-param name="texto" select="concat('$ ', saldoDisponible)" />
                                </xsl:call-template>
                                <xsl:call-template name="tablaceldadatotexto">
                                    <xsl:with-param name="texto" select="concat('$ ', saldoContable)" />
                                </xsl:call-template>
                                <xsl:call-template name="tablaceldadatotexto">
                                    <xsl:with-param name="texto" select="concat('$ ', retenciones)" />
                                </xsl:call-template>
                                <xsl:call-template name="tablaceldadatotexto">
                                    <xsl:with-param name="texto" select="ultimosCheques" />
                                </xsl:call-template>
                            </fo:table-row>
                        </xsl:for-each>
                    </fo:table-body>
                </fo:table>
            </xsl:when>
            <xsl:when test="relojEverest/productosVigentes/cuentasCorrientesMonedaNacional/mensaje">
                <xsl:call-template name="subtitulomin">
                    <xsl:with-param name="texto" select="'CUENTA CORRIENTE NACIONAL'" />
                </xsl:call-template>
                <xsl:call-template name="mensaje">
                    <xsl:with-param name="texto" select="relojEverest/productosVigentes/cuentasCorrientesMonedaNacional/mensaje" />
                </xsl:call-template>
            </xsl:when>
        </xsl:choose>
        <xsl:choose>
            <xsl:when test="relojEverest/productosVigentes/cuentasCorrientesMonedaExtranjera/cuenta">
                <xsl:call-template name="subtitulomin">
                    <xsl:with-param name="texto" select="'CUENTA CORRIENTE MONEDA EXTRANJERA'" />
                </xsl:call-template>
                <fo:table text-align="left" table-layout="fixed">
                    <fo:table-column column-width="3.8cm"/>
                    <fo:table-column column-width="3.8cm"/>
                    <fo:table-column column-width="3.8cm"/>
                    <fo:table-column column-width="3.8cm"/>
                    <fo:table-column column-width="3.8cm"/>
                    <fo:table-body>
                        <fo:table-row>
                            <xsl:call-template name="tablaheadverticaldestacado">
                                <xsl:with-param name="texto" select="'Nº Cuenta'" />
                            </xsl:call-template>
                            <xsl:call-template name="tablaheadverticaldestacado">
                                <xsl:with-param name="texto" select="'Saldo Disponible'" />
                            </xsl:call-template>
                            <xsl:call-template name="tablaheadverticaldestacado">
                                <xsl:with-param name="texto" select="'Saldo Contable'" />
                            </xsl:call-template>
                            <xsl:call-template name="tablaheadverticaldestacado">
                                <xsl:with-param name="texto" select="'Retenciones'" />
                            </xsl:call-template>
                            <xsl:call-template name="tablaheadverticaldestacado">
                                <xsl:with-param name="texto" select="'4 Últimos Cheques'" />
                            </xsl:call-template>
                        </fo:table-row>
                        <xsl:for-each select="relojEverest/productosVigentes/cuentasCorrientesMonedaExtranjera/cuenta">
                            <fo:table-row>
                                <xsl:call-template name="tablaceldadatotexto">
                                    <xsl:with-param name="texto" select="numeroCuenta" />
                                </xsl:call-template>
                                <xsl:call-template name="tablaceldadatotexto">
                                    <xsl:with-param name="texto" select="concat('$ ', saldoDisponible)" />
                                </xsl:call-template>
                                <xsl:call-template name="tablaceldadatotexto">
                                    <xsl:with-param name="texto" select="concat('$ ', saldoContable)" />
                                </xsl:call-template>
                                <xsl:call-template name="tablaceldadatotexto">
                                    <xsl:with-param name="texto" select="concat('$ ', retenciones)" />
                                </xsl:call-template>
                                <xsl:call-template name="tablaceldadatotexto">
                                    <xsl:with-param name="texto" select="ultimosCheques" />
                                </xsl:call-template>
                            </fo:table-row>
                        </xsl:for-each>
                    </fo:table-body>
                </fo:table>
            </xsl:when>
            <xsl:when test="relojEverest/productosVigentes/cuentasCorrientesMonedaExtranjera/mensaje">
                <xsl:call-template name="subtitulomin">
                    <xsl:with-param name="texto" select="'CUENTA CORRIENTE MONEDA EXTRANJERA'" />
                </xsl:call-template>
                <xsl:call-template name="mensaje">
                    <xsl:with-param name="texto" select="relojEverest/productosVigentes/cuentasCorrientesMonedaExtranjera/mensaje" />
                </xsl:call-template>
            </xsl:when>
        </xsl:choose>
        <xsl:choose>
            <xsl:when test="relojEverest/productosVigentes/cuentasTransfer/cuenta">
                <xsl:call-template name="subtitulomin">
                    <xsl:with-param name="texto" select="'CUENTA TRANSFER'" />
                </xsl:call-template>
                <fo:table text-align="left" table-layout="fixed">
                    <fo:table-column column-width="6.34cm"/>
                    <fo:table-column column-width="6.33cm"/>
                    <fo:table-column column-width="6.33cm"/>
                    <fo:table-body>
                        <fo:table-row>
                            <xsl:call-template name="tablaheadverticaldestacado">
                                <xsl:with-param name="texto" select="'Nº Cuenta'" />
                            </xsl:call-template>
                            <xsl:call-template name="tablaheadverticaldestacado">
                                <xsl:with-param name="texto" select="'Saldo Disponible'" />
                            </xsl:call-template>
                            <xsl:call-template name="tablaheadverticaldestacado">
                                <xsl:with-param name="texto" select="'Saldo Contable'" />
                            </xsl:call-template>
                        </fo:table-row>
                        <xsl:for-each select="relojEverest/productosVigentes/cuentasTransfer/cuenta">
                            <fo:table-row>
                                <xsl:call-template name="tablaceldadatotexto">
                                    <xsl:with-param name="texto" select="numeroCuenta" />
                                </xsl:call-template>
                                <xsl:call-template name="tablaceldadatotexto">
                                    <xsl:with-param name="texto" select="concat('$ ', saldoDisponible)" />
                                </xsl:call-template>
                                <xsl:call-template name="tablaceldadatotexto">
                                    <xsl:with-param name="texto" select="concat('$ ', saldoContable)" />
                                </xsl:call-template>
                            </fo:table-row>
                        </xsl:for-each>
                    </fo:table-body>
                </fo:table>
            </xsl:when>
            <xsl:when test="relojEverest/productosVigentes/cuentasTransfer/mensaje">
                <xsl:call-template name="subtitulomin">
                    <xsl:with-param name="texto" select="'CUENTA TRANSFER'" />
                </xsl:call-template>
                <xsl:call-template name="mensaje">
                    <xsl:with-param name="texto" select="relojEverest/productosVigentes/cuentasTransfer/mensaje" />
                </xsl:call-template>
            </xsl:when>
        </xsl:choose>
        <xsl:choose>
            <xsl:when test="relojEverest/productosVigentes/cuentasPrimas/cuenta">
                <xsl:call-template name="subtitulomin">
                    <xsl:with-param name="texto" select="'CUENTA PRIMA'" />
                </xsl:call-template>
                <fo:table text-align="left" table-layout="fixed">
                    <fo:table-column column-width="4.75cm"/>
                    <fo:table-column column-width="4.75cm"/>
                    <fo:table-column column-width="4.75cm"/>
                    <fo:table-column column-width="4.75cm"/>
                    <fo:table-body>
                        <fo:table-row>
                            <xsl:call-template name="tablaheadverticaldestacado">
                                <xsl:with-param name="texto" select="'Nº Cuenta'" />
                            </xsl:call-template>
                            <xsl:call-template name="tablaheadverticaldestacado">
                                <xsl:with-param name="texto" select="'Saldo Disponible'" />
                            </xsl:call-template>
                            <xsl:call-template name="tablaheadverticaldestacado">
                                <xsl:with-param name="texto" select="'Saldo Contable'" />
                            </xsl:call-template>
                            <xsl:call-template name="tablaheadverticaldestacado">
                                <xsl:with-param name="texto" select="'Retenciones'" />
                            </xsl:call-template>
                        </fo:table-row>
                        <xsl:for-each select="relojEverest/productosVigentes/cuentasPrimas/cuenta">
                            <fo:table-row>
                                <xsl:call-template name="tablaceldadatotexto">
                                    <xsl:with-param name="texto" select="numeroCuenta" />
                                </xsl:call-template>
                                <xsl:call-template name="tablaceldadatotexto">
                                    <xsl:with-param name="texto" select="concat('$ ', saldoDisponible)" />
                                </xsl:call-template>
                                <xsl:call-template name="tablaceldadatotexto">
                                    <xsl:with-param name="texto" select="concat('$ ', saldoContable)" />
                                </xsl:call-template>
                                <xsl:call-template name="tablaceldadatotexto">
                                    <xsl:with-param name="texto" select="concat('$ ', retenciones)" />
                                </xsl:call-template>
                            </fo:table-row>
                        </xsl:for-each>
                    </fo:table-body>
                </fo:table>
            </xsl:when>
            <xsl:when test="relojEverest/productosVigentes/cuentasPrimas/mensaje">
                <xsl:call-template name="subtitulomin">
                    <xsl:with-param name="texto" select="'CUENTA PRIMA'" />
                </xsl:call-template>
                <xsl:call-template name="mensaje">
                    <xsl:with-param name="texto" select="relojEverest/productosVigentes/cuentasPrimas/mensaje" />
                </xsl:call-template>
            </xsl:when>
        </xsl:choose>
        <xsl:choose>
            <xsl:when test="relojEverest/productosVigentes/tarjetasATM/tarjeta">
                <xsl:call-template name="subtitulomin">
                    <xsl:with-param name="texto" select="'TARJETA BCI'" />
                </xsl:call-template>
                <fo:table text-align="left" table-layout="fixed">
                    <fo:table-column column-width="3.8cm"/>
                    <fo:table-column column-width="3.8cm"/>
                    <fo:table-column column-width="3.8cm"/>
                    <fo:table-column column-width="3.8cm"/>
                    <fo:table-column column-width="3.8cm"/>
                    <fo:table-body>
                        <fo:table-row>
                            <xsl:call-template name="tablaheadverticaldestacado">
                                <xsl:with-param name="texto" select="'Nº Tarjeta'" />
                            </xsl:call-template>
                            <xsl:call-template name="tablaheadverticaldestacado">
                                <xsl:with-param name="texto" select="'RUT Usuario'" />
                            </xsl:call-template>
                            <xsl:call-template name="tablaheadverticaldestacado">
                                <xsl:with-param name="texto" select="'Estado'" />
                            </xsl:call-template>
                            <xsl:call-template name="tablaheadverticaldestacado">
                                <xsl:with-param name="texto" select="'Transantiago'" />
                            </xsl:call-template>
                            <xsl:call-template name="tablaheadverticaldestacado">
                                <xsl:with-param name="texto" select="'Clase'" />
                            </xsl:call-template>
                        </fo:table-row>
                        <xsl:for-each select="relojEverest/productosVigentes/tarjetasATM/tarjeta">
                            <fo:table-row>
                                <xsl:call-template name="tablaceldadatotexto">
                                    <xsl:with-param name="texto" select="numeroTarjeta" />
                                </xsl:call-template>
                                <xsl:call-template name="tablaceldadatotexto">
                                    <xsl:with-param name="texto" select="rutUsuario" />
                                </xsl:call-template>
                                <xsl:call-template name="tablaceldadatotexto">
                                    <xsl:with-param name="texto" select="estado" />
                                </xsl:call-template>
                                <xsl:call-template name="tablaceldadatotexto">
                                    <xsl:with-param name="texto" select="transantiago" />
                                </xsl:call-template>
                                <xsl:call-template name="tablaceldadatotexto">
                                    <xsl:with-param name="texto" select="clase" />
                                </xsl:call-template>
                            </fo:table-row>
                        </xsl:for-each>
                    </fo:table-body>
                </fo:table>
            </xsl:when>
            <xsl:when test="relojEverest/productosVigentes/tarjetasATM/mensaje">
                <xsl:call-template name="subtitulomin">
                    <xsl:with-param name="texto" select="'TARJETA BCI'" />
                </xsl:call-template>
                <xsl:call-template name="mensaje">
                    <xsl:with-param name="texto" select="relojEverest/productosVigentes/tarjetasATM/mensaje" />
                </xsl:call-template>
            </xsl:when>
        </xsl:choose>
        <xsl:choose>
            <xsl:when test="relojEverest/productosVigentes/lineasSobregiro/linea">
                <xsl:call-template name="subtitulomin">
                    <xsl:with-param name="texto" select="'LÍNEA DE SOBREGIRO'" />
                </xsl:call-template>
                <fo:table text-align="left" table-layout="fixed">
                    <fo:table-column column-width="4cm"/>
                    <fo:table-column column-width="3cm"/>
                    <fo:table-column column-width="3cm"/>
                    <fo:table-column column-width="3cm"/>
                    <fo:table-column column-width="3cm"/>
                    <fo:table-column column-width="3cm"/>
                    <fo:table-body>
                        <fo:table-row>
                            <xsl:call-template name="tablaheadverticaldestacado">
                                <xsl:with-param name="texto" select="'Nº Cuenta'" />
                            </xsl:call-template>
                            <xsl:call-template name="tablaheadverticaldestacado">
                                <xsl:with-param name="texto" select="'Cta. Cte.'" />
                            </xsl:call-template>
                            <xsl:call-template name="tablaheadverticaldestacado">
                                <xsl:with-param name="texto" select="'Valor Autorizado'" />
                            </xsl:call-template>
                            <xsl:call-template name="tablaheadverticaldestacado">
                                <xsl:with-param name="texto" select="'Monto Utilizado'" />
                            </xsl:call-template>
                            <xsl:call-template name="tablaheadverticaldestacado">
                                <xsl:with-param name="texto" select="'Intereses Diarios'" />
                            </xsl:call-template>
                            <xsl:call-template name="tablaheadverticaldestacado">
                                <xsl:with-param name="texto" select="'Fecha de Vencimiento'" />
                            </xsl:call-template>
                        </fo:table-row>
                        <xsl:for-each select="relojEverest/productosVigentes/lineasSobregiro/linea">
                            <fo:table-row>
                                <xsl:call-template name="tablaceldadatotexto">
                                    <xsl:with-param name="texto" select="numeroCuenta" />
                                </xsl:call-template>
                                <xsl:call-template name="tablaceldadatotexto">
                                    <xsl:with-param name="texto" select="cuentaCorriente" />
                                </xsl:call-template>
                                <xsl:call-template name="tablaceldadatotexto">
                                    <xsl:with-param name="texto" select="concat('$ ', valorAutorizado)" />
                                </xsl:call-template>
                                <xsl:call-template name="tablaceldadatotexto">
                                    <xsl:with-param name="texto" select="concat('$ ', montoUtilizado)" />
                                </xsl:call-template>
                                <xsl:call-template name="tablaceldadatotexto">
                                    <xsl:with-param name="texto" select="concat('$ ', interesesDiarios)" />
                                </xsl:call-template>
                                <xsl:call-template name="tablaceldadatotexto">
                                    <xsl:with-param name="texto" select="fechaVencimiento" />
                                </xsl:call-template>
                            </fo:table-row>
                        </xsl:for-each>
                    </fo:table-body>
                </fo:table>
            </xsl:when>
            <xsl:when test="relojEverest/productosVigentes/lineasSobregiro/mensaje">
                <xsl:call-template name="subtitulomin">
                    <xsl:with-param name="texto" select="'LÍNEA DE SOBREGIRO'" />
                </xsl:call-template>
                <xsl:call-template name="mensaje">
                    <xsl:with-param name="texto" select="relojEverest/productosVigentes/lineasSobregiro/mensaje" />
                </xsl:call-template>
            </xsl:when>
        </xsl:choose>
        <xsl:choose>
            <xsl:when test="relojEverest/productosVigentes/creditosMonedaNacional/credito">
                <xsl:call-template name="subtitulomin">
                    <xsl:with-param name="texto" select="'CRÉDITOS VIGENTES MONEDA NACIONAL'" />
                </xsl:call-template>
                <fo:table text-align="left" table-layout="fixed">
                    <fo:table-column column-width="2.375cm"/>
                    <fo:table-column column-width="2.375cm"/>
                    <fo:table-column column-width="2.375cm"/>
                    <fo:table-column column-width="2.375cm"/>
                    <fo:table-column column-width="2.375cm"/>
                    <fo:table-column column-width="2.375cm"/>
                    <fo:table-column column-width="2.375cm"/>
                    <fo:table-column column-width="2.375cm"/>
                    <fo:table-body>
                        <fo:table-row>
                            <xsl:call-template name="tablaheadverticaldestacado">
                                <xsl:with-param name="texto" select="'Nº Crédito'" />
                            </xsl:call-template>
                            <xsl:call-template name="tablaheadverticaldestacado">
                                <xsl:with-param name="texto" select="'Descripción'" />
                            </xsl:call-template>
                            <xsl:call-template name="tablaheadverticaldestacado">
                                <xsl:with-param name="texto" select="'Moneda'" />
                            </xsl:call-template>
                            <xsl:call-template name="tablaheadverticaldestacado">
                                <xsl:with-param name="texto" select="'Monto del Crédito'" />
                            </xsl:call-template>
                            <xsl:call-template name="tablaheadverticaldestacado">
                                <xsl:with-param name="texto" select="'Saldo a la Fecha'" />
                            </xsl:call-template>
                            <xsl:call-template name="tablaheadverticaldestacado">
                                <xsl:with-param name="texto" select="'Monto Cuota'" />
                            </xsl:call-template>
                            <xsl:call-template name="tablaheadverticaldestacado">
                                <xsl:with-param name="texto" select="'Fecha de Vcto.'" />
                            </xsl:call-template>
                            <xsl:call-template name="tablaheadverticaldestacado">
                                <xsl:with-param name="texto" select="'Cuotas Pagadas / Total'" />
                            </xsl:call-template>
                        </fo:table-row>
                        <xsl:for-each select="relojEverest/productosVigentes/creditosMonedaNacional/credito">
                            <fo:table-row>
                                <xsl:call-template name="tablaceldadatotexto">
                                    <xsl:with-param name="texto" select="numeroCredito" />
                                </xsl:call-template>
                                <xsl:call-template name="tablaceldadatotexto">
                                    <xsl:with-param name="texto" select="descripcion" />
                                </xsl:call-template>
                                <xsl:call-template name="tablaceldadatotexto">
                                    <xsl:with-param name="texto" select="moneda" />
                                </xsl:call-template>
                                <xsl:call-template name="tablaceldadatotexto">
                                    <xsl:with-param name="texto" select="montoCredito" />
                                </xsl:call-template>
                                <xsl:call-template name="tablaceldadatotexto">
                                    <xsl:with-param name="texto" select="saldoALaFecha" />
                                </xsl:call-template>
                                <xsl:call-template name="tablaceldadatotexto">
                                    <xsl:with-param name="texto" select="montoCuota" />
                                </xsl:call-template>
                                <xsl:call-template name="tablaceldadatotexto">
                                    <xsl:with-param name="texto" select="fechaVencimiento" />
                                </xsl:call-template>
                                <xsl:call-template name="tablaceldadatotexto">
                                    <xsl:with-param name="texto" select="concat(cuotasPagadas, ' / ', totalCuotas)" />
                                </xsl:call-template>
                            </fo:table-row>
                        </xsl:for-each>
                    </fo:table-body>
                </fo:table>
            </xsl:when>
            <xsl:when test="relojEverest/productosVigentes/creditosMonedaNacional/mensaje">
                <xsl:call-template name="subtitulomin">
                    <xsl:with-param name="texto" select="'CRÉDITOS VIGENTES MONEDA NACIONAL'" />
                </xsl:call-template>
                <xsl:call-template name="mensaje">
                    <xsl:with-param name="texto" select="relojEverest/productosVigentes/creditosMonedaNacional/mensaje" />
                </xsl:call-template>
            </xsl:when>
        </xsl:choose>
        <xsl:choose>
            <xsl:when test="relojEverest/productosVigentes/creditosMonedaExtranjera/credito">
                <xsl:call-template name="subtitulomin">
                    <xsl:with-param name="texto" select="'CRÉDITOS VIGENTES MONEDA EXTRANJERA'" />
                </xsl:call-template>
                <fo:table text-align="left" table-layout="fixed">
                    <fo:table-column column-width="1.9cm"/>
                    <fo:table-column column-width="1.9cm"/>
                    <fo:table-column column-width="1.9cm"/>
                    <fo:table-column column-width="1.9cm"/>
                    <fo:table-column column-width="1.9cm"/>
                    <fo:table-column column-width="1.9cm"/>
                    <fo:table-column column-width="1.9cm"/>
                    <fo:table-column column-width="1.9cm"/>
                    <fo:table-column column-width="1.9cm"/>
                    <fo:table-column column-width="1.9cm"/>
                    <fo:table-body>
                        <fo:table-row>
                            <xsl:call-template name="tablaheadverticaldestacado">
                                <xsl:with-param name="texto" select="'Nº Crédito'" />
                            </xsl:call-template>
                            <xsl:call-template name="tablaheadverticaldestacado">
                                <xsl:with-param name="texto" select="'Tipo'" />
                            </xsl:call-template>
                            <xsl:call-template name="tablaheadverticaldestacado">
                                <xsl:with-param name="texto" select="'Moneda'" />
                            </xsl:call-template>
                            <xsl:call-template name="tablaheadverticaldestacado">
                                <xsl:with-param name="texto" select="'Monto Cuota'" />
                            </xsl:call-template>
                            <xsl:call-template name="tablaheadverticaldestacado">
                                <xsl:with-param name="texto" select="'Cuota en US$'" />
                            </xsl:call-template>
                            <xsl:call-template name="tablaheadverticaldestacado">
                                <xsl:with-param name="texto" select="'Saldo Total US$'" />
                            </xsl:call-template>
                            <xsl:call-template name="tablaheadverticaldestacado">
                                <xsl:with-param name="texto" select="'F.Inicio'" />
                            </xsl:call-template>
                            <xsl:call-template name="tablaheadverticaldestacado">
                                <xsl:with-param name="texto" select="'Tasa'" />
                            </xsl:call-template>
                            <xsl:call-template name="tablaheadverticaldestacado">
                                <xsl:with-param name="texto" select="'Intereses US$'" />
                            </xsl:call-template>
                            <xsl:call-template name="tablaheadverticaldestacado">
                                <xsl:with-param name="texto" select="'Costos US$'" />
                            </xsl:call-template>
                        </fo:table-row>
                        <xsl:for-each select="relojEverest/productosVigentes/creditosMonedaExtranjera/credito">
                            <fo:table-row>
                                <xsl:call-template name="tablaceldadatotexto">
                                    <xsl:with-param name="texto" select="numeroCredito" />
                                </xsl:call-template>
                                <xsl:call-template name="tablaceldadatotexto">
                                    <xsl:with-param name="texto" select="tipo" />
                                </xsl:call-template>
                                <xsl:call-template name="tablaceldadatotexto">
                                    <xsl:with-param name="texto" select="moneda" />
                                </xsl:call-template>
                                <xsl:call-template name="tablaceldadatotexto">
                                    <xsl:with-param name="texto" select="montoCuota" />
                                </xsl:call-template>
                                <xsl:call-template name="tablaceldadatotexto">
                                    <xsl:with-param name="texto" select="cuotaDolares" />
                                </xsl:call-template>
                                <xsl:call-template name="tablaceldadatotexto">
                                    <xsl:with-param name="texto" select="saldoTotalDolares" />
                                </xsl:call-template>
                                <xsl:call-template name="tablaceldadatotexto">
                                    <xsl:with-param name="texto" select="fechaInicio" />
                                </xsl:call-template>
                                <xsl:call-template name="tablaceldadatotexto">
                                    <xsl:with-param name="texto" select="tasa" />
                                </xsl:call-template>
                                <xsl:call-template name="tablaceldadatotexto">
                                    <xsl:with-param name="texto" select="interesesDolares" />
                                </xsl:call-template>
                                <xsl:call-template name="tablaceldadatotexto">
                                    <xsl:with-param name="texto" select="costosDolar" />
                                </xsl:call-template>
                            </fo:table-row>
                        </xsl:for-each>
                    </fo:table-body>
                </fo:table>
            </xsl:when>
            <xsl:when test="relojEverest/productosVigentes/creditosMonedaExtranjera/mensaje">
                <xsl:call-template name="subtitulomin">
                    <xsl:with-param name="texto" select="'CRÉDITOS VIGENTES MONEDA EXTRANJERA'" />
                </xsl:call-template>
                <xsl:call-template name="mensaje">
                    <xsl:with-param name="texto" select="relojEverest/productosVigentes/creditosMonedaExtranjera/mensaje" />
                </xsl:call-template>
            </xsl:when>
        </xsl:choose>
        <xsl:choose>
            <xsl:when test="relojEverest/productosVigentes/creditosHipotecarios/credito">
                <xsl:call-template name="subtitulomin">
                    <xsl:with-param name="texto" select="'CRÉDITOS HIPOTECARIOS'" />
                </xsl:call-template>
                <fo:table text-align="left" table-layout="fixed">
                    <fo:table-column column-width="6.38cm"/>
                    <fo:table-column column-width="6.36cm"/>
                    <fo:table-column column-width="6.36cm"/>
                    <fo:table-body>
                        <fo:table-row>
                            <xsl:call-template name="tablaheadverticaldestacado">
                                <xsl:with-param name="texto" select="'Nº de Operación'" />
                            </xsl:call-template>
                            <xsl:call-template name="tablaheadverticaldestacado">
                                <xsl:with-param name="texto" select="'Producto'" />
                            </xsl:call-template>
                            <xsl:call-template name="tablaheadverticaldestacado">
                                <xsl:with-param name="texto" select="'Estado'" />
                            </xsl:call-template>
                        </fo:table-row>
                        <xsl:for-each select="relojEverest/productosVigentes/creditosHipotecarios/credito">
                            <fo:table-row>
                                <xsl:call-template name="tablaceldadatotexto">
                                    <xsl:with-param name="texto" select="numeroOperacion" />
                                </xsl:call-template>
                                <xsl:call-template name="tablaceldadatotexto">
                                    <xsl:with-param name="texto" select="producto" />
                                </xsl:call-template>
                                <xsl:call-template name="tablaceldadatotexto">
                                    <xsl:with-param name="texto" select="estado" />
                                </xsl:call-template>
                            </fo:table-row>
                        </xsl:for-each> 
                    </fo:table-body>
                </fo:table>
            </xsl:when>
            <xsl:when test="relojEverest/productosVigentes/creditosHipotecarios/mensaje">
                <xsl:call-template name="subtitulomin">
                    <xsl:with-param name="texto" select="'CRÉDITOS HIPOTECARIOS'" />
                </xsl:call-template>
                <xsl:call-template name="mensaje">
                    <xsl:with-param name="texto" select="relojEverest/productosVigentes/creditosHipotecarios/mensaje" />
                </xsl:call-template>
            </xsl:when>
        </xsl:choose>
        <xsl:choose>
            <xsl:when test="relojEverest/productosVigentes/tarjetasCredito/tarjeta">
                <xsl:call-template name="subtitulomin">
                    <xsl:with-param name="texto" select="'TARJETA DE CRÉDITO'" />
                </xsl:call-template>
                <fo:table text-align="left" table-layout="fixed">
                    <fo:table-column column-width="3.17cm"/>
                    <fo:table-column column-width="3.17cm"/>
                    <fo:table-column column-width="3.16cm"/>
                    <fo:table-column column-width="3.17cm"/>
                    <fo:table-column column-width="3.17cm"/>
                    <fo:table-column column-width="3.16cm"/>
                    <fo:table-body>
                        <fo:table-row>
                            <xsl:call-template name="tablaheadverticaldestacado">
                                <xsl:with-param name="texto" select="'Descripción'" />
                            </xsl:call-template>
                            <xsl:call-template name="tablaheadverticaldestacado">
                                <xsl:with-param name="texto" select="'Nº Tarjeta'" />
                            </xsl:call-template>
                            <xsl:call-template name="tablaheadverticaldestacado">
                                <xsl:with-param name="texto" select="'Tipo de Cliente'" />
                            </xsl:call-template>
                            <xsl:call-template name="tablaheadverticaldestacado">
                                <xsl:with-param name="texto" select="'Estado Cuenta'" />
                            </xsl:call-template>
                            <xsl:call-template name="tablaheadverticaldestacado">
                                <xsl:with-param name="texto" select="'Bloqueo Cuenta'" />
                            </xsl:call-template>
                            <xsl:call-template name="tablaheadverticaldestacado">
                                <xsl:with-param name="texto" select="'Fecha de Activación'" />
                            </xsl:call-template>
                        </fo:table-row>
                        <xsl:for-each select="relojEverest/productosVigentes/tarjetasCredito/tarjeta">
                            <fo:table-row>
                                <xsl:call-template name="tablaceldadatotexto">
                                    <xsl:with-param name="texto" select="descripcion" />
                                </xsl:call-template>
                                <xsl:call-template name="tablaceldadatotexto">
                                    <xsl:with-param name="texto" select="numeroTarjeta" />
                                </xsl:call-template>
                                <xsl:call-template name="tablaceldadatotexto">
                                    <xsl:with-param name="texto" select="tipoCliente" />
                                </xsl:call-template>
                                <xsl:call-template name="tablaceldadatotexto">
                                    <xsl:with-param name="texto" select="estado" />
                                </xsl:call-template>
                                <xsl:call-template name="tablaceldadatotexto">
                                    <xsl:with-param name="texto" select="glosaBloqueo" />
                                </xsl:call-template>
                                <xsl:call-template name="tablaceldadatotexto">
                                    <xsl:with-param name="texto" select="fechaActivacion" />
                                </xsl:call-template>
                            </fo:table-row>
                        </xsl:for-each>
                    </fo:table-body>
                </fo:table>
            </xsl:when>
            <xsl:when test="relojEverest/productosVigentes/tarjetasCredito/mensaje">
                <xsl:call-template name="subtitulomin">
                    <xsl:with-param name="texto" select="'TARJETA DE CRÉDITO'" />
                </xsl:call-template>
                <xsl:call-template name="mensaje">
                    <xsl:with-param name="texto" select="relojEverest/productosVigentes/tarjetasCredito/mensaje" />
                </xsl:call-template>
            </xsl:when>
        </xsl:choose>
        <xsl:choose>
            <xsl:when test="relojEverest/productosVigentes/pagosAutomaticosCuenta/pago">
                <xsl:call-template name="subtitulomin">
                    <xsl:with-param name="texto" select="'PAC - PAGO AUTOMATICO DE CUENTAS (Autorizado en Banco)'" />
                </xsl:call-template>
                <fo:table text-align="left" table-layout="fixed">
                    <fo:table-column column-width="3.8cm"/>
                    <fo:table-column column-width="3.8cm"/>
                    <fo:table-column column-width="3.8cm"/>
                    <fo:table-column column-width="3.8cm"/>
                    <fo:table-column column-width="3.8cm"/>
                    <fo:table-body>
                        <fo:table-row>
                            <xsl:call-template name="tablaheadverticaldestacado">
                                <xsl:with-param name="texto" select="'Nº Convenio'" />
                            </xsl:call-template>
                            <xsl:call-template name="tablaheadverticaldestacado">
                                <xsl:with-param name="texto" select="'Compañía'" />
                            </xsl:call-template>
                            <xsl:call-template name="tablaheadverticaldestacado">
                                <xsl:with-param name="texto" select="'Cuenta Corriente de Cargo'" />
                            </xsl:call-template>
                            <xsl:call-template name="tablaheadverticaldestacado">
                                <xsl:with-param name="texto" select="'Monto Máximo en UF'" />
                            </xsl:call-template>
                            <xsl:call-template name="tablaheadverticaldestacado">
                                <xsl:with-param name="texto" select="'Fecha de Ingreso'" />
                            </xsl:call-template>
                        </fo:table-row>
                        <xsl:for-each select="relojEverest/productosVigentes/pagosAutomaticosCuenta/pago">
                            <fo:table-row>
                                <xsl:call-template name="tablaceldadatotexto">
                                    <xsl:with-param name="texto" select="numeroConvenio" />
                                </xsl:call-template>
                                <xsl:call-template name="tablaceldadatotexto">
                                    <xsl:with-param name="texto" select="compania" />
                                </xsl:call-template>
                                <xsl:call-template name="tablaceldadatotexto">
                                    <xsl:with-param name="texto" select="cuentaCorrienteCargo" />
                                </xsl:call-template>
                                <xsl:call-template name="tablaceldadatotexto">
                                    <xsl:with-param name="texto" select="montoMaximoUF" />
                                </xsl:call-template>
                                <xsl:call-template name="tablaceldadatotexto">
                                    <xsl:with-param name="texto" select="fechaIngreso" />
                                </xsl:call-template>
                            </fo:table-row>
                        </xsl:for-each>
                    </fo:table-body>
                </fo:table>
            </xsl:when>
            <xsl:when test="relojEverest/productosVigentes/pagosAutomaticosCuenta/mensaje">
                <xsl:call-template name="subtitulomin">
                    <xsl:with-param name="texto" select="'PAC - PAGO AUTOMATICO DE CUENTAS (Autorizado en Banco)'" />
                </xsl:call-template>
                <xsl:call-template name="mensaje">
                    <xsl:with-param name="texto" select="relojEverest/productosVigentes/pagosAutomaticosCuenta/mensaje" />
                </xsl:call-template>
            </xsl:when>
        </xsl:choose>
        <xsl:choose>
            <xsl:when test="relojEverest/productosVigentes/seguros/seguro">
                <xsl:call-template name="subtitulomin">
                    <xsl:with-param name="texto" select="'BCI SEGUROS'" />
                </xsl:call-template>
                <fo:table text-align="left" table-layout="fixed">
                    <fo:table-column column-width="2.375cm"/>
                    <fo:table-column column-width="2.375cm"/>
                    <fo:table-column column-width="2.375cm"/>
                    <fo:table-column column-width="2.375cm"/>
                    <fo:table-column column-width="2.375cm"/>
                    <fo:table-column column-width="2.375cm"/>
                    <fo:table-column column-width="2.375cm"/>
                    <fo:table-column column-width="2.375cm"/>
                    <fo:table-body>
                        <fo:table-row>
                            <xsl:call-template name="tablaheadverticaldestacado">
                                <xsl:with-param name="texto" select="'Código Producto'" />
                            </xsl:call-template>
                            <xsl:call-template name="tablaheadverticaldestacado">
                                <xsl:with-param name="texto" select="'Tipo de Seguro'" />
                            </xsl:call-template>
                            <xsl:call-template name="tablaheadverticaldestacado">
                                <xsl:with-param name="texto" select="'Glosa del Producto'" />
                            </xsl:call-template>
                            <xsl:call-template name="tablaheadverticaldestacado">
                                <xsl:with-param name="texto" select="'Número de Poliza'" />
                            </xsl:call-template>
                            <xsl:call-template name="tablaheadverticaldestacado">
                                <xsl:with-param name="texto" select="'Fecha de Operación'" />
                            </xsl:call-template>
                            <xsl:call-template name="tablaheadverticaldestacado">
                                <xsl:with-param name="texto" select="'Fecha de Póliza'" />
                            </xsl:call-template>
                            <xsl:call-template name="tablaheadverticaldestacado">
                                <xsl:with-param name="texto" select="'Prima'" />
                            </xsl:call-template>
                            <xsl:call-template name="tablaheadverticaldestacado">
                                <xsl:with-param name="texto" select="'Estado'" />
                            </xsl:call-template>
                        </fo:table-row>
                        <xsl:for-each select="relojEverest/productosVigentes/seguros/seguro">
                            <fo:table-row>
                                <xsl:call-template name="tablaceldadatotexto">
                                    <xsl:with-param name="texto" select="codigoProducto" />
                                </xsl:call-template>
                                <xsl:call-template name="tablaceldadatotexto">
                                    <xsl:with-param name="texto" select="tipoSeguro" />
                                </xsl:call-template>
                                <xsl:call-template name="tablaceldadatotexto">
                                    <xsl:with-param name="texto" select="glosaProducto" />
                                </xsl:call-template>
                                <xsl:call-template name="tablaceldadatotexto">
                                    <xsl:with-param name="texto" select="numeroPoliza" />
                                </xsl:call-template>
                                <xsl:call-template name="tablaceldadatotexto">
                                    <xsl:with-param name="texto" select="fechaOperacion" />
                                </xsl:call-template>
                                <xsl:call-template name="tablaceldadatotexto">
                                    <xsl:with-param name="texto" select="fechaPoliza" />
                                </xsl:call-template>
                                <xsl:call-template name="tablaceldadatotexto">
                                    <xsl:with-param name="texto" select="prima" />
                                </xsl:call-template>
                                <xsl:call-template name="tablaceldadatotexto">
                                    <xsl:with-param name="texto" select="estado" />
                                </xsl:call-template>
                            </fo:table-row>
                        </xsl:for-each>
                    </fo:table-body>
                </fo:table>
            </xsl:when>
            <xsl:when test="relojEverest/productosVigentes/seguros/mensaje">
                <xsl:call-template name="subtitulomin">
                    <xsl:with-param name="texto" select="'BCI SEGUROS'" />
                </xsl:call-template>
                <xsl:call-template name="mensaje">
                    <xsl:with-param name="texto" select="relojEverest/productosVigentes/seguros/mensaje" />
                </xsl:call-template>
            </xsl:when>
        </xsl:choose>
        <xsl:choose>
            <xsl:when test="relojEverest/productosVigentes/inversiones/inversion">
                <xsl:call-template name="subtitulomin">
                    <xsl:with-param name="texto" select="'INVERSIONES'" />
                </xsl:call-template>
                <fo:table text-align="left" table-layout="fixed">
                    <fo:table-column column-width="4.75cm"/>
                    <fo:table-column column-width="4.75cm"/>
                    <fo:table-column column-width="4.75cm"/>
                    <fo:table-column column-width="4.75cm"/>
                    <fo:table-body>
                        <fo:table-row>
                            <xsl:call-template name="tablaheadverticaldestacado">
                                <xsl:with-param name="texto" select="'Productos'" />
                            </xsl:call-template>
                            <xsl:call-template name="tablaheadverticaldestacado">
                                <xsl:with-param name="texto" select="'Moneda'" />
                            </xsl:call-template>
                            <xsl:call-template name="tablaheadverticaldestacado">
                                <xsl:with-param name="texto" select="'Monto'" />
                            </xsl:call-template>
                            <xsl:call-template name="tablaheadverticaldestacado">
                                <xsl:with-param name="texto" select="'Total Pesos'" />
                            </xsl:call-template>
                        </fo:table-row>
                        <xsl:for-each select="relojEverest/productosVigentes/inversiones/inversion">
                            <fo:table-row>
                                <xsl:call-template name="tablaceldadatotexto">
                                    <xsl:with-param name="texto" select="producto" />
                                </xsl:call-template>
                                <xsl:call-template name="tablaceldadatotexto">
                                    <xsl:with-param name="texto" select="moneda" />
                                </xsl:call-template>
                                <xsl:call-template name="tablaceldadatotexto">
                                    <xsl:with-param name="texto" select="monto" />
                                </xsl:call-template>
                                <xsl:call-template name="tablaceldadatotexto">
                                    <xsl:with-param name="texto" select="totalPesos" />
                                </xsl:call-template>
                            </fo:table-row>
                        </xsl:for-each>
                        <fo:table-row>
                            <xsl:call-template name="tablaceldadatotexto">
                                <xsl:with-param name="texto" select="'   '" />
                            </xsl:call-template>
                            <xsl:call-template name="tablaceldadatotexto">
                                <xsl:with-param name="texto" select="'   '" />
                            </xsl:call-template>
                            <xsl:call-template name="tablaceldadatotexto">
                                <xsl:with-param name="texto" select="'Total: '" />
                            </xsl:call-template>
                            <xsl:call-template name="tablaceldadatotexto">
                                <xsl:with-param name="texto" select="relojEverest/productosVigentes/inversiones/totalInversiones" />
                            </xsl:call-template>
                        </fo:table-row>
                    </fo:table-body>
                </fo:table>
            </xsl:when>
            <xsl:when test="relojEverest/productosVigentes/inversiones/mensaje">
                <xsl:call-template name="subtitulomin">
                    <xsl:with-param name="texto" select="'INVERSIONES'" />
                </xsl:call-template>
                <xsl:call-template name="mensaje">
                    <xsl:with-param name="texto" select="relojEverest/productosVigentes/inversiones/mensaje" />
                </xsl:call-template>
            </xsl:when>
        </xsl:choose>
    </xsl:template>
</xsl:stylesheet>