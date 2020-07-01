<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format">
	<!--Variables-->
	<xsl:variable name="bgcolor">#737277</xsl:variable>
	<xsl:variable name="bgcolorcalendariomenor">#FFFFFF</xsl:variable>
	<xsl:variable name="bgcolorcalendarioigual">#BDBDBD</xsl:variable>
	<xsl:variable name="bgcolorcalendariomayor">#FFFFFF</xsl:variable>
	<xsl:variable name="bgcolorInversion">#58ACFA</xsl:variable> <!-- color inversion -->
	<xsl:variable name="bgcolorPendiente">#F3F781</xsl:variable><!--color pendientes -->
	<!--<xsl:variable name="iconoIngreso">#04B431</xsl:variable>-->
	<xsl:variable name="bgcolorojo">#FA5858</xsl:variable>
	<xsl:variable name="bgcolortexto">#FFFFFF</xsl:variable>
	<xsl:variable name="bgcolortotal">#FFFFFF</xsl:variable> <!-- Color de los dias de la semana arriba -->
	<xsl:variable name="lineas">#CCCCCC</xsl:variable>
	<xsl:variable name="lineasBlanco">#FFFFFF</xsl:variable>
	<xsl:variable name="txt">#FFFFF</xsl:variable>
	<xsl:variable name="txtCabecera">#000000</xsl:variable> <!--texto de los dias -->
	<xsl:variable name="txt-azul-claro">#0061A5</xsl:variable>
	<xsl:variable name="txt-azul-oscuro">#000000</xsl:variable>
	<xsl:variable name="alto-filas">5mm</xsl:variable>
	<xsl:variable name="espacio-subtitulos">2mm</xsl:variable>
	<xsl:variable name="borde-tabla">#CCCCCC</xsl:variable>
	<xsl:variable name="espacio-texto-celda-left">2mm</xsl:variable>
	<xsl:variable name="espacio-texto-celda-top">1mm</xsl:variable>
	<xsl:variable name="size-fuente-margen">7pt</xsl:variable>
	<xsl:variable name="txtblanco">white</xsl:variable>
	
	<xsl:variable name="rutaImagenes"><xsl:value-of select="calendario/rutaImagen"/></xsl:variable>
	<xsl:variable name="iconoMensaje"><xsl:value-of select="calendario/rutaImagen"/>/ico_mensaje_calendario2.GIF</xsl:variable>
    <xsl:variable name="iconoCompromiso"><xsl:value-of select="calendario/rutaImagen"/>/fondo_compromisos.gif</xsl:variable>
	<xsl:variable name="iconoIngreso"><xsl:value-of select="calendario/rutaImagen"/>/fondo_ingresos.gif</xsl:variable>
	<xsl:variable name="iconoPendiente"><xsl:value-of select="calendario/rutaImagen"/>/fondo_pendientes.gif</xsl:variable>
	<xsl:variable name="iconoInversiones"><xsl:value-of select="calendario/rutaImagen"/>/fondo_inversiones.gif</xsl:variable>

	<xsl:template match="/">
		<fo:root xmlns:fo="http://www.w3.org/1999/XSL/Format">
			<!-- Propiedades pagina -->
			<fo:layout-master-set>
				<fo:simple-page-master master-name="pagina"
					page-height="50cm"
					page-width="25.5cm"
					margin-top="1cm"
					margin-bottom="1cm"
					margin-left="2cm"
					margin-right="2cm">
					<fo:region-body margin-top="2.5cm" margin-bottom="2.5cm" background-color="#ffffff"/> 
					<fo:region-before extent="3cm"/>
					<fo:region-after extent="2cm"/>
				</fo:simple-page-master>
			</fo:layout-master-set>
			<!-- Propiedades pagina -->
			<fo:page-sequence master-reference="pagina" initial-page-number="2" language="en" country="us" >
				<fo:static-content flow-name="xsl-region-before">
					<!-- imagen bci -->
					<fo:block space-after="1mm">
						<fo:table table-layout="fixed">
							<fo:table-column column-width="5cm"/>
							<fo:table-column column-width="5cm"/>
							<fo:table-column column-width="5cm"/>
							<fo:table-column column-width="5cm"/>
							<fo:table-body>
								<fo:table-row>
									<fo:table-cell>
										<fo:external-graphic>
											<xsl:attribute name="src">
												<xsl:value-of select="calendario/rutaImagen"/>/02-logo-bci.gif
											</xsl:attribute>
										</fo:external-graphic>
									</fo:table-cell>
										<fo:table-cell>

											<!-- nombre cliente -->
												<fo:block font-size="10pt" font-weight="bold" space-before="10mm" space-after="1mm" text-align="left" color="{$txt}">
													<xsl:value-of select="calendario/nombre"/>
												</fo:block>
											<!-- nombre cliente -->
										
										</fo:table-cell>
										
										<fo:table-cell>
	
										<!-- rut cliente -->
											<fo:block font-size="10pt" font-weight="bold" space-before="10mm" space-after="1mm" text-align="right" color="{$txt}">
												<fo:inline color="{$txt}">RUT: </fo:inline>
												<fo:inline color="{$txt}"><xsl:value-of select="calendario/rut"/></fo:inline>
											</fo:block>
										<!-- rut cliente -->

									</fo:table-cell>
									<fo:table-cell padding-before="1cm">
										<fo:block font-size="9pt" font-weight="bold" space-after="1mm" text-align="right" color="{$txt}">
										<xsl:value-of select="calendario/fechaImpresion"/>
										</fo:block>
									</fo:table-cell>
								</fo:table-row>
							</fo:table-body>
						</fo:table>
					</fo:block>
					<!-- imagen bci -->
				</fo:static-content>
				<!--<fo:static-content flow-name="xsl-region-after" >
					<fo:block font-size="6pt" font-weight="normal" space-after="1mm" text-align="left" color="{$txt}">
						Atención a Clientes Bci Directo: 600-692-8000
					</fo:block>
					<fo:block font-size="6pt" font-weight="normal" space-after="1mm" text-align="left" color="{$txt}">
						Dirección: Av. El Golf 125, Las Condes, Santiago/Dirección para notificaciones Legales: Agustinas 1161, 7° piso, Santiago Centro, Santiago.
					</fo:block>
					<fo:block font-size="5pt" font-weight="bold" space-after="1mm" text-align="right" color="{$txt}">
						Pagina <fo:page-number/>
					</fo:block
				</fo:static-content>-->
			
				
				<fo:flow flow-name="xsl-region-body">
				<xsl:call-template name="datosCalendario" />
					<xsl:call-template name="contenido"/>
				
				
				</fo:flow>
			</fo:page-sequence> 
		</fo:root>
	</xsl:template>
	<xsl:template name="datosCalendario">
<!-- tabla 1 -->
<!-- cabecera cliente

<fo:block font-size="5pt" space-after="1mm">
	<fo:table table-layout="fixed" width="19cm">
	<fo:table-column column-width="13cm"/>
	<fo:table-column column-width="5cm"/>
	<fo:table-body>
		<fo:table-row>
		<fo:table-cell>

		 nombre cliente
				<fo:block font-size="10pt" font-weight="bold" space-after="1mm" text-align="left" color="{$txt}">
					<xsl:value-of select="calendario/nombre"/>
				</fo:block>
		   nombre cliente 
		
		</fo:table-cell>
		<fo:table-cell>
	
			rut cliente
				<fo:block font-size="10pt" font-weight="bold" space-after="1mm" text-align="right" color="{$txt}">
					<fo:inline color="{$txt}">RUT: </fo:inline>
					<fo:inline color="{$txt}"><xsl:value-of select="calendario/rut"/></fo:inline>
				</fo:block>
		 rut cliente 

		</fo:table-cell>
		</fo:table-row>
	</fo:table-body>
	</fo:table>
</fo:block>-->

<!-- cabecera cliente -->
<!-- Separador Linea 
<fo:block space-after="2mm">
	<fo:leader color="{$lineas}" leader-pattern="rule" leader-length="19cm"/>
</fo:block>
 Separador Linea-->

<fo:block text-align="center" >
Calendario de Mis Compromisos	

</fo:block>
<fo:block space-after="10mm" />

<!-- Tabla de datos de la cuenta corriente -->


<fo:block  space-after="0" background-color="white"  background-repeat="no-repeat">
<fo:block font-size="10pt" color="whiteSmoke" text-align="left" background-color="{$bgcolorcalendarioigual}"  margin="-5pt -5pt -4pt 0pt" background-repeat="no-repeat" >
<fo:block space-after="4mm" />

  &#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160; Cuenta corriente : <xsl:value-of select ="calendario/numeroCuenta" />
<fo:block  space-after="5mm"/>
</fo:block>
	<fo:table table-layout="fixed" width="21cm" border="2cm"	>
	<fo:table-column column-width="6cm"/>
	<fo:table-column column-width="6cm"/>
	<fo:table-column column-width="9.58cm"/>

	<fo:table-body>
		<fo:table-row>
		<fo:table-cell >

			<!-- nombre cliente -->
<fo:block  font-size="8pt" text-indent="5mm" padding="2mm"  border-color="black" background-color="#E6E6E6" background-repeat="no-repeat"  height="3cm" color="#666"  margin="-5pt -5pt -4pt 0pt" >
				Saldo Disponible :<fo:block space-after="0mm"/>
				<!--$	1.500.000--> $   <xsl:value-of select="calendario/saldoDisponible" />
				<fo:block space-after="2mm"/>
				</fo:block>
			
		
		</fo:table-cell>
		
		<fo:table-cell>
	
		
				
				<fo:block margin="0pt 0pt 5pt 2pt"   font-size="8pt" text-indent="5mm" padding="2mm"   border-color="black" background-color="#E6E6E6" background-repeat="no-repeat"  height="3cm" color="#666" >
				Sobregiro Disponible  :<fo:block space-after="0mm"/>
				<!--$	360.150  -->  $   <xsl:value-of select="calendario/sobreGiroDisponible" /> &#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;  &#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;
				<fo:block space-after="2mm"/>
				</fo:block>
	
		

		</fo:table-cell>
		<fo:table-cell>
	
			
				
				<fo:block margin="50pt 2pt 5pt 2pt"   font-size="8pt" text-indent="5mm" padding="2mm"  border-color="black" background-color="#E6E6E6" background-repeat="no-repeat"  height="3cm" color="#666" >
				Línea de Emergencia  :<fo:block space-after="0mm"/>
				<!--$	250.000--> $ <xsl:value-of select="calendario/lineaEmergencia" />
				
								
				<fo:block space-after="2mm"/>
				</fo:block>
	
			

		</fo:table-cell>
			
		</fo:table-row>
	</fo:table-body>
	</fo:table>
</fo:block>

<fo:block space-after="5mm" />


<!--- Saldos proyectados y movimientos de la cuenta -->



<!-- Tabla de Saldos proyectados -->
<!--background-image="url({$fondoMovimientos})"*/  -->
<fo:block  space-after="1mm" font-size="10pt" text-align="left" background-color="#E6E6E6" background-repeat="no-repeat" margin="-5pt -5pt -4pt 0pt" >
<fo:block space-after="5mm" />
&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;Movimientos de la Cuenta al 	<xsl:value-of select="calendario/fechaSeleccionada"/>
<fo:block space-after="5mm" />
	<fo:table table-layout="fixed" width="20mm">
	<fo:table-column column-width="5cm"/>
	<fo:table-column column-width="5cm"/>
	<fo:table-column column-width="5cm"/>
	<fo:table-column column-width="5cm"/>
	<fo:table-body>
		<fo:table-row>
		<fo:table-cell>

			<!-- nombre cliente -->
<fo:block margin="0pt 0pt 5pt 10pt"  font-size="8pt" text-indent="5mm" padding="2mm" border="0.5pt solid " border-color="black" background-color="whiteSmoke" background-repeat="no-repeat"   color="#666" >
				Saldo Proyectado <fo:block space-after="1mm"/>
				<!--$	1.250.000-->$ <xsl:value-of select="calendario/saldoProyectado" />
				</fo:block>
			
		
		</fo:table-cell>
		<fo:table-cell>
	
		
				
				<fo:block margin="0pt 0pt 5pt 10pt"  font-size="8pt" text-indent="5mm" padding="2mm"  border="0.5pt solid " border-color="black" background-color="whiteSmoke" background-repeat="no-repeat"  height="3cm" color="#666" >
				Ingresos <fo:block space-after="1mm"/>
				<!--$	9.000.000-->$ <xsl:value-of select="calendario/ingresos" />
				</fo:block>
	
		

		</fo:table-cell>
		<fo:table-cell>
	
			
				
				<fo:block margin="0pt 0pt 5pt 10pt"  font-size="8pt" text-indent="5mm" padding="2mm" border="0.5pt solid " border-color="black" background-color="whiteSmoke" background-repeat="no-repeat"  height="3cm" color="#666" >
				Inversiones <fo:block space-after="1mm"/>
				<!--$	25.0000--> $ <xsl:value-of select="calendario/inversiones" />
				</fo:block>
	
			

		</fo:table-cell>
			<fo:table-cell>
	

				
				<fo:block margin="0pt 0pt 5pt 10pt"  font-size="8pt" text-indent="5mm" padding="2mm"  border="0.5pt solid " border-color="black" background-color="whiteSmoke" background-repeat="no-repeat"  height="3cm" color="#666" >
				Compromisos <fo:block space-after="1mm"/>
				<!---$	3.000.000--> $ <xsl:value-of select="calendario/compromisos" />
				</fo:block>
	
	<fo:block space-after="6.5mm"/>

		</fo:table-cell>
		</fo:table-row>
	</fo:table-body>
	</fo:table>
</fo:block>
<!-- Fin saldos proyectados -->

	<!--<fo:static-content flow-name="xsl-region-after" >
					<fo:block font-size="6pt" font-weight="normal" space-after="1mm" text-align="left" color="{$txt}">
						Atención a Clientes Bci Directo: 600-692-8000
					</fo:block>
					<fo:block font-size="6pt" font-weight="normal" space-after="1mm" text-align="left" color="{$txt}">
						Dirección: Av. El Golf 125, Las Condes, Santiago/Dirección para notificaciones Legales: Agustinas 1161, 7° piso, Santiago Centro, Santiago.
					</fo:block>
					<fo:block font-size="5pt" font-weight="bold" space-after="1mm" text-align="right" color="{$txt}">
						Pagina <fo:page-number/>
					</fo:block
				</fo:static-content>-->


<fo:block space-after="5mm"/>
</xsl:template>
<xsl:template name="contenido">


 <xsl:variable name="imgPositiva" select="calendario/rutaImagenPositiva" />
 <xsl:variable name="imgNegativa" select="calendario/rutaImagenNegativa" />
