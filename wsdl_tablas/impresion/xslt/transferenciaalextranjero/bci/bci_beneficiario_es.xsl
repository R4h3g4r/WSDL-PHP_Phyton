<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="msjDestino">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
</head>
<body>
<table 
style="border-right: #ccc 1px solid; padding-right: 10px; border-top: #ccc 1px solid; padding-left: 10px; padding-bottom: 10px; font: 12px Arial, Helvetica, sans-serif; border-left: #ccc 1px solid; padding-top: 10px; border-bottom: #ccc 1px solid" 
cellspacing="0" cellpadding="0" width="500" border="0">
 <tbody>
  <tr>
    <td 
    style="font-size: 18px; padding-bottom: 10px; COLOR: #fff; padding-top: 10px; background-color: #090; text-align: center"><span 
      style="font-size: 18px; padding-bottom: 10px; COLOR: #fff; padding-top: 10px; background-color: #090; text-align: center"><strong>Comprobante 
      de Transferencia Internacional</strong></span></td></tr>
  <tr>

    <td 
    style="padding-right: 10px; font-size: 12px; padding-bottom: 10px; vertical-align: top; padding-top: 10px">
      <p><STRONG>ESTIMADO(A) <xsl:value-of select="ben_nombreCompleto"/> </STRONG>:</p>
      <p>De acuerdo con lo instruido por nuestro(a) cliente <xsl:value-of select="cli_nombreCliente"/>, le 
      informamos que con fecha <xsl:value-of select="ben_fecsoltrans"/> se ha realizado una solicitud de 
      transferencia de fondos hacia su cuenta nro. #<xsl:value-of select="ben_cuentaDest"/>.</p>
      <p>El detalle de esta operación es el siguiente:</p>
      <table 
      style="font: 12px Arial, Helvetica, sans-serif; WIDTH: 490px; COLOR: #333333" 
      cellspacing="0" cellpadding="0" align="left" border="0">

