<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:param name="canal"/>
    <xsl:param name="logo"/>
    <xsl:param name="banner"/>
    <xsl:param name="accionBanner"/>
    <xsl:output method="html" omit-xml-declaration="yes"
                doctype-public="-//W3C//DTD XHTML 1.0 Transitional//EN"
                doctype-system="http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"
                indent="yes"/>
    <xsl:template match="comprobante">
        <html xmlns="http://www.w3.org/1999/xhtml">
            <head>
                <meta http-equiv="Content-Type" content="text/html;charset=UTF-8"/>
                <title>Bci Personas</title>
                <style>
                    table td.shrink {
                    white-space:nowrap
                    }
                    table td.expand {
                    width: 99%
                    }
                    table td.bottom {
                    vertical-align: bottom
                    }
                </style>
            </head>
            <body>
                <table cellpadding="0" cellspacing="0"
                       style="background:#e2e8ea;width:100%;font-family: sans-serif;font-size: 13px;padding-bottom: 30px;">
                    <xsl:if test="(datosCorreo/tipoCredito != 'COM719')">
                        <tr>
                            <td>
                                <table align="center" cellpadding="0" cellspacing="0"
                                       style="color: #546e7a;width:620px;height:71px;margin-bottom: 29px; margin-top: 40px;">
                                    <tbody>
                                        <tr>
                                            <td class="expand bottom"
                                                style="background-image: url('https://bci-share.s3.amazonaws.com/mail_pyme/logo-bci-transparente.png');background-repeat: no-repeat; background-position: right top; width: 100%;">
                                                <h2 style="font-size:23px;font-weight: lighter;margin: 0;">Crédito Comercial en Línea</h2>
                                            </td>
                                            <td class="shrink bottom"
                                                style="text-align: right;font-size: 24px;font-weight: lighter;padding-left: 5px; line-height: 64px; vertical-align: sub;">
                                                Empresarios
                                            </td>
                                        </tr>
                                    </tbody>
                                </table>
                            </td>
                        </tr>

                        <tr>
                            <td>
                                <table bgcolor="#ffffff" align="center" cellpadding="0" cellspacing="0"
                                       style="width:620px;border-collapse:collapse;">
                                    <tr>
                                        <td style="border-bottom:6px solid #29b34e;"></td>
                                        <td style="border-bottom:6px solid #f6363f;"></td>
                                        <td style="border-bottom:6px solid #2766ad;"></td>
                                        <td style="border-bottom:6px solid #ffe300;"></td>
                                    </tr>
                                </table>
                            </td>
                        </tr>

                        <tr>
                            <td>
                                <table bgcolor="#ffffff" align="center" cellpadding="0" cellspacing="0"
                                       style="width:620px;border-collapse:collapse;margin-bottom: 29px;">
                                    <tbody>
                                        <tr>
                                            <xsl:if test="(datosCorreo/margenVigente = 'false')">
                                                <td
                                                        style="font-size: 16px;background: #2772cc;color: white;padding: 34px;width: 620px;text-align: left;">
                                                    <p>
                                                        La línea <xsl:value-of select="datosCorreo/tipoCredito"/> tiene una fecha de vencimiento <xsl:value-of select="datosCorreo/fechaVencimientoLinea"/>  por lo que recomendamos regularizar vencimiento de la línea para que el cliente pueda cursar.
                                                    </p>
                                                </td>
                                            </xsl:if>
                                            <xsl:if test="(datosCorreo/cumpleVentasCAC = 'false')">
                                                <td
                                                        style="font-size: 16px;background: #2772cc;color: white;padding: 34px;width: 620px;text-align: left;">
                                                    <p>
                                                        Tu cliente simuló un <b>Crédito Comercial<xsl:if test="(datosCorreo/tipoCredito = 'COM159' or datosCorreo/tipoCredito = 'COM791')"> con Fogape</xsl:if></b>, pero no
                                                        cuenta con los niveles de venta actualizados en la CAC.
                                                    </p>
                                                    <small>
                                                        <b>Nota:</b> Actualizar ventas por concepto:
                                                        <b>nivventaslof</b>
                                                    </small>
                                                </td>

                                            </xsl:if>
                                            <xsl:if test="(datosCorreo/cumpleVentasCAC = 'true')">
                                                <td
                                                        style="font-size: 33px;background: #2772cc;color: white;padding: 34px;width: 620px;text-align: center;">
                                                    ¡Tu cliente ha <xsl:if
                                                        test="(datosCorreo/estado != 'Avance Efectuado')">simulado
                                                </xsl:if><xsl:if
                                                        test="(datosCorreo/estado = 'Avance Efectuado')">cursado</xsl:if> un Crédito Comercial<xsl:if test="(datosCorreo/tipoCredito = 'COM159' or datosCorreo/tipoCredito = 'COM791')"> con Fogape</xsl:if>!
                                                </td>
                                            </xsl:if>
                                        </tr>
                                    </tbody>
                                </table>
                            </td>
                        </tr>

                    </xsl:if>

                    <xsl:if test="(datosCorreo/tipoCredito = 'COM719')">
                        <xsl:if test="(datosCorreo/estado != 'Avance Efectuado')">
                            <tr>
                                <td>
                                    <table bgcolor="#ffffff" align="center" cellpadding="0" cellspacing="0"
                                           style="width:620px;border-collapse:collapse;margin-bottom: 29px;">
                                        <tbody>
                                            <tr>
                                                <td style="font-size: 33px;background: #2772cc;color: white;padding: 34px;width: 620px;text-align: center;">
                                                    ¡Tu cliente ha simulado un Crédito COVID-19 <xsl:if test="(datosCorreo/caiOperacionRenegociada != '')"> + Reprogramación</xsl:if>!
                                                </td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </td>
                            </tr>
                        </xsl:if>
                        <xsl:if test="(datosCorreo/estado = 'Avance Efectuado')">
                            <tr>
                                <td>
                                    <table bgcolor="#ffffff" align="center" cellpadding="0" cellspacing="0" style="width:620px;border-collapse:collapse;margin-bottom: 29px; margin-top: 10px; border-bottom: 7px solid #2772CC">
                                        <tbody>
                                            <tr>
                                                <td>
                                                    <table bgcolor="#ffffff" align="center" cellpadding="0" cellspacing="0" style="width:400px;border-collapse:collapse;margin-bottom: 29px; margin-top: 29px;">
                                                        <tr>
                                                            <td colspan="2">
                                                                <img src="https://bci.modyocdn.com/uploads/38afb33e-c286-4cdf-beeb-23fe30dfede2/original/circles_bci.png" alt="logo-bci" />
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td style="font-size: 26px; font-weight: bold;  color: #2772CC; ">
                                                                <img style="vertical-align: middle; height: 22px; margin-right: 10px;" src="https://bci.modyocdn.com/uploads/f7ff2b6a-2193-453f-92fe-b88e16c83a62/original/check-habilitador.png" />
                                                                ¡Curse Exitoso!
                                                            </td>
                                                            <td>
                                                                <table align="center" style="max-width: 150px;">
                                                                    <tr>
                                                                        <td style="font-size: 12px; text-align: center;">Contingencia</td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td style="font-size: 20px; text-align: center; font-weight: 100">Covid-19 <xsl:if test="(datosCorreo/caiOperacionRenegociada != '')"> + Reprogramación</xsl:if>
                                                                        </td>
                                                                    </tr>
                                                                </table>
                                                            </td>
                                                        </tr>
                                                    </table>
                                                </td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </td>
                            </tr>
                        </xsl:if>




                    </xsl:if>


                    <tr>
                        <td>
                            <table bgcolor="#ffffff" align="center" cellpadding="0" cellspacing="0"
                                   style="color:#8798a0;width:620px;border-collapse:collapse;box-shadow: 0 2px 4px 0 rgba(0,0,0,0.5);border-bottom: solid 1px #e2e8ea;">
                                <tr>
                                    <td style="padding: 20px; width: 20px; vertical-align: top;">
                                        <img src="https://bci-share.s3.amazonaws.com/mail_pyme/cliente.png" alt=""/>
                                    </td>
                                    <td>
                                        <table cellpadding="0" cellspacing="0"
                                               style="color:#8798a0;width: 100%;padding-top: 35px;padding-bottom: 35px;font-size: 13px;">
                                            <tr>
                                                <td colspan="3">
                                                    <h3 style="font-size:15px;font-weight: lighter;text-align: left; text-transform: uppercase;display: inline-block">
                                                        ANTECEDENTES DEL CLIENTE
                                                    </h3>
                                                    <xsl:if test="datosCorreo/esClienteCAR = '1'">
                                                        <img src="https://bci-share.s3.amazonaws.com/mail_pyme/cliente-CAR.png"
                                                             style="float:right"/>
                                                    </xsl:if>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td colspan="3" style="padding-right: 5px;">Nombre
                                                    <br/>
                                                    <strong style="color: #37474f; text-transform: uppercase;">
                                                        <xsl:value-of select="datosCorreo/nombreEmpresa"/>

                                                    </strong>

                                                </td>
                                            </tr>
                                            <tr>
                                                <td style="padding-bottom: 15px;"></td>
                                            </tr>
                                            <tr>
                                                <td colspan="3">Rut
                                                    <br/>
                                                    <strong style="color: #37474f;">
                                                        <xsl:value-of select="datosCorreo/rutEmpresa"/>
                                                    </strong>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td style="padding-bottom: 15px;"></td>
                                            </tr>
                                            <tr>
                                                <td width="250px">Oficina
                                                    <br/>
                                                    <strong style="color: #37474f; text-transform: uppercase;">
                                                        <xsl:value-of select="datosCorreo/glosaOficina"/>
                                                    </strong>
                                                </td>
                                                <td>Ejecutivo
                                                    <br/>
                                                    <strong style="color: #37474f; text-transform: uppercase;">
                                                        <xsl:value-of select="datosCorreo/codigoEjecutivo"/>
                                                    </strong>
                                                </td>
                                                <td>Banca
                                                    <br/>
                                                    <strong style="color: #37474f; text-transform: uppercase;">
                                                        <xsl:value-of select="datosCorreo/codBanca"/>
                                                    </strong>
                                                </td>
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>

                    <tr>
                        <td>
                            <table bgcolor="#ffffff" align="center" cellpadding="0" cellspacing="0"
                                   style="color:#8798a0;width:620px;border-collapse:collapse;box-shadow: 0 2px 4px 0 rgba(0,0,0,0.5);border-bottom: solid 1px #e2e8ea;">
                                <tr>
                                    <td style="padding: 20px; width: 20px; vertical-align: top;">
                                        <img src="https://bci-share.s3.amazonaws.com/mail_pyme/apoderado.png" alt=""/>
                                    </td>
                                    <td>
                                        <table cellpadding="0" cellspacing="0"
                                               style="color:#8798a0;width: 100%;padding-top: 35px;padding-bottom: 35px;font-size: 13px;">
                                            <tr>
                                                <td colspan="3">
                                                    <h3 style="font-weight: lighter;text-align: left; text-transform: uppercase;">
                                                        ANTECEDENTES DEL APODERADO
                                                    </h3>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td colspan="3">Email
                                                    <br/>
                                                    <strong style="color: #37474f;">
                                                        <xsl:value-of select="datosCorreo/emailOperador"/>
                                                    </strong>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td style="padding-bottom: 15px;"></td>
                                            </tr>
                                            <tr>
                                                <td width="250px">Teléfono
                                                    <br/>
                                                    <strong style="color: #37474f;">
                                                        <xsl:value-of select="datosCorreo/telefonoOperador"/>
                                                    </strong>
                                                </td>
                                                <td>Rut
                                                    <br/>
                                                    <strong style="color: #37474f;">
                                                        <xsl:value-of select="datosCorreo/rutOperador"/>
                                                    </strong>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td style="padding-bottom: 15px;"></td>
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>

                    <tr>
                        <td>
                            <table bgcolor="#ffffff" align="center" cellpadding="25" cellspacing="0"
                                   style="width:620px;border-collapse:collapse;background:#2772cc;color: #ffffff;margin-top: 20px;box-shadow: 0 2px 4px 0 rgba(0,0,0,0.5);font-size: 13px;">
                                <tr>
                                    <td>ANTECEDENTES DEL CRÉDITO</td>
                                    <td style="text-align: right;">Nº de operación
                                        <strong>
                                            <xsl:value-of select="datosCorreo/numeroOperacion"/>
                                        </strong>
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>

                    <tr>
                        <td>
                            <table bgcolor="#ffffff" align="center" cellpadding="25" cellspacing="0"
                                   style="width:620px;border-collapse:collapse;box-shadow: 0 2px 4px 0 rgba(0,0,0,0.5);border-bottom: solid 1px #e2e8ea;">
                                <tr>
                                    <td>
                                        <table style="width: 100%;color:#8798a0;font-size: 13px;">
                                            <tr>
                                                <td>Monto del Crédito $
                                                    <br/>
                                                    <strong style="color: #37474f;">
                                                        <xsl:value-of select="datosCorreo/montoCredito"/>
                                                    </strong>
                                                </td>
                                                <td>Tasa de interés %
                                                    <br/>
                                                    <strong style="color: #37474f;">
                                                        <xsl:value-of select="datosCorreo/tasaInteres"/>
                                                    </strong>
                                                </td>
                                                <td>Fecha y Hora de la Solicitud
                                                    <br/>
                                                    <strong style="color: #37474f;">
                                                        <xsl:value-of select="datosCorreo/fechaHora"/>
                                                    </strong>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td style="padding-bottom: 15px;"></td>
                                            </tr>
                                            <tr>
                                                <td>Cuotas
                                                    <br/>
                                                    <strong style="color: #37474f;">
                                                        <xsl:value-of select="datosCorreo/totalVencimientos"/>
                                                    </strong>
                                                </td>
                                                <td>Fecha 1º vencimiento
                                                    <br/>
                                                    <strong style="color: #37474f;">
                                                        <xsl:value-of select="datosCorreo/fechaPrimerVcto"/>
                                                    </strong>
                                                </td>
                                                <td>
                                                    <xsl:if test="(datosCorreo/tipoCredito = 'COM159' or datosCorreo/tipoCredito = 'COM791')">
                                                        Comisión Fogape %
                                                        <br/>
                                                        <strong style="color: #37474f;">
                                                            <xsl:value-of select="datosCorreo/comisionFogape"/>
                                                        </strong>
                                                    </xsl:if>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td style="padding-bottom: 15px;"></td>
                                            </tr>
                                            <tr>
                                                <td colspan="3" style="padding-right: 5px;">Estado de la operación
                                                    <br/>
                                                    <strong style="color: #37474f;">
                                                        <xsl:value-of select="datosCorreo/estado"/>
                                                    </strong>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td style="padding-bottom: 15px;"></td>
                                            </tr>
                                            <tr>
                                                <td colspan="3">Registro de Firma
                                                    <br/>
                                                    <strong style="color: #37474f;">
                                                        <xsl:value-of select="datosCorreo/mensajeRegistroFirma"/>
                                                    </strong>
                                                </td>
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>

                    <tr>
                        <td>
                            <table bgcolor="#ffffff" align="center" cellpadding="25" cellspacing="0"
                                   style="width:620px;border-collapse:collapse;background:#2772cc;color: #ffffff;margin-top: 20px;box-shadow: 0 2px 4px 0 rgba(0,0,0,0.5);font-size: 13px;">
                                <tr>
                                    <td>MOTIVO DE APR</td>
                                </tr>
                            </table>
                        </td>
                    </tr>

                    <xsl:for-each select="erroresApr/errorApr">
                        <tr>
                            <td>
                                <table bgcolor="#ffffff" align="center" cellpadding="25" cellspacing="0"
                                       style="color:#8798a0;width:620px;border-collapse:collapse;box-shadow: 0 2px 4px 0 rgba(0,0,0,0.5);border-bottom: solid 1px #e2e8ea;">
                                    <tr>
                                        <td>
                                            <table style="width: 100%;font-size: 13px;">
                                                <tr>
                                                    <td style="color: #37474f;">
                                                        <xsl:value-of select="titulo"/>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td style="padding-bottom: 15px;"></td>
                                                </tr>
                                                <tr>
                                                    <td style="padding-left: 30px;">
                                                        <xsl:value-of select="descripcion"/>
                                                    </td>
                                                </tr>
                                            </table>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                    </xsl:for-each>

                    <tr>
                        <td>
                            <table bgcolor="#ffffff" align="center" cellpadding="25" cellspacing="0"
                                   style="width:620px;border-collapse:collapse;background:#2772cc;color: #ffffff;margin-top: 20px;box-shadow: 0 2px 4px 0 rgba(0,0,0,0.5);text-align: center;font-size: 13px;">
                                <tr>
                                    <td>Monto disponible del cliente para curse en línea
                                        <xsl:if test="(datosCorreo/tipoCredito = 'COM159' or datosCorreo/tipoCredito = 'COM791')">con garantía estatal Fogape</xsl:if>
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <table bgcolor="#ffffff" align="center" cellpadding="15" cellspacing="0"
                                   style="color:#2772cc;width:620px;border-collapse:collapse;box-shadow: 0 2px 4px 0 rgba(0,0,0,0.5);font-size: 2.6em;text-align: center;">
                                <tr>
                                    <xsl:if test="datosCorreo/montoDisponible != '0' and datosCorreo/operacionCursada = 'N'">
                                        <td align="center" style="font-family:sans-serif;font-size:34px;">
                                            <strong>$
                                                <xsl:value-of select="datosCorreo/montoDisponible"/>
                                            </strong>
                                        </td>
                                    </xsl:if>
                                    <xsl:if test="datosCorreo/operacionCursada = 'S'">
                                        <td align="center" style="font-family:sans-serif;font-size:34px;">
                                            <strong>
                                                <xsl:value-of select="datosCorreo/tituloCorreoPie"/>
                                            </strong>
                                        </td>
                                    </xsl:if>
                                    <xsl:if test="datosCorreo/montoDisponible = '0' and datosCorreo/operacionCursada = 'N'">
                                        <td align="center" style="font-family:sans-serif;font-size:34px;">
                                            <strong>
                                                <xsl:value-of select="datosCorreo/tituloCorreoPie"/>
                                            </strong>
                                        </td>
                                    </xsl:if>
                                </tr>

                            </table>
                        </td>
                    </tr>

                    <tr>
                        <td>
                            <table bgcolor="#ffffff" align="center" cellpadding="25" cellspacing="0"
                                   style="width:620px;border-collapse:collapse;background:#2772cc;color: #ffffff;margin-top: 20px;box-shadow: 0 2px 4px 0 rgba(0,0,0,0.5);font-size: 13px;">
                                <tr>
                                    <td>ESTADO DE INFORMACIÓN FINANCIERA - Al momento de simular</td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <table bgcolor="#ffffff" align="center" cellpadding="0" cellspacing="0"
                                   style="color:#8798a0;width:620px;border-collapse:collapse;box-shadow: 0 2px 4px 0 rgba(0,0,0,0.5);border-bottom: solid 1px #e2e8ea;">
                                <tr>
                                    <td style="vertical-align: top;padding: 20px;text-align: center;">
                                        <img src="https://bci-share.s3.amazonaws.com/mail_pyme/info.png" alt=""/>
                                    </td>
                                    <td style="vertical-align: top;padding: 20px 20px 20px 0;">
                                        <table style="width: 100%;font-size: 13px;">
                                            <tr>
                                                <td style="font-weight: bold;color: #37474f">
                                                    Recuerda apoyar al cliente en la actualización de la información financiera de su empresa,
                                                    para que curse créditos en línea en cualquier momento y desde cualquier lugar.
                                                </td>
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
                                <tr> <!-- Mandatos -->
                                    <td style="vertical-align: top;padding: 20px;">
                                        <xsl:if test="datosCorreo/operacionCursada = '0'">
                                            <img src="https://bci-share.s3.amazonaws.com/mail_pyme/mandatos-error.png" alt=""/>
                                        </xsl:if>
                                        <xsl:if test="datosCorreo/mandatosFirmados = '1'">
                                            <img src="https://bci-share.s3.amazonaws.com/mail_pyme/mandatos-ok.png" alt=""/>
                                        </xsl:if>
                                    </td>
                                    <td style="vertical-align: top;padding: 20px 20px 20px 0;border-top: 1px solid #e2e8ea">
                                        <table style="width: 100%;font-size: 13px;color: #8798a0;">
                                            <tr>
                                                <td style="padding: 15px 0; text-transform: uppercase;">
                                                    Mandatos
                                                </td>
                                                <xsl:if test="datosCorreo/mandatosFirmados = '1'">
                                                    <td style="text-align: right; color: #29b34e">
                                                        Vigente
                                                    </td>
                                                </xsl:if>
                                                <xsl:if test="datosCorreo/operacionCursada = '0'">
                                                    <td style="text-align: right; color: #f6363f">
                                                        No vigente
                                                    </td>
                                                </xsl:if>
                                            </tr>
                                            <tr>
                                                <td colspan="2">
                                                    Indícale al cliente que descargue los Documentos de Habilitación en Información Financiera. Si
                                                    el cliente está presencialmente en sucursal, descárgalos en Normativa.
                                                </td>
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
                                <tr> <!-- CTE -->
                                    <td style="vertical-align: top;padding: 20px;">
                                        <xsl:if test="datosCorreo/carpetaTributariaVigente = '0'">
                                            <img src="https://bci-share.s3.amazonaws.com/mail_pyme/cte-error.png" alt=""/>
                                        </xsl:if>
                                        <xsl:if test="datosCorreo/carpetaTributariaVigente = '1'">
                                            <img src="https://bci-share.s3.amazonaws.com/mail_pyme/cte-ok.png" alt=""/>
                                        </xsl:if>
                                    </td>
                                    <td style="vertical-align: top;padding: 20px 20px 20px 0;border-top: 1px solid #e2e8ea">
                                        <table style="width: 100%;font-size: 13px;color: #8798a0;">
                                            <tr>
                                                <td style="padding: 15px 0; text-transform: uppercase;">
                                                    Carpeta Tributaria Electrónica
                                                </td>
                                                <xsl:if test="datosCorreo/carpetaTributariaVigente = '1'">
                                                    <td style="text-align: right; color: #29b34e">
                                                        Vigente
                                                    </td>
                                                </xsl:if>
                                                <xsl:if test="datosCorreo/carpetaTributariaVigente = '0'">
                                                    <td style="text-align: right; color: #f6363f">
                                                        No vigente
                                                    </td>
                                                </xsl:if>
                                            </tr>
                                            <tr>
                                                <td colspan="2">
                                                    Puedes mantener actualizada la Carpeta Tributaria en Everest, ingresando Código y Clave o
                                                    subiendo al sistema el documento en formato PDF, otorgados por el cliente.
                                                </td>
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
                                <tr> <!-- ART85 -->
                                    <td style="vertical-align: top;padding: 20px;">
                                        <xsl:if test="datosCorreo/articulo85Vigente = '1'">
                                            <img src="https://bci-share.s3.amazonaws.com/mail_pyme/art-85-ok.png" alt=""/>
                                        </xsl:if>
                                        <xsl:if test="datosCorreo/articulo85Vigente = '0'">
                                            <img src="https://bci-share.s3.amazonaws.com/mail_pyme/art-85-error.png" alt=""/>
                                        </xsl:if>
                                    </td>
                                    <td style="vertical-align: top;padding: 20px 20px 20px 0;border-top: 1px solid #e2e8ea">
                                        <table style="width: 100%;font-size: 13px;color: #8798a0;">
                                            <tr>
                                                <td style="padding: 15px 0; text-transform: uppercase;">
                                                    Artículo 85
                                                </td>
                                                <xsl:if test="datosCorreo/articulo85Vigente = '1'">
                                                    <td style="text-align: right; color: #29b34e">
                                                        Vigente
                                                    </td>
                                                </xsl:if>
                                                <xsl:if test="datosCorreo/articulo85Vigente = '0'">
                                                    <td style="text-align: right; color: #f6363f">
                                                        No vigente
                                                    </td>
                                                </xsl:if>
                                            </tr>
                                            <tr>
                                                <td colspan="2">
                                                    Revisa el detalle de las participaciones societarias en Everest. Si estás junto al cliente
                                                    puedes descargar el Formulario de Declaración de Márgenes de Crédito.
                                                </td>
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>

                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>