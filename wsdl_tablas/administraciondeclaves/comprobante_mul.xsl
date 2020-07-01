<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format" version="1.0">
	<xsl:template match="comprobante">
		<fo:root xmlns:fo="http://www.w3.org/1999/XSL/Format">
			<!-- layout for the first page -->
			<fo:layout-master-set>
				<!-- layout for the first page -->
				<fo:simple-page-master master-name="first" page-height="29.7cm" page-width="21cm" margin-top="1cm" margin-bottom="2cm" margin-left="2.5cm" margin-right="2.5cm" border="thick solid red">
					<fo:region-body margin-top="0cm"/>
					<fo:region-before extent="0cm"/>
					<fo:region-after extent="0cm"/>
				</fo:simple-page-master>
				<fo:page-sequence-master master-name="basicPSM">
					<fo:repeatable-page-master-alternatives>
						<fo:conditional-page-master-reference master-reference="first" page-position="first"/>
					</fo:repeatable-page-master-alternatives>
				</fo:page-sequence-master>
			</fo:layout-master-set>
			<fo:page-sequence master-reference="basicPSM">
				<fo:flow flow-name="xsl-region-body">
					<fo:block padding-top="4pt" border-style="solid" border-width="0.5pt solid">
						<fo:block padding-top="3pt" text-align="left">
							<fo:external-graphic scaling="uniform">
								<xsl:attribute name="src"><xsl:value-of select="urlLogo"/></xsl:attribute>
							</fo:external-graphic>
						</fo:block>
						<fo:block font="11pt Arial" text-align="right" font-weight="bold" padding-top="20pt">Fecha Entrega: <xsl:value-of select="fecha"/>
						</fo:block>
						<fo:block font="11pt Arial" margin-left="30pt" padding-top="20pt" text-align="left" font-weight="bold">Recepción de MultiPass y aceptación de condiciones de operación a través de medios remotos</fo:block>
						<fo:block font="11pt Arial" margin-left="30pt" padding-top="20pt">
							<fo:inline font-weight="bold" text-align="left">Cliente: </fo:inline>
							<xsl:value-of select="nombre"/>
						</fo:block>
						<fo:block font="11pt Arial" margin-left="30pt" padding-top="2pt">
							<fo:inline font-weight="bold" text-align="left">Rut: </fo:inline>
							<xsl:value-of select="rut"/>
						</fo:block>
						<fo:block font="11pt Arial" margin-left="30pt" padding-top="2pt">
							<fo:inline font-weight="bold" text-align="left">Número de Solicitud: </fo:inline>
							<xsl:value-of select="numeroSolicitud"/>
						</fo:block>
						<fo:block font="11pt Arial" margin-left="30pt" padding-top="2pt">
							<fo:inline font-weight="bold" text-align="left">Número de Multipass: </fo:inline>
							<xsl:value-of select="serie"/>
						</fo:block>
						<fo:block font="11pt Arial" margin-left="30pt" padding-top="2pt">
							<fo:inline font-weight="bold" text-align="left">Fecha de Solicitud: </fo:inline>
							<xsl:value-of select="fecha"/>
						</fo:block>
						<fo:block margin-left="30pt" font="11pt Arial" margin-right="30pt" padding-top="20pt" text-align="justify">
                            El cliente que firma, declara recibir en este mismo acto, un dispositivo digital denominado MultiPass, correspondiente a una clave secreta adicional y complementaria a la que ya posee de acceso a Internet, asumiendo  toda responsabilidad con relación a las transacciones, de cualquiera naturaleza, efectuadas con dichas claves, debiendo presumirse que aquellas realizadas usando tales claves, lo fueron efectivamente hechas por el suscrito. Lo anterior es válido también en el caso de que el suscrito actúe en representación de una empresa, instancia en la cual este dispositivo no lo faculta a realizar operaciones más allá de las que ha sido autorizado por la empresa.
                        </fo:block>
						<fo:block margin-left="30pt" font="11pt Arial" margin-right="30pt" padding-top="20pt" text-align="justify">
                            El Cliente declara que en lo sucesivo, el uso de canales remotos habilitados por el Banco de Crédito e Inversiones  --BCI--, deberá ceñirse a las políticas de seguridad que se han publicado y actualizado en   el sitio Web del BCI. 
                        </fo:block>
						<fo:block margin-left="30pt" font="11pt Arial" margin-right="30pt" padding-top="20pt" text-align="justify">
                            Declara además conocer que al operar con la clave MultiPass, en el evento que hubiere suscrito con anterioridad un mandato de transferencia de fondos a cuentas propias o de terceros, ya sea personalmente, o activados a través de la red Internet, se altera dicho mandato en cuanto a los montos máximos diarios permitidos efectuar por esta modalidad y a las cuentas de destino de tales transferencias.
                        </fo:block>
						<fo:block margin-left="30pt" font="11pt Arial" margin-right="30pt" padding-top="20pt" text-align="justify">
                           Las condiciones de uso de la clave MultiPass, se encuentran en los sitios de Internet www.bci.cl y www.tbanc.cl, las que el cliente declara conocer y aceptar.
                        </fo:block>
						<fo:block margin-left="30pt" font="11pt Arial" margin-right="30pt" padding-top="20pt" text-align="center">
							<fo:inline text-align="center">__________________ </fo:inline>
							<fo:inline text-align="center" color="white">_______________</fo:inline>
							<fo:inline text-align="center">__________________</fo:inline>
						</fo:block>
						<fo:block margin-left="30pt" font="11pt Arial" margin-right="30pt" padding-top="1pt" text-align="center" padding-bottom="10pt">
							<fo:inline text-align="center">VºBº Banco</fo:inline>
							<fo:inline text-align="center" color="white">_______________________</fo:inline>
							<fo:inline text-align="center">Firma Cliente</fo:inline>
						</fo:block>
						<fo:block font="11pt Arial" border-top="1pt solid black" margin-left="5pt" margin-right="5pt" padding-top="10pt" border-top-color="black">
							<fo:block font="11pt Arial">Responsable entrega : <xsl:value-of select="responsable"/>
							</fo:block>
							<fo:block font="11pt Arial">Oficina de entrega : <xsl:value-of select="codOficina"/> - <xsl:value-of select="oficina"/>
							</fo:block>
							<fo:block font="11pt Arial">Tipo de Cliente : Cuenta Correntista
							</fo:block>
						</fo:block>
					</fo:block>
				</fo:flow>
			</fo:page-sequence>
		</fo:root>
	</xsl:template>
</xsl:stylesheet>
