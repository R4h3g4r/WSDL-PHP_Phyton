<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:param name="canal" />
	<xsl:param name="logo" />
	<xsl:param name="banner" />
	<xsl:param name="accionBanner" />
	<xsl:output method="html"
		omit-xml-declaration="yes"
		doctype-public="-//W3C//DTD XHTML 1.0 Transitional//EN"
		doctype-system="http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd" indent="yes"/>
		
	<xsl:template name="FormatDate">

    <xsl:param name="DateTime" />
    <xsl:param name="formatoFechaCompleta" />

    <xsl:variable name="dia">
      <xsl:value-of select="substring($DateTime,1,2)" />
    </xsl:variable>
	
	<xsl:value-of select="$dia" /> de 
	
	<xsl:variable name="mes">
      <xsl:value-of select="substring($DateTime,3,3)" />
    </xsl:variable>

	<xsl:choose>
      <xsl:when test="$mes = '/01'"> Enero </xsl:when>
      <xsl:when test="$mes = '/02'"> Febrero </xsl:when>
      <xsl:when test="$mes = '/03'"> Marzo </xsl:when>
      <xsl:when test="$mes = '/04'"> Abril </xsl:when>
      <xsl:when test="$mes = '/05'"> Mayo </xsl:when>
      <xsl:when test="$mes = '/06'"> Junio </xsl:when>
      <xsl:when test="$mes = '/07'"> Julio </xsl:when>
      <xsl:when test="$mes = '/08'"> Agosto </xsl:when>
      <xsl:when test="$mes = '/09'"> Septiembre </xsl:when>
      <xsl:when test="$mes = '/10'"> Octubre </xsl:when>
      <xsl:when test="$mes = '/11'"> Noviembre </xsl:when>
      <xsl:when test="$mes = '/12'"> Diciembre </xsl:when>
    </xsl:choose>
	
	
    <xsl:variable name="anio">
      <xsl:value-of select="substring($DateTime,7,10)" />
    </xsl:variable>
    
    <xsl:if test="$formatoFechaCompleta != ''">
    	 <xsl:value-of select="$anio" />
    </xsl:if>
	
  </xsl:template>
		
		
	<xsl:template match="comprobante">
		<html xmlns="http://www.w3.org/1999/xhtml">
		<head>
		
		<style type="text/css">
		body,td,th {
			font-family: Tahoma, Geneva, sans-serif;
			font-size: 12px;
			color: #333;
		}
		
		body {
			margin-left: 0px;
			margin-top: 0px;
			margin-right: 0px;
			margin-bottom: 0px;
		}
		a:link {
			color: #666;
		}
