<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format">
	<!--Variables-->
    
	<xsl:variable name="bgcolor">#F2F2F2</xsl:variable>
	<xsl:variable name="lineas">#BDBDBD</xsl:variable>
	<xsl:variable name="txt">#000000</xsl:variable>
	<xsl:variable name="txt-azul-claro">#0061A5</xsl:variable>
	<xsl:variable name="txt-azul-oscuro">#1069B5</xsl:variable>
	<xsl:variable name="alto-filas">9mm</xsl:variable>
	<xsl:variable name="espacio-subtitulos">2mm</xsl:variable>
	<xsl:variable name="borde-tabla">#BDBDBD</xsl:variable>
	<xsl:variable name="espacio-texto-celda-left">2mm</xsl:variable>
	<xsl:variable name="espacio-texto-celda-top">1mm</xsl:variable>
	<xsl:variable name="espacio-celda-top">2mm</xsl:variable>
	<xsl:variable name="size-fuente-margen">7pt</xsl:variable>
	<xsl:decimal-format name="peso" decimal-separator="." grouping-separator="."/>

	<!-- Variables -->
	<xsl:template match="/">
		<fo:root xmlns:fo="http://www.w3.org/1999/XSL/Format">
			<!-- Propiedades pagina -->
			<fo:layout-master-set>
				<fo:simple-page-master master-name="pagina"
					page-height="28cm"
					page-width="22cm"
					margin-top="0.1cm"
					margin-bottom="1cm"
					margin-left="2cm"
					margin-right="2cm">
					<fo:region-body margin-top="0.1cm" margin-bottom="1cm" background-color="#ffffff"/> 
					<fo:region-before extent="3cm"/>
					<fo:region-after extent="2cm"/>
				</fo:simple-page-master>
			</fo:layout-master-set>
			<!-- Propiedades pagina -->
            <fo:page-sequence master-reference="pagina" initial-page-number="1" language="en" country="us">
				<fo:flow flow-name="xsl-region-body">
					<xsl:call-template name="contenido2"/>
				</fo:flow>
			</fo:page-sequence> 
			<fo:page-sequence master-reference="pagina" initial-page-number="2" language="en" country="us">
				<fo:flow flow-name="xsl-region-body">
					<xsl:call-template name="contenido"/>
				</fo:flow>
			</fo:page-sequence> 
            	
		</fo:root>
	</xsl:template>
	
