<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template match="superCartola">
		<html xmlns="http://www.w3.org/1999/xhtml">
			<head>
				<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
				<style type="text/css">
					.titulo {font-family: Arial, Helvetica, sans-serif; font-size: 30px;color: 2C47A2;text-align: left;}
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
				<br />

				<xsl:variable name="tieneCC">
					<xsl:value-of select="tieneCC" />
				</xsl:variable>
				<xsl:if test="$tieneCC = 'true'">
					<table class="tabla">
						<tr bgcolor="#CFCFCF">
							<td colspan="9" class="Cblanco">
								<strong>
									Cuenta:
									<xsl:value-of select="cuentaSeleccionada" />
								</strong>
							</td>
						</tr>
						<tr bgcolor="#F5F5F5">
							<td colspan="3" class="Cnegro">
								Saldo Disponible
				</td>
							<td colspan="3" class="Cnegro">
								Saldo Contable
				</td>
							<td colspan="3" class="Cnegro">
								Retenciones
				</td>
						</tr>

						<tr>
							<td colspan="3" class="Cnegro" align="left">
								<strong>
									<xsl:variable name="saldoCuentaDisponible">
										<xsl:value-of select="saldoCuentaDisponible" />
									</xsl:variable>
									<xsl:if test="$saldoCuentaDisponible != 'NDP'">
										$
									</xsl:if>
									<xsl:value-of select="saldoCuentaDisponible" />
								</strong>
							</td>
							<td colspan="3" class="Cnegro" align="left">
								<strong>
									<xsl:variable name="saldoCuentaContable">
										<xsl:value-of select="saldoCuentaContable" />
									</xsl:variable>
									<xsl:if test="$saldoCuentaContable != 'NDP'">
										$
									</xsl:if>
									<xsl:value-of select="saldoCuentaContable" />
								</strong>
							</td>
							<td colspan="3" class="Cnegro" align="left">
								<strong>
									<xsl:variable name="retencionesCuenta">
										<xsl:value-of select="retencionesCuenta" />
									</xsl:variable>
									<xsl:if test="$retencionesCuenta != 'NDP'">
										$
									</xsl:if>
									<xsl:value-of select="retencionesCuenta" />
								</strong>
							</td>
						</tr>
					</table>
					<br />
				</xsl:if>

				<xsl:variable name="tieneMX">
					<xsl:value-of select="tieneMX" />
				</xsl:variable>
				<xsl:if test="$tieneMX = 'true'">
					<table class="tabla">
						<tr bgcolor="#CFCFCF">
							<td colspan="9" class="Cblanco">
								<strong>
									Cuenta:
									<xsl:value-of select="cuentaSeleccionadaMX" />
								</strong>
							</td>
						</tr>
						<tr bgcolor="#F5F5F5">
							<td colspan="5" class="Cnegro">
								Saldo Disponible
				</td>
							<td colspan="4" class="Cnegro">
								Saldo Contable
				</td>
						</tr>
						<tr>
							<td colspan="5" class="Cnegro" align="left">
								<strong>
									<xsl:variable name="saldoCuentaDisponibleMX">
										<xsl:value-of select="saldoCuentaDisponibleMX" />
									</xsl:variable>
									<xsl:if test="$saldoCuentaDisponibleMX != 'NDP'">

									</xsl:if>
									<xsl:value-of select="saldoCuentaDisponibleMX" />
								</strong>
							</td>
							<td colspan="4" class="Cnegro" align="left">
								<strong>
									<xsl:variable name="saldoCuentaContableMX">
										<xsl:value-of select="saldoCuentaContableMX" />
									</xsl:variable>
									<xsl:if test="$saldoCuentaContableMX != 'NDP'">

									</xsl:if>
									<xsl:value-of select="saldoCuentaContableMX" />
								</strong>
							</td>
						</tr>
					</table>
					<br />
				</xsl:if>

				<xsl:variable name="tieneLSG">
					<xsl:value-of select="tieneLSG" />
				</xsl:variable>
				<xsl:if test="$tieneLSG = 'true'">
					<table class="tabla">
						<tr bgcolor="#CFCFCF">
							<td colspan="9" class="Cblanco">
								<strong>
									Linea de Sobregiro:
									<xsl:value-of select="cuentaSeleccionadaLSG" />
								</strong>
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
								Linea de Emergencia
				</td>
						</tr>

						<tr>
							<td colspan="3" class="Cnegro" align="left">
								<strong>
									<xsl:variable name="sobregiroDisponible">
										<xsl:value-of select="sobregiroDisponible" />
									</xsl:variable>
									<xsl:if test="$sobregiroDisponible != 'NDP'">
										$
									</xsl:if>
									<xsl:value-of select="sobregiroDisponible" />
								</strong>
							</td>
							<td colspan="3" class="Cnegro" align="left">
								<strong>
									<xsl:variable name="sobregiroUtilizado">
										<xsl:value-of select="sobregiroUtilizado" />
									</xsl:variable>
									<xsl:if test="$sobregiroUtilizado != 'NDP'">
										$
									</xsl:if>
									<xsl:value-of select="sobregiroUtilizado" />
								</strong>
							</td>
							<td colspan="3" class="Cnegro" align="left">
								<strong>
									<xsl:variable name="lineaEmergenciaDisponible">
										<xsl:value-of select="lineaEmergenciaDisponible" />
									</xsl:variable>
									<xsl:if test="$lineaEmergenciaDisponible != 'NDP'">
										$
									</xsl:if>
									<xsl:value-of select="lineaEmergenciaDisponible" />
								</strong>
							</td>
						</tr>

					</table>
					<br />
				</xsl:if>

				<xsl:variable name="tieneTarjeta">
					<xsl:value-of select="tieneTarjeta" />
				</xsl:variable>
				<xsl:if test="$tieneTarjeta = 'true'">
					<table class="tabla">
						<tr bgcolor="#CFCFCF">
							<td colspan="9" bgcolor="#CFCFCF" class="Cblanco">
								<strong>
									Tarjeta de Credito:
									<xsl:value-of select="tarjetaSeleccionada" />
								</strong>
							</td>
						</tr>
						<tr bgcolor="#F5F5F5">
							<td colspan="3" class="Cnegro">
								Cupo Nacional Total
				</td>
							<td colspan="3" class="Cnegro">
								Cupo Nacional Utilizado
				</td>
							<td colspan="3" class="Cnegro">
								Cupo Nacional Disponible
				</td>
						</tr>
						<tr>
							<td colspan="3" class="Cnegro" align="left">
								<strong>
									<xsl:variable name="cupoNacionalTotal">
										<xsl:value-of select="cupoNacionalTotal" />
									</xsl:variable>
									<xsl:if test="$cupoNacionalTotal != 'NDP'">
										$
									</xsl:if>
									<xsl:value-of select="cupoNacionalTotal" />
								</strong>
							</td>
							<td colspan="3" class="Cnegro" align="left">
								<strong>
									<xsl:variable name="cupoNacionalUtilizado">
										<xsl:value-of select="cupoNacionalUtilizado" />
									</xsl:variable>
									<xsl:if test="$cupoNacionalUtilizado != 'NDP'">
										$
									</xsl:if>
									<xsl:value-of select="cupoNacionalUtilizado" />
								</strong>
							</td>
							<td colspan="3" class="Cnegro" align="left">
								<strong>
									<xsl:variable name="cupoNacionalDisponible">
										<xsl:value-of select="cupoNacionalDisponible" />
									</xsl:variable>
									<xsl:if test="$cupoNacionalDisponible != 'NDP'">
										$
									</xsl:if>
									<xsl:value-of select="cupoNacionalDisponible" />
								</strong>
							</td>
						</tr>

						<tr bgcolor="#F5F5F5">
							<td colspan="3" class="Cnegro">
								Cupo Internacional Total
				</td>
							<td colspan="3" class="Cnegro">
								Cupo Internacional Utilizado
				</td>
							<td colspan="3" class="Cnegro">
								Cupo Internacional Disponible
				</td>
						</tr>
						<tr>
							<td colspan="3" class="Cnegro" align="left">
								<strong>
									<xsl:variable name="cupoInternacionalTotal">
										<xsl:value-of select="cupoInternacionalTotal" />
									</xsl:variable>
									<xsl:if test="$cupoInternacionalTotal != 'NDP'">
										US$
									</xsl:if>
									<xsl:value-of select="cupoInternacionalTotal" />
								</strong>
							</td>
							<td colspan="3" class="Cnegro" align="left">
								<strong>
									<xsl:variable name="cupoInternacionalUtilizado">
										<xsl:value-of select="cupoInternacionalUtilizado" />
									</xsl:variable>
									<xsl:if test="$cupoInternacionalUtilizado != 'NDP'">
										US$
									</xsl:if>
									<xsl:value-of select="cupoInternacionalUtilizado" />
								</strong>
							</td>
							<td colspan="3" class="Cnegro" align="left">
								<strong>
									<xsl:variable name="cupoInternacionalDisponible">
										<xsl:value-of select="cupoInternacionalDisponible" />
									</xsl:variable>
									<xsl:if test="$cupoInternacionalDisponible != 'NDP'">
										US$
									</xsl:if>
									<xsl:value-of select="cupoInternacionalDisponible" />
								</strong>
							</td>
						</tr>
					</table>
					<br />
				</xsl:if>


			</body>
		</html>

	</xsl:template>

</xsl:stylesheet>