</style>
		
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
		<title><xsl:value-of select="titulo" /></title>
		</head>
		

   
   <body>
				
	<table width="616" border="0" align="center" cellpadding="0" cellspacing="0">
	  <tr>
		<td colspan="3"><img src="http://www.bci.cl/medios/BCI2/art/serviciosweb/header.jpg" width="617" height="124" /></td>
	  </tr>
	  <tr>
		<td width="14" rowspan="9" valign="top"><img src="http://www.bci.cl/medios/BCI2/art/serviciosweb/left.jpg" width="6" height="522" /></td>
		<td> <br> </br> </td>
		<td width="6" rowspan="9" valign="top"><img src="http://www.bci.cl/medios/BCI2/art/serviciosweb/rigth.jpg" width="6" height="522" /></td>
	  </tr>
	  <tr>
		<td width="597">
		  <table width="95%" border="0" align="center" cellpadding="0" cellspacing="0" style="background-color:#FF9; border:solid 1px #FC0; height:50px; color:#333333; font-family:Tahoma, Geneva, sans-serif; font-size:12px;">
			<tr>
			  <td style="padding-left:20px;"><p><xsl:value-of select="cabecera0" /></p></td>
			</tr>
		  </table> </td>
	  </tr>
	  <tr>
		<td style="font-size:12px; font-weight:bold; padding-left:20px; font-family:Tahoma, Geneva, sans-serif; padding-top:10px; padding-bottom:10px;">Estimado(A) : <xsl:value-of select="nombre-destinatario" /></td>
	  </tr>
	  <tr>
		<td><table width="95%" border="0" align="center" cellpadding="0" cellspacing="0" style="background-color:#f2f2f2; border:solid 1px #e3e3e3; height:40px; color:#333333; font-family:Tahoma, Geneva, sans-serif; font-size:12px;">
		  <tr>
			<td style="padding-left:20px;"> 
			
			<xsl:value-of select="cabecera2" />&#160;<strong>
			<xsl:call-template name="FormatDate">
               <xsl:with-param name="DateTime"  select="fecha-abono" />
            </xsl:call-template>
            </strong>
            <xsl:choose>
				<xsl:when test="otro-banco and otro-banco = 'S'">
					 <xsl:value-of select="cabecera4" />&#160;<xsl:value-of select="banco-destino" />.
				</xsl:when>
				<xsl:otherwise>
					 <xsl:value-of select="cabecera2.1" />&#160;<strong>N° <xsl:value-of select="cuenta-destino" />. </strong>
				</xsl:otherwise>
			</xsl:choose>
			
			</td>
			</tr>
		</table></td>
	  </tr>
	  <tr>
		<td style="padding-left:20px; padding-top:20px; padding-bottom:10px;"><xsl:value-of select="cabecera2.2" /></td>
	  </tr>
	  <tr>
		<td><table width="95%" border="0" align="center" cellpadding="0" cellspacing="0" style="border: solid 1px #CCC;">
		
		 <tr>
			<td width="49%" height="30" align="right" bgcolor="#c2c2c2"><strong>Monto pagado:</strong></td>
			<td width="4%" bgcolor="#c2c2c2"> </td>
			<td width="47%" bgcolor="#c2c2c2"> <strong>$<xsl:value-of select="monto" /></strong></td>
		  </tr>		
		  <tr>
	 		<td width="49%" height="30" align="right" bgcolor="#e3e3e3">Titular de la cuenta de origen: </td>
			<td width="4%" bgcolor="#e3e3e3"> </td>
			<td width="47%" bgcolor="#e3e3e3"><strong><xsl:value-of select="nombre-cliente" /></strong></td>
		  </tr>
		  
		  
		  <tr>
			<td height="30" align="right" bgcolor="#f2f2f2"><p>Banco de origen:</p></td>
			<td bgcolor="#f2f2f2"></td>
			<td bgcolor="#f2f2f2"><xsl:value-of select="banco-origen" /></td>
		  </tr>
		  <tr>
			<td height="30" align="right" bgcolor="#e3e3e3"><p>Mensaje:</p></td>
			<td bgcolor="#e3e3e3"> </td>
			<td bgcolor="#e3e3e3"> Pago Automotora </td>
		  </tr>
		  
		  <tr>
			<td height="30" align="right" bgcolor="#f2f2f2"><p>Número de la operación:</p></td>
			<td bgcolor="#f2f2f2"> </td>
			<td bgcolor="#f2f2f2"> <xsl:value-of select="numero-operacion" /> </td>
		  </tr>
		  
		  <tr>
			<td height="30" align="right" bgcolor="#e3e3e3"><p>Fecha abono:</p></td>
			<td bgcolor="#e3e3e3"> </td>
			<td bgcolor="#e3e3e3">
			<xsl:call-template name="FormatDate">
               <xsl:with-param name="DateTime"  select="fecha-abono" />
               <xsl:with-param name="formatoFechaCompleta">
               		S
               </xsl:with-param>               
            </xsl:call-template>			
			</td>
		  </tr>
		  
		  </table>
		  
		  <br> </br>
		  
	   </td>
	  </tr>
	  <tr>
		<td align="center"><br />   <img src="http://www.bci.cl/medios/BCI2/art/serviciosweb/servicios.jpg" width="577" height="87" /></td>
	  </tr>
	  <tr>
		<td><img src="http://www.bci.cl/medios/BCI2/art/serviciosweb/footer.jpg" width="603" height="73" /></td>
	  </tr>
	  <tr>
		<td style="font-size:10px; color:#999999; padding-left:20px; padding-right:20px;">
			<xsl:value-of select="pie-tbanc1" />&#160;<a href="http://www.tbanc.cl" target="_blank"><xsl:value-of select="link-tbanc" /></a>&#160;<xsl:value-of select="pie-tbanc2" />&#160;
			<br /><xsl:value-of select="pie-tbanc3" />
			<br /><xsl:value-of select="pie-tbanc4" />&#160;<a href="mailto:TBanc@bci.cl" target="_blank"><xsl:value-of select="email-tbanc" /></a>&#160;
			<xsl:value-of select="pie-tbanc5" />&#160;<a href="tel:600%20524%202424" value="+16005242424" target="_blank"><xsl:value-of select="tel-tbanc" /></a>&#160;
			<br /><xsl:value-of select="pie-tbanc6" />
	</td>
	  </tr>
	</table>
			
	</body>
	</html>
	</xsl:template>
</xsl:stylesheet>