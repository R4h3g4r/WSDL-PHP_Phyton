<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="correoCliente">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<style type="text/css">
	.bordetabla{border-right: #ccc 1px solid; padding-right: 10px; border-top: #ccc 1px solid; padding-left: 10px; padding-bottom: 10px; font: 12px Arial, Helvetica, sans-serif; border-left: #ccc 1px solid; padding-top: 10px; border-bottom: #ccc 1px solid;}

</style>
</head>
<body>
<table class="bordetabla" cellspacing="0" cellpadding="0" width="500" border="0">
 <tbody>
	<tr>
    <td style="background-color:#c00;text-align:center;padding-top:10px;padding-bottom:10px;font-size:18px; color:#fff">
		<span class="titulo">
			<strong>Aviso de Solicitud de Transferencia al Extranjero</strong>
		</span>
	</td>
	</tr>
  <tr>
    <td style="padding-right: 10px; font-size: 12px; padding-bottom: 10px; vertical-align: top; padding-top: 10px;">
      <p><STRONG>ESTIMADO(A) <xsl:value-of select="nombreCliente"/> </STRONG>:</p>
      <p>Le informamos que con fecha <xsl:value-of select="fecha" /> se ha realizado el cargo en su cuenta nro. #
	  <xsl:value-of select="cuentaCliente" />
	   según lo instruido en solicitud de transferencia de fondos al extranjero.
	  </p>
      <p>El detalle de este cargo es el siguiente:</p>
		<p><xsl:value-of select="mensajeaCliente"/></p>
      <div style="clear: both"></div>

      <table cellspacing="0" cellpadding="0" width="490" border="0">
        <tbody>
        <tr>
          <td style="font-size: 12px; padding-top: 10px" valign="top" align="middle" 
          width="50%">
                 <a href="#">
	  	        <img alt="Promocion Bci" width="468" height="60" border="0" >
	  	         	<xsl:attribute name="src">
	  	       			<xsl:value-of select="banner" />
	  	 			</xsl:attribute>
	  	 			<xsl:attribute name="alt">
	  	       			<xsl:value-of select="promocion" />
	  	 			</xsl:attribute>
	   			</img>
          		</a>
            </td>
        </tr>
        <tr>
        <td style="font-size: 12px; padding-top: 10px" valign="top" 
            align="left">Atentamente,<br /><strong style="COLOR: #999999"><xsl:value-of select="lemaBanco" /></strong><br /><br />
                  <img alt="logo" width="99" height="49">
                  	<xsl:attribute name="src">
      	      	      <xsl:value-of select="logo" />
      	            </xsl:attribute>
				</img>
			</td>
			</tr>
		</tbody>
	  </table>
	 </td>
	</tr>
  <tr>
    <td 
    style="padding-right: 10px; padding-left: 10px; font-size: 11px; background: #f6f9fc; padding-bottom: 10px; PADDING-TOP: 10px">
      <div>
      <p><strong>Importante:</strong><br />- Este mail es generado de manera 
      automatica, por favor no responda a este mensaje.<br />- Los comentarios 
      aquí ingresados son exclusiva responsabilidad de nuestro cliente, y no 
      involucran en absoluto al Bci. 
<br /></p></div></td></tr>
</tbody>
</table>
</body>
</html>

</xsl:template>

</xsl:stylesheet>