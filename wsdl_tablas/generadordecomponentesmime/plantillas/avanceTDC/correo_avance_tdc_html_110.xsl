<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:param name="canal" />
	<xsl:output method="html"
		omit-xml-declaration="yes"
		doctype-public="-//W3C//DTD XHTML 1.0 Transitional//EN"
		doctype-system="http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd" indent="yes"/>
	<xsl:template match="comprobante">

<html xmlns="http://www.w3.org/1999/xhtml">
<head>

    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
    <meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1" />

    <style type="text/css">
       .ReadMsgBody { width: 100%; background-color: #ffffff; }
       .ExternalClass { width: 100%; background-color: #ffffff; }
       .ExternalClass, .ExternalClass p, .ExternalClass span, .ExternalClass font, .ExternalClass td, .ExternalClass div { line-height: 100%; }
       html { width: 100%; }
       body { -webkit-text-size-adjust: none; -ms-text-size-adjust: none; }
       table { border-spacing: 0;}

       @media only screen
       and (min-device-width : 320px)
       and (max-device-width : 480px), (max-width : 480px) {
       *[class].content {
	     width: 100%; 
	     }
		*[class].preheader {
			text-align:center !important;
			margin-bottom:0 !important;
		}
		*[class].banner {
			width: 100%;
			height: auto;
		}
		*[class].mobileStack {
			display:block;
			width: 100% !important;
			margin-bottom:15px;
		}
		*[class].icon-social {
			display:block;
			width: 100% !important;
			margin:0;
			font-size:10px !important;
		}
		*[class].footer-mobile {
			display:block;
			width: 100% !important;
			font-size:5px;
		}
		*[class].mobileHide {
			display:none !important;
		}
		.texto-titulo {
			font-size:24px !important;
			line-height:28px !important;
		}
		.titulo_bajada {
			font-size:16px !important;
		}
		.texting {
		      font-size:16px !important;
		}
		.texting-sub {
		      font-size:14px !important;
			  line-height:24px !important;
		}
		.texto-legales {
			font-size:11px !important;
			line-height:18px !important;
		}
		img[class=columnImageScale]		{width: 100%!important;  margin-left: 0px!important;}
		table[class="table532"] { width: 95% !important; float: none !important; 
		}
		p[class="footer-mini"] {
		 font-size: 10px !important;
		 line-height:18px !important;
		}
		table[class="table2-2"] { width: 100% !important; text-align: center !important; 
		}
		.timbre{padding-top:10px;}
		.cajatxt{width:100%!important;}
		</style>
		<style type="text/css">
		a:link {text-decoration:none; color: #999999;} /* Link no visitado*/
		a:visited {text-decoration:none; color:#999999} /*Link visitado*/
		a:active {text-decoration:none; color:#999999;} /*Link activo*/
		a:hover {text-decoration:underline; color:#999999;} /*Mause sobre el link*/
		.texting {      font-size:16px !important;
		}
		.cajatxt {width:100%!important;}
		.timbre {padding-top:10px;}
		.timbre1 {padding-top:10px;}
		.timbre1 {padding-top:10px;}
		</style>

<title>Personas - A5</title>

</head>
<body bgcolor="#ededed">
<table width="100%" cellspacing="0" border="0" bgcolor="#ededed" >
  <tr>
    <td>
 <!-- Inicio Mail Contenedor--> 
    <table width="600" border="0" align="center"  cellspacing="0" class="content" >
    <tr>
    	<td class="mobileHide" height="36" align="center" valign="middle" style="font-family:Arial, Helvetica, sans-serif; font-size:11px; color:#ababab; text-align:center;">&nbsp;</td>
    </tr>
        <tr>
          <td>
   	<!-- Top--> 
          <table width="100%" cellpadding="0" cellspacing="0" border="0" bgcolor="#ffffff">
              <tr>
                <td height="20" align="left" style="display:block;"><img class="banner" src="http://www.bci.cl/medios/2012/empresarios/images/mailing/top-header.gif" width="600" height="20" style="display:block;"></td>
              </tr>
              <tr>
                <td align="left" style="padding-left:0px; padding-right:0px;">
                	
                  <table class="table532" width="560" border="0" align="center" cellpadding="0" cellspacing="0">
                      <tr>
                        <td>
                     <!-- Logotipo Banco--> 
                        <table width="100" border="0" align="right" cellpadding="0" cellspacing="0" class="table2-2">
                              <tr>
                                <td align="center"><img src="http://www.bci.cl/medios/2012/empresarios/images/mailing/logo-bci.gif" width="99" height="37" style="display:block;"></td>
                              </tr>
                          </table>
                     <!-- FIN - Logotipo Banco--> 
                     
                          <!-- Nombre del Cliente--> 
                        	<table width="448" border="0" align="left" cellpadding="0" cellspacing="0" class="table2-2">
                              <tr>
                                <td width="448" height="45"  style=""><span style="font-family:Arial, Helvetica, sans-serif; font-size:30px; color:#000;">Avance Tarjeta de Crédito</span><br> 
                                <span style="font-family:Arial, Helvetica, sans-serif; font-size:20px; color:#333333;">Comprobante </span></td>
                              </tr>
                            </table>
                           <!-- FIN - Nombre del Cliente--> 
                        </td>
                      </tr>
                </table>
                </td>
              </tr>
              <tr>
                <td height="11" align="left"></td>
              </tr>
              <tr>
                <td align="center"><img  class="banner" src="http://www.bci.cl/medios/2012/personas/mailing/2014/informativos/cuenta_corriente_01.jpg" width="579" height="3" border="0" style="display:block;"></td>
              </tr>
           </table>
           <table width="100%" cellpadding="0" cellspacing="0" border="0" bgcolor="#ffffff">
              <tr>
                <td align="left" valign="top" ></td>
              </tr>
            </table>
           <!-- Fin Top--> 
           
    
      <!-- Contenedor de Titulo y Bajada-->
            <table width="100%" border="0" align="center" cellpadding="0" cellspacing="0" bgcolor="#ffffff">
                        <tr>
                           <td height="27" align="right" valign="top" bgcolor="#ffffff">&nbsp;</td>
                        </tr>
                        <tr>
                           <td bgcolor="#ffffff">
                              <table class="table532" width="560" border="0" align="center" cellpadding="0" cellspacing="0" bgcolor="#ffffff">
                                 <tr>
                                    <td width="" align="left" valign="top" class="texting">
                                    
                                      <table width="100%" border="0" cellspacing="0" cellpadding="0" style="font-family: Helvetica, Arial, sans-serif; font-size:12px; color:#666; line-height:150%;">
                                        <tr>
                                          <td valign="top" class="footer-mobile">
                                            <strong style="font-size:15px;color:#333; font-weight:normal;line-height:170%;">Estimado(a) Cliente(a): <xsl:value-of select="avance/nombre-completo" />
                                            </strong>
                                            <strong style="font-size:14px;color:#666; font-weight:normal;line-height:105%;"><br /></strong>
                                            <table width="95%" border="0" cellspacing="0" cellpadding="0" class="cajatxt" >
                                              <tr>
                                                <td colspan="2" height="30">Informamos que con fecha<strong>&nbsp;<xsl:text:value-of select="avance/fecha-avance">&nbsp;</strong> se ha realizado un Avance desde su Tarjeta de crédito <strong><xsl:value-of select="avance/numero-tarjeta" /></strong>.
<p>El detalle de esta operacion es el siguiente:</p></td>
                                              </tr>
                                              <tr>
                                                <td colspan="2" height="30"></td>
                                              </tr>
                                                                                
                                              <tr>
                                                <td width="2%" align="left" valign="top" ><img src="http://www.bci.cl/medios/2012/empresarios/images/mailing/footer-barra.gif" width="6" height="120" style="display:block;"></td>
                                                <td width="98%" align="left" valign="top" style="padding-left:20px;"><table width="100%" border="0" align="center" cellpadding="0" cellspacing="0">
                                                  <tr>
                                                    <td width="38%" align="left"><strong>Tarjeta de Cr&eacute;dito</strong></td>
                                                    <td width="32%" align="left"><xsl:value-of select="avance/nombre-tarjeta"/></td>
                                                    <td width="30%" rowspan="9" align="left" valign="top"><img src="http://www.bci.cl/medios/2012/personas/images/mailing/timbre.png" width="150" height="150" style="display:block;" /></td>
                                                  </tr>
                                                  <tr>
                                                    <td align="left"><strong>Cuenta de destino:</strong></td>
                                                    <td align="left"><xsl:value-of select="avance/cuenta-destino"/></td>
                                                  </tr>
                                                  <tr>
                                                    <td align="left"><strong>Monto del Avance:</strong></td>
                                                    <td align="left"><xsl:value-of select="avance/monto-avance"/></td>
                                                  </tr>
                                                  <tr>
                                                    <td align="left"><strong>Comisi&oacute;n:</strong></td>
                                                    <td align="left"><xsl:value-of select="avance/comision-avance"/></td>
                                                  </tr>
                                                  <tr>
                                                    <td align="left"><strong>Tasa de Interés Mensual</strong></td>
                                                    <td align="left"><xsl:value-of select="avance/tasa-interes-mensual"/></td>
                                                  </tr>
                                                  <tr>
                                                    <td align="left"><strong>Cuota Mensual</strong></td>
                                                    <td align="left"><xsl:value-of select="avance/cuota-mensual"/></td>
                                                  </tr>
                                                  <tr>
                                                    <td align="left"><strong>Carga Anual Equivalente (CAE)</strong></td>
                                                    <td align="left"><xsl:value-of select="avance/carga-anual-equivalente"/></td>
                                                  </tr>
                                                  <tr>
                                                    <td align="left"><strong>Costo Total del Crédito (CTC)</strong></td>
                                                    <td align="left"><xsl:value-of select="avance/costo-total-credito"/></td>
                                                  </tr>
                                                  <tr>
                                                    <td align="left">&nbsp;</td>
                                                    <td align="left">&nbsp;</td>
                                                  </tr>
                                                </table></td>
                                              </tr>
  </table>
  <table width="95%" border="0" cellspacing="0" cellpadding="0" class="cajatxt" >
    <tr>
      <td width="100%" height="30"></td>
      </tr>
</table></td>
                                        </tr>
                                   </table></td>
                                 </tr>
                                 <tr>
                                    <td height="30" valign="top"></td>
                                 </tr>
                              </table>
                           </td>
                        </tr>
                        
                        <!--<tr>
                           <td  height="5" align="left" valign="bottom" bgcolor="#008530">
                           <img class="banner" src="images/bottom-texto.gif" width="600" height="5" style="display:block;" ></td>
              </tr>-->
            </table>
      <!-- Fin Contenedor de Titulo y Bajada-->
      
      <!-- Promociones Adicionales-->
      <table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td height="3"></td>
          </tr>
          
      </table>
        <!-- Fin Promociones Adicionales-->
      
        <!-- Footer-->
        <table width="100%" cellpadding="0" cellspacing="0" border="0" >
            <tr>
            	<td height="3" align="left" valign="top"></td>
            </tr>
              <tr>
              	<td align="left" valign="top" bgcolor="#FFFFFF" >
                        <table width="100%" border="0" cellspacing="0" cellpadding="0">
                          
                        </table>
                </td>
              </tr>
            </table>
    	<!-- Fin - Footer--></td>
        </tr>
      </table>
    </td>
  </tr>
</table>
</body>
</html>

</xsl:template>
</xsl:stylesheet>