<xsl:template name="contenido">

		<!-- Titulo Modulo -->
        <fo:table table-layout="fixed" margin-left="-5cm">
			<fo:table-column column-width="8cm"/>
            <fo:table-column column-width="8cm"/>
			<fo:table-body>
				<fo:table-row >
                    <fo:table-cell>
                        <fo:external-graphic height="60px" width="74px">
                                    <xsl:attribute name="src">url('<xsl:value-of select="Comprobante/logo" /><xsl:text disable-output-escaping="yes">images.jpg</xsl:text>')</xsl:attribute>
                        </fo:external-graphic>
                    </fo:table-cell >
                    <fo:table-cell >
                          <fo:block  font-size="9pt" text-align="left" margin-left="3.5cm" >
						Fecha: <xsl:value-of select="Comprobante/fecha" />
						</fo:block>
                       <fo:block  font-size="9pt" text-align="left" margin-left="3.5cm" >
						Hora: <xsl:value-of select="Comprobante/hora" /> hrs.
						</fo:block>
                    </fo:table-cell >
                </fo:table-row >
            </fo:table-body>
        </fo:table>    
       
		<fo:block border-style="solid" border-color="#BDBDBD" border-width="1mm" margin-bottom="10mm" padding="12mm 12mm 12mm 12mm">
            <fo:table table-layout="fixed" margin-left="1cm">
			<fo:table-column column-width="17cm"/>
			<fo:table-body>
				<fo:table-row >
				<fo:table-cell >
					<!-- titulo -->
						<fo:block font-size="12pt" font-weight="bold" text-align="center" space-after="30px" margin-left="-4.5cm" >
						Recepción Comprobante de Entrega Clave
						</fo:block>
                        <fo:block  font-size="10pt" font-weight="bold" text-align="left">
						Cliente: <xsl:value-of select="Comprobante/cliente" />
						</fo:block>
                        <fo:block  font-size="10pt" font-weight="bold" text-align="left">
						Rut: <xsl:value-of select="Comprobante/rut"  />
						</fo:block>

                        <fo:block  font-size="9pt" text-align="left" space-before="20px">
						El Cliente que firma, declara haber ingresado una clave, para ser usada en BCInet,
						</fo:block>
                        <fo:block  font-size="9pt" text-align="left">
						la cual tiene estado transitorio hasta el cambio de la misma.
						</fo:block>
                        
                         <fo:block  font-size="13pt" text-align="left" space-before="80px">
						</fo:block>
					<!-- titulo -->
				
				</fo:table-cell>
				</fo:table-row>
			</fo:table-body>
            
			</fo:table >
            <fo:table table-layout="fixed" margin-left="1.5cm">
			<fo:table-column column-width="9cm"/>
            <fo:table-column column-width="9cm"/>
			<fo:table-body>
				<fo:table-row >
				<fo:table-cell >
					<!-- titulo -->
						<fo:block font-size="14pt" text-align="left" margin-left="0.7cm">
						________________
						</fo:block>
                        <fo:block font-size="9pt"  text-align="left" >
						VºB Banco
						</fo:block>
					<!-- titulo -->
				</fo:table-cell>
                <fo:table-cell >
					<!-- titulo -->
						<fo:block font-size="14pt" text-align="left" margin-left="0.7cm">
						________________
						</fo:block>
                        <fo:block font-size="9pt"  text-align="left" >
						Firma Cliente
						</fo:block>
					<!-- titulo -->
				 <fo:block  font-size="13pt" text-align="left" space-before="40px">
						</fo:block>
				</fo:table-cell>
				</fo:table-row>
                
			</fo:table-body>
			</fo:table>
            <fo:block space-after="2mm" margin-left="-1cm" margin-right="-1cm">
			<fo:leader leader-pattern="rule" leader-length="40cm"/>
            </fo:block>
            
            <fo:table table-layout="fixed">
			<fo:table-column column-width="9cm"/>
            <fo:table-column column-width="9cm"/>
			<fo:table-body>
				<fo:table-row >
				<fo:table-cell >
					<!-- titulo -->
						<fo:block font-size="9pt" text-align="left" margin-left="-1cm">
						Responsable operación: <xsl:value-of select="Comprobante/responsable" />
						</fo:block>
                        
					<!-- titulo -->
				</fo:table-cell>
                <fo:table-cell >
					<!-- titulo -->
						<fo:block font-size="9pt" text-align="right" margin-right="-1cm">
						Oficina: <xsl:value-of select="Comprobante/oficina" />
						</fo:block>
                       
					<!-- titulo -->
				</fo:table-cell>
				</fo:table-row>
                
			</fo:table-body>
			</fo:table>
		</fo:block>
		<!-- Titulo Modulo -->
		
	</xsl:template>
    
    <xsl:template name="contenido2">

		<!-- Titulo Modulo -->
		<fo:block border-style="solid" border-color="#BDBDBD" border-width="1mm" margin-bottom="1mm" padding="12mm 12mm 12mm 12mm">
			<fo:table table-layout="fixed" >
                <fo:table-column column-width="8cm"/>
                <fo:table-column column-width="8cm"/>
                <fo:table-body>
                    <fo:table-row >
                        
                        <fo:table-cell >
                         
                        <fo:external-graphic height="60 px" width="74px">
                                    <xsl:attribute name="src">url('<xsl:value-of select="Comprobante/logo" /><xsl:text disable-output-escaping="yes">images.jpg</xsl:text>')</xsl:attribute>
                                </fo:external-graphic>

                        </fo:table-cell >
                        <fo:table-cell  >
                            <fo:block font-family="Times New Roman" font-size="10pt" margin-left="3.5cm" text-align="left">
                                Fecha: <xsl:value-of select="Comprobante/fecha"/>
                            </fo:block>
                            <fo:block font-family="Times New Roman" font-size="10pt" text-align="left" margin-left="3.5cm"  space-after="30px">
                                Hora: <xsl:value-of select="Comprobante/hora" /> hrs.
                            </fo:block>
                                
                        </fo:table-cell >
                    </fo:table-row >
                </fo:table-body>
            </fo:table>
            
            <fo:table table-layout="fixed">
			<fo:table-column column-width="17cm" />
			<fo:table-body>
				<fo:table-row >
				<fo:table-cell margin-left="1.3cm" margin-right="1cm">
                        
					<!-- titulo -->
						<fo:block font-family="Times New Roman" font-size="14pt" font-weight="bold" text-align="center" space-after="35px">
						Comprobante de Entrega De Clave Bci 
						</fo:block>
                        <fo:block font-family="Times New Roman" font-size="13pt" font-weight="bold" text-align="left">
						Cliente: <xsl:value-of select="Comprobante/cliente" />
						</fo:block>
                        <fo:block font-family="Times New Roman" font-size="13pt" text-align="left" space-before="10px" >
						Estimado Cliente:
						</fo:block>
                        <fo:block font-family="Times New Roman" font-size="13pt" text-align="left">
						Con la clave ingresada por usted, ahora podrá acceder a nuestra página Web <fo:inline text-decoration="underline">www.bci.cl</fo:inline> y disponer de los servicios seguros de la Corporación BCI, asociados a los productos que usted posee con nosotros.
						</fo:block>
                        <fo:block font-family="Times New Roman" font-size="13pt" text-align="left" space-before="20px">
						Para comenzar a operar en la Web siga los siguientes pasos:
						</fo:block>
                        <fo:block font-family="Times New Roman" font-size="13pt" text-align="left" space-before="15px">
						1.-Ingrese a la página http://www.bci.cl
						</fo:block>
                        <fo:block font-family="Times New Roman" font-size="13pt" text-align="left">
						2.-Seleccione la opción Transacciones.
						</fo:block>
                         <fo:block font-family="Times New Roman" font-size="13pt" text-align="left">
						3.-En sección Login Cliente, digite su rut personal y la clave ingresada por usted, luego presione botón IR.
						</fo:block>
                        <fo:block font-family="Times New Roman" font-size="13pt" text-align="left" >
						4.- El Sistema le exigirá como primera operación cambiar la clave ingresada por usted. Si no lo hace, no podrá consultar o efectuar transacciones hasta haber realizado este cambio.
						</fo:block>
                        <fo:block font-family="Times New Roman" font-size="13pt" text-align="left" space-before="25px">
						Para su protección y seguridad, cada vez que usted solicite una nueva clave en cualquiera de la sucursales del Banco, le ofreceremos dos niveles de protección:
						</fo:block>
                        <fo:block font-family="Times New Roman" font-size="13pt" text-align="left">
						- La primera transacción que se le exigirá al ingresar a los servicios seguros de Bcinet, será el cambio de clave.
						</fo:block>
                        <fo:block font-family="Times New Roman" font-size="13pt" text-align="left">
						- Usted podrá efectuar transacciones financieras y consultas de sus productos al día siguiente del cambio de la clave. El Banco resguardará de esta manera el uso de su clave durante este preriodo.
						</fo:block>
                        
                        <fo:block font-family="Times New Roman" font-size="13pt" text-align="left" space-before="15px">
						Le recordamos además, que al tercer intento fallido acumulado de ingreso de clave, se bloqueará automáticamente <fo:inline font-weight="bold">sólo el servicio Bcinet.</fo:inline> Para desbloquear, usted deberá contactarse con su Ejecutivo Comercial o al Fono Ayuda BciNet
						</fo:block>
                         <fo:block font-family="Times New Roman" font-size="13pt" text-align="left" >
						600 - 824 24 24.
						</fo:block>
                         <fo:block font-family="Times New Roman" font-size="13pt" text-align="left" space-before="50px">
						<fo:block space-after="2mm">
                            <fo:leader leader-pattern="rule" leader-length="18cm"/>
                        </fo:block>
          <fo:block font-family="Times New Roman" font-size="9pt" text-align="left" >
						Responsable operación: <xsl:value-of select="Comprobante/responsable" />
		</fo:block>
						</fo:block>
					<!-- titulo -->
				
				</fo:table-cell>
				</fo:table-row>
			</fo:table-body>
            
			</fo:table>
		</fo:block>
		<!-- Titulo Modulo -->
		
	</xsl:template>
   
</xsl:stylesheet>













