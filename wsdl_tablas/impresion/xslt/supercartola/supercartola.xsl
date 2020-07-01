<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="superCartola">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<style type="text/css">
		.titulo {font-family: Arial, Helvetica, sans-serif;	font-size: 30px;color: 2C47A2;text-align: left;}
		.tabla {text-align: left;}
		.textotitulonom {FONT-SIZE: 30px; COLOR: #333333; FONT-FAMILY: arial, helvetica}
		.Cblanco { font-family: Arial, Helvetica, sans-serif; font-size: 14px; color: #FFFFFF}
		.Cnegro { font-family: Arial, Helvetica, sans-serif; font-size: 12px; color: #000000}
		.Cgris { font-family: Arial, Helvetica, sans-serif; font-size: 12px; color: #666666}
</style>
</head>
<body>
	<table>
		<tr>
			<td colspan="9" height="40" class="titulo">
				<span class="textotitulonom">Supercartola</span>
			</td>
		</tr>
	</table>
	<br/>

	<xsl:variable name="tieneCuenta">
		<xsl:value-of select="tieneCuenta"/>
	</xsl:variable>
	<xsl:if test="$tieneCuenta = 'true'">			
		<table class="tabla">
			<tr bgcolor="#CFCFCF">
				<td colspan="9" class="Cblanco">
					<strong>Cuenta Corriente: <xsl:value-of select="cuentaSeleccionada"/> </strong>
				</td>
			</tr>
			<tr bgcolor="#F5F5F5">
				<td colspan="3" class="Cnegro">
					Saldo Disponible
				</td>
				<td colspan="3" class="Cnegro">
					Saldo contable
				</td>
				<td colspan="3" class="Cnegro">
					Retenciones
				</td>
			</tr>
		
			<tr>
				<td colspan="3" class="Cnegro" align="left">
					<strong>
						<xsl:variable name="saldoCuentaDisponible">
							<xsl:value-of select="saldoCuentaDisponible"/>
						</xsl:variable>					
						<xsl:if test="$saldoCuentaDisponible != 'NDP'">
						$
						</xsl:if>						
						<xsl:value-of select="saldoCuentaDisponible"/>
					</strong>
				</td>
				<td colspan="3" class="Cnegro" align="left">
					<xsl:variable name="saldoCuentaContable">
						<xsl:value-of select="saldoCuentaContable"/>
					</xsl:variable>		
					<xsl:if test="$saldoCuentaContable != 'NDP'">
					$
					</xsl:if>					
					<xsl:value-of select="saldoCuentaContable"/>
				</td>
				<td colspan="3" class="Cnegro" align="left">
					<xsl:variable name="retencionesCuenta">
						<xsl:value-of select="retencionesCuenta"/>
					</xsl:variable>		
					<xsl:if test="$retencionesCuenta != 'NDP'">
					$
					</xsl:if>				
					<xsl:value-of select="retencionesCuenta"/>					
				</td>
			</tr>
				
			<tr bgcolor="#F5F5F5">
				<td colspan="3" class="Cnegro">
					Sobregiro Disponible
				</td>
				<td colspan="3" class="Cnegro">
					Sobregiro Utilizado
				</td>
				<td colspan="3" class="Cnegro">
					Linea de Emergencia Disponible
				</td>
			</tr>
				
			<tr >
				<td colspan="3" class="Cnegro" align="left">
					<strong>
						<xsl:variable name="sobregiroDisponible">
							<xsl:value-of select="sobregiroDisponible"/>
						</xsl:variable>		
						<xsl:if test="$sobregiroDisponible != 'NDP'">
						$
						</xsl:if>					
						<xsl:value-of select="sobregiroDisponible"/>
					</strong>
				</td>
				<td colspan="3" class="Cnegro" align="left">
					<xsl:variable name="sobregiroUtilizado">
						<xsl:value-of select="sobregiroUtilizado"/>
					</xsl:variable>		
					<xsl:if test="$sobregiroUtilizado != 'NDP'">
					$
					</xsl:if>				
					<xsl:value-of select="sobregiroUtilizado"/>
				</td>
				<td colspan="3" class="Cnegro" align="left">
					<xsl:variable name="lineaEmergenciaDisponible">
						<xsl:value-of select="lineaEmergenciaDisponible"/>
					</xsl:variable>		
					<xsl:if test="$lineaEmergenciaDisponible != 'NDP'">
					$
					</xsl:if>				
					<xsl:value-of select="lineaEmergenciaDisponible"/>
				</td>
			</tr>
				
		</table>
		<br/>
	</xsl:if>		
	
	<xsl:if test="$tieneCuenta = 'false'">				
		<table class="tabla">
			<tr bgcolor="#CFCFCF">
				<td colspan="9" class="Cblanco">
					<strong>Cuenta Corriente</strong>
				</td>
			</tr>
			<tr bgcolor="#F5F5F5">
				<td class="Cnegro">
					
				</td>
				<td colspan="8" class="Cnegro">
					Mensaje: Usted no posee Cuenta Corriente.
				</td>
			</tr>            
		</table>
		<br/>	
	</xsl:if>		
	
	<xsl:variable name="tieneTarjeta">
		<xsl:value-of select="tieneTarjeta"/>
	</xsl:variable>
	<xsl:if test="$tieneTarjeta = 'true'">		
		<table class="tabla">
			<tr bgcolor="#CFCFCF">
				<td colspan="9" bgcolor="#CFCFCF" class="Cblanco">
					<strong>Tarjeta de Crédito: <xsl:value-of select="tarjetaSeleccionada"/></strong>
				</td>
			</tr>
			<tr bgcolor="#F5F5F5">
				<td colspan="3" class="Cnegro">
					Monto Nacional Disponible
				</td>
				<td colspan="6" class="Cnegro">
					Monto Nacional Utilizado
				</td>
			</tr>
		
			<tr>
				 <td colspan="3" class="Cnegro"  align="left">
				 	<strong>
						<xsl:variable name="montoNacionalDisponible">
							<xsl:value-of select="montoNacionalDisponible"/>
						</xsl:variable>		
						<xsl:if test="$montoNacionalDisponible != 'NDP'">
						$
						</xsl:if>				 	
				 		<xsl:value-of select="montoNacionalDisponible"/>
				 	</strong>
				 </td>
				 <td colspan="6" class="Cnegro"  align="left">
					<xsl:variable name="montoNacionalUtilizado">
						<xsl:value-of select="montoNacionalUtilizado"/>
					</xsl:variable>		
					<xsl:if test="$montoNacionalUtilizado != 'NDP'">
					$
					</xsl:if>					 
				 	<xsl:value-of select="montoNacionalUtilizado"/>
				 </td>
			</tr>
				
			<tr bgcolor="#F5F5F5">
				<td colspan="3" class="Cnegro">
					Monto Internacional Disponible
				</td>
				<td colspan="6" class="Cnegro">
					Monto Internacional Utilizado
				</td>
			</tr>
				
			<tr >
				<td colspan="3" class="Cnegro" align="left">
					<strong> 
						<xsl:variable name="montoInternacionalDisponible">
							<xsl:value-of select="montoInternacionalDisponible"/>
						</xsl:variable>		
						<xsl:if test="$montoInternacionalDisponible != 'NDP'">
						US$ 
						</xsl:if>					
						<xsl:value-of select="montoInternacionalDisponible"/>
					</strong>
				</td>
				<td colspan="6" class="Cnegro" align="left">
					<xsl:variable name="montoInteracionalUtilizado">
						<xsl:value-of select="montoInteracionalUtilizado"/>
					</xsl:variable>		
					<xsl:if test="$montoInteracionalUtilizado != 'NDP'">
					US$ 
					</xsl:if>				
					<xsl:value-of select="montoInteracionalUtilizado"/>
				</td>
			</tr>
		</table>
		<br/>
	</xsl:if>

	<xsl:if test="$tieneTarjeta = 'false'">			
		<table class="tabla">
			<tr bgcolor="#CFCFCF">
				<td colspan="9" class="Cblanco">
					<strong>Tarjeta de Crédito</strong>
				</td>
			</tr>
			<tr bgcolor="#F5F5F5">
				<td class="Cnegro">
					
				</td>
				<td colspan="8" class="Cnegro">
					Mensaje: Usted no posee Tarjeta de Crédito.
				</td>
			</tr>            
		</table>
		<br/>	
	</xsl:if>
	
	<xsl:variable name="tieneCredito">
		<xsl:value-of select="tieneCredito"/>
	</xsl:variable>
	<xsl:if test="$tieneCredito = 'true'">	
		<table width="690" border="0" cellspacing="0" cellpadding="0" class="tabla">
			<tr bgcolor="#CFCFCF">
				<td colspan="9" bgcolor="#CFCFCF" class="Cblanco">
					<strong>Crédito de Consumo</strong>
				</td>
			</tr>
			<tr bgcolor="#F5F5F5">
				<td colspan="3" class="Cnegro">
					Crédito Aprobado
				</td>
				<td colspan="6" class="Cnegro">
					Monto Utilizado
				</td>
			</tr>
		
			<tr>
				<td colspan="3" class="Cnegro" align="left">
					<strong>
						<xsl:variable name="creditoAprobado">
							<xsl:value-of select="creditoAprobado"/>
						</xsl:variable>		
						<xsl:if test="$creditoAprobado != 'NDP'">
						$ 
						</xsl:if>					
						<xsl:value-of select="creditoAprobado"/>
					</strong>
				</td>
				<td colspan="6" class="Cnegro" align="left">
					<xsl:variable name="montoCreditoUtilizado">
						<xsl:value-of select="montoCreditoUtilizado"/>
					</xsl:variable>		
					<xsl:if test="$montoCreditoUtilizado != 'NDP'">
					$ 
					</xsl:if>				
					<xsl:value-of select="montoCreditoUtilizado"/>
				</td>
			</tr>              
		</table>
		<br/>
	</xsl:if>
	
	<xsl:if test="$tieneCredito = 'false'">
		<table class="tabla">
			<tr bgcolor="#CFCFCF">
				<td colspan="9" class="Cblanco">
					<strong>Crédito de Consumo</strong>
				</td>
			</tr>
			<tr bgcolor="#F5F5F5">
				<td class="Cnegro">
					
				</td>
				<td colspan="8" class="Cnegro">
					Mensaje: Usted no posee Crédito.
				</td>
			</tr>            
		</table>
		<br/>
	</xsl:if>
	
</body>
</html>

</xsl:template>

</xsl:stylesheet>