<fo:block space-after="3mm"/>
<!-- tabla 1 -->
<fo:block font-size="7pt" space-after="1mm" text-align="right" >
<fo:table table-layout="fixed" width="19cm">
<fo:table-column column-width="4.3cm" />
<fo:table-column column-width="4.3cm" />
<fo:table-column column-width="4.3cm" />
<fo:table-column column-width="4.3cm" />
<fo:table-column column-width="4.3cm" />

 
	<fo:table-body>
	<fo:table-row>

		<fo:table-cell background-color="{$bgcolortotal}" border="0.5pt solid {$lineas}" >
		<fo:block font-weight="normal" color="{$txtCabecera}" padding-before="1mm" padding-after="0mm" text-align="center">
		Lunes</fo:block>
		</fo:table-cell>

		<fo:table-cell background-color="{$bgcolortotal}" border="0.5pt solid {$lineas}">
		<fo:block font-weight="normal" color="{$txtCabecera}" padding-before="1mm" padding-after="0mm" text-align="center">
		Martes</fo:block>
		</fo:table-cell>

		<fo:table-cell background-color="{$bgcolortotal}" border="0.5pt solid {$lineas}">
		<fo:block font-weight="normal" color="{$txtCabecera}" padding-before="1mm" padding-after="0mm" text-align="center">
		Miércoles</fo:block>
		</fo:table-cell>

		<fo:table-cell background-color="{$bgcolortotal}" border="0.5pt solid {$lineas}">
		<fo:block font-weight="normal" color="{$txtCabecera}" padding-before="1mm" padding-after="0mm" text-align="center">
		Jueves</fo:block>
		</fo:table-cell>

		<fo:table-cell background-color="{$bgcolortotal}" border="0.5pt solid {$lineas}">
		<fo:block font-weight="normal" color="{$txtCabecera}" padding-before="1mm" padding-after="0mm" text-align="center">
		Viernes</fo:block>
		</fo:table-cell>

	</fo:table-row>
	
	<xsl:for-each select="calendario/semana">
	<fo:table-row text-align="right" height="4cm"  ><!--alto fila aca-->
	<!-- Inicio Lunes -->
	<xsl:if test="lunes/numeroActual = 'menor'">
				<xsl:if test="lunes/activo != 'activo'">
					<fo:table-cell border="0.5pt solid {$lineas}" background-color="{$bgcolorcalendariomenor}" 	>
					<fo:block font-weight="normal" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="15mm" text-align="left">
					&#0160;<xsl:value-of select="lunes/numeroDia"/>

					</fo:block>
					</fo:table-cell>
				</xsl:if>
				<xsl:if test="lunes/activo = 'activo'">
								<xsl:if test="lunes/seleccionada ='true'" >
					<fo:table-cell border="0.8pt solid {$lineas}" border-color="red" >
					<fo:block font-weight="normal" color="{$txt-azul-oscuro}"  padding-before="1mm" padding-after="1mm" text-align="left">
								<xsl:value-of  select="lunes/numeroDia"/>

					</fo:block>
					
		<xsl:if test="lunes/eventos/className = 'montoCompromiso'">
							
							<fo:block font-weight="normal" color="{$txtblanco}" margin="0pt 0pt 15pt 30pt" background-image="url({$iconoCompromiso}) " background-repeat="no-repeat"  padding-after="2mm"   height="14px" width="20px" text-align="left">
							<fo:block space-after="2mm"   />
							 &#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;
							 &#0160;&#0160;&#0160;$&#0160;&#0160;<xsl:value-of select="lunes/eventos/montoCompromiso"/>
							</fo:block>
						</xsl:if>
							<xsl:if test="lunes/eventos/className = 'montoInversion'">
							
							<fo:block font-weight="normal" color="{$txtblanco}" margin="0pt 0pt 15pt 30pt" background-image="url({$iconoInversiones}) " background-repeat="no-repeat"  padding-after="2mm"   height="14px" width="20px" text-align="left">
							<fo:block space-after="2mm"   />
							 &#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;
							 &#0160;&#0160;&#0160;$&#0160;&#0160;<xsl:value-of select="lunes/eventos/montoInversion"/>
							</fo:block>
						</xsl:if>
							<xsl:if test="lunes/eventos/className = 'montoPendiente'">
							
							<fo:block font-weight="normal" color="black" margin="0pt 0pt 15pt 30pt" background-image="url({$iconoPendiente}) " background-repeat="no-repeat"  padding-after="2mm"   height="14px" width="20px" text-align="left">
							<fo:block space-after="2mm"   />
							 &#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;
							 &#0160;&#0160;&#0160;$&#0160;&#0160;<xsl:value-of select="lunes/eventos/montoPendiente"/>
							</fo:block>
						</xsl:if>
								<xsl:if test="lunes/eventos/className = 'montoIngreso'">
					
							<fo:block font-weight="normal" color="{$txtblanco}" margin="0pt 0pt 15pt 30pt" background-image="url({$iconoIngreso}) " background-repeat="no-repeat"  padding-after="2mm"   height="14px" width="20px" text-align="left">
							<fo:block space-after="2mm"   />
							 &#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;
							 &#0160;&#0160;&#0160;$&#0160;&#0160;<xsl:value-of select="lunes/eventos/montoIngreso"/>
							</fo:block>
						</xsl:if>
						<xsl:if test="lunes/eventos/className='mensajes'">
						<fo:block space-after="0mm"/>
				<fo:block  font-weight="bold" color="white"  background-image="url({$iconoMensaje}) "  background-repeat="no-repeat" margin="0pt 2pt 5pt 2pt"  padding-after="4mm"   height="14px;" text-align="left" position="absolute" >
							<fo:block space-after="2mm" position="left"/>
							&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;<xsl:value-of select="lunes/eventos/mensajes" />
							</fo:block>
						</xsl:if>
						
					<fo:block space-after="0mm"/>
					</fo:table-cell>
					</xsl:if>
					<xsl:if test="lunes/seleccionada ='false'" >
					<fo:table-cell border="0.5pt solid {$lineas}"  >
					<fo:block font-weight="normal" color="{$txt-azul-oscuro}"  padding-before="1mm" padding-after="1mm" text-align="left">
								<xsl:value-of  select="lunes/numeroDia"/>

					</fo:block>
					
		<xsl:if test="lunes/eventos/className = 'montoCompromiso'">
							
							<fo:block font-weight="normal" color="{$txtblanco}" margin="0pt 0pt 15pt 30pt" background-image="url({$iconoCompromiso}) " background-repeat="no-repeat"  padding-after="2mm"   height="14px" width="20px" text-align="left">
							<fo:block space-after="2mm"   />
							 &#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;
							 &#0160;&#0160;&#0160;$&#0160;&#0160;<xsl:value-of select="lunes/eventos/montoCompromiso"/>
							</fo:block>
						</xsl:if>
							<xsl:if test="lunes/eventos/className = 'montoInversion'">
							
							<fo:block font-weight="normal" color="{$txtblanco}" margin="0pt 0pt 15pt 30pt" background-image="url({$iconoInversiones}) " background-repeat="no-repeat"  padding-after="2mm"   height="14px" width="20px" text-align="left">
							<fo:block space-after="2mm"   />
							 &#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;
							 &#0160;&#0160;&#0160;$&#0160;&#0160;<xsl:value-of select="lunes/eventos/montoInversion"/>
							</fo:block>
						</xsl:if>
							<xsl:if test="lunes/eventos/className = 'montoPendiente'">
							
							<fo:block font-weight="normal" color="black" margin="0pt 0pt 15pt 30pt" background-image="url({$iconoPendiente}) " background-repeat="no-repeat"  padding-after="2mm"   height="14px" width="20px" text-align="left">
							<fo:block space-after="2mm"   />
							 &#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;
							 &#0160;&#0160;&#0160;$&#0160;&#0160;<xsl:value-of select="lunes/eventos/montoPendiente"/>
							</fo:block>
						</xsl:if>
								<xsl:if test="lunes/eventos/className = 'montoIngreso'">
					
							<fo:block font-weight="normal" color="{$txtblanco}" margin="0pt 0pt 15pt 30pt" background-image="url({$iconoIngreso}) " background-repeat="no-repeat"  padding-after="2mm"   height="14px" width="20px" text-align="left">
							<fo:block space-after="2mm"   />
							 &#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;
							 &#0160;&#0160;&#0160;$&#0160;&#0160;<xsl:value-of select="lunes/eventos/montoIngreso"/>
							</fo:block>
						</xsl:if>
						<xsl:if test="lunes/eventos/className='mensajes'">
						<fo:block space-after="0mm"/>
				<fo:block  font-weight="bold" color="white"  background-image="url({$iconoMensaje}) "  background-repeat="no-repeat" margin="0pt 2pt 5pt 2pt"  padding-after="4mm"   height="14px;" text-align="left" position="absolute" >
							<fo:block space-after="2mm" position="left"/>
							&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;<xsl:value-of select="lunes/eventos/mensajes" />
							</fo:block>
						</xsl:if>
						
					<fo:block space-after="0mm"/>
					</fo:table-cell>
					</xsl:if>
				</xsl:if>
		</xsl:if>
		<xsl:if test="lunes/numeroActual = 'igual'">
				<xsl:if test="lunes/activo != 'activo'">
					<fo:table-cell border="0.5pt solid {$lineas}" background-color="{$bgcolorcalendarioigual}">
				<fo:block font-weight="normal" color="{$txt-azul-oscuro}"  padding-before="1mm" padding-after="1mm" text-align="left">
								<xsl:value-of  select="lunes/numeroDia"/>

					</fo:block>
					</fo:table-cell>
				</xsl:if>
				<xsl:if test="lunes/activo = 'activo'">
						<xsl:if test="lunes/seleccionada ='true'" >
					<fo:table-cell border="0.8pt solid {$lineas}" border-color="red" background-color="{$bgcolorcalendarioigual}" >
					<fo:block font-weight="normal" color="{$txt-azul-oscuro}"  padding-before="1mm" padding-after="1mm" text-align="left">
								<xsl:value-of  select="lunes/numeroDia"/>

					</fo:block>
					
				<xsl:if test="lunes/eventos/className = 'montoCompromiso'">
							
							<fo:block font-weight="normal" color="{$txtblanco}" margin="0pt 0pt 15pt 30pt" background-image="url({$iconoCompromiso}) " background-repeat="no-repeat"  padding-after="2mm"   height="14px" width="20px" text-align="left">
							<fo:block space-after="2mm"   />
							 &#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;
							 &#0160;&#0160;&#0160;$&#0160;&#0160;<xsl:value-of select="lunes/eventos/montoCompromiso"/>
							</fo:block>
						</xsl:if>
							<xsl:if test="lunes/eventos/className = 'montoInversion'">
							
							<fo:block font-weight="normal" color="{$txtblanco}" margin="0pt 0pt 15pt 30pt" background-image="url({$iconoInversiones}) " background-repeat="no-repeat"  padding-after="2mm"   height="14px" width="20px" text-align="left">
							<fo:block space-after="2mm"   />
							 &#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;
							 &#0160;&#0160;&#0160;$&#0160;&#0160;<xsl:value-of select="lunes/eventos/montoInversion"/>
							</fo:block>
						</xsl:if>
							<xsl:if test="lunes/eventos/className = 'montoPendiente'">
							
							<fo:block font-weight="normal" color="black" margin="0pt 0pt 15pt 30pt" background-image="url({$iconoPendiente}) " background-repeat="no-repeat"  padding-after="2mm"   height="14px" width="20px" text-align="left">
							<fo:block space-after="2mm"   />
							 &#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;
							 &#0160;&#0160;&#0160;$&#0160;&#0160;<xsl:value-of select="lunes/eventos/montoPendiente"/>
							</fo:block>
						</xsl:if>
								<xsl:if test="lunes/eventos/className = 'montoIngreso'">
					
							<fo:block font-weight="normal" color="{$txtblanco}" margin="0pt 0pt 15pt 30pt" background-image="url({$iconoIngreso}) " background-repeat="no-repeat"  padding-after="2mm"   height="14px" width="20px" text-align="left">
							<fo:block space-after="2mm"   />
							 &#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;
							 &#0160;&#0160;&#0160;$&#0160;&#0160;<xsl:value-of select="lunes/eventos/montoIngreso"/>
							</fo:block>
						</xsl:if>
						<xsl:if test="lunes/eventos/className='mensajes'">
						<fo:block space-after="0mm"/>
				<fo:block  font-weight="bold" color="white"  background-image="url({$iconoMensaje}) "  background-repeat="no-repeat" margin="0pt 2pt 5pt 2pt"  padding-after="4mm"   height="14px;" text-align="left" position="absolute" >
							<fo:block space-after="2mm" position="left"/>
							&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;<xsl:value-of select="lunes/eventos/mensajes" />
							</fo:block>
						</xsl:if>
						
					<fo:block space-after="0mm"/>
					</fo:table-cell>
					</xsl:if>
					<xsl:if test="lunes/seleccionada ='false'" >
					<fo:table-cell border="0.5pt solid {$lineas}" background-color="{$bgcolorcalendarioigual}"  >
					<fo:block font-weight="normal" color="{$txt-azul-oscuro}"  padding-before="1mm" padding-after="1mm" text-align="left">
								<xsl:value-of  select="lunes/numeroDia"/>

					</fo:block>
					
				<xsl:if test="lunes/eventos/className = 'montoCompromiso'">
							
							<fo:block font-weight="normal" color="{$txtblanco}" margin="0pt 0pt 15pt 30pt" background-image="url({$iconoCompromiso}) " background-repeat="no-repeat"  padding-after="2mm"   height="14px" width="20px" text-align="left">
							<fo:block space-after="2mm"   />
							 &#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;
							 &#0160;&#0160;&#0160;$&#0160;&#0160;<xsl:value-of select="lunes/eventos/montoCompromiso"/>
							</fo:block>
						</xsl:if>
							<xsl:if test="lunes/eventos/className = 'montoInversion'">
							
							<fo:block font-weight="normal" color="{$txtblanco}" margin="0pt 0pt 15pt 30pt" background-image="url({$iconoInversiones}) " background-repeat="no-repeat"  padding-after="2mm"   height="14px" width="20px" text-align="left">
							<fo:block space-after="2mm"   />
							 &#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;
							 &#0160;&#0160;&#0160;$&#0160;&#0160;<xsl:value-of select="lunes/eventos/montoInversion"/>
							</fo:block>
						</xsl:if>
							<xsl:if test="lunes/eventos/className = 'montoPendiente'">
							
							<fo:block font-weight="normal" color="black" margin="0pt 0pt 15pt 30pt" background-image="url({$iconoPendiente}) " background-repeat="no-repeat"  padding-after="2mm"   height="14px" width="20px" text-align="left">
							<fo:block space-after="2mm"   />
							 &#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;
							 &#0160;&#0160;&#0160;$&#0160;&#0160;<xsl:value-of select="lunes/eventos/montoPendiente"/>
							</fo:block>
						</xsl:if>
								<xsl:if test="lunes/eventos/className = 'montoIngreso'">
					
							<fo:block font-weight="normal" color="{$txtblanco}" margin="0pt 0pt 15pt 30pt" background-image="url({$iconoIngreso}) " background-repeat="no-repeat"  padding-after="2mm"   height="14px" width="20px" text-align="left">
							<fo:block space-after="2mm"   />
							 &#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;
							 &#0160;&#0160;&#0160;$&#0160;&#0160;<xsl:value-of select="lunes/eventos/montoIngreso"/>
							</fo:block>
						</xsl:if>
						<xsl:if test="lunes/eventos/className='mensajes'">
						<fo:block space-after="0mm"/>
				<fo:block  font-weight="bold" color="white"  background-image="url({$iconoMensaje}) "  background-repeat="no-repeat" margin="0pt 2pt 5pt 2pt"  padding-after="4mm"   height="14px;" text-align="left" position="absolute" >
							<fo:block space-after="2mm" position="left"/>
							&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;<xsl:value-of select="lunes/eventos/mensajes" />
							</fo:block>
						</xsl:if>
						
					<fo:block space-after="0mm"/>
					</fo:table-cell>
					</xsl:if>
				</xsl:if>
		</xsl:if>
		<xsl:if test="lunes/numeroActual = 'mayor'">
				<xsl:if test="lunes/activo != 'activo'">
					<fo:table-cell border="0.5pt solid {$lineas}" background-color="{$bgcolorcalendariomayor}">
					<fo:block font-weight="normal" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="15mm" text-align="left">
					&#0160;<xsl:value-of select="lunes/numeroDia"/>

					</fo:block>
					</fo:table-cell>
				</xsl:if>
				<xsl:if test="lunes/activo = 'activo'">
						<xsl:if test="lunes/seleccionada ='true'" >
					<fo:table-cell border="0.8pt solid {$lineas}" border-color="red" >
					<fo:block font-weight="normal" color="{$txt-azul-oscuro}"  padding-before="1mm" padding-after="1mm" text-align="left">
								<xsl:value-of  select="lunes/numeroDia"/>

					</fo:block>
					
			<xsl:if test="lunes/eventos/className = 'montoCompromiso'">
							
							<fo:block font-weight="normal" color="{$txtblanco}" margin="0pt 0pt 15pt 30pt" background-image="url({$iconoCompromiso}) " background-repeat="no-repeat"  padding-after="2mm"   height="14px" width="20px" text-align="left">
							<fo:block space-after="2mm"   />
							 &#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;
							 &#0160;&#0160;&#0160;$&#0160;&#0160;<xsl:value-of select="lunes/eventos/montoCompromiso"/>
							</fo:block>
						</xsl:if>
							<xsl:if test="lunes/eventos/className = 'montoInversion'">
							
							<fo:block font-weight="normal" color="{$txtblanco}" margin="0pt 0pt 15pt 30pt" background-image="url({$iconoInversiones}) " background-repeat="no-repeat"  padding-after="2mm"   height="14px" width="20px" text-align="left">
							<fo:block space-after="2mm"   />
							 &#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;
							 &#0160;&#0160;&#0160;$&#0160;&#0160;<xsl:value-of select="lunes/eventos/montoInversion"/>
							</fo:block>
						</xsl:if>
							<xsl:if test="lunes/eventos/className = 'montoPendiente'">
							
							<fo:block font-weight="normal" color="black" margin="0pt 0pt 15pt 30pt" background-image="url({$iconoPendiente}) " background-repeat="no-repeat"  padding-after="2mm"   height="14px" width="20px" text-align="left">
							<fo:block space-after="2mm"   />
							 &#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;
							 &#0160;&#0160;&#0160;$&#0160;&#0160;<xsl:value-of select="lunes/eventos/montoPendiente"/>
							</fo:block>
						</xsl:if>
								<xsl:if test="lunes/eventos/className = 'montoIngreso'">
					
							<fo:block font-weight="normal" color="{$txtblanco}" margin="0pt 0pt 15pt 30pt" background-image="url({$iconoIngreso}) " background-repeat="no-repeat"  padding-after="2mm"   height="14px" width="20px" text-align="left">
							<fo:block space-after="2mm"   />
							 &#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;
							 &#0160;&#0160;&#0160;$&#0160;&#0160;<xsl:value-of select="lunes/eventos/montoIngreso"/>
							</fo:block>
						</xsl:if>
						<xsl:if test="lunes/eventos/className='mensajes'">
						<fo:block space-after="0mm"/>
				<fo:block  font-weight="bold" color="white"  background-image="url({$iconoMensaje}) "  background-repeat="no-repeat" margin="0pt 2pt 5pt 2pt"  padding-after="4mm"   height="14px;" text-align="left" position="absolute" >
							<fo:block space-after="2mm" position="left"/>
							&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;<xsl:value-of select="lunes/eventos/mensajes" />
							</fo:block>
						</xsl:if>
						
					<fo:block space-after="0mm"/>
					</fo:table-cell>
					</xsl:if>
					<xsl:if test="lunes/seleccionada ='false'" >
					<fo:table-cell border="0.5pt solid {$lineas}"  >
					<fo:block font-weight="normal" color="{$txt-azul-oscuro}"  padding-before="1mm" padding-after="1mm" text-align="left">
								<xsl:value-of  select="lunes/numeroDia"/>

					</fo:block>
					
					
						<xsl:if test="lunes/eventos/className = 'montoCompromiso'">
							
							<fo:block font-weight="normal" color="{$txtblanco}" margin="0pt 0pt 15pt 30pt" background-image="url({$iconoCompromiso}) " background-repeat="no-repeat"  padding-after="2mm"   height="14px" width="20px" text-align="left">
							<fo:block space-after="2mm"   />
							 &#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;
							 &#0160;&#0160;&#0160;$&#0160;&#0160;<xsl:value-of select="lunes/eventos/montoCompromiso"/>
							</fo:block>
						</xsl:if>
							<xsl:if test="lunes/eventos/className = 'montoInversion'">
							
							<fo:block font-weight="normal" color="{$txtblanco}" margin="0pt 0pt 15pt 30pt" background-image="url({$iconoInversiones}) " background-repeat="no-repeat"  padding-after="2mm"   height="14px" width="20px" text-align="left">
							<fo:block space-after="2mm"   />
							 &#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;
							 &#0160;&#0160;&#0160;$&#0160;&#0160;<xsl:value-of select="lunes/eventos/montoInversion"/>
							</fo:block>
						</xsl:if>
							<xsl:if test="lunes/eventos/className = 'montoPendiente'">
							
							<fo:block font-weight="normal" color="black" margin="0pt 0pt 15pt 30pt" background-image="url({$iconoPendiente}) " background-repeat="no-repeat"  padding-after="2mm"   height="14px" width="20px" text-align="left">
							<fo:block space-after="2mm"   />
							 &#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;
							 &#0160;&#0160;&#0160;$&#0160;&#0160;<xsl:value-of select="lunes/eventos/montoPendiente"/>
							</fo:block>
						</xsl:if>
								<xsl:if test="lunes/eventos/className = 'montoIngreso'">
					
							<fo:block font-weight="normal" color="{$txtblanco}" margin="0pt 0pt 15pt 30pt" background-image="url({$iconoIngreso}) " background-repeat="no-repeat"  padding-after="2mm"   height="14px" width="20px" text-align="left">
							<fo:block space-after="2mm"   />
							 &#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;
							 &#0160;&#0160;&#0160;$&#0160;&#0160;<xsl:value-of select="lunes/eventos/montoIngreso"/>
							</fo:block>
						</xsl:if>
				
						<xsl:if test="lunes/eventos/className='mensajes'">
						<fo:block space-after="0mm"/>
				<fo:block  font-weight="bold" color="white"  background-image="url({$iconoMensaje}) "  background-repeat="no-repeat" margin="0pt 2pt 5pt 2pt"  padding-after="4mm"   height="14px;" text-align="left" position="absolute" >
							<fo:block space-after="2mm" position="left"/>
							&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;<xsl:value-of select="lunes/eventos/mensajes" />
							</fo:block>
						</xsl:if>
						
					<fo:block space-after="0mm"/>
					</fo:table-cell>
					</xsl:if>
				</xsl:if>
		</xsl:if>
		<!-- Fin Lunes -->






		<!-- Inicio Martes -->
		<xsl:if test="martes/numeroActual = 'menor'">
				<xsl:if test="martes/activo != 'activo'">
					<fo:table-cell border="0.5pt solid {$lineas}" background-color="{$bgcolorcalendariomenor}">
					<fo:block font-weight="normal" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="15mm" text-align="left">
					&#0160;<xsl:value-of select="martes/numeroDia"/>

					</fo:block>
					</fo:table-cell>
				</xsl:if>
				<xsl:if test="martes/activo = 'activo'">
	<xsl:if test="martes/seleccionada ='true'" >
					<fo:table-cell border="0.8pt solid {$lineas}" border-color="red" >
					<fo:block font-weight="normal" color="{$txt-azul-oscuro}"  padding-before="1mm" padding-after="1mm" text-align="left">
								<xsl:value-of  select="martes/numeroDia"/>

					</fo:block>
					
			<xsl:if test="martes/eventos/className = 'montoCompromiso'">
							
							<fo:block font-weight="normal" color="{$txtblanco}" margin="0pt 0pt 15pt 30pt" background-image="url({$iconoCompromiso}) " background-repeat="no-repeat"  padding-after="2mm"   height="14px" width="20px" text-align="left">
							<fo:block space-after="2mm"   />
							 &#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;
							 &#0160;&#0160;&#0160;$&#0160;&#0160;<xsl:value-of select="martes/eventos/montoCompromiso"/>
							</fo:block>
						</xsl:if>
							<xsl:if test="martes/eventos/className = 'montoInversion'">
							
							<fo:block font-weight="normal" color="{$txtblanco}" margin="0pt 0pt 15pt 30pt" background-image="url({$iconoInversiones}) " background-repeat="no-repeat"  padding-after="2mm"   height="14px" width="20px" text-align="left">
							<fo:block space-after="2mm"   />
							 &#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;
							 &#0160;&#0160;&#0160;$&#0160;&#0160;<xsl:value-of select="martes/eventos/montoInversion"/>
							</fo:block>
						</xsl:if>
							<xsl:if test="martes/eventos/className = 'montoPendiente'">
							
							<fo:block font-weight="normal" color="black" margin="0pt 0pt 15pt 30pt" background-image="url({$iconoPendiente}) " background-repeat="no-repeat"  padding-after="2mm"   height="14px" width="20px" text-align="left">
							<fo:block space-after="2mm"   />
							 &#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;
							 &#0160;&#0160;&#0160;$&#0160;&#0160;<xsl:value-of select="martes/eventos/montoPendiente"/>
							</fo:block>
						</xsl:if>
									<xsl:if test="martes/eventos/className = 'montoIngreso'">
					
							<fo:block font-weight="normal" color="{$txtblanco}" margin="0pt 0pt 15pt 30pt" background-image="url({$iconoIngreso}) " background-repeat="no-repeat"  padding-after="2mm"   height="14px" width="20px" text-align="left">
							<fo:block space-after="2mm"   />
							 &#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;
							 &#0160;&#0160;&#0160;$&#0160;&#0160;<xsl:value-of select="martes/eventos/montoIngreso"/>
							</fo:block>
						</xsl:if>
						<xsl:if test="martes/eventos/className='mensajes'">
						<fo:block space-after="0mm"/>
				<fo:block  font-weight="bold" color="white"  background-image="url({$iconoMensaje}) "  background-repeat="no-repeat" margin="0pt 2pt 5pt 2pt"  padding-after="4mm"   height="14px;" text-align="left" position="absolute" >
							<fo:block space-after="2mm" position="left"/>
							&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;<xsl:value-of select="martes/eventos/mensajes" />
							</fo:block>
						</xsl:if>
						
					<fo:block space-after="0mm"/>
					</fo:table-cell>
					</xsl:if>
					<xsl:if test="martes/seleccionada ='false'" >
					<fo:table-cell border="0.5pt solid {$lineas}"  >
					<fo:block font-weight="normal" color="{$txt-azul-oscuro}"  padding-before="1mm" padding-after="1mm" text-align="left">
								<xsl:value-of  select="martes/numeroDia"/>

					</fo:block>
					
			<xsl:if test="martes/eventos/className = 'montoCompromiso'">
							
							<fo:block font-weight="normal" color="{$txtblanco}" margin="0pt 0pt 15pt 30pt" background-image="url({$iconoCompromiso}) " background-repeat="no-repeat"  padding-after="2mm"   height="14px" width="20px" text-align="left">
							<fo:block space-after="2mm"   />
							 &#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;
							 &#0160;&#0160;&#0160;$&#0160;&#0160;<xsl:value-of select="martes/eventos/montoCompromiso"/>
							</fo:block>
						</xsl:if>
							<xsl:if test="martes/eventos/className = 'montoInversion'">
							
							<fo:block font-weight="normal" color="{$txtblanco}" margin="0pt 0pt 15pt 30pt" background-image="url({$iconoInversiones}) " background-repeat="no-repeat"  padding-after="2mm"   height="14px" width="20px" text-align="left">
							<fo:block space-after="2mm"   />
							 &#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;
							 &#0160;&#0160;&#0160;$&#0160;&#0160;<xsl:value-of select="martes/eventos/montoInversion"/>
							</fo:block>
						</xsl:if>
							<xsl:if test="martes/eventos/className = 'montoPendiente'">
							
							<fo:block font-weight="normal" color="black" margin="0pt 0pt 15pt 30pt" background-image="url({$iconoPendiente}) " background-repeat="no-repeat"  padding-after="2mm"   height="14px" width="20px" text-align="left">
							<fo:block space-after="2mm"   />
							 &#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;
							 &#0160;&#0160;&#0160;$&#0160;&#0160;<xsl:value-of select="martes/eventos/montoPendiente"/>
							</fo:block>
						</xsl:if>
									<xsl:if test="martes/eventos/className = 'montoIngreso'">
					
							<fo:block font-weight="normal" color="{$txtblanco}" margin="0pt 0pt 15pt 30pt" background-image="url({$iconoIngreso}) " background-repeat="no-repeat"  padding-after="2mm"   height="14px" width="20px" text-align="left">
							<fo:block space-after="2mm"   />
							 &#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;
							 &#0160;&#0160;&#0160;$&#0160;&#0160;<xsl:value-of select="martes/eventos/montoIngreso"/>
							</fo:block>
						</xsl:if>
						<xsl:if test="martes/eventos/className='mensajes'">
						<fo:block space-after="0mm"/>
				<fo:block  font-weight="bold" color="white"  background-image="url({$iconoMensaje}) "  background-repeat="no-repeat" margin="0pt 2pt 5pt 2pt"  padding-after="4mm"   height="14px;" text-align="left" position="absolute" >
							<fo:block space-after="2mm" position="left"/>
							&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;<xsl:value-of select="martes/eventos/mensajes" />
							</fo:block>
						</xsl:if>
						
					<fo:block space-after="0mm"/>
					</fo:table-cell>
					</xsl:if>
				</xsl:if>
		</xsl:if>
		<xsl:if test="martes/numeroActual = 'igual'">
				<xsl:if test="martes/activo != 'activo'">
					<fo:table-cell border="0.5pt solid {$lineas}" background-color="{$bgcolorcalendarioigual}">
					<fo:block font-weight="normal" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="15mm" text-align="left">
					&#0160;<xsl:value-of select="martes/numeroDia"/>

					</fo:block>
					</fo:table-cell>
				</xsl:if>
				<xsl:if test="martes/activo = 'activo'">
				<xsl:if test="martes/seleccionada ='true'" >
					<fo:table-cell border="0.8pt solid {$lineas}" border-color="red" background-color="{$bgcolorcalendarioigual}"  >
					<fo:block font-weight="normal" color="{$txt-azul-oscuro}"  padding-before="1mm" padding-after="1mm" text-align="left">
								<xsl:value-of  select="martes/numeroDia"/>

					</fo:block>
					
							<xsl:if test="martes/eventos/className = 'montoCompromiso'">
							
							<fo:block font-weight="normal" color="{$txtblanco}" margin="0pt 0pt 15pt 30pt" background-image="url({$iconoCompromiso}) " background-repeat="no-repeat"  padding-after="2mm"   height="14px" width="20px" text-align="left">
							<fo:block space-after="2mm"   />
							 &#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;
							 &#0160;&#0160;&#0160;$&#0160;&#0160;<xsl:value-of select="martes/eventos/montoCompromiso"/>
							</fo:block>
						</xsl:if>
							<xsl:if test="martes/eventos/className = 'montoInversion'">
							
							<fo:block font-weight="normal" color="{$txtblanco}" margin="0pt 0pt 15pt 30pt" background-image="url({$iconoInversiones}) " background-repeat="no-repeat"  padding-after="2mm"   height="14px" width="20px" text-align="left">
							<fo:block space-after="2mm"   />
							 &#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;
							 &#0160;&#0160;&#0160;$&#0160;&#0160;<xsl:value-of select="martes/eventos/montoInversion"/>
							</fo:block>
						</xsl:if>
							<xsl:if test="martes/eventos/className = 'montoPendiente'">
							
							<fo:block font-weight="normal" color="black" margin="0pt 0pt 15pt 30pt" background-image="url({$iconoPendiente}) " background-repeat="no-repeat"  padding-after="2mm"   height="14px" width="20px" text-align="left">
							<fo:block space-after="2mm"   />
							 &#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;
							 &#0160;&#0160;&#0160;$&#0160;&#0160;<xsl:value-of select="martes/eventos/montoPendiente"/>
							</fo:block>
						</xsl:if>
									<xsl:if test="martes/eventos/className = 'montoIngreso'">
					
							<fo:block font-weight="normal" color="{$txtblanco}" margin="0pt 0pt 15pt 30pt" background-image="url({$iconoIngreso}) " background-repeat="no-repeat"  padding-after="2mm"   height="14px" width="20px" text-align="left">
							<fo:block space-after="2mm"   />
							 &#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;
							 &#0160;&#0160;&#0160;$&#0160;&#0160;<xsl:value-of select="martes/eventos/montoIngreso"/>
							</fo:block>
						</xsl:if>
						<xsl:if test="martes/eventos/className='mensajes'">
						<fo:block space-after="0mm"/>
				<fo:block  font-weight="bold" color="white"  background-image="url({$iconoMensaje}) "  background-repeat="no-repeat" margin="0pt 2pt 5pt 2pt"  padding-after="4mm"   height="14px;" text-align="left" position="absolute" >
							<fo:block space-after="2mm" position="left"/>
							&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;<xsl:value-of select="martes/eventos/mensajes" />
							</fo:block>
						</xsl:if>
						
					<fo:block space-after="0mm"/>
					</fo:table-cell>
					</xsl:if>
					<xsl:if test="martes/seleccionada ='false'" >
					<fo:table-cell border="0.5pt solid {$lineas}"  background-color="{$bgcolorcalendarioigual}">
					<fo:block font-weight="normal" color="{$txt-azul-oscuro}"  padding-before="1mm" padding-after="1mm" text-align="left">
								<xsl:value-of  select="martes/numeroDia"/>

					</fo:block>
					
						<xsl:if test="martes/eventos/className = 'montoCompromiso'">
							
							<fo:block font-weight="normal" color="{$txtblanco}" margin="0pt 0pt 15pt 30pt" background-image="url({$iconoCompromiso}) " background-repeat="no-repeat"  padding-after="2mm"   height="14px" width="20px" text-align="left">
							<fo:block space-after="2mm"   />
							 &#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;
							 &#0160;&#0160;&#0160;$&#0160;&#0160;<xsl:value-of select="martes/eventos/montoCompromiso"/>
							</fo:block>
						</xsl:if>
							<xsl:if test="martes/eventos/className = 'montoInversion'">
							
							<fo:block font-weight="normal" color="{$txtblanco}" margin="0pt 0pt 15pt 30pt" background-image="url({$iconoInversiones}) " background-repeat="no-repeat"  padding-after="2mm"   height="14px" width="20px" text-align="left">
							<fo:block space-after="2mm"   />
							 &#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;
							 &#0160;&#0160;&#0160;$&#0160;&#0160;<xsl:value-of select="martes/eventos/montoInversion"/>
							</fo:block>
						</xsl:if>
							<xsl:if test="martes/eventos/className = 'montoPendiente'">
							
							<fo:block font-weight="normal" color="black" margin="0pt 0pt 15pt 30pt" background-image="url({$iconoPendiente}) " background-repeat="no-repeat"  padding-after="2mm"   height="14px" width="20px" text-align="left">
							<fo:block space-after="2mm"   />
							 &#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;
							 &#0160;&#0160;&#0160;$&#0160;&#0160;<xsl:value-of select="martes/eventos/montoPendiente"/>
							</fo:block>
						</xsl:if>
									<xsl:if test="martes/eventos/className = 'montoIngreso'">
					
							<fo:block font-weight="normal" color="{$txtblanco}" margin="0pt 0pt 15pt 30pt" background-image="url({$iconoIngreso}) " background-repeat="no-repeat"  padding-after="2mm"   height="14px" width="20px" text-align="left">
							<fo:block space-after="2mm"   />
							 &#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;
							 &#0160;&#0160;&#0160;$&#0160;&#0160;<xsl:value-of select="martes/eventos/montoIngreso"/>
							</fo:block>
						</xsl:if>
						<xsl:if test="martes/eventos/className='mensajes'">
						<fo:block space-after="0mm"/>
				<fo:block  font-weight="bold" color="white"  background-image="url({$iconoMensaje}) "  background-repeat="no-repeat" margin="0pt 2pt 5pt 2pt"  padding-after="4mm"   height="14px;" text-align="left" position="absolute" >
							<fo:block space-after="2mm" position="left"/>
							&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;<xsl:value-of select="martes/eventos/mensajes" />
							</fo:block>
						</xsl:if>
						
					<fo:block space-after="0mm"/>
					</fo:table-cell>
					</xsl:if>
			
				</xsl:if>
		</xsl:if>
		<xsl:if test="martes/numeroActual = 'mayor'">
				<xsl:if test="martes/activo != 'activo'">
					<fo:table-cell border="0.5pt solid {$lineas}" background-color="{$bgcolorcalendariomayor}">
					<fo:block font-weight="normal" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="15mm" text-align="left">
					&#0160;<xsl:value-of select="martes/numeroDia"/>

					</fo:block>
					</fo:table-cell>
				</xsl:if>
				<xsl:if test="martes/activo = 'activo'">
					<xsl:if test="martes/seleccionada ='true'" >
					<fo:table-cell border="0.8pt solid {$lineas}" border-color="red" >
					<fo:block font-weight="normal" color="{$txt-azul-oscuro}"  padding-before="1mm" padding-after="1mm" text-align="left">
								<xsl:value-of  select="martes/numeroDia"/>

					</fo:block>
					
			<xsl:if test="martes/eventos/className = 'montoCompromiso'">
							
							<fo:block font-weight="normal" color="{$txtblanco}" margin="0pt 0pt 15pt 30pt" background-image="url({$iconoCompromiso}) " background-repeat="no-repeat"  padding-after="2mm"   height="14px" width="20px" text-align="left">
							<fo:block space-after="2mm"   />
							 &#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;
							 &#0160;&#0160;&#0160;$&#0160;&#0160;<xsl:value-of select="martes/eventos/montoCompromiso"/>
							</fo:block>
						</xsl:if>
							<xsl:if test="martes/eventos/className = 'montoInversion'">
							
							<fo:block font-weight="normal" color="{$txtblanco}" margin="0pt 0pt 15pt 30pt" background-image="url({$iconoInversiones}) " background-repeat="no-repeat"  padding-after="2mm"   height="14px" width="20px" text-align="left">
							<fo:block space-after="2mm"   />
							 &#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;
							 &#0160;&#0160;&#0160;$&#0160;&#0160;<xsl:value-of select="martes/eventos/montoInversion"/>
							</fo:block>
						</xsl:if>
							<xsl:if test="martes/eventos/className = 'montoPendiente'">
							
							<fo:block font-weight="normal" color="black" margin="0pt 0pt 15pt 30pt" background-image="url({$iconoPendiente}) " background-repeat="no-repeat"  padding-after="2mm"   height="14px" width="20px" text-align="left">
							<fo:block space-after="2mm"   />
							 &#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;
							 &#0160;&#0160;&#0160;$&#0160;&#0160;<xsl:value-of select="martes/eventos/montoPendiente"/>
							</fo:block>
						</xsl:if>
									<xsl:if test="martes/eventos/className = 'montoIngreso'">
					
							<fo:block font-weight="normal" color="{$txtblanco}" margin="0pt 0pt 15pt 30pt" background-image="url({$iconoIngreso}) " background-repeat="no-repeat"  padding-after="2mm"   height="14px" width="20px" text-align="left">
							<fo:block space-after="2mm"   />
							 &#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;
							 &#0160;&#0160;&#0160;$&#0160;&#0160;<xsl:value-of select="martes/eventos/montoIngreso"/>
							</fo:block>
						</xsl:if>
						<xsl:if test="martes/eventos/className='mensajes'">
						<fo:block space-after="0mm"/>
				<fo:block  font-weight="bold" color="white"  background-image="url({$iconoMensaje}) "  background-repeat="no-repeat" margin="0pt 2pt 5pt 2pt"  padding-after="4mm"   height="14px;" text-align="left" position="absolute" >
							<fo:block space-after="2mm" position="left"/>
							&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;<xsl:value-of select="martes/eventos/mensajes" />
							</fo:block>
						</xsl:if>
						
					<fo:block space-after="0mm"/>
					</fo:table-cell>
					</xsl:if>
					<xsl:if test="martes/seleccionada ='false'" >
					<fo:table-cell border="0.5pt solid {$lineas}"  >
					<fo:block font-weight="normal" color="{$txt-azul-oscuro}"  padding-before="1mm" padding-after="1mm" text-align="left">
								<xsl:value-of  select="martes/numeroDia"/>

					</fo:block>
					
				
						<xsl:if test="martes/eventos/className = 'montoCompromiso'">
							
							<fo:block font-weight="normal" color="{$txtblanco}" margin="0pt 0pt 15pt 30pt" background-image="url({$iconoCompromiso}) " background-repeat="no-repeat"  padding-after="2mm"   height="14px" width="20px" text-align="left">
							<fo:block space-after="2mm"   />
							 &#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;
							 &#0160;&#0160;&#0160;$&#0160;&#0160;<xsl:value-of select="martes/eventos/montoCompromiso"/>
							</fo:block>
						</xsl:if>
							<xsl:if test="martes/eventos/className = 'montoInversion'">
							
							<fo:block font-weight="normal" color="{$txtblanco}" margin="0pt 0pt 15pt 30pt" background-image="url({$iconoInversiones}) " background-repeat="no-repeat"  padding-after="2mm"   height="14px" width="20px" text-align="left">
							<fo:block space-after="2mm"   />
							 &#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;
							 &#0160;&#0160;&#0160;$&#0160;&#0160;<xsl:value-of select="martes/eventos/montoInversion"/>
							</fo:block>
						</xsl:if>
							<xsl:if test="martes/eventos/className = 'montoPendiente'">
							
							<fo:block font-weight="normal" color="black" margin="0pt 0pt 15pt 30pt" background-image="url({$iconoPendiente}) " background-repeat="no-repeat"  padding-after="2mm"   height="14px" width="20px" text-align="left">
							<fo:block space-after="2mm"   />
							 &#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;
							 &#0160;&#0160;&#0160;$&#0160;&#0160;<xsl:value-of select="martes/eventos/montoPendiente"/>
							</fo:block>
						</xsl:if>
									<xsl:if test="martes/eventos/className = 'montoIngreso'">
					
							<fo:block font-weight="normal" color="{$txtblanco}" margin="0pt 0pt 15pt 30pt" background-image="url({$iconoIngreso}) " background-repeat="no-repeat"  padding-after="2mm"   height="14px" width="20px" text-align="left">
							<fo:block space-after="2mm"   />
							 &#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;
							 &#0160;&#0160;&#0160;$&#0160;&#0160;<xsl:value-of select="martes/eventos/montoIngreso"/>
							</fo:block>
						</xsl:if>
				
						<xsl:if test="martes/eventos/className='mensajes'">
						<fo:block space-after="0mm"/>
				<fo:block  font-weight="bold" color="white"  background-image="url({$iconoMensaje}) "  background-repeat="no-repeat" margin="0pt 2pt 5pt 2pt"  padding-after="4mm"   height="14px;" text-align="left" position="absolute" >
							<fo:block space-after="2mm" position="left"/>
							&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;<xsl:value-of select="martes/eventos/mensajes" />
							</fo:block>
						</xsl:if>
						
					<fo:block space-after="0mm"/>
					</fo:table-cell>
					</xsl:if>
				</xsl:if>
		</xsl:if>
		<!-- Fin Martes -->

		<!-- Inicio miercoles -->
		<xsl:if test="miercoles/numeroActual = 'menor'">
				<xsl:if test="miercoles/activo != 'activo'">
					<fo:table-cell border="0.5pt solid {$lineas}" background-color="{$bgcolorcalendariomenor}">
					<fo:block font-weight="normal" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="15mm" text-align="left">
					&#0160;<xsl:value-of select="miercoles/numeroDia"/>

					</fo:block>
					</fo:table-cell>
				</xsl:if>
				<xsl:if test="miercoles/activo = 'activo'">
					<xsl:if test="miercoles/seleccionada ='true'" >
					<fo:table-cell border="0.8pt solid {$lineas}" border-color="red" >
					<fo:block font-weight="normal" color="{$txt-azul-oscuro}"  padding-before="1mm" padding-after="1mm" text-align="left">
								<xsl:value-of  select="miercoles/numeroDia"/>

					</fo:block>
					
						<xsl:if test="miercoles/eventos/className = 'montoCompromiso'">
							
							<fo:block font-weight="normal" color="{$txtblanco}" margin="0pt 0pt 15pt 30pt" background-image="url({$iconoCompromiso}) " background-repeat="no-repeat"  padding-after="2mm"   height="14px" width="20px" text-align="left">
							<fo:block space-after="2mm"   />
							 &#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;
							 &#0160;&#0160;&#0160;$&#0160;&#0160;<xsl:value-of select="miercoles/eventos/montoCompromiso"/>
							</fo:block>
						</xsl:if>
							<xsl:if test="miercoles/eventos/className = 'montoInversion'">
							
							<fo:block font-weight="normal" color="{$txtblanco}" margin="0pt 0pt 15pt 30pt" background-image="url({$iconoInversiones}) " background-repeat="no-repeat"  padding-after="2mm"   height="14px" width="20px" text-align="left">
							<fo:block space-after="2mm"   />
							 &#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;
							 &#0160;&#0160;&#0160;$&#0160;&#0160;<xsl:value-of select="miercoles/eventos/montoInversion"/>
							</fo:block>
						</xsl:if>
							<xsl:if test="miercoles/eventos/className = 'montoPendiente'">
							
							<fo:block font-weight="normal" color="black" margin="0pt 0pt 15pt 30pt" background-image="url({$iconoPendiente}) " background-repeat="no-repeat"  padding-after="2mm"   height="14px" width="20px" text-align="left">
							<fo:block space-after="2mm"   />
							 &#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;
							 &#0160;&#0160;&#0160;$&#0160;&#0160;<xsl:value-of select="miercoles/eventos/montoPendiente"/>
							</fo:block>
						</xsl:if>
							<xsl:if test="miercoles/eventos/className = 'montoIngreso'">
					
							<fo:block font-weight="normal" color="{$txtblanco}" margin="0pt 0pt 15pt 30pt" background-image="url({$iconoIngreso}) " background-repeat="no-repeat"  padding-after="2mm"   height="14px" width="20px" text-align="left">
							<fo:block space-after="2mm"   />
							 &#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;
							 &#0160;&#0160;&#0160;$&#0160;&#0160;<xsl:value-of select="miercoles/eventos/montoIngreso"/>
							</fo:block>
						</xsl:if>
						<xsl:if test="miercoles/eventos/className='mensajes'">
						<fo:block space-after="0mm"/>
				<fo:block  font-weight="bold" color="white"  background-image="url({$iconoMensaje}) "  background-repeat="no-repeat" margin="0pt 2pt 5pt 2pt"  padding-after="4mm"   height="14px;" text-align="left" position="absolute" >
							<fo:block space-after="2mm" position="left"/>
							&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;<xsl:value-of select="miercoles/eventos/mensajes" />
							</fo:block>
						</xsl:if>
						
					<fo:block space-after="0mm"/>
					</fo:table-cell>
					</xsl:if>
					<xsl:if test="miercoles/seleccionada ='false'" >
					<fo:table-cell border="0.5pt solid {$lineas}"  >
					<fo:block font-weight="normal" color="{$txt-azul-oscuro}"  padding-before="1mm" padding-after="1mm" text-align="left">
								<xsl:value-of  select="miercoles/numeroDia"/>

					</fo:block>
					
									<xsl:if test="miercoles/eventos/className = 'montoCompromiso'">
							
							<fo:block font-weight="normal" color="{$txtblanco}" margin="0pt 0pt 15pt 30pt" background-image="url({$iconoCompromiso}) " background-repeat="no-repeat"  padding-after="2mm"   height="14px" width="20px" text-align="left">
							<fo:block space-after="2mm"   />
							 &#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;
							 &#0160;&#0160;&#0160;$&#0160;&#0160;<xsl:value-of select="miercoles/eventos/montoCompromiso"/>
							</fo:block>
						</xsl:if>
							<xsl:if test="miercoles/eventos/className = 'montoInversion'">
							
							<fo:block font-weight="normal" color="{$txtblanco}" margin="0pt 0pt 15pt 30pt" background-image="url({$iconoInversiones}) " background-repeat="no-repeat"  padding-after="2mm"   height="14px" width="20px" text-align="left">
							<fo:block space-after="2mm"   />
							 &#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;
							 &#0160;&#0160;&#0160;$&#0160;&#0160;<xsl:value-of select="miercoles/eventos/montoInversion"/>
							</fo:block>
						</xsl:if>
							<xsl:if test="miercoles/eventos/className = 'montoPendiente'">
							
							<fo:block font-weight="normal" color="black" margin="0pt 0pt 15pt 30pt" background-image="url({$iconoPendiente}) " background-repeat="no-repeat"  padding-after="2mm"   height="14px" width="20px" text-align="left">
							<fo:block space-after="2mm"   />
							 &#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;
							 &#0160;&#0160;&#0160;$&#0160;&#0160;<xsl:value-of select="miercoles/eventos/montoPendiente"/>
							</fo:block>
						</xsl:if>
							<xsl:if test="miercoles/eventos/className = 'montoIngreso'">
					
							<fo:block font-weight="normal" color="{$txtblanco}" margin="0pt 0pt 15pt 30pt" background-image="url({$iconoIngreso}) " background-repeat="no-repeat"  padding-after="2mm"   height="14px" width="20px" text-align="left">
							<fo:block space-after="2mm"   />
							 &#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;
							 &#0160;&#0160;&#0160;$&#0160;&#0160;<xsl:value-of select="miercoles/eventos/montoIngreso"/>
							</fo:block>
						</xsl:if>
						<xsl:if test="miercoles/eventos/className='mensajes'">
						<fo:block space-after="0mm"/>
				<fo:block  font-weight="bold" color="white"  background-image="url({$iconoMensaje}) "  background-repeat="no-repeat" margin="0pt 2pt 5pt 2pt"  padding-after="4mm"   height="14px;" text-align="left" position="absolute" >
							<fo:block space-after="2mm" position="left"/>
							&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;<xsl:value-of select="miercoles/eventos/mensajes" />
							</fo:block>
						</xsl:if>
						
					<fo:block space-after="0mm"/>
					</fo:table-cell>
					</xsl:if>
				</xsl:if>
		</xsl:if>
		<xsl:if test="miercoles/numeroActual = 'igual'">
				<xsl:if test="miercoles/activo != 'activo'">
					<fo:table-cell border="0.5pt solid {$lineas}" background-color="{$bgcolorcalendarioigual}">
					<fo:block font-weight="normal" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="2mm" text-align="left">
					&#0160;<xsl:value-of select="miercoles/numeroDia"/>

					</fo:block>
					</fo:table-cell>
				</xsl:if>
				<xsl:if test="miercoles/activo = 'activo'">
					<xsl:if test="miercoles/seleccionada ='true'" >
					<fo:table-cell border="0.8pt solid {$lineas}" border-color="red" background-color="{$bgcolorcalendarioigual}"  >
					<fo:block font-weight="normal" color="{$txt-azul-oscuro}"  padding-before="1mm" padding-after="1mm" text-align="left">
								<xsl:value-of  select="miercoles/numeroDia"/>

					</fo:block>
					
						<xsl:if test="miercoles/eventos/className = 'montoCompromiso'">
							
							<fo:block font-weight="normal" color="{$txtblanco}" margin="0pt 0pt 15pt 30pt" background-image="url({$iconoCompromiso}) " background-repeat="no-repeat"  padding-after="2mm"   height="14px" width="20px" text-align="left">
							<fo:block space-after="2mm"   />
							 &#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;
							 &#0160;&#0160;&#0160;$&#0160;&#0160;<xsl:value-of select="miercoles/eventos/montoCompromiso"/>
							</fo:block>
						</xsl:if>
							<xsl:if test="miercoles/eventos/className = 'montoInversion'">
							
							<fo:block font-weight="normal" color="{$txtblanco}" margin="0pt 0pt 15pt 30pt" background-image="url({$iconoInversiones}) " background-repeat="no-repeat"  padding-after="2mm"   height="14px" width="20px" text-align="left">
							<fo:block space-after="2mm"   />
							 &#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;
							 &#0160;&#0160;&#0160;$&#0160;&#0160;<xsl:value-of select="miercoles/eventos/montoInversion"/>
							</fo:block>
						</xsl:if>
							<xsl:if test="miercoles/eventos/className = 'montoPendiente'">
							
							<fo:block font-weight="normal" color="black" margin="0pt 0pt 15pt 30pt" background-image="url({$iconoPendiente}) " background-repeat="no-repeat"  padding-after="2mm"   height="14px" width="20px" text-align="left">
							<fo:block space-after="2mm"   />
							 &#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;
							 &#0160;&#0160;&#0160;$&#0160;&#0160;<xsl:value-of select="miercoles/eventos/montoPendiente"/>
							</fo:block>
						</xsl:if>
							<xsl:if test="miercoles/eventos/className = 'montoIngreso'">
					
							<fo:block font-weight="normal" color="{$txtblanco}" margin="0pt 0pt 15pt 30pt" background-image="url({$iconoIngreso}) " background-repeat="no-repeat"  padding-after="2mm"   height="14px" width="20px" text-align="left">
							<fo:block space-after="2mm"   />
							 &#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;
							 &#0160;&#0160;&#0160;$&#0160;&#0160;<xsl:value-of select="miercoles/eventos/montoIngreso"/>
							</fo:block>
						</xsl:if>
						<xsl:if test="miercoles/eventos/className='mensajes'">
						<fo:block space-after="0mm"/>
				<fo:block  font-weight="bold" color="white"  background-image="url({$iconoMensaje}) "  background-repeat="no-repeat" margin="0pt 2pt 5pt 2pt"  padding-after="4mm"   height="14px;" text-align="left" position="absolute" >
							<fo:block space-after="2mm" position="left"/>
							&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;<xsl:value-of select="miercoles/eventos/mensajes" />
							</fo:block>
						</xsl:if>
						
					<fo:block space-after="0mm"/>
					</fo:table-cell>
					</xsl:if>
					<xsl:if test="miercoles/seleccionada ='false'" >
					<fo:table-cell border="0.5pt solid {$lineas}" background-color="{$bgcolorcalendarioigual}" >
					<fo:block font-weight="normal" color="{$txt-azul-oscuro}"  padding-before="1mm" padding-after="1mm" text-align="left">
								<xsl:value-of  select="miercoles/numeroDia"/>

					</fo:block>
					
								<xsl:if test="miercoles/eventos/className = 'montoCompromiso'">
							
							<fo:block font-weight="normal" color="{$txtblanco}" margin="0pt 0pt 15pt 30pt" background-image="url({$iconoCompromiso}) " background-repeat="no-repeat"  padding-after="2mm"   height="14px" width="20px" text-align="left">
							<fo:block space-after="2mm"   />
							 &#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;
							 &#0160;&#0160;&#0160;$&#0160;&#0160;<xsl:value-of select="miercoles/eventos/montoCompromiso"/>
							</fo:block>
						</xsl:if>
							<xsl:if test="miercoles/eventos/className = 'montoInversion'">
							
							<fo:block font-weight="normal" color="{$txtblanco}" margin="0pt 0pt 15pt 30pt" background-image="url({$iconoInversiones}) " background-repeat="no-repeat"  padding-after="2mm"   height="14px" width="20px" text-align="left">
							<fo:block space-after="2mm"   />
							 &#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;
							 &#0160;&#0160;&#0160;$&#0160;&#0160;<xsl:value-of select="miercoles/eventos/montoInversion"/>
							</fo:block>
						</xsl:if>
							<xsl:if test="miercoles/eventos/className = 'montoPendiente'">
							
							<fo:block font-weight="normal" color="black" margin="0pt 0pt 15pt 30pt" background-image="url({$iconoPendiente}) " background-repeat="no-repeat"  padding-after="2mm"   height="14px" width="20px" text-align="left">
							<fo:block space-after="2mm"   />
							 &#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;
							 &#0160;&#0160;&#0160;$&#0160;&#0160;<xsl:value-of select="miercoles/eventos/montoPendiente"/>
							</fo:block>
						</xsl:if>
							<xsl:if test="miercoles/eventos/className = 'montoIngreso'">
					
							<fo:block font-weight="normal" color="{$txtblanco}" margin="0pt 0pt 15pt 30pt" background-image="url({$iconoIngreso}) " background-repeat="no-repeat"  padding-after="2mm"   height="14px" width="20px" text-align="left">
							<fo:block space-after="2mm"   />
							 &#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;
							 &#0160;&#0160;&#0160;$&#0160;&#0160;<xsl:value-of select="miercoles/eventos/montoIngreso"/>
							</fo:block>
						</xsl:if>
						<xsl:if test="miercoles/eventos/className='mensajes'">
						<fo:block space-after="0mm"/>
				<fo:block  font-weight="bold" color="white"  background-image="url({$iconoMensaje}) "  background-repeat="no-repeat" margin="0pt 2pt 5pt 2pt"  padding-after="4mm"   height="14px;" text-align="left" position="absolute" >
							<fo:block space-after="2mm" position="left"/>
							&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;<xsl:value-of select="miercoles/eventos/mensajes" />
							</fo:block>
						</xsl:if>
						
					<fo:block space-after="0mm"/>
					</fo:table-cell>
					</xsl:if>
				</xsl:if>
		</xsl:if>
		<xsl:if test="miercoles/numeroActual = 'mayor'">
				<xsl:if test="miercoles/activo != 'activo'">
					<fo:table-cell border="0.5pt solid {$lineas}" background-color="{$bgcolorcalendariomayor}">
					<fo:block font-weight="normal" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="2mm" text-align="left">
					<xsl:value-of select="miercoles/numeroDia"/>

					</fo:block>
					</fo:table-cell>
				</xsl:if>
				<xsl:if test="miercoles/activo = 'activo'">
			<xsl:if test="miercoles/seleccionada ='true'" >
					<fo:table-cell border="0.8pt solid {$lineas}" border-color="red" >
					<fo:block font-weight="normal" color="{$txt-azul-oscuro}"  padding-before="1mm" padding-after="1mm" text-align="left">
								<xsl:value-of  select="miercoles/numeroDia"/>

					</fo:block>
					
							<xsl:if test="miercoles/eventos/className = 'montoCompromiso'">
							
							<fo:block font-weight="normal" color="{$txtblanco}" margin="0pt 0pt 15pt 30pt" background-image="url({$iconoCompromiso}) " background-repeat="no-repeat"  padding-after="2mm"   height="14px" width="20px" text-align="left">
							<fo:block space-after="2mm"   />
							 &#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;
							 &#0160;&#0160;&#0160;$&#0160;&#0160;<xsl:value-of select="miercoles/eventos/montoCompromiso"/>
							</fo:block>
						</xsl:if>
							<xsl:if test="miercoles/eventos/className = 'montoInversion'">
							
							<fo:block font-weight="normal" color="{$txtblanco}" margin="0pt 0pt 15pt 30pt" background-image="url({$iconoInversiones}) " background-repeat="no-repeat"  padding-after="2mm"   height="14px" width="20px" text-align="left">
							<fo:block space-after="2mm"   />
							 &#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;
							 &#0160;&#0160;&#0160;$&#0160;&#0160;<xsl:value-of select="miercoles/eventos/montoInversion"/>
							</fo:block>
						</xsl:if>
							<xsl:if test="miercoles/eventos/className = 'montoPendiente'">
							
							<fo:block font-weight="normal" color="black" margin="0pt 0pt 15pt 30pt" background-image="url({$iconoPendiente}) " background-repeat="no-repeat"  padding-after="2mm"   height="14px" width="20px" text-align="left">
							<fo:block space-after="2mm"   />
							 &#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;
							 &#0160;&#0160;&#0160;$&#0160;&#0160;<xsl:value-of select="miercoles/eventos/montoPendiente"/>
							</fo:block>
						</xsl:if>
							<xsl:if test="miercoles/eventos/className = 'montoIngreso'">
					
							<fo:block font-weight="normal" color="{$txtblanco}" margin="0pt 0pt 15pt 30pt" background-image="url({$iconoIngreso}) " background-repeat="no-repeat"  padding-after="2mm"   height="14px" width="20px" text-align="left">
							<fo:block space-after="2mm"   />
							 &#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;
							 &#0160;&#0160;&#0160;$&#0160;&#0160;<xsl:value-of select="miercoles/eventos/montoIngreso"/>
							</fo:block>
						</xsl:if>
						<xsl:if test="miercoles/eventos/className='mensajes'">
						<fo:block space-after="0mm"/>
				<fo:block  font-weight="bold" color="white"  background-image="url({$iconoMensaje}) "  background-repeat="no-repeat" margin="0pt 2pt 5pt 2pt"  padding-after="4mm"   height="14px;" text-align="left" position="absolute" >
							<fo:block space-after="2mm" position="left"/>
							&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;<xsl:value-of select="miercoles/eventos/mensajes" />
							</fo:block>
						</xsl:if>
						
					<fo:block space-after="0mm"/>
					</fo:table-cell>
					</xsl:if>
					<xsl:if test="miercoles/seleccionada ='false'" >
					<fo:table-cell border="0.5pt solid {$lineas}"  >
					<fo:block font-weight="normal" color="{$txt-azul-oscuro}"  padding-before="1mm" padding-after="1mm" text-align="left">
								<xsl:value-of  select="miercoles/numeroDia"/>

					</fo:block>
					
						
						<xsl:if test="miercoles/eventos/className = 'montoCompromiso'">
							
							<fo:block font-weight="normal" color="{$txtblanco}" margin="0pt 0pt 15pt 30pt" background-image="url({$iconoCompromiso}) " background-repeat="no-repeat"  padding-after="2mm"   height="14px" width="20px" text-align="left">
							<fo:block space-after="2mm"   />
							 &#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;
							 &#0160;&#0160;&#0160;$&#0160;&#0160;<xsl:value-of select="miercoles/eventos/montoCompromiso"/>
							</fo:block>
						</xsl:if>
							<xsl:if test="miercoles/eventos/className = 'montoInversion'">
							
							<fo:block font-weight="normal" color="{$txtblanco}" margin="0pt 0pt 15pt 30pt" background-image="url({$iconoInversiones}) " background-repeat="no-repeat"  padding-after="2mm"   height="14px" width="20px" text-align="left">
							<fo:block space-after="2mm"   />
							 &#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;
							 &#0160;&#0160;&#0160;$&#0160;&#0160;<xsl:value-of select="miercoles/eventos/montoInversion"/>
							</fo:block>
						</xsl:if>
							<xsl:if test="miercoles/eventos/className = 'montoPendiente'">
							
							<fo:block font-weight="normal" color="black" margin="0pt 0pt 15pt 30pt" background-image="url({$iconoPendiente}) " background-repeat="no-repeat"  padding-after="2mm"   height="14px" width="20px" text-align="left">
							<fo:block space-after="2mm"   />
							 &#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;
							 &#0160;&#0160;&#0160;$&#0160;&#0160;<xsl:value-of select="miercoles/eventos/montoPendiente"/>
							</fo:block>
						</xsl:if>
							<xsl:if test="miercoles/eventos/className = 'montoIngreso'">
					
							<fo:block font-weight="normal" color="{$txtblanco}" margin="0pt 0pt 15pt 30pt" background-image="url({$iconoIngreso}) " background-repeat="no-repeat"  padding-after="2mm"   height="14px" width="20px" text-align="left">
							<fo:block space-after="2mm"   />
							 &#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;
							 &#0160;&#0160;&#0160;$&#0160;&#0160;<xsl:value-of select="miercoles/eventos/montoIngreso"/>
							</fo:block>
						</xsl:if>
				
						<xsl:if test="miercoles/eventos/className='mensajes'">
						<fo:block space-after="0mm"/>
				<fo:block  font-weight="bold" color="white"  background-image="url({$iconoMensaje}) "  background-repeat="no-repeat" margin="0pt 2pt 5pt 2pt"  padding-after="4mm"   height="14px;" text-align="left" position="absolute" >
							<fo:block space-after="2mm" position="left"/>
							&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;<xsl:value-of select="miercoles/eventos/mensajes" />
							</fo:block>
						</xsl:if>
						
					<fo:block space-after="0mm"/>
					</fo:table-cell>
					</xsl:if>
			
				</xsl:if>
		</xsl:if>
		
		<!-- Fin miercoles -->

		

		<!-- Inicio jueves -->
		<xsl:if test="jueves/numeroActual = 'menor'">
				<xsl:if test="jueves/activo != 'activo'">
					<fo:table-cell border="0.5pt solid {$lineas}" background-color="{$bgcolorcalendariomenor}">
					<fo:block font-weight="normal" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="15mm" text-align="left">
					&#0160;<xsl:value-of select="jueves/numeroDia"/>

					</fo:block>
					</fo:table-cell>
				</xsl:if>
				<xsl:if test="jueves/activo = 'activo'">
				<xsl:if test="jueves/seleccionada ='true'" >
					<fo:table-cell border="0.8pt solid {$lineas}" border-color="red" >
					<fo:block font-weight="normal" color="{$txt-azul-oscuro}"  padding-before="1mm" padding-after="1mm" text-align="left">
								<xsl:value-of  select="jueves/numeroDia"/>

					</fo:block>
					
			<xsl:if test="jueves/eventos/className = 'montoCompromiso'">
							
							<fo:block font-weight="normal" color="{$txtblanco}" margin="0pt 0pt 15pt 30pt" background-image="url({$iconoCompromiso}) " background-repeat="no-repeat"  padding-after="2mm"   height="14px" width="20px" text-align="left">
							<fo:block space-after="2mm"   />
							 &#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;
							 &#0160;&#0160;&#0160;$&#0160;&#0160;<xsl:value-of select="jueves/eventos/montoCompromiso"/>
							</fo:block>
						</xsl:if>
							<xsl:if test="jueves/eventos/className = 'montoInversion'">
							<fo:block font-weight="normal" color="{$txtblanco}" margin="0pt 0pt 15pt 30pt" background-image="url({$iconoInversiones}) " background-repeat="no-repeat"  padding-after="2mm"   height="14px" width="20px" text-align="left">
							<fo:block space-after="2mm"   />
							 &#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;
							 &#0160;&#0160;&#0160;$&#0160;&#0160;<xsl:value-of select="jueves/eventos/montoInversion"/>
							</fo:block>
						</xsl:if>
							<xsl:if test="jueves/eventos/className = 'montoPendiente'">
							
							<fo:block font-weight="normal" color="black" margin="0pt 0pt 15pt 30pt" background-image="url({$iconoPendiente}) " background-repeat="no-repeat"  padding-after="2mm"   height="14px" width="20px" text-align="left">
							<fo:block space-after="2mm"   />
							 &#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;
							 &#0160;&#0160;&#0160;$&#0160;&#0160;<xsl:value-of select="jueves/eventos/montoPendiente"/>
							</fo:block>
						</xsl:if>
				
							<xsl:if test="jueves/eventos/className = 'montoIngreso'">
							<fo:block font-weight="normal" color="{$txtblanco}" margin="0pt 0pt 15pt 30pt" background-image="url({$iconoIngreso}) " background-repeat="no-repeat"  padding-after="2mm"   height="14px" width="20px" text-align="left">
							<fo:block space-after="2mm"   />
							 &#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;
							 &#0160;&#0160;&#0160;$&#0160;&#0160;<xsl:value-of select="jueves/eventos/montoIngreso"/>
							</fo:block>
						</xsl:if>
						<xsl:if test="jueves/eventos/className='mensajes'">
						<fo:block space-after="0mm"/>
				<fo:block  font-weight="bold" color="white"  background-image="url({$iconoMensaje}) "  background-repeat="no-repeat" margin="0pt 2pt 5pt 2pt"  padding-after="4mm"   height="14px;" text-align="left" position="absolute" >
							<fo:block space-after="2mm" position="left"/>
							&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;<xsl:value-of select="jueves/eventos/mensajes" />
							</fo:block>
						</xsl:if>
						
					<fo:block space-after="0mm"/>
					</fo:table-cell>
					</xsl:if>
					<xsl:if test="jueves/seleccionada ='false'" >
					<fo:table-cell border="0.5pt solid {$lineas}"  >
					<fo:block font-weight="normal" color="{$txt-azul-oscuro}"  padding-before="1mm" padding-after="1mm" text-align="left">
								<xsl:value-of  select="jueves/numeroDia"/>

					</fo:block>
					
						<xsl:if test="jueves/eventos/className = 'montoCompromiso'">
							
							<fo:block font-weight="normal" color="{$txtblanco}" margin="0pt 0pt 15pt 30pt" background-image="url({$iconoCompromiso}) " background-repeat="no-repeat"  padding-after="2mm"   height="14px" width="20px" text-align="left">
							<fo:block space-after="2mm"   />
							 &#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;
							 &#0160;&#0160;&#0160;$&#0160;&#0160;<xsl:value-of select="jueves/eventos/montoCompromiso"/>
							</fo:block>
						</xsl:if>
							<xsl:if test="jueves/eventos/className = 'montoInversion'">
							<fo:block font-weight="normal" color="{$txtblanco}" margin="0pt 0pt 15pt 30pt" background-image="url({$iconoInversiones}) " background-repeat="no-repeat"  padding-after="2mm"   height="14px" width="20px" text-align="left">
							<fo:block space-after="2mm"   />
							 &#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;
							 &#0160;&#0160;&#0160;$&#0160;&#0160;<xsl:value-of select="jueves/eventos/montoInversion"/>
							</fo:block>
						</xsl:if>
							<xsl:if test="jueves/eventos/className = 'montoPendiente'">
							
							<fo:block font-weight="normal" color="black" margin="0pt 0pt 15pt 30pt" background-image="url({$iconoPendiente}) " background-repeat="no-repeat"  padding-after="2mm"   height="14px" width="20px" text-align="left">
							<fo:block space-after="2mm"   />
							 &#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;
							 &#0160;&#0160;&#0160;$&#0160;&#0160;<xsl:value-of select="jueves/eventos/montoPendiente"/>
							</fo:block>
						</xsl:if>
				
							<xsl:if test="jueves/eventos/className = 'montoIngreso'">
							<fo:block font-weight="normal" color="{$txtblanco}" margin="0pt 0pt 15pt 30pt" background-image="url({$iconoIngreso}) " background-repeat="no-repeat"  padding-after="2mm"   height="14px" width="20px" text-align="left">
							<fo:block space-after="2mm"   />
							 &#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;
							 &#0160;&#0160;&#0160;$&#0160;&#0160;<xsl:value-of select="jueves/eventos/montoIngreso"/>
							</fo:block>
						</xsl:if>
						<xsl:if test="jueves/eventos/className='mensajes'">
						<fo:block space-after="0mm"/>
				<fo:block  font-weight="bold" color="white"  background-image="url({$iconoMensaje}) "  background-repeat="no-repeat" margin="0pt 2pt 5pt 2pt"  padding-after="4mm"   height="14px;" text-align="left" position="absolute" >
							<fo:block space-after="2mm" position="left"/>
							&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;<xsl:value-of select="jueves/eventos/mensajes" />
							</fo:block>
						</xsl:if>
						
					<fo:block space-after="0mm"/>
					</fo:table-cell>
					</xsl:if>
				</xsl:if>
		</xsl:if>
		<xsl:if test="jueves/numeroActual = 'igual'">
				<xsl:if test="jueves/activo != 'activo'">
					<fo:table-cell border="0.5pt solid {$lineas}" background-color="{$bgcolorcalendarioigual}">
					<fo:block font-weight="normal" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="15mm" text-align="left">
					&#0160;<xsl:value-of select="jueves/numeroDia"/>

					</fo:block>
					</fo:table-cell>
				</xsl:if>
				<xsl:if test="jueves/activo = 'activo'">
					<xsl:if test="jueves/seleccionada ='true'" >
					<fo:table-cell border="0.8pt solid {$lineas}" border-color="red" background-color="{$bgcolorcalendarioigual}"  >
					<fo:block font-weight="normal" color="{$txt-azul-oscuro}"  padding-before="1mm" padding-after="1mm" text-align="left">
								<xsl:value-of  select="jueves/numeroDia"/>

					</fo:block>
					
							<xsl:if test="jueves/eventos/className = 'montoCompromiso'">
							
							<fo:block font-weight="normal" color="{$txtblanco}" margin="0pt 0pt 15pt 30pt" background-image="url({$iconoCompromiso}) " background-repeat="no-repeat"  padding-after="2mm"   height="14px" width="20px" text-align="left">
							<fo:block space-after="2mm"   />
							 &#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;
							 &#0160;&#0160;&#0160;$&#0160;&#0160;<xsl:value-of select="jueves/eventos/montoCompromiso"/>
							</fo:block>
						</xsl:if>
							<xsl:if test="jueves/eventos/className = 'montoInversion'">
							<fo:block font-weight="normal" color="{$txtblanco}" margin="0pt 0pt 15pt 30pt" background-image="url({$iconoInversiones}) " background-repeat="no-repeat"  padding-after="2mm"   height="14px" width="20px" text-align="left">
							<fo:block space-after="2mm"   />
							 &#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;
							 &#0160;&#0160;&#0160;$&#0160;&#0160;<xsl:value-of select="jueves/eventos/montoInversion"/>
							</fo:block>
						</xsl:if>
							<xsl:if test="jueves/eventos/className = 'montoPendiente'">
							
							<fo:block font-weight="normal" color="black" margin="0pt 0pt 15pt 30pt" background-image="url({$iconoPendiente}) " background-repeat="no-repeat"  padding-after="2mm"   height="14px" width="20px" text-align="left">
							<fo:block space-after="2mm"   />
							 &#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;
							 &#0160;&#0160;&#0160;$&#0160;&#0160;<xsl:value-of select="jueves/eventos/montoPendiente"/>
							</fo:block>
						</xsl:if>
				
							<xsl:if test="jueves/eventos/className = 'montoIngreso'">
							<fo:block font-weight="normal" color="{$txtblanco}" margin="0pt 0pt 15pt 30pt" background-image="url({$iconoIngreso}) " background-repeat="no-repeat"  padding-after="2mm"   height="14px" width="20px" text-align="left">
							<fo:block space-after="2mm"   />
							 &#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;
							 &#0160;&#0160;&#0160;$&#0160;&#0160;<xsl:value-of select="jueves/eventos/montoIngreso"/>
							</fo:block>
						</xsl:if>
						<xsl:if test="jueves/eventos/className='mensajes'">
						<fo:block space-after="0mm"/>
				<fo:block  font-weight="bold" color="white"  background-image="url({$iconoMensaje}) "  background-repeat="no-repeat" margin="0pt 2pt 5pt 2pt"  padding-after="4mm"   height="14px;" text-align="left" position="absolute" >
							<fo:block space-after="2mm" position="left"/>
							&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;<xsl:value-of select="jueves/eventos/mensajes" />
							</fo:block>
						</xsl:if>
						
					<fo:block space-after="0mm"/>
					</fo:table-cell>
					</xsl:if>
					<xsl:if test="jueves/seleccionada ='false'" >
					<fo:table-cell border="0.5pt solid {$lineas}"  background-color="{$bgcolorcalendarioigual}" >
					<fo:block font-weight="normal" color="{$txt-azul-oscuro}"  padding-before="1mm" padding-after="1mm" text-align="left">
								<xsl:value-of  select="jueves/numeroDia"/>

					</fo:block>
					
					<xsl:if test="jueves/eventos/className = 'montoCompromiso'">
							
							<fo:block font-weight="normal" color="{$txtblanco}" margin="0pt 0pt 15pt 30pt" background-image="url({$iconoCompromiso}) " background-repeat="no-repeat"  padding-after="2mm"   height="14px" width="20px" text-align="left">
							<fo:block space-after="2mm"   />
							 &#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;
							 &#0160;&#0160;&#0160;$&#0160;&#0160;<xsl:value-of select="jueves/eventos/montoCompromiso"/>
							</fo:block>
						</xsl:if>
							<xsl:if test="jueves/eventos/className = 'montoInversion'">
							<fo:block font-weight="normal" color="{$txtblanco}" margin="0pt 0pt 15pt 30pt" background-image="url({$iconoInversiones}) " background-repeat="no-repeat"  padding-after="2mm"   height="14px" width="20px" text-align="left">
							<fo:block space-after="2mm"   />
							 &#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;
							 &#0160;&#0160;&#0160;$&#0160;&#0160;<xsl:value-of select="jueves/eventos/montoInversion"/>
							</fo:block>
						</xsl:if>
							<xsl:if test="jueves/eventos/className = 'montoPendiente'">
							
							<fo:block font-weight="normal" color="black" margin="0pt 0pt 15pt 30pt" background-image="url({$iconoPendiente}) " background-repeat="no-repeat"  padding-after="2mm"   height="14px" width="20px" text-align="left">
							<fo:block space-after="2mm"   />
							 &#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;
							 &#0160;&#0160;&#0160;$&#0160;&#0160;<xsl:value-of select="jueves/eventos/montoPendiente"/>
							</fo:block>
						</xsl:if>
				
							<xsl:if test="jueves/eventos/className = 'montoIngreso'">
							<fo:block font-weight="normal" color="{$txtblanco}" margin="0pt 0pt 15pt 30pt" background-image="url({$iconoIngreso}) " background-repeat="no-repeat"  padding-after="2mm"   height="14px" width="20px" text-align="left">
							<fo:block space-after="2mm"   />
							 &#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;
							 &#0160;&#0160;&#0160;$&#0160;&#0160;<xsl:value-of select="jueves/eventos/montoIngreso"/>
							</fo:block>
						</xsl:if>
						<xsl:if test="jueves/eventos/className='mensajes'">
						<fo:block space-after="0mm"/>
				<fo:block  font-weight="bold" color="white"  background-image="url({$iconoMensaje}) "  background-repeat="no-repeat" margin="0pt 2pt 5pt 2pt"  padding-after="4mm"   height="14px;" text-align="left" position="absolute" >
							<fo:block space-after="2mm" position="left"/>
							&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;<xsl:value-of select="jueves/eventos/mensajes" />
							</fo:block>
						</xsl:if>
						
					<fo:block space-after="0mm"/>
					</fo:table-cell>
					</xsl:if>
				</xsl:if>
		</xsl:if>
		<xsl:if test="jueves/numeroActual = 'mayor'">
				<xsl:if test="jueves/activo != 'activo'">
					<fo:table-cell border="0.5pt solid" background-color="{$bgcolorcalendariomayor}">
					<fo:block font-weight="normal" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="2mm" text-align="left">
					&#0160;<xsl:value-of select="jueves/numeroDia"/>

					</fo:block>
					</fo:table-cell>
				</xsl:if>
				<xsl:if test="jueves/activo = 'activo'">
						<xsl:if test="jueves/seleccionada ='true'" >
					<fo:table-cell border="0.8pt solid {$lineas}" border-color="red" >
					<fo:block font-weight="normal" color="{$txt-azul-oscuro}"  padding-before="1mm" padding-after="1mm" text-align="left">
								<xsl:value-of  select="jueves/numeroDia"/>

					</fo:block>
					
						<xsl:if test="jueves/eventos/className = 'montoCompromiso'">
							
							<fo:block font-weight="normal" color="{$txtblanco}" margin="0pt 0pt 15pt 30pt" background-image="url({$iconoCompromiso}) " background-repeat="no-repeat"  padding-after="2mm"   height="14px" width="20px" text-align="left">
							<fo:block space-after="2mm"   />
							 &#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;
							 &#0160;&#0160;&#0160;$&#0160;&#0160;<xsl:value-of select="jueves/eventos/montoCompromiso"/>
							</fo:block>
						</xsl:if>
							<xsl:if test="jueves/eventos/className = 'montoInversion'">
							<fo:block font-weight="normal" color="{$txtblanco}" margin="0pt 0pt 15pt 30pt" background-image="url({$iconoInversiones}) " background-repeat="no-repeat"  padding-after="2mm"   height="14px" width="20px" text-align="left">
							<fo:block space-after="2mm"   />
							 &#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;
							 &#0160;&#0160;&#0160;$&#0160;&#0160;<xsl:value-of select="jueves/eventos/montoInversion"/>
							</fo:block>
						</xsl:if>
							<xsl:if test="jueves/eventos/className = 'montoPendiente'">
							
							<fo:block font-weight="normal" color="black" margin="0pt 0pt 15pt 30pt" background-image="url({$iconoPendiente}) " background-repeat="no-repeat"  padding-after="2mm"   height="14px" width="20px" text-align="left">
							<fo:block space-after="2mm"   />
							 &#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;
							 &#0160;&#0160;&#0160;$&#0160;&#0160;<xsl:value-of select="jueves/eventos/montoPendiente"/>
							</fo:block>
						</xsl:if>
				
							<xsl:if test="jueves/eventos/className = 'montoIngreso'">
							<fo:block font-weight="normal" color="{$txtblanco}" margin="0pt 0pt 15pt 30pt" background-image="url({$iconoIngreso}) " background-repeat="no-repeat"  padding-after="2mm"   height="14px" width="20px" text-align="left">
							<fo:block space-after="2mm"   />
							 &#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;
							 &#0160;&#0160;&#0160;$&#0160;&#0160;<xsl:value-of select="jueves/eventos/montoIngreso"/>
							</fo:block>
						</xsl:if>
						<xsl:if test="jueves/eventos/className='mensajes'">
						<fo:block space-after="0mm"/>
				<fo:block  font-weight="bold" color="white"  background-image="url({$iconoMensaje}) "  background-repeat="no-repeat" margin="0pt 2pt 5pt 2pt"  padding-after="4mm"   height="14px;" text-align="left" position="absolute" >
							<fo:block space-after="2mm" position="left"/>
							&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;<xsl:value-of select="jueves/eventos/mensajes" />
							</fo:block>
						</xsl:if>
						
					<fo:block space-after="0mm"/>
					</fo:table-cell>
					</xsl:if>
					<xsl:if test="jueves/seleccionada ='false'" >
					<fo:table-cell border="0.5pt solid {$lineas}"  >
					<fo:block font-weight="normal" color="{$txt-azul-oscuro}"  padding-before="1mm" padding-after="1mm" text-align="left">
								<xsl:value-of  select="jueves/numeroDia"/>

					</fo:block>
					
						
						<xsl:if test="jueves/eventos/className = 'montoCompromiso'">
							
							<fo:block font-weight="normal" color="{$txtblanco}" margin="0pt 0pt 15pt 30pt" background-image="url({$iconoCompromiso}) " background-repeat="no-repeat"  padding-after="2mm"   height="14px" width="20px" text-align="left">
							<fo:block space-after="2mm"   />
							 &#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;
							 &#0160;&#0160;&#0160;$&#0160;&#0160;<xsl:value-of select="jueves/eventos/montoCompromiso"/>
							</fo:block>
						</xsl:if>
							<xsl:if test="jueves/eventos/className = 'montoInversion'">
							<fo:block font-weight="normal" color="{$txtblanco}" margin="0pt 0pt 15pt 30pt" background-image="url({$iconoInversiones}) " background-repeat="no-repeat"  padding-after="2mm"   height="14px" width="20px" text-align="left">
							<fo:block space-after="2mm"   />
							 &#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;
							 &#0160;&#0160;&#0160;$&#0160;&#0160;<xsl:value-of select="jueves/eventos/montoInversion"/>
							</fo:block>
						</xsl:if>
							<xsl:if test="jueves/eventos/className = 'montoPendiente'">
							
							<fo:block font-weight="normal" color="black" margin="0pt 0pt 15pt 30pt" background-image="url({$iconoPendiente}) " background-repeat="no-repeat"  padding-after="2mm"   height="14px" width="20px" text-align="left">
							<fo:block space-after="2mm"   />
							 &#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;
							 &#0160;&#0160;&#0160;$&#0160;&#0160;<xsl:value-of select="jueves/eventos/montoPendiente"/>
							</fo:block>
						</xsl:if>
				
							<xsl:if test="jueves/eventos/className = 'montoIngreso'">
							<fo:block font-weight="normal" color="{$txtblanco}" margin="0pt 0pt 15pt 30pt" background-image="url({$iconoIngreso}) " background-repeat="no-repeat"  padding-after="2mm"   height="14px" width="20px" text-align="left">
							<fo:block space-after="2mm"   />
							 &#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;
							 &#0160;&#0160;&#0160;$&#0160;&#0160;<xsl:value-of select="jueves/eventos/montoIngreso"/>
							</fo:block>
						</xsl:if>
						<xsl:if test="jueves/eventos/className='mensajes'">
						<fo:block space-after="0mm"/>
				<fo:block  font-weight="bold" color="white"  background-image="url({$iconoMensaje}) "  background-repeat="no-repeat" margin="0pt 2pt 5pt 2pt"  padding-after="4mm"   height="14px;" text-align="left" position="absolute" >
							<fo:block space-after="2mm" position="left"/>
							&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;<xsl:value-of select="jueves/eventos/mensajes" />
							</fo:block>
						</xsl:if>
						
					<fo:block space-after="0mm"/>
					</fo:table-cell>
					</xsl:if>
				</xsl:if>
		</xsl:if>
		<!-- Fin jueves -->



		<!-- Inicio viernes -->
		<xsl:if test="viernes/numeroActual = 'menor'">
				<xsl:if test="viernes/activo != 'activo'">
					<fo:table-cell border="0.5pt solid {$lineas}" background-color="{$bgcolorcalendariomenor}">
					<fo:block font-weight="normal" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="15mm" text-align="left">
					&#0160;<xsl:value-of select="viernes/numeroDia"/>

					</fo:block>
					</fo:table-cell>
				</xsl:if>
				<xsl:if test="viernes/activo = 'activo'">
					<xsl:if test="viernes/seleccionada ='true'" >
					<fo:table-cell border="0.8pt solid {$lineas}" border-color="red" >
					<fo:block font-weight="normal" color="{$txt-azul-oscuro}"  padding-before="1mm" padding-after="1mm" text-align="left">
								<xsl:value-of  select="viernes/numeroDia"/>

					</fo:block>
					
				<xsl:if test="viernes/eventos/className = 'montoCompromiso'">
							
							<fo:block font-weight="normal" color="{$txtblanco}" margin="0pt 0pt 15pt 30pt" background-image="url({$iconoCompromiso}) " background-repeat="no-repeat"  padding-after="2mm"   height="14px" width="20px" text-align="left">
							<fo:block space-after="2mm"   />
							 &#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;
							 &#0160;&#0160;&#0160;$&#0160;&#0160;<xsl:value-of select="viernes/eventos/montoCompromiso"/>
							</fo:block>
						</xsl:if>
						<xsl:if test="viernes/eventos/className = 'montoInversion'">
							
							<fo:block font-weight="normal" color="{$txtblanco}" margin="0pt 0pt 15pt 30pt" background-image="url({$iconoInversiones}) " background-repeat="no-repeat"  padding-after="2mm"   height="14px" width="20px" text-align="left">
							<fo:block space-after="2mm"   />
							 &#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;
							 &#0160;&#0160;&#0160;$&#0160;&#0160;<xsl:value-of select="viernes/eventos/montoInversion"/>
							</fo:block>
						</xsl:if>
							<xsl:if test="viernes/eventos/className = 'montoPendiente'">
							
							<fo:block font-weight="normal" color="black" margin="0pt 0pt 15pt 30pt" background-image="url({$iconoPendiente}) " background-repeat="no-repeat"  padding-after="2mm"   height="14px" width="20px" text-align="left">
							<fo:block space-after="2mm"   />
							 &#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;
							 &#0160;&#0160;&#0160;$&#0160;&#0160;<xsl:value-of select="viernes/eventos/montoPendiente"/>
							</fo:block>
						</xsl:if>
					
							<xsl:if test="viernes/eventos/className = 'montoIngreso'">
					
							<fo:block font-weight="normal" color="{$txtblanco}" margin="0pt 0pt 15pt 30pt" background-image="url({$iconoIngreso}) " background-repeat="no-repeat"  padding-after="2mm"   height="14px" width="20px" text-align="left">
							<fo:block space-after="2mm"   />
							 &#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;
							 &#0160;&#0160;&#0160;$&#0160;&#0160;<xsl:value-of select="viernes/eventos/montoIngreso"/>
							</fo:block>
						</xsl:if>
						<xsl:if test="viernes/eventos/className='mensajes'">
						<fo:block space-after="0mm"/>
				<fo:block  font-weight="bold" color="white"  background-image="url({$iconoMensaje}) "  background-repeat="no-repeat" margin="0pt 2pt 5pt 2pt"  padding-after="4mm"   height="14px;" text-align="left" position="absolute" >
							<fo:block space-after="2mm" position="left"/>
							&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;<xsl:value-of select="viernes/eventos/mensajes" />
							</fo:block>
						</xsl:if>
						
					<fo:block space-after="0mm"/>
					</fo:table-cell>
					</xsl:if>
					<xsl:if test="viernes/seleccionada ='false'" >
					<fo:table-cell border="0.5pt solid {$lineas}"  >
					<fo:block font-weight="normal" color="{$txt-azul-oscuro}"  padding-before="1mm" padding-after="1mm" text-align="left">
								<xsl:value-of  select="viernes/numeroDia"/>

					</fo:block>
					
				<xsl:if test="viernes/eventos/className = 'montoCompromiso'">
							
							<fo:block font-weight="normal" color="{$txtblanco}" margin="0pt 0pt 15pt 30pt" background-image="url({$iconoCompromiso}) " background-repeat="no-repeat"  padding-after="2mm"   height="14px" width="20px" text-align="left">
							<fo:block space-after="2mm"   />
							 &#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;
							 &#0160;&#0160;&#0160;$&#0160;&#0160;<xsl:value-of select="viernes/eventos/montoCompromiso"/>
							</fo:block>
						</xsl:if>
						<xsl:if test="viernes/eventos/className = 'montoInversion'">
							
							<fo:block font-weight="normal" color="{$txtblanco}" margin="0pt 0pt 15pt 30pt" background-image="url({$iconoInversiones}) " background-repeat="no-repeat"  padding-after="2mm"   height="14px" width="20px" text-align="left">
							<fo:block space-after="2mm"   />
							 &#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;
							 &#0160;&#0160;&#0160;$&#0160;&#0160;<xsl:value-of select="viernes/eventos/montoInversion"/>
							</fo:block>
						</xsl:if>
							<xsl:if test="viernes/eventos/className = 'montoPendiente'">
							
							<fo:block font-weight="normal" color="black" margin="0pt 0pt 15pt 30pt" background-image="url({$iconoPendiente}) " background-repeat="no-repeat"  padding-after="2mm"   height="14px" width="20px" text-align="left">
							<fo:block space-after="2mm"   />
							 &#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;
							 &#0160;&#0160;&#0160;$&#0160;&#0160;<xsl:value-of select="viernes/eventos/montoPendiente"/>
							</fo:block>
						</xsl:if>
					
							<xsl:if test="viernes/eventos/className = 'montoIngreso'">
					
							<fo:block font-weight="normal" color="{$txtblanco}" margin="0pt 0pt 15pt 30pt" background-image="url({$iconoIngreso}) " background-repeat="no-repeat"  padding-after="2mm"   height="14px" width="20px" text-align="left">
							<fo:block space-after="2mm"   />
							 &#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;
							 &#0160;&#0160;&#0160;$&#0160;&#0160;<xsl:value-of select="viernes/eventos/montoIngreso"/>
							</fo:block>
						</xsl:if>
						<xsl:if test="viernes/eventos/className='mensajes'">
						<fo:block space-after="0mm"/>
				<fo:block  font-weight="bold" color="white"  background-image="url({$iconoMensaje}) "  background-repeat="no-repeat" margin="0pt 2pt 5pt 2pt"  padding-after="4mm"   height="14px;" text-align="left" position="absolute" >
							<fo:block space-after="2mm" position="left"/>
							&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;<xsl:value-of select="viernes/eventos/mensajes" />
							</fo:block>
						</xsl:if>
						
					<fo:block space-after="0mm"/>
					</fo:table-cell>
					</xsl:if>
				</xsl:if>
		</xsl:if>
	
		<xsl:if test="viernes/numeroActual = 'igual'">
				<xsl:if test="viernes/activo != 'activo'">
					<fo:table-cell border="0.5pt solid {$lineas}"   background-color="{$bgcolorcalendarioigual}">
					<fo:block font-weight="normal" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="15mm" text-align="left">
					&#0160;<xsl:value-of select="viernes/numeroDia"/>

					</fo:block>
					</fo:table-cell>
				</xsl:if>
				<xsl:if test="viernes/activo = 'activo'">
					<xsl:if test="viernes/seleccionada ='true'" >
					<fo:table-cell border="0.8pt solid {$lineas}" border-color="red"  background-color="{$bgcolorcalendarioigual}">
					<fo:block font-weight="normal" color="{$txt-azul-oscuro}"  padding-before="1mm" padding-after="1mm" text-align="left">
								<xsl:value-of  select="viernes/numeroDia"/>

					</fo:block>
					
								<xsl:if test="viernes/eventos/className = 'montoCompromiso'">
							
							<fo:block font-weight="normal" color="{$txtblanco}" margin="0pt 0pt 15pt 30pt" background-image="url({$iconoCompromiso}) " background-repeat="no-repeat"  padding-after="2mm"   height="14px" width="20px" text-align="left">
							<fo:block space-after="2mm"   />
							 &#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;
							 &#0160;&#0160;&#0160;$&#0160;&#0160;<xsl:value-of select="viernes/eventos/montoCompromiso"/>
							</fo:block>
						</xsl:if>
						<xsl:if test="viernes/eventos/className = 'montoInversion'">
							
							<fo:block font-weight="normal" color="{$txtblanco}" margin="0pt 0pt 15pt 30pt" background-image="url({$iconoInversiones}) " background-repeat="no-repeat"  padding-after="2mm"   height="14px" width="20px" text-align="left">
							<fo:block space-after="2mm"   />
							 &#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;
							 &#0160;&#0160;&#0160;$&#0160;&#0160;<xsl:value-of select="viernes/eventos/montoInversion"/>
							</fo:block>
						</xsl:if>
							<xsl:if test="viernes/eventos/className = 'montoPendiente'">
							
							<fo:block font-weight="normal" color="black" margin="0pt 0pt 15pt 30pt" background-image="url({$iconoPendiente}) " background-repeat="no-repeat"  padding-after="2mm"   height="14px" width="20px" text-align="left">
							<fo:block space-after="2mm"   />
							 &#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;
							 &#0160;&#0160;&#0160;$&#0160;&#0160;<xsl:value-of select="viernes/eventos/montoPendiente"/>
							</fo:block>
						</xsl:if>
					
							<xsl:if test="viernes/eventos/className = 'montoIngreso'">
					
							<fo:block font-weight="normal" color="{$txtblanco}" margin="0pt 0pt 15pt 30pt" background-image="url({$iconoIngreso}) " background-repeat="no-repeat"  padding-after="2mm"   height="14px" width="20px" text-align="left">
							<fo:block space-after="2mm"   />
							 &#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;
							 &#0160;&#0160;&#0160;$&#0160;&#0160;<xsl:value-of select="viernes/eventos/montoIngreso"/>
							</fo:block>
						</xsl:if>
						<xsl:if test="viernes/eventos/className='mensajes'">
						<fo:block space-after="0mm"/>
				<fo:block  font-weight="bold" color="white"  background-image="url({$iconoMensaje}) "  background-repeat="no-repeat" margin="0pt 2pt 5pt 2pt"  padding-after="4mm"   height="14px;" text-align="left" position="absolute" >
							<fo:block space-after="2mm" position="left"/>
							&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;<xsl:value-of select="viernes/eventos/mensajes" />
							</fo:block>
						</xsl:if>
						
					<fo:block space-after="0mm"/>
					</fo:table-cell>
					</xsl:if>
					<xsl:if test="viernes/seleccionada ='false'" >
					<fo:table-cell border="0.5pt solid {$lineas}"  background-color="{$bgcolorcalendarioigual}">
					<fo:block font-weight="normal" color="{$txt-azul-oscuro}"  padding-before="1mm" padding-after="1mm" text-align="left">
								<xsl:value-of  select="viernes/numeroDia"/>

					</fo:block>
					
						<xsl:if test="viernes/eventos/className = 'montoCompromiso'">
							
							<fo:block font-weight="normal" color="{$txtblanco}" margin="0pt 0pt 15pt 30pt" background-image="url({$iconoCompromiso}) " background-repeat="no-repeat"  padding-after="2mm"   height="14px" width="20px" text-align="left">
							<fo:block space-after="2mm"   />
							 &#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;
							 &#0160;&#0160;&#0160;$&#0160;&#0160;<xsl:value-of select="viernes/eventos/montoCompromiso"/>
							</fo:block>
						</xsl:if>
						<xsl:if test="viernes/eventos/className = 'montoInversion'">
							
							<fo:block font-weight="normal" color="{$txtblanco}" margin="0pt 0pt 15pt 30pt" background-image="url({$iconoInversiones}) " background-repeat="no-repeat"  padding-after="2mm"   height="14px" width="20px" text-align="left">
							<fo:block space-after="2mm"   />
							 &#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;
							 &#0160;&#0160;&#0160;$&#0160;&#0160;<xsl:value-of select="viernes/eventos/montoInversion"/>
							</fo:block>
						</xsl:if>
							<xsl:if test="viernes/eventos/className = 'montoPendiente'">
							
							<fo:block font-weight="normal" color="black" margin="0pt 0pt 15pt 30pt" background-image="url({$iconoPendiente}) " background-repeat="no-repeat"  padding-after="2mm"   height="14px" width="20px" text-align="left">
							<fo:block space-after="2mm"   />
							 &#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;
							 &#0160;&#0160;&#0160;$&#0160;&#0160;<xsl:value-of select="viernes/eventos/montoPendiente"/>
							</fo:block>
						</xsl:if>
					
							<xsl:if test="viernes/eventos/className = 'montoIngreso'">
					
							<fo:block font-weight="normal" color="{$txtblanco}" margin="0pt 0pt 15pt 30pt" background-image="url({$iconoIngreso}) " background-repeat="no-repeat"  padding-after="2mm"   height="14px" width="20px" text-align="left">
							<fo:block space-after="2mm"   />
							 &#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;
							 &#0160;&#0160;&#0160;$&#0160;&#0160;<xsl:value-of select="viernes/eventos/montoIngreso"/>
							</fo:block>
						</xsl:if>
						<xsl:if test="viernes/eventos/className='mensajes'">
						<fo:block space-after="0mm"/>
				<fo:block  font-weight="bold" color="white"  background-image="url({$iconoMensaje}) "  background-repeat="no-repeat" margin="0pt 2pt 5pt 2pt"  padding-after="4mm"   height="14px;" text-align="left" position="absolute" >
							<fo:block space-after="2mm" position="left"/>
							&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;<xsl:value-of select="viernes/eventos/mensajes" />
							</fo:block>
						</xsl:if>
						
					<fo:block space-after="0mm"/>
					</fo:table-cell>
					</xsl:if>
				</xsl:if>
		</xsl:if>
		<xsl:if test="viernes/numeroActual = 'mayor'">
				<xsl:if test="viernes/activo != 'activo'">
					<fo:table-cell border="0.5pt solid {$lineas}" background-color="{$bgcolorcalendariomayor}">
					<fo:block font-weight="normal" color="{$txt-azul-oscuro}" padding-before="1mm" padding-after="15mm" text-align="left">
					&#0160;<xsl:value-of select="viernes/numeroDia"/>

					</fo:block>
					</fo:table-cell>
				</xsl:if>
				<xsl:if test="viernes/activo = 'activo'">
					<xsl:if test="viernes/seleccionada ='true'" >
					<fo:table-cell border="0.8pt solid {$lineas}" border-color="red" >
					<fo:block font-weight="normal" color="{$txt-azul-oscuro}"  padding-before="1mm" padding-after="1mm" text-align="left">
								<xsl:value-of  select="viernes/numeroDia"/>

					</fo:block>
					
							<xsl:if test="viernes/eventos/className = 'montoCompromiso'">
							
							<fo:block font-weight="normal" color="{$txtblanco}" margin="0pt 0pt 15pt 30pt" background-image="url({$iconoCompromiso}) " background-repeat="no-repeat"  padding-after="2mm"   height="14px" width="20px" text-align="left">
							<fo:block space-after="2mm"   />
							 &#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;
							 &#0160;&#0160;&#0160;$&#0160;&#0160;<xsl:value-of select="viernes/eventos/montoCompromiso"/>
							</fo:block>
						</xsl:if>
						<xsl:if test="viernes/eventos/className = 'montoInversion'">
							
							<fo:block font-weight="normal" color="{$txtblanco}" margin="0pt 0pt 15pt 30pt" background-image="url({$iconoInversiones}) " background-repeat="no-repeat"  padding-after="2mm"   height="14px" width="20px" text-align="left">
							<fo:block space-after="2mm"   />
							 &#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;
							 &#0160;&#0160;&#0160;$&#0160;&#0160;<xsl:value-of select="viernes/eventos/montoInversion"/>
							</fo:block>
						</xsl:if>
							<xsl:if test="viernes/eventos/className = 'montoPendiente'">
							
							<fo:block font-weight="normal" color="black" margin="0pt 0pt 15pt 30pt" background-image="url({$iconoPendiente}) " background-repeat="no-repeat"  padding-after="2mm"   height="14px" width="20px" text-align="left">
							<fo:block space-after="2mm"   />
							 &#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;
							 &#0160;&#0160;&#0160;$&#0160;&#0160;<xsl:value-of select="viernes/eventos/montoPendiente"/>
							</fo:block>
						</xsl:if>
					
							<xsl:if test="viernes/eventos/className = 'montoIngreso'">
					
							<fo:block font-weight="normal" color="{$txtblanco}" margin="0pt 0pt 15pt 30pt" background-image="url({$iconoIngreso}) " background-repeat="no-repeat"  padding-after="2mm"   height="14px" width="20px" text-align="left">
							<fo:block space-after="2mm"   />
							 &#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;
							 &#0160;&#0160;&#0160;$&#0160;&#0160;<xsl:value-of select="viernes/eventos/montoIngreso"/>
							</fo:block>
						</xsl:if>
						<xsl:if test="viernes/eventos/className='mensajes'">
						<fo:block space-after="0mm"/>
				<fo:block  font-weight="bold" color="white"  background-image="url({$iconoMensaje}) "  background-repeat="no-repeat" margin="0pt 2pt 5pt 2pt"  padding-after="4mm"   height="14px;" text-align="left" position="absolute" >
							<fo:block space-after="2mm" position="left"/>
							&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;<xsl:value-of select="viernes/eventos/mensajes" />
							</fo:block>
						</xsl:if>
						
					<fo:block space-after="0mm"/>
					</fo:table-cell>
					</xsl:if>
					<xsl:if test="viernes/seleccionada ='false'" >
					<fo:table-cell border="0.5pt solid {$lineas}"  >
					<fo:block font-weight="normal" color="{$txt-azul-oscuro}"  padding-before="1mm" padding-after="1mm" text-align="left">
								<xsl:value-of  select="viernes/numeroDia"/>

					</fo:block>
					
						
						<xsl:if test="viernes/eventos/className = 'montoCompromiso'">
							
							<fo:block font-weight="normal" color="{$txtblanco}" margin="0pt 0pt 15pt 30pt" background-image="url({$iconoCompromiso}) " background-repeat="no-repeat"  padding-after="2mm"   height="14px" width="20px" text-align="left">
							<fo:block space-after="2mm"   />
							 &#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;
							 &#0160;&#0160;&#0160;$&#0160;&#0160;<xsl:value-of select="viernes/eventos/montoCompromiso"/>
							</fo:block>
						</xsl:if>
						<xsl:if test="viernes/eventos/className = 'montoInversion'">
							
							<fo:block font-weight="normal" color="{$txtblanco}" margin="0pt 0pt 15pt 30pt" background-image="url({$iconoInversiones}) " background-repeat="no-repeat"  padding-after="2mm"   height="14px" width="20px" text-align="left">
							<fo:block space-after="2mm"   />
							 &#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;
							 &#0160;&#0160;&#0160;$&#0160;&#0160;<xsl:value-of select="viernes/eventos/montoInversion"/>
							</fo:block>
						</xsl:if>
							<xsl:if test="viernes/eventos/className = 'montoPendiente'">
							
							<fo:block font-weight="normal" color="black" margin="0pt 0pt 15pt 30pt" background-image="url({$iconoPendiente}) " background-repeat="no-repeat"  padding-after="2mm"   height="14px" width="20px" text-align="left">
							<fo:block space-after="2mm"   />
							 &#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;
							 &#0160;&#0160;&#0160;$&#0160;&#0160;<xsl:value-of select="viernes/eventos/montoPendiente"/>
							</fo:block>
						</xsl:if>
					
							<xsl:if test="viernes/eventos/className = 'montoIngreso'">
					
							<fo:block font-weight="normal" color="{$txtblanco}" margin="0pt 0pt 15pt 30pt" background-image="url({$iconoIngreso}) " background-repeat="no-repeat"  padding-after="2mm"   height="14px" width="20px" text-align="left">
							<fo:block space-after="2mm"   />
							 &#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;
							 &#0160;&#0160;&#0160;$&#0160;&#0160;<xsl:value-of select="viernes/eventos/montoIngreso"/>
							</fo:block>
						</xsl:if>
						<xsl:if test="viernes/eventos/className='mensajes'">
						<fo:block space-after="0mm"/>
				<fo:block  font-weight="bold" color="white"  background-image="url({$iconoMensaje}) "  background-repeat="no-repeat" margin="0pt 2pt 5pt 2pt"  padding-after="4mm"   height="14px;" text-align="left" position="absolute" >
							<fo:block space-after="2mm" position="left"/>
							&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;&#0160;<xsl:value-of select="viernes/eventos/mensajes" />
							</fo:block>
						</xsl:if>
						
					<fo:block space-after="0mm"/>
					</fo:table-cell>
					</xsl:if>
				</xsl:if>
		</xsl:if>
		
		<!-- Fin viernes -->


	</fo:table-row>
	</xsl:for-each>
                            
	</fo:table-body>
