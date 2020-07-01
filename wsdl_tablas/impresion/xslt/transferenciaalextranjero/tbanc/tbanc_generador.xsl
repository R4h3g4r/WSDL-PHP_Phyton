<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:param name="cuit"/>
<xsl:param name="aba"/>
<xsl:param name="tipcuenta"/>
<xsl:param name="bi"/>
<xsl:variable name="existe" select="'true'" />
<xsl:template match="mensajes/msjCliente">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
</head>
<body>
	<table width="500" border="0" cellpadding="0" cellspacing="0" style="font-family:Arial, Helvetica, sans-serif;border:solid 1px #CCC;padding:10px">
		<tr>
			<td style="background-color:#c00;text-align:center;padding-top:10px;padding-bottom:10px;font-size:16px; color:#fff"><strong>Comprobante Solicitud de Transferencia de Fondo al Extranjero</strong></td>
		</tr>
		<tr>
			<td style="padding-top:10px;padding-bottom:10px;vertical-align:top;padding-right:10px;font-size:12px; "><p><strong>ESTIMADO(A) <xsl:value-of select="cli_nombreCliente"/></strong>:</p>
			<p>Le informamos que con fecha <xsl:value-of select="cli_fecha"/> se ha recepcionado una solicitud de transferencia de fondos al extranjero desde su cuenta nro. # <xsl:value-of select="cli_ctaOrigen"/>.</p>
			<p>El detalle de esta operación es el siguiente:</p>
			
			<table border="0" align="left" cellpadding="0" cellspacing="0" style="font:normal 12px Arial, Helvetica, sans-serif;width:490px; color:#333333;">
				<tr bgColor="#fffa9d"> 
					  <th 
					  style="border-right: #fff 1px solid; padding-right: 4px; border-top: #fff 1px solid; padding-left: 4px; font-weight: normal; padding-bottom: 2px; border-left: #fff 1px solid; width: 50%; padding-top: 2px; border-bottom: #fff 1px solid" 
					  valign="top" align="right"><strong>Monto transferido:</strong></th>
					  <th 
					  style="border-right: #fff 1px solid; padding-right: 4px; border-top: #fff 1px solid; padding-left: 4px; font-weight: normal; padding-bottom: 2px; border-left: #fff 1px solid; width: 50%; padding-top: 2px; border-bottom: #fff 1px solid" 
					  valign="top" align="left"><strong><xsl:value-of select="cli_siglaMoneda"/>  <xsl:value-of select="cli_montoTransferido"/></strong></th>
				 </tr>
				<xsl:if test='cuit=$existe'>
				<tr bgColor="#f9f9f9"> 
					<th 
					style="border-right: #fff 1px solid; padding-right: 4px; border-top: #fff 1px solid; padding-left: 4px; font-weight: normal; padding-bottom: 2px; border-left: #fff 1px solid; width: 50%; padding-top: 2px; border-bottom: #fff 1px solid" 
					valign="top" align="right">CUIT:</th>
					<th 
					style="border-right: #fff 1px solid; padding-right: 4px; border-top: #fff 1px solid; padding-left: 4px; font-weight: normal; padding-bottom: 2px; border-left: #fff 1px solid; width: 50%; padding-top: 2px; border-bottom: #fff 1px solid" 
					valign="top" align="left"><xsl:value-of select="cli_cuit"/> </th>
				</tr>
				</xsl:if>
				<tr bgColor="#f9f9f9">
					<th 
                    style="border-right: #fff 1px solid; padding-right: 4px; border-top: #fff 1px solid; padding-left: 4px; font-weight: normal; padding-bottom: 2px; border-left: #fff 1px solid; width: 50%; padding-top: 2px; border-bottom: #fff 1px solid" 
					valign="top" align="right">Nombre del Destinatario:</th>
					<th 
				    style="border-right: #fff 1px solid; padding-right: 4px; border-top: #fff 1px solid; padding-left: 4px; font-weight: normal; padding-bottom: 2px; border-left: #fff 1px solid; width: 50%; padding-top: 2px; border-bottom: #fff 1px solid" 
				  valign="top" align="left"><xsl:value-of select="cli_nombreDestin"/></th>
				</tr>
				<tr bgColor="#f9f9f9">
					  <td 
					  style="border-right: #fff 1px solid; padding-right: 4px; border-top: #fff 1px solid; padding-left: 4px; font-weight: normal; padding-bottom: 2px; border-left: #fff 1px solid; width: 50%; padding-top: 2px; border-bottom: #fff 1px solid" 
					  valign="top" align="right">País:</td>

					  <td 
					  style="border-right: #fff 1px solid; padding-right: 4px; border-top: #fff 1px solid; padding-left: 4px; font-weight: normal; padding-bottom: 2px; border-left: #fff 1px solid; width: 50%; padding-top: 2px; border-bottom: #fff 1px solid" 
					  valign="top" align="left"><xsl:value-of select="cli_pais"/></td>
				 </tr>
				 <tr bgColor="#f9f9f9">
					  <td 
					  style="border-right: #fff 1px solid; padding-right: 4px; border-top: #fff 1px solid; padding-left: 4px; font-weight: normal; padding-bottom: 2px; border-left: #fff 1px solid; width: 50%; padding-top: 2px; border-bottom: #fff 1px solid" 
					  valign="top" align="right">Ciudad:</td>
					  <td 
					  style="border-right: #fff 1px solid; padding-right: 4px; border-top: #fff 1px solid; padding-left: 4px; font-weight: normal; padding-bottom: 2px; border-left: #fff 1px solid; width: 50%; padding-top: 2px; border-bottom: #fff 1px solid" 
					  valign="top" align="left"><xsl:value-of select="cli_ciudad"/></td>
				 </tr>
				 <tr bgColor="#f9f9f9">
					  <th
					  style="border-right: #fff 1px solid; padding-right: 4px; border-top: #fff 1px solid; padding-left: 4px; font-weight: normal; padding-bottom: 2px; border-left: #fff 1px solid; width: 50%; padding-top: 2px; border-bottom: #fff 1px solid" 
					  valign="top" align="right">E-mail:</th>
					  <th 
					  style="border-right: #fff 1px solid; padding-right: 4px; border-top: #fff 1px solid; padding-left: 4px; font-weight: normal; padding-bottom: 2px; border-left: #fff 1px solid; width: 50%; padding-top: 2px; border-bottom: #fff 1px solid" 
					  valign="top" align="left"><xsl:value-of select="cli_mail"/></th>
				 </tr>
				 <tr bgColor="#f9f9f9">
					  <td 
					  style="border-right: #fff 1px solid; padding-right: 4px; border-top: #fff 1px solid; padding-left: 4px; font-weight: normal; padding-bottom: 2px; border-left: #fff 1px solid; width: 50%; padding-top: 2px; border-bottom: #fff 1px solid" 
					  valign="top" align="right">Banco Beneficiario - Swift:</td>
					  <td
					  style="border-right: #fff 1px solid; padding-right: 4px; border-top: #fff 1px solid; padding-left: 4px; font-weight: normal; padding-bottom: 2px; border-left: #fff 1px solid; width: 50%; padding-top: 2px; border-bottom: #fff 1px solid" 
					  valign="top" align="left"><xsl:value-of select="cli_bcoBenefic"/></td>
				 </tr>
		  		 <xsl:if test='aba=$existe'>
				 <tr bgColor="#f9f9f9"> 
					<th 
					style="border-right: #fff 1px solid; padding-right: 4px; border-top: #fff 1px solid; padding-left: 4px; font-weight: normal; padding-bottom: 2px; border-left: #fff 1px solid; width: 50%; padding-top: 2px; border-bottom: #fff 1px solid" 
					valign="top" align="right">ABA:</th>
					<th 
					style="border-right: #fff 1px solid; padding-right: 4px; border-top: #fff 1px solid; padding-left: 4px; font-weight: normal; padding-bottom: 2px; border-left: #fff 1px solid; width: 50%; padding-top: 2px; border-bottom: #fff 1px solid" 
					valign="top" align="left"><xsl:value-of select="cli_aba"/> </th>
				 </tr>
				</xsl:if>
				 <tr bgColor="#f9f9f9">
					  <td 
					  style="border-right: #fff 1px solid; padding-right: 4px; border-top: #fff 1px solid; padding-left: 4px; font-weight: normal; padding-bottom: 2px; border-left: #fff 1px solid; width: 50%; padding-top: 2px; border-bottom: #fff 1px solid" 
					  valign="top" align="right">Cuenta de Destino:</td>
					  <td 
					  style="border-right: #fff 1px solid; padding-right: 4px; border-top: #fff 1px solid; padding-left: 4px; font-weight: normal; padding-bottom: 2px; border-left: #fff 1px solid; width: 50%; padding-top: 2px; border-bottom: #fff 1px solid" 
					  valign="top" align="left"><xsl:value-of select="cli_ctaDestino"/></td>
				 </tr>
		         <xsl:if test='tipcuenta=$existe'>
				 <tr bgColor="#f9f9f9"> 
					  <th 
					  style="border-right: #fff 1px solid; padding-right: 4px; border-top: #fff 1px solid; padding-left: 4px; font-weight: normal; padding-bottom: 2px; border-left: #fff 1px solid; width: 50%; padding-top: 2px; border-bottom: #fff 1px solid" 
					  valign="top" align="right">Tipo de Cuenta:</th>
					  <th 
					   style="border-right: #fff 1px solid; padding-right: 4px; border-top: #fff 1px solid; padding-left: 4px; font-weight: normal; padding-bottom: 2px; border-left: #fff 1px solid; width: 50%; padding-top: 2px; border-bottom: #fff 1px solid" 
					   valign="top" align="left"><xsl:value-of select="cli_tipcuenta"/> </th></tr>
				 </xsl:if>
			    <tr bgColor="#f9f9f9">
					  <td 
					  style="border-right: #fff 1px solid; padding-right: 4px; border-top: #fff 1px solid; padding-left: 4px; font-weight: normal; padding-bottom: 2px; border-left: #fff 1px solid; width: 50%; padding-top: 2px; border-bottom: #fff 1px solid" 
					  valign="top" align="right">Fecha de Abono:</td>
					  <td 
					  style="border-right: #fff 1px solid; padding-right: 4px; border-top: #fff 1px solid; padding-left: 4px; font-weight: normal; padding-bottom: 2px; border-left: #fff 1px solid; width: 50%; padding-top: 2px; border-bottom: #fff 1px solid" 
					  valign="top" align="left"><xsl:value-of select="cli_fechaAbono"/></td>
				</tr>
		        <tr bgColor="#f9f9f9">
					  <td 
					  style="border-right: #fff 1px solid; padding-right: 4px; border-top: #fff 1px solid; padding-left: 4px; font-weight: normal; padding-bottom: 2px; border-left: #fff 1px solid; width: 50%; padding-top: 2px; border-bottom: #fff 1px solid" 
					  valign="top" align="right">Motivo de Transferencia:</td>

					  <td 
					  style="border-right: #fff 1px solid; padding-right: 4px; border-top: #fff 1px solid; padding-left: 4px; font-weight: normal; padding-bottom: 2px; border-left: #fff 1px solid; width: 50%; padding-top: 2px; border-bottom: #fff 1px solid" 
					  valign="top" align="left"><xsl:value-of select="cli_motivo_transferencia"/></td>
				</tr>
			</table>
			<div style="clear:both;"></div>

			<table width="490" border="0" cellspacing="0" cellpadding="0">
			<tr>
					<td width="50%" align="center" valign="top" style="font-size:12px;padding-top:10px">
						<a href="#">
								<img alt="Promocion Bci" width="468" height="60" border="0" >
										<xsl:attribute name="src">
	  	      							<xsl:value-of select="banner" />
	  									</xsl:attribute>
								</img>
						</a>
					</td>
			</tr>
			<tr>
					<td align="left" valign="top" style="font-size:12px;padding-top:10px">Atentamente,<br/>
						<strong style="color:#999999">TBanc - El Banco a distancia</strong><br />
						<br />
							<img alt="logo_bci" width="99" height="49">
						            	<xsl:attribute name="src">
	      								<xsl:value-of select="logo" />
										</xsl:attribute>
							</img></td>
			</tr>
			</table></td>
  </tr>
  <tr>
    <td style="background:#f6f9fc;font-size:11px;padding:10px;"><div>
      <p><strong>Importante:</strong><br />
        - Este mail es generado de manera automatica, por favor no responda a este mensaje.<br />

        - Los comentarios aquí; ingresados son exclusiva responsabilidad de nuestro cliente, y no involucran en absoluto al Bci. <br />
      </p>
    </div></td>
  </tr>
</table>

</body>

</html>



</xsl:template>

</xsl:stylesheet>