<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:param name="canal" />
	<xsl:output method="text" encoding="UTF-8" indent="no" media-type="text/plain"
		omit-xml-declaration="yes"/>
	<xsl:strip-space elements="*"/>
	<xsl:template match="correo">
	<xsl:choose>
		<xsl:when test="cuenta-corriente = 'S'">
			<xsl:if test="$canal = '100' and clave-telefonica-creada != 'S'">
				<xsl:text>Estimado Cliente: </xsl:text>
				<xsl:text>&#xA;&#xA;</xsl:text>
				<xsl:text>Le comunicamos que su Clave Internet ha sido creada</xsl:text>
				<xsl:text>&#xA;</xsl:text>
				<xsl:text>satisfactoriamente. Le invitamos a ingresar a http://www.tbanc.cl</xsl:text>
				<xsl:text>&#xA;</xsl:text>
				<xsl:text>donde podrá:</xsl:text>
				<xsl:text>&#xA;&#xA;</xsl:text>
				<xsl:text>- Ver su saldo, su Cartola y el detalle de su Tarjeta de Crédito.</xsl:text>
				<xsl:text>&#xA;</xsl:text>
				<xsl:text>- Obtener dinero instantáneamente con Multicrédito.</xsl:text>
				<xsl:text>&#xA;</xsl:text>
				<xsl:text>- Pagar sus cuentas.</xsl:text>
				<xsl:text>&#xA;</xsl:text>
				<xsl:text>- Transferir fondos a cuentas de terceros.</xsl:text>
				<xsl:text>&#xA;</xsl:text>
				<xsl:text>- Contratar servicios de alerta y mensajería a su teléfono celular.</xsl:text>
				<xsl:text>&#xA;</xsl:text>
				<xsl:text>- Realizar inversiones en línea.</xsl:text>
				<xsl:text>&#xA;&#xA;</xsl:text>
				<xsl:text>Estos y muchos otros servicios que funcionan las 24 horas de los</xsl:text>
				<xsl:text>&#xA;</xsl:text>
				<xsl:text>365 días del año.</xsl:text>
				<xsl:text>&#xA;&#xA;</xsl:text>
				<xsl:text>Por problemas que se desconocen, su clave telefónica no fue creada.</xsl:text>
				<xsl:text>&#xA;&#xA;</xsl:text>
				<xsl:text>Ante cualquier inconveniente llame al 600 524 24 24 y nuestros</xsl:text>
				<xsl:text>&#xA;</xsl:text>
				<xsl:text>ejecutivos le entregarán toda la ayuda que necesite.</xsl:text>
				<xsl:text>&#xA;&#xA;</xsl:text>
				<xsl:text>Atentamente</xsl:text>
				<xsl:text>&#xA;&#xA;</xsl:text>
				<xsl:text>TBanc - El Banco a distancia.</xsl:text>
			</xsl:if>
			<xsl:if test="$canal = '110' or $canal = '800'">
				<xsl:text>Estimado Cliente: </xsl:text>
				<xsl:text>&#xA;&#xA;</xsl:text>
				<xsl:text>Le comunicamos que su Clave Internet ha sido creada</xsl:text>
				<xsl:text>&#xA;</xsl:text>
				<xsl:text>satisfactoriamente. Le invitamos a ingresar a http://www.bci.cl</xsl:text>
				<xsl:text>&#xA;</xsl:text>
				<xsl:text>donde podrá:</xsl:text>
				<xsl:text>&#xA;&#xA;</xsl:text>
				<xsl:text>- Ver su saldo, su Cartola y el detalle de su Tarjeta de Crédito.</xsl:text>
				<xsl:text>&#xA;</xsl:text>
				<xsl:text>- Obtener dinero instantáneamente con Multicrédito.</xsl:text>
				<xsl:text>&#xA;</xsl:text>
				<xsl:text>- Pagar sus cuentas.</xsl:text>
				<xsl:text>&#xA;</xsl:text>
				<xsl:text>- Transferir fondos a cuentas de terceros.</xsl:text>
				<xsl:text>&#xA;</xsl:text>
				<xsl:text>- Contratar servicios de alerta y mensajería a su teléfono celular.</xsl:text>
				<xsl:text>&#xA;</xsl:text>
				<xsl:text>- Realizar inversiones en línea.</xsl:text>
				<xsl:text>&#xA;&#xA;</xsl:text>
				<xsl:text>Estos y muchos otros servicios que funcionan las 24 horas de los</xsl:text>
				<xsl:text>&#xA;</xsl:text>
				<xsl:text>365 días del año.</xsl:text>
				<xsl:text>&#xA;&#xA;</xsl:text>
				<xsl:text>Además, gracias a BCI Directo puede llamarnos en cualquier momento y</xsl:text>
				<xsl:text>&#xA;</xsl:text>
				<xsl:text>realizar distintos trámites. Por ejemplo, puede dar órdenes de</xsl:text>
				<xsl:text>&#xA;</xsl:text>
				<xsl:text>no pago, bloquear tarjetas y consultar por productos y servicios.</xsl:text>
				<xsl:text>&#xA;</xsl:text>
				<xsl:text>Sólo tiene que llamar al 600 692 8000 (desde teléfonos fijos) o al</xsl:text>
				<xsl:text>&#xA;</xsl:text>
				<xsl:text>02 - 692 8000 (desde celulares). Ante cualquier inconveniente llame a</xsl:text>
				<xsl:text>&#xA;</xsl:text>
				<xsl:text>Asistencia Bci.cl al 600 824 2424 o al 02 - 6927000 y nuestros</xsl:text>
				<xsl:text>&#xA;</xsl:text>
				<xsl:text>ejecutivos le entregarán toda la ayuda que necesite.</xsl:text>
				<xsl:text>&#xA;&#xA;</xsl:text>
				<xsl:text>Atentamente</xsl:text>
				<xsl:text>&#xA;&#xA;</xsl:text>
				<xsl:text>BCI Somos Diferentes.</xsl:text>
			</xsl:if>
			<xsl:if test="clave-telefonica-creada = 'S'">
				<xsl:text>Estimado Cliente: </xsl:text>
				<xsl:text>&#xA;&#xA;</xsl:text>
				<xsl:text>Le comunicamos que su Clave Internet y telefónica han sido creadas</xsl:text>
				<xsl:text>&#xA;</xsl:text>
				<xsl:text>satisfactoriamente. Le invitamos a ingresar a http://www.tbanc.cl</xsl:text>
				<xsl:text>&#xA;</xsl:text>
				<xsl:text>donde podrá:</xsl:text>
				<xsl:text>&#xA;&#xA;</xsl:text>
				<xsl:text>- Ver su saldo, su Cartola y el detalle de su Tarjeta de Crédito.</xsl:text>
				<xsl:text>&#xA;</xsl:text>
				<xsl:text>- Obtener dinero instantáneamente con Multicrédito.</xsl:text>
				<xsl:text>&#xA;</xsl:text>
				<xsl:text>- Pagar sus cuentas.</xsl:text>
				<xsl:text>&#xA;</xsl:text>
				<xsl:text>- Transferir fondos a cuentas de terceros.</xsl:text>
				<xsl:text>&#xA;</xsl:text>
				<xsl:text>- Contratar servicios de alerta y mensajería a su teléfono celular.</xsl:text>
				<xsl:text>&#xA;</xsl:text>
				<xsl:text>- Realizar inversiones en línea.</xsl:text>
				<xsl:text>&#xA;&#xA;</xsl:text>
				<xsl:text>Estos y muchos otros servicios que funcionan las 24 horas de los</xsl:text>
				<xsl:text>&#xA;</xsl:text>
				<xsl:text>365 días del año.</xsl:text>
				<xsl:text>&#xA;&#xA;</xsl:text>
				<xsl:text>Recuerde que su clave de Internet también corresponde a su clave telefónica.</xsl:text>
				<xsl:text>&#xA;&#xA;</xsl:text>
				<xsl:text>Ante cualquier inconveniente llame al 600 524 24 24 y nuestros</xsl:text>
				<xsl:text>&#xA;</xsl:text>
				<xsl:text>ejecutivos le entregarán toda la ayuda que necesite.</xsl:text>
				<xsl:text>&#xA;&#xA;</xsl:text>
				<xsl:text>Atentamente</xsl:text>
				<xsl:text>&#xA;&#xA;</xsl:text>
				<xsl:text>TBanc - El Banco a distancia.</xsl:text>
			</xsl:if>		
		</xsl:when>
		<xsl:otherwise>
			<xsl:if test="$canal = '100' and clave-telefonica-creada != 'S'">
				<xsl:text>Estimado(a) Cliente:</xsl:text>
				<xsl:text>&#xA;&#xA;&#xA;</xsl:text>
				<xsl:text>Queremos darle la bienvenida a Tbanc en Línea, donde podrá consultar su saldo, movimientos</xsl:text>
				<xsl:text>&#xA;</xsl:text>
				<xsl:text>por facturar, revisar su Estado de Cuenta, entre otros servicios. Sólo debe ingresar a</xsl:text>
				<xsl:text>&#xA;</xsl:text>
				<xsl:text>www.tbanc.cl con su Rut y nueva Clave Internet.</xsl:text>
				<xsl:text>&#xA;&#xA;</xsl:text>
				<xsl:text>Además, lo invitamos a conocer y disfrutar La Mejor Selección de Beneficios de su Tarjeta de</xsl:text>
				<xsl:text>&#xA;</xsl:text>
				<xsl:text>Crédito TBanc.</xsl:text>
				<xsl:text>&#xA;&#xA;&#xA;</xsl:text>
				<xsl:text>Atentamente,</xsl:text>
				<xsl:text>&#xA;</xsl:text>
				<xsl:text>Bci - Somos diferentes</xsl:text>
			</xsl:if>
			<xsl:if test="$canal = '110' or $canal = '800'">
				<xsl:text>Estimado(a) Cliente:</xsl:text>
				<xsl:text>&#xA;&#xA;&#xA;</xsl:text>
				<xsl:text>Queremos darle la bienvenida a Bci en Línea, donde podrá consultar su saldo, movimientos</xsl:text>
				<xsl:text>&#xA;</xsl:text>
				<xsl:text>por facturar, revisar su Estado de Cuenta, entre otros servicios. Sólo debe ingresar a</xsl:text>
				<xsl:text>&#xA;</xsl:text>
				<xsl:text>www.bci.cl con su Rut y nueva Clave Internet.</xsl:text>
				<xsl:text>&#xA;&#xA;</xsl:text>
				<xsl:text>Además, lo invitamos a conocer y disfrutar La Mejor Selección de Beneficios de su Tarjeta de</xsl:text>
				<xsl:text>&#xA;</xsl:text>
				<xsl:text>Crédito Bci. Ingresando a www.bci.cl/tarjetas, podrá ver el detalle de todos los beneficios y</xsl:text>
				<xsl:text>&#xA;</xsl:text>
				<xsl:text>promociones vigentes.</xsl:text>
				<xsl:text>&#xA;&#xA;&#xA;</xsl:text>
				<xsl:text>Atentamente,</xsl:text>
				<xsl:text>&#xA;</xsl:text>
				<xsl:text>Bci - Somos diferentes</xsl:text>
			</xsl:if>
			<xsl:if test="clave-telefonica-creada = 'S'">
				<xsl:text>Estimado(a) Cliente:</xsl:text>
				<xsl:text>&#xA;&#xA;&#xA;</xsl:text>
				<xsl:text>Queremos darle la bienvenida a Tbanc en Línea, donde podrá consultar su saldo, movimientos</xsl:text>
				<xsl:text>&#xA;</xsl:text>
				<xsl:text>por facturar, revisar su Estado de Cuenta, entre otros servicios. Sólo debe ingresar a</xsl:text>
				<xsl:text>&#xA;</xsl:text>
				<xsl:text>www.tbanc.cl con su Rut y nueva Clave Internet.</xsl:text>
				<xsl:text>&#xA;&#xA;</xsl:text>
				<xsl:text>Además, lo invitamos a conocer y disfrutar La Mejor Selección de Beneficios de su Tarjeta de</xsl:text>
				<xsl:text>&#xA;</xsl:text>
				<xsl:text>Crédito TBanc.</xsl:text>
				<xsl:text>&#xA;&#xA;&#xA;</xsl:text>
				<xsl:text>Atentamente,</xsl:text>
				<xsl:text>&#xA;</xsl:text>
				<xsl:text>Bci - Somos diferentes</xsl:text>
			</xsl:if>		
		</xsl:otherwise>
	</xsl:choose>
	</xsl:template>
</xsl:stylesheet>