</fo:table>



</fo:block>



	</xsl:template>
	
	
</xsl:stylesheet>
<!-- Stylus Studio meta-information - (c) 2004-2009. Progress Software Corporation. All rights reserved.

<metaInformation>
	<scenarios>
		<scenario default="yes" name="Scenario1" userelativepaths="yes" externalpreview="no" url="calendario.xml" htmlbaseurl="" outputurl="" processortype="saxon8" useresolver="yes" profilemode="0" profiledepth="" profilelength="" urlprofilexml=""
		          commandline="" additionalpath="" additionalclasspath="" postprocessortype="fop" postprocesscommandline="" postprocessadditionalpath="" postprocessgeneratedext="" validateoutput="no" validator="internal" customvalidator="">
			<advancedProp name="sInitialMode" value=""/>
			<advancedProp name="bXsltOneIsOkay" value="true"/>
			<advancedProp name="bSchemaAware" value="true"/>
			<advancedProp name="bXml11" value="false"/>
			<advancedProp name="iValidation" value="0"/>
			<advancedProp name="bExtensions" value="true"/>
			<advancedProp name="iWhitespace" value="0"/>
			<advancedProp name="sInitialTemplate" value=""/>
			<advancedProp name="bTinyTree" value="true"/>
			<advancedProp name="xsltVersion" value="2.0"/>
			<advancedProp name="bWarnings" value="true"/>
			<advancedProp name="bUseDTD" value="false"/>
			<advancedProp name="iErrorHandling" value="fatal"/>
		</scenario>
	</scenarios>
	<MapperMetaTag>
		<MapperInfo srcSchemaPathIsRelative="yes" srcSchemaInterpretAsXML="no" destSchemaPath="" destSchemaRoot="" destSchemaPathIsRelative="yes" destSchemaInterpretAsXML="no"/>
		<MapperBlockPosition></MapperBlockPosition>
		<TemplateContext></TemplateContext>
		<MapperFilter side="source"></MapperFilter>
	</MapperMetaTag>
</metaInformation>
-->