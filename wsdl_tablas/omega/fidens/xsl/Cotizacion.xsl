<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format" version="1.0">
  <xsl:template match="/">
    <xsl:apply-templates select="cotizacion"/>
  </xsl:template>

  <xsl:template match="cotizacion">
    <doc toc="false" toclevel="1" cover="false">
      <head>
        <title></title>
      </head>
      <body>
        <section logo="C:\weblogic\myserver\public_html\portalwls\fidenswls\common\xsl\logos.bmp" width="167mm" height="20mm" >
          <title>Cotización</title>
	  
          <table width="167mm" border="0" cellspacing="0" cellpadding="0">
            <col width="84mm" number="1"/>
            <col width="83mm" number="2"/>
            <tbody>
              <tr>
                <td align="left" colspan="2"><!-- image src="logos.gif"/ --></td>
              </tr>
              <tr>
                <td ></td>
                <td align="right">Nº <xsl:value-of select="/cotizacion/encabezado/numero_cotizacion"/></td>
              </tr>
              <tr>
                <td ></td>
                <td align="right"><xsl:value-of select="/cotizacion/encabezado/ciudad"/></td>
              </tr>
              <tr>
                <td ></td>
                <td align="right"><xsl:value-of select="/cotizacion/encabezado/fecha"/></td>
              </tr>
              <tr>
                <td align="left"><xsl:value-of select="/cotizacion/encabezado/persona/titulo_cortesia"/></td>
                <td ></td>
              </tr>
              <tr>
                <td align="left"><xsl:value-of select="/cotizacion/encabezado/persona/nombre"/></td>
                <td ></td>
              </tr>
              <tr>
                <td align="left">Presente</td>
                <td ></td>
              </tr>
              <tr>
                <td ></td>
                <td align="right">En referencia a: Cotización de seguro <xsl:value-of select="/cotizacion/encabezado/tipo_seguro"/></td>
              </tr>
              <tr>
                <td align="left" colspan="2"><xsl:value-of select="/cotizacion/encabezado/persona/saludo"/> <xsl:value-of select="/cotizacion/encabezado/persona/titulo_cortesia"/></td>
              </tr>
              <tr>
                <td align="left" colspan="2">Por medio de la presente detallamos la cotización de seguro solicitada, la cual tiene una vigencia de <xsl:value-of select="/cotizacion/encabezado/dias_vigencia"/> días a contar de esta fecha.</td>
              </tr>
            </tbody>
          </table>


          <table width="167mm" border="0" cellspacing="0" cellpadding="0">
            <col width="30mm" number="1"/>
            <col width="54mm" number="2"/>
            <col width="30mm" number="3"/>
            <col width="53mm" number="4"/>
            <tbody>
	      <tr>
		<td align="left" colspan="4"></td>
	      </tr>
	      <tr>
		<hr colspan="4"/>
	      </tr>
              <tr>
                <td colspan="4">Datos del Cliente</td>
              </tr>
              <tr>
                <td >Nombre: </td>
                <td align="left"><xsl:value-of select="/cotizacion/encabezado/persona/nombre"/></td>
                <td >Rut: </td>
                <td align="left"><xsl:value-of select="/cotizacion/encabezado/persona/rut"/></td>
              </tr>
              <tr>
                <td >Dirección: </td>
                <td align="left" colspan="3"><xsl:value-of select="/cotizacion/encabezado/persona/direccion"/></td>
              </tr>
              <tr>
                <td >Telefono: </td>
                <td align="left"><xsl:value-of select="/cotizacion/encabezado/persona/telefono"/></td>
                <td >Fax: </td>
                <td align="left"><xsl:value-of select="/cotizacion/encabezado/persona/fax"/></td>
              </tr>
              <tr>
              </tr>
              <tr>
                <td >E-mail: </td>
                <td align="left" colspan="3"><xsl:value-of select="/cotizacion/encabezado/persona/email"/></td>
              </tr>
              <tr>
                <hr colspan="4"/>
              </tr>
            </tbody>
          </table>