<tbody>
        <tr bgColor="#fffa9d">

          <th 
          style="border-right: #fff 1px solid; background-color:#F2F5A9;  padding-right: 4px; border-top: #fff 1px solid; padding-left: 4px; font-weight: normal; padding-bottom: 2px; border-left: #fff 1px solid; width: 50%; padding-top: 2px; border-bottom: #fff 1px solid" 
          valign="top" align="right" bgColor="#F2F5A9"><strong>Monto transferido:</strong></th>
          <th 
          style="border-right: #fff 1px solid; background-color:#F2F5A9; padding-right: 4px; border-top: #fff 1px solid; padding-left: 4px; font-weight: normal; padding-bottom: 2px; border-left: #fff 1px solid; width: 50%; padding-top: 2px; border-bottom: #fff 1px solid" 
          valign="top" align="left"><strong><xsl:value-of select="tran_moneda"/><xsl:text> </xsl:text><xsl:value-of select="tran_monto"/></strong></th></tr>
        <tr bgColor="#f9f9f9">
          <th 
          style="border-right: #fff 1px solid; padding-right: 4px; border-top: #fff 1px solid; padding-left: 4px; font-weight: normal; padding-bottom: 2px; border-left: #fff 1px solid; width: 50%; padding-top: 2px; border-bottom: #fff 1px solid" 
          valign="top" align="right">Banco de origen:</th>
          <th 
          style="border-right: #fff 1px solid; padding-right: 4px; border-top: #fff 1px solid; padding-left: 4px; font-weight: normal; padding-bottom: 2px; border-left: #fff 1px solid; width: 50%; padding-top: 2px; border-bottom: #fff 1px solid" 
          valign="top" align="left">TBANC/BCI/NOVA</th></tr>
        <tr bgColor="#f9f9f9">
          <td 
          style="border-right: #fff 1px solid; padding-right: 4px; border-top: #fff 1px solid; padding-left: 4px; font-weight: normal; padding-bottom: 2px; border-left: #fff 1px solid; width: 50%; padding-top: 2px; border-bottom: #fff 1px solid" 
          valign="top" align="right">Banco Beneficiario - Swift:</td>

          <td
          style="border-right: #fff 1px solid; padding-right: 4px; border-top: #fff 1px solid; padding-left: 4px; font-weight: normal; padding-bottom: 2px; border-left: #fff 1px solid; width: 50%; padding-top: 2px; border-bottom: #fff 1px solid" 
          valign="top" align="left"><xsl:value-of select="ben_banco"/> - <xsl:value-of select="ben_codswift"/></td></tr>
        <tr bgColor="#f9f9f9">
          <td 
          style="border-right: #fff 1px solid; padding-right: 4px; border-top: #fff 1px solid; padding-left: 4px; font-weight: normal; padding-bottom: 2px; border-left: #fff 1px solid; width: 50%; padding-top: 2px; border-bottom: #fff 1px solid" 
          valign="top" align="right">Banco Intermediario - Swift:</td>
          <td 
          style="border-right: #fff 1px solid; padding-right: 4px; BORDER-TOP: #fff 1px solid; padding-left: 4px; font-weight: normal; padding-bottom: 2px; border-left: #fff 1px solid; width: 50%; padding-top: 2px; border-bottom: #fff 1px solid" 
          valign="top" align="left"><xsl:value-of select="ben_nombancointer"/> - <xsl:value-of select="ben_codswiftbancointer"/></td></tr>
        
       
       
       
       
        
       
       <xsl:variable name="codigo"><xsl:value-of select="codigo"/></xsl:variable>
       <xsl:variable name="convenio"><xsl:value-of select="convenio"/></xsl:variable>
       
       <xsl:if test="$convenio = 'true'">
	        <tr bgColor="#f9f9f9">
	          <td 
	          style="border-right: #fff 1px solid; padding-right: 4px; border-top: #fff 1px solid; padding-left: 4px; font-weight: normal; padding-bottom: 2px; border-left: #fff 1px solid; width: 50%; padding-top: 2px; border-bottom: #fff 1px solid" 
	          valign="top" align="right">ABA:</td>
	          <td 
	          style="border-right: #fff 1px solid; padding-right: 4px; border-top: #fff 1px solid; padding-left: 4px; font-weight: normal; padding-bottom: 2px; border-left: #fff 1px solid; width: 50%; padding-top: 2px; border-bottom: #fff 1px solid" 
	          valign="top" align="left">-------</td>  
	        </tr>
        </xsl:if>
        <xsl:if test="$codigo = '1'">
	        <tr bgColor="#f9f9f9">
	          <td 
	          style="border-right: #fff 1px solid; padding-right: 4px; border-top: #fff 1px solid; padding-left: 4px; font-weight: normal; padding-bottom: 2px; border-left: #fff 1px solid; width: 50%; padding-top: 2px; border-bottom: #fff 1px solid" 
	          valign="top" align="right">ABA:</td>
	          <td 
	          style="border-right: #fff 1px solid; padding-right: 4px; border-top: #fff 1px solid; padding-left: 4px; font-weight: normal; padding-bottom: 2px; border-left: #fff 1px solid; width: 50%; padding-top: 2px; border-bottom: #fff 1px solid" 
	          valign="top" align="left"><xsl:value-of select="ben_aba"/></td>  
	        </tr>
        </xsl:if>
        <xsl:if test="codigo = '0'">
	        <tr bgColor="#f9f9f9">
	          <td 
	          style="border-right: #fff 1px solid; padding-right: 4px; border-top: #fff 1px solid; padding-left: 4px; font-weight: normal; padding-bottom: 2px; border-left: #fff 1px solid; width: 50%; padding-top: 2px; border-bottom: #fff 1px solid" 
	          valign="top" align="right">CUIT:</td>
	          <td 
	          style="border-right: #fff 1px solid; padding-right: 4px; border-top: #fff 1px solid; padding-left: 4px; font-weight: normal; padding-bottom: 2px; border-left: #fff 1px solid; width: 50%; padding-top: 2px; border-bottom: #fff 1px solid" 
	          valign="top" align="left"><xsl:value-of select="ben_cuit"/></td>  
	        </tr>
        </xsl:if>
        
        
        
        
        
        <tr bgColor="#f9f9f9">
          <td 
          style="border-right: #fff 1px solid; padding-right: 4px; border-top: #fff 1px solid; padding-left: 4px; font-weight: normal; padding-bottom: 2px; border-left: #fff 1px solid; width: 50%; padding-top: 2px; border-bottom: #fff 1px solid" 
          valign="top" align="right">País:</td>
          <td 
          style="border-right: #fff 1px solid; padding-right: 4px; border-top: #fff 1px solid; padding-left: 4px; font-weight: normal; padding-bottom: 2px; border-left: #fff 1px solid; width: 50%; padding-top: 2px; border-bottom: #fff 1px solid" 
          valign="top" align="left"><xsl:value-of select="ben_pais"/></td></tr>
        <tr bgColor="#f9f9f9">
          <td 
          style="border-right: #fff 1px solid; padding-right: 4px; border-top: #fff 1px solid; padding-left: 4px; font-weight: normal; padding-bottom: 2px; border-left: #fff 1px solid; width: 50%; padding-top: 2px; border-bottom: #fff 1px solid" 
          valign="top" align="right">Ciudad:</td>
          <td 
          style="border-right: #fff 1px solid; padding-right: 4px; border-top: #fff 1px solid; padding-left: 4px; font-weight: normal; padding-bottom: 2px; border-left: #fff 1px solid; width: 50%; padding-top: 2px; border-bottom: #fff 1px solid" 
          valign="top" align="left"><xsl:value-of select="ben_ciudad"/></td></tr>
        <tr bgColor="#f9f9f9">

          <td 
          style="border-right: #fff 1px solid; padding-right: 4px; border-top: #fff 1px solid; padding-left: 4px; font-weight: normal; padding-bottom: 2px; border-left: #fff 1px solid; width: 50%; padding-top: 2px; border-bottom: #fff 1px solid" 
          valign="top" align="right">Fecha de Abono:</td>
          <td 
          style="border-right: #fff 1px solid; padding-right: 4px; border-top: #fff 1px solid; padding-left: 4px; font-weight: normal; padding-bottom: 2px; border-left: #fff 1px solid; width: 50%; padding-top: 2px; border-bottom: #fff 1px solid" 
          valign="top" align="left"><xsl:value-of select="tran_fecval"/></td></tr>
        <tr bgColor="#f9f9f9">
          <td 
          style="border-right: #fff 1px solid; padding-right: 4px; border-top: #fff 1px solid; padding-left: 4px; font-weight: normal; padding-bottom: 2px; border-left: #fff 1px solid; width: 50%; padding-top: 2px; border-bottom: #fff 1px solid" 
          valign="top" align="right">Motivo de Transferencia:</td>
          <td 
          style="border-right: #fff 1px solid; padding-right: 4px; border-top: #fff 1px solid; padding-left: 4px; font-weight: normal; padding-bottom: 2px; border-left: #fff 1px solid; width: 50%; padding-top: 2px; border-bottom: #fff 1px solid" 
          valign="top" align="left"><xsl:value-of select="tran_motivo"/></td></tr></tbody></table>
	<p></p>
      <div style="clear: both"></div>

      <table cellspacing="0" cellpadding="0" width="490" border="0">
        <tbody>
        <tr>
          <td style="font-size: 12px; padding-top: 10px" valign="top" align="middle" 
          width="50%">
                 <a href="#">
	  	        	<img width="468" height="60" border="0" >
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
         </tbody></table></td></tr>
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