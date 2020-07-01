<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:param name="canal" />
	<xsl:param name="logo" />
	<xsl:param name="banner" />
	<xsl:param name="accionBanner" />
	<xsl:output method="html"
		omit-xml-declaration="yes"
		doctype-public="-//W3C//DTD XHTML 1.0 Transitional//EN"
		doctype-system="http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd" indent="yes"/>
	<xsl:template match="comprobante">
        <html xmlns="http://www.w3.org/1999/xhtml" lang="es">
            <head>
                      <meta charset="ISO-8859-1"/>
                      <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
                      <meta http-equiv="X-UA-Compatible" content="ie=edge"/>
                      <meta http-equiv="Content-Type" content="text/html charset=iso-8859-1" />
                      <meta http-equiv="X-UA-Compatible"/>
                      <title><xsl:value-of select="titulo" /></title>
              <link
                href="https://fonts.googleapis.com/css?family=Overpass:100,100i,200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
                        rel="stylesheet"/>
              <style type="text/css">
                @media (max-width: 480px) {
                  .d-block {
                    width: 100% !important;
                    text-align: center !important;
                    display: inline-block !important;
                    line-height: 170% !important;
                  }

                  .w-100 {
                    width: 100% !important;
                  }

                  .w-75 {
                    width: 75% !important;
                  }

                  .w-50 {
                    width: 50% !important;
                  }

                  .w-33 {
                    width: 33% !important;
                  }

                  .w-25 {
                    width: 25% !important;
                  }

                  .w-15 {
                    width: 15% !important;
                  }

                  .text-center {
                    text-align: center !important;
                  }

                  .text-left {
                    text-align: left !important;
                  }

                  .text-right {
                    text-align: right !important;
                  }

                  .text-justify {
                    text-align: justify !important;
                  }

                  .f-23 {
                    font-size: 23px !important;
                    line-height: 27px !important;
                  }

                  .f-16 {
                    font-size: 16px !important;
                  }

                  .pb-15 {
                    padding-bottom: 15px !important;
                  }
                }
              </style>
            </head>

            <body style="padding:0; margin:0;">
              <table width="100%" border="0" align="center" cellspacing="0" cellpadding="0" bgcolor="#f6f6f6">
                <tbody>
                  <tr>
                    <td>
                      <!-- Mail Contenedor-->
                      <table class="contenedor-mail" border="0" align="center" cellpadding="0" cellspacing="0" width="600"
                        bgcolor="#ffffff" style="margin: 0 auto; font-family: Overpass, sans-serif; color: #5e5e5e;">
                        <tbody>
                          <!-- Header Mail -->
                          <tr>
                            <td>
                              <img
                                src="https://bci.modyocdn.com/uploads/328f1ee5-c3f4-4e26-804a-f9e33675d66a/original/Header_informativo-99.jpg"
                                        width="100%"/>
                            </td>
                          </tr>
                          <!-- Fin Header Mail -->

                          <!-- Info principal -->
                          <tr>
                            <td>
                              <table class="contenedor-bloque" border="0" align="center" cellpadding="0" cellspacing="0" width="80%"
                                style="text-align: center;">
                                <tbody>
                                  <tr>
                                    <td class="nombre-cliente" style="font-size: 18px; line-height: 35px; font-weight: 100; color: #546e7a;">
                                              Hola <br/><b>&#160;<xsl:value-of select="nombre-cliente" /></b>
                                    </td>
                                  </tr>
                                  <tr>
                                    <td class="parrafo f-23"
                                    style="font-size: 28px; line-height: 33px; padding-top: 10px; color: #37474f; text-align: center;
                                    font-weight: 100;
                                    font-family: Overpass, sans-serif;">
                                              Actualizaste el uso de tu <b>tarjeta de d&#233;bito</b>&#160;en el extranjero:
                                    </td>
                                  </tr>
                                        </tbody>
                              </table>
                            </td>
                          </tr>
                          <!-- Fin Info principal -->

                          <!-- separador en blanco -->
                          <tr>
                            <td align="center" style="padding: 28px;"></td>
                          </tr>
                          <!-- Fin separador en blanco -->

                          <!-- tabla -->
                          <tr>
                            <td align="center" valign="top">
                              <table class="table table-striped f-23" width="80%" style="border: solid 1px #0073cb; border-radius: 4px;padding: 8px; font-size: 16px; line-height: 20px; font-weight: 300;border-spacing: 0 2px;
                                ">
                                <tbody class="texto-mbl">
                                  <tr>
                                    <td class="d-block" width="50%" align="left" style="text-align: right; padding: 8px 15px;">
                                              N&#250;mero tarjeta d&#233;bito</td>
                                            <td class="d-block" width="50%" align="left" style="padding: 8px 15px;"><xsl:value-of select="numero-pan" /></td>
                                  </tr>
                                  <tr style="background-color: #ebebec;">
                                    <td class="d-block" width="50%" align="left" style="text-align: right; padding: 10px 15px;">
                                              N&#250;mero cuenta </td>
                                            <td class="d-block" width="50%" align="left" style="padding: 10px 15px;"><xsl:value-of select="numero-cuenta"/></td>
                                  </tr>
                                  <tr>
                                    <td class="d-block" width="50%" align="left" style="text-align: right;padding: 10px 15px;">Fecha
                                    </td>
                                    <td class="d-block" width="50%" align="left" style="padding: 10px 15px;">
                                              <xsl:value-of select="fecha-bloqueo"/> hrs.
                                    </td>
                                  </tr>
                                  <tr style="background-color: #ebebec;">
                                    <td class="d-block" width="50%" align="left" style="text-align: right;padding: 10px 15px;">
                                      Solicitud </td>
                                    <td class="d-block" width="50%" align="left" style="padding: 10px 15px;">
                                              <xsl:value-of select="solicitud" />
                                    </td>
                                  </tr>
                                  <tr>
                                    <td class="d-block" width="50%" align="left" style="text-align: right; padding: 10px 15px;">
                                      RUT </td>
                                    <td class="d-block" width="50%" align="left" style="padding: 10px 15px;">
                                              <xsl:value-of select="rut-cliente"/>
                                    </td>
                                  </tr>
                                </tbody>
                              </table>
                            </td>
                          </tr>
                          <!-- fin tabla -->



                          <!-- Info tarjeta -->
                          <tr>
                            <td>
                              <table class="contenedor-bloque" border="0" align="center" cellpadding="0" cellspacing="0" width="80%"
                                style="text-align: center;">
                                <tbody>
                                  <tr>
                                    <td height="60"></td>
                                  </tr>
                                  <tr>
                                    <td class="parrafo f-23"
                                      style="font-size: 16px; line-height: 23px; font-weight: 300; text-align: center; color: #0073cb;">
                                              <b> &#191;Cu&#225;ndo podr&#225;s usar tu tarjeta en el extranjero?</b>
                                    </td>
                                  </tr>

                                  <!-- separador en blanco -->
                                  <tr>
                                    <td align="center" style="padding: 10px;"></td>
                                  </tr>
                                  <!-- Fin separador en blanco -->

                                  <tr>
                                    <td class="parrafo f-16"
                                      style="font-size: 14px; line-height: 21px; font-weight: 300; text-align: center;  ">
                                              Si tu solicitud fue realizada de lunes a viernes hasta las 23:59 horas, podr&#225;s usarla
                                              en el extranjero <b>desde las 9:00 horas del d&#237;a h&#225;bil siguiente</b>.
                                              <br/>
                                              En cambio, si solicitaste a contar de las 00:00 horas, podr&#225;s usar tu tarjeta en el
                                              extranjero <b>desde las 9:00 horas del d&#237;a h&#225;bil subsiguiente</b>. Por ejemplo,
                                              si lo haces la madrugada del lunes a las 01:00 horas, podr&#237;as usarla a contar del
                                              mi&#233;rcoles. <b>Esta regla tambi&#233;n aplica para fines de semana y feriados</b>.
                                              <br/>
                                              Si tienes dudas, ll&#225;manos al <b>600 692 8000</b>
                                    </td>
                                  </tr>
                                        </tbody>
                              </table>
                            </td>
                          </tr>
                          <!-- Fin Info tarjeta -->


                          <!-- separador -->
                          <tr>
                            <td align="center" style="padding: 30px;">
                              <img
                                        src="https://bci.modyocdn.com/uploads/e5930b01-8de9-4942-89b5-01c95c64a224/original/email-separador1.png"/>
                            </td>
                          </tr>
                          <!-- Fin separador -->

                          <!-- Footer -->
                          <tr>
                            <td>
                              <table class="contenedor-footer-mail f-23" border="0" align="center" cellpadding="0" cellspacing="0"
                                width="80%">
                                <tr>
                                  <td class="bloque-iconos-footer" align="center" valign="middle" width="100%"
                                    style="background: #fff; display: inline-block; line-height: 170%;">
                                    <img
                                              src="https://bci.modyocdn.com/uploads/dd832f14-a706-4726-9187-211614dbec60/original/Bci-logo.png"/><br/>
                                            Cont&#225;ctanos <b>600 692 8000</b><br/>
                                            <b>@BancoBci</b><br/>
                                    <img
                                              src="https://bci.modyocdn.com/uploads/93f681ff-fee7-458a-9d9c-e49ec53568fc/original/social-media.png"/>
                                  </td>
                                </tr>
                                <tr>
                                  <td height="20"></td>
                                </tr>
                              </table>
                            </td>
                          </tr>
                          <tr>
                            <td>
                              <table class="contenedor-bloque f-23" border="0" align="center" cellpadding="0" cellspacing="0"
                                width="100%" style="background-color: #f6f6f6;">
                                <tbody>
                                  <tr>
                                    <td height="20"
                                      style="background-color: #fff; border-bottom-left-radius: 10px; border-bottom-right-radius: 10px;">
                                    </td>
                                  </tr>
                                  <tr>
                                    <td height="20"></td>
                                  </tr>
                                </tbody>
                              </table>
                            </td>
                          </tr>
                          <tr>
                            <td bgcolor="#f6f6f6">
                              <table class="contenedor-mail-seguro" border="0" align="center" cellpadding="0" cellspacing="0"
                                bgcolor="#f6f6f6" width="90%">
                                <tr>
                                  <td height="40"></td>
                                </tr>
                                <tr>
                                  <td class="icono-logo-seguro d-block" width="30%">
                                    <img
                                      src="https://bci.modyocdn.com/uploads/69b62a26-5006-4ad5-b6b8-faa4aba5d38a/original/correo-seguro.png"
                                              width="100%" class="w-50"/>
                                  </td>
                                  <td class="texto-seguro d-block text-left f-16" width="70%" align="left" valign="middle"
                                    style="font-size: 11px; line-height: 18px;">
                                    <ul>
                                              <li class="pb-15">Siempre escribe la direcci&#243;n del sitio web directamente en el
                                        navegador.</li>
                                              <li class="pb-15">Nunca solicitaremos tus claves, n&#250;meros de tarjeta, BciPass o
                                                Multipass, por tel&#233;fono o correo electr&#243;nico.</li>
                                      <li class="pb-15">No debes abrir o descargar archivos de remitentes desconocidos.</li>
                                              <li class="pb-15">Solo descarga Apps Bci desarrolladas por Banco Cr&#233;dito e Inversiones.
                                      </li>
                                    </ul>
                                  </td>
                                </tr>
                                <tr>
                                  <td height="30"></td>
                                </tr>
                              </table>
                            </td>
                          </tr>
                          <!-- Fin footer -->
                          <!-- Legales Mail -->
                          <tr>
                            <td>
                              <table border="0" align="center" cellpadding="0" cellspacing="0" bgcolor="#f6f6f6" width="100%">
                                <tr>
                                  <td bgcolor="f6f6f6">
                                    <table class="contenedor-legales-mail" border="0" align="center" cellpadding="0" cellspacing="0"
                                      width="95%">
                                      <tr>
                                        <td class="texto-legal-footer f-16" align="justify" valign="top"
                                          style="font-size: 12px; line-height: 130%; font-weight: 300; padding-bottom: 8px;">
                                                  Inf&#243;rmate sobre la garant&#237;a estatal de los dep&#243;sitos en tu banco o en
                                          <b>www.cmfchile<span style="letter-spacing:-6px"> </span>.cl</b>. Para mayor
                                                  informaci&#243;n visita <b>www.bci<span style="letter-spacing:-6px"> </span>.cl</b>.
                                        </td>
                                      </tr>
                                    </table>
                                  </td>
                                <tr>
                                  <td height="30"></td>
                                </tr>
                          </tr>
                      </table>
                    </td>
                  </tr>
                  <!-- Fin legales Mail -->
                </tbody>
              </table>
              <!-- fin Mail Contenedor-->
              </td>
              </tr>
              </tbody>
              </table>
            </body>

        </html>
	</xsl:template>
</xsl:stylesheet>