<!-- include name="./cotizacion_cabecera.xsl" / -->
<!-- xsl:include href="./cotizacion_cabecera.xsl"/ -->

          <xsl:for-each select="/cotizacion/alternativa">
          <table width="167mm" border="0" cellspacing="0" cellpadding="0">
            <col width="33mm" number="1"/>
            <col width="33mm" number="2"/>
            <col width="33mm" number="3"/>
            <col width="34mm" number="4"/>
            <col width="34mm" number="5"/>
            <tbody>
	      	<tr>
			<td align="left" colspan="5"></td>
	      	</tr>
	      	<tr>
			<td align="left" colspan="5">Detalle de Planes</td>
	      	</tr>
	      	<tr>
			<td align="left" colspan="5"></td>
	      	</tr>
	      	<tr >
			<td align="left" colspan="5">Alternativa Nº <xsl:value-of select="numero"/> <xsl:value-of select="nombre_producto"/></td>
		</tr>
	      	<tr >
			<td></td>
			<td align="center">Prima</td>
			<td align="center">Recargo</td>
			<td align="center">Descuento</td>
			<td align="center">Total</td>
		</tr>
	      	<tr >
			<td></td>
			<td align="right"><xsl:value-of select="prima"/></td>
			<td align="right"><xsl:value-of select="recargo"/></td>
			<td align="right"><xsl:value-of select="descuento"/></td>
			<td align="right"><xsl:value-of select="total"/></td>
		</tr>
            </tbody>
          </table>

	          <table width="167mm" border="0" cellspacing="0" cellpadding="0">
	            <col width="30mm" number="1"/>
	            <col width="137mm" number="2"/>
	            <tbody>
		      <tr>
			<td colspan="2"></td>
		      </tr>
		      <tr>
			<td align="left">Compañia de Seguros</td>
			<td align="left"><xsl:value-of select="compania"/></td>
		      </tr>
		      <tr>
			<td align="left">Ramo</td>
			<td align="left"><xsl:value-of select="ramo"/></td>
		      </tr>
	            </tbody>
	          </table>

	          <xsl:for-each select="item">
	          <table width="167mm" border="0" cellspacing="0" cellpadding="0">
	            <col width="30mm" number="1"/>
	            <col width="137mm" number="2"/>
	            <tbody>
		      <tr>
			<td align="left">Plan de Seguro</td>
			<td align="left"><xsl:value-of select="plan_seguro"/></td>
		      </tr>
		      <tr>
			<td align="left">Materia Asegurada</td>
			<td align="left"><xsl:value-of select="materia_asegurada"/></td>
		      </tr>
		      <tr>
			<td colspan="2"></td>
		      </tr>
		      <tr>
			<td colspan="2"></td>
		      </tr>
		      <tr>
			<td align="left" colspan="2">Coberturas</td>
		      </tr>
	            </tbody>
	          </table>
		          <table width="167mm" border="0" cellspacing="0" cellpadding="0">
		            <col width="55mm" number="1"/>
		            <col width="56mm" number="2"/>
		            <col width="56mm" number="3"/>
		            <tbody>
			      	<tr>
					<tdd align="center">Nombre</tdd>
					<tdd align="center">Tope</tdd>
					<tdd align="center">Deducible</tdd>
			      	</tr>
		          <xsl:for-each select="cobertura">
			      	<tr>
					<tdd align="left"><xsl:value-of select="nombre"/> <xsl:value-of select="codigoSVS"/></tdd>
					<tdd align="right"><xsl:value-of select="monto"/></tdd>
					<tdd align="right"><xsl:value-of select="deducible"/></tdd>
			      	</tr>
			  </xsl:for-each>
			      <tr>
				<td colspan="2"></td>
			      </tr>
			      <tr>
				<td colspan="2"></td>
			      </tr>
			      <tr>
				<td colspan="2">Exclusiones</td>
			      </tr>
		            </tbody>
		          </table>


		          <table width="167mm" border="0" cellspacing="0" cellpadding="0">
		            <col width="167mm" number="1"/>
		            <tbody>
		          <xsl:for-each select="exclusion">
			      	<tr>
					<tdd align="left"><xsl:value-of select="descripcion"/></tdd>
			      	</tr>
			  </xsl:for-each>
		            </tbody>
		          </table>

		          <table width="167mm" border="0" cellspacing="0" cellpadding="0">
		            <col width="40mm" number="1"/>
		            <col width="137mm" number="2"/>
		            <tbody>
			      <tr>
				<td colspan="2"></td>
			      </tr>
			      <tr>
				<td colspan="2"></td>
			      </tr>
			      <tr>
				<td colspan="2"></td>
			      </tr>
			      <tr>
				<td colspan="2"></td>
			      </tr>
			      <tr>
				<td align="left">Prima Anual(IVA Incluido)</td>
				<td align="left"><xsl:value-of select="prima_anual"/></td>
			      </tr>
			      <tr>
				<td align="left">Nº de Cuotas</td>
				<td align="left"><xsl:value-of select="numero_cuotas"/></td>
			      </tr>
			      <tr>
				<td align="left">Valor Cuota</td>
				<td align="left"><xsl:value-of select="valor_cuota"/></td>
			      </tr>
			      <tr>
				<td align="left">Valor Pie</td>
				<td align="left"><xsl:value-of select="valor_pie"/></td>
			      </tr>
			      <tr>
				<td align="left">Medio de Pago</td>
				<td align="left"><xsl:value-of select="medio_pago"/></td>
			      </tr>
			      <tr>
				<td colspan="2"></td>
			      </tr>
			      <tr>
				<td colspan="2"></td>
			      </tr>
			      <tr>
				<td colspan="2">Notas</td>
			      </tr>
		            </tbody>
		          </table>

		          <table width="167mm" border="0" cellspacing="0" cellpadding="0">
		            <col width="167mm" number="1"/>
		            <tbody>
		          <xsl:for-each select="nota">
			      	<tr>
					<tdd align="left"><xsl:value-of select="descripcion"/></tdd>
			      	</tr>
			  </xsl:for-each>
			      <tr>
				<td></td>
			      </tr>
			      <tr>
				<td></td>
			      </tr>
			      <tr>
				<td></td>
			      </tr>
			      <tr>
				<td></td>
			      </tr>
		            </tbody>
		          </table>
		  </xsl:for-each>



	  </xsl:for-each>

          <table width="167mm" border="0" cellspacing="0" cellpadding="0">
            <col width="167mm" number="1"/>
            <tbody>
	      	<tr>
			<td align="left">Agradecemos de antemano la confianza depositada en <xsl:value-of select="/cotizacion/epilogo/nombre_cia_corredora"/> y le reiteramos nuestra más amplia disposición a sus requerimientos.</td>
	      	</tr>
	      	<tr>
			<td align="left">Sin otro particular y en espera de una buena acogida, le saluda muy atentamente,</td>
	      	</tr>
	      	<tr>
			<td></td>
	      	</tr>
	      	<tr>
			<td align="left"><xsl:value-of select="/cotizacion/epilogo/nombre_ejecutivo"/></td>
	      	</tr>
	      	<tr>
			<td align="left">Ejecutivo de Venta</td>
	      	</tr>
            </tbody>
          </table>


          </section>
      </body>
    </doc>
  </xsl:template>
</xsl:stylesheet>
