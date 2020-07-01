<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format" version="1.0">
  <xsl:template match="/">
    <xsl:apply-templates select="propuesta"/>
  </xsl:template>
  <xsl:template match="propuesta">
    <doc toc="false" toclevel="1" cover="false">
      <head>
        <title></title>
      </head>
      <body>
        <section>
          <title>Propuesta de <xsl:value-of select="/propuesta/titulo"/></title>
          <table width="167mm" border="0" cellspacing="0" cellpadding="0">
            <col width="40mm" number="1"/>
            <col width="67mm" number="2"/>
            <col width="20mm" number="3"/>
            <col width="40mm" number="4"/>
            <tbody>
              <tr>
                <td width="40mm"></td>
                <td width="67mm"></td>
                <td width="20mm">Fecha</td>
                <td><xsl:value-of select="/propuesta/fecha-emision"/></td>
              </tr>
              <tr>
                <td width="40mm">Propuesta No</td>
                <td width="67mm"><xsl:value-of select="/propuesta/codigo"/></td>
                <td width="20mm">Ramo</td>
                <td><xsl:value-of select="/propuesta/ramo"/></td>
              </tr>
              <tr>
                <td width="40mm">Poliza a <xsl:value-of select="/propuesta/objetivo"/></td>
                <td colspan="3"><xsl:value-of select="/propuesta/codigo-poliza-anterior"/></td>
              </tr>
              <tr>
                <hr colspan="4"/>
              </tr>
              <tr>
                <td colspan="4"><b>Corredor</b></td>
              </tr>
              <tr>
                <td width="40mm">Nombre</td>
                <td width="67mm"><xsl:value-of select="/propuesta/corredor/nombre"/></td>
                <td width="20mm">Rut</td>
                <td width="40mm"><xsl:value-of select="/propuesta/corredor/rut"/></td>
              </tr>
              <tr>
                <td width="40mm">Dirección</td>
                <td colspan="3">
                  <xsl:value-of select="/propuesta/corredor/direccion/calle"/>
                  <xsl:value-of select="/propuesta/corredor/direccion/numero"/>
                  depto <xsl:value-of select="/propuesta/corredor/direccion/depto"/>
                  piso <xsl:value-of select="/propuesta/corredor/direccion/piso"/>
                </td>
              </tr>
              <tr>
                <td width="40mm">Comuna</td>
                <td width="67mm"><xsl:value-of select="/propuesta/corredor/direccion/comuna"/></td>
                <td width="20mm">Localidad</td>
                <td width="40mm"><xsl:value-of select="/propuesta/corredor/direccion/localidad"/></td>
              </tr>
              <tr>
                <td width="40mm">Teléfono</td>
                <td width="67mm"><xsl:value-of select="/propuesta/corredor/telefono"/></td>
              </tr>
              <tr>
                <hr colspan="4"/>
              </tr>
              <tr>
                <td colspan="4"><b>Compañía</b></td>
              </tr>
              <tr>
                <td width="40mm">Nombre</td>
                <td width="67mm"><xsl:value-of select="/propuesta/compania/nombre"/></td>
                <td width="20mm">Rut</td>
                <td width="40mm"><xsl:value-of select="/propuesta/compania/rut"/></td>
              </tr>
              <tr>
                <td width="40mm">Ejecutivo</td>
                <td colspan="3"><xsl:value-of select="/propuesta/compania/ejecutivo/nombre"/></td>
              </tr>
              <tr>
                <td width="40mm">Teléfono</td>
                <td colspan="3"><xsl:value-of select="/propuesta/compania/ejecutivo/telefono"/></td>
              </tr>
              <tr>
                <td width="40mm">Sucursal</td>
                <td colspan="3"><xsl:value-of select="/propuesta/compania/ejecutivo/sucursal"/></td>
              </tr>
              <tr>
                <hr colspan="4"/>
              </tr>
              <tr>
                <td colspan="4"><b>Contratante</b></td>
              </tr>
              <tr>
                <td width="40mm">Nombre</td>
                <td width="67mm"><xsl:value-of select="/propuesta/contratante/nombre"/></td>
                <td width="20mm">Rut</td>
                <td width="40mm"><xsl:value-of select="/propuesta/contratante/rut"/></td>
              </tr>
              <tr>
                <td width="40mm">Dirección</td>
                <td colspan="3">
                  <xsl:value-of select="/propuesta/contratante/direccion"/>
                </td>
              </tr>
              <tr>
                <td width="40mm">Comuna</td>
                <td width="67mm"><xsl:value-of select="/propuesta/contratante/comuna"/></td>
                <td width="20mm">Localidad</td>
                <td width="40mm"><xsl:value-of select="/propuesta/contratante/localidad"/></td>
              </tr>
              <tr>
                <td width="40mm">Teléfono</td>
                <td width="67mm"><xsl:value-of select="/propuesta/contratante/telefono"/></td>
                <td colspan="2"><xsl:value-of select="/propuesta/contratante/telefono-celular"/></td>
              </tr>
              <tr>
                <td width="40mm">Fax</td>
                <td width="67mm"><xsl:value-of select="/propuesta/contratante/fax"/></td>
                <td width="20mm">e-mail</td>
                <td width="40mm"><xsl:value-of select="/propuesta/contratante/e-mail"/></td>
              </tr>
              <tr>
                <hr colspan="4"/>
              </tr>
            </tbody>
          </table>
          <table width="167mm" border="0" cellspacing="0" cellpadding="0">
            <col width="40mm" number="1"/>
            <col width="40mm" number="2"/>
            <col width="40mm" number="3"/>
            <col width="40mm" number="4"/>
            <tbody>
              <tr>
                <td width="40mm">Monto Asegurado</td>
                <td width="40mm"><xsl:value-of select="/propuesta/simbolo-moneda"/><xsl:value-of select="/propuesta/monto-asegurado"/></td>
                <td width="40mm">Cantidad items</td>
                <td width="40mm">
                  <!--
<xsl:number level = "single" count = "/propuesta/item"/>
<xsl:number level="any" count="propuesta/item"/>
-->
                  <xsl:value-of select="/propuesta/cantidad-items"/>
                </td>
              </tr>
              <tr>
                <td width="40mm">Prima Afecta</td>
                <td width="40mm"><xsl:value-of select="/propuesta/simbolo-moneda"/><xsl:value-of select="/propuesta/prima-afecta"/></td>
              </tr>
              <tr>
                <td width="40mm">Prima Exenta</td>
                <td width="40mm"><xsl:value-of select="/propuesta/simbolo-moneda"/><xsl:value-of select="/propuesta/prima-exenta"/></td>
              </tr>
              <tr>
                <td width="40mm">Prima Neta</td>
                <td width="40mm"><xsl:value-of select="/propuesta/simbolo-moneda"/><xsl:value-of select="/propuesta/prima-neta"/></td>
              </tr>
              <tr>
                <td width="40mm">Prima IVA</td>
                <td width="40mm"><xsl:value-of select="/propuesta/simbolo-moneda"/><xsl:value-of select="/propuesta/prima-iva"/></td>
              </tr>
              <tr>
                <td width="40mm">Prima Total</td>
                <td width="40mm"><xsl:value-of select="/propuesta/simbolo-moneda"/><xsl:value-of select="/propuesta/prima-total"/></td>
              </tr>
            </tbody>
          </table>
          <table width="167mm" border="0" cellspacing="0" cellpadding="0">
            <col width="83mm" number="1"/>
            <col width="84mm" number="2"/>
            <tbody>
              <tr><td colspan="4"/></tr>
              <tr><td colspan="4"/></tr>
              <tr><td colspan="4"/></tr>
              <tr><td colspan="4"/></tr>
              <tr><td colspan="4"/></tr>
              <tr><td colspan="4"/></tr>
              <tr><td colspan="4"/></tr>
              <tr><td colspan="4"/></tr>
              <tr><td colspan="4"/></tr>
              <tr><td colspan="4"/></tr>
              <tr><td colspan="4"/></tr>
              <tr><td colspan="4"/></tr>
              <tr><td colspan="4"/></tr>
              <tr><td colspan="4"/></tr>
              <tr><td colspan="4"/></tr>
              <tr><td colspan="4"/></tr>
              <tr><td colspan="4"/></tr>
              <tr><td colspan="4"/></tr>
              <tr><td colspan="4"/></tr>
              <tr><td colspan="4"/></tr>
              <tr><td colspan="4"/></tr>
              <tr><td colspan="4"/></tr>
              <tr>
                <hr />
                <hr />
              </tr>
              <tr>
                <td width="83" align="center">Firma del Corredor o Representante</td>
                <td width="84" align="center">Firma del Cliente Aceptando la Propuesta</td>
              </tr>
            </tbody>
          </table>
          <page/>
          <!-- if Antecedentes Pago en Propuesta o Item -->
          <xsl:if test="indicador-tipo-poliza='P'">
            <table width="167mm" border="0" cellspacing="0" cellpadding="0">
              <col width="40mm" number="1"/>
              <col width="67mm" number="2"/>
              <col width="20mm" number="3"/>
              <col width="40mm" number="4"/>
              <tbody>
                <tr>
                  <td colspan="4"><b>Antecedentes del Pago</b></td>
                </tr>
                <tr>
                  <td colspan="4"><b>Responsable pago</b></td>
                </tr>
                <tr>
                  <td width="40mm">Nombre</td>
                  <td width="67mm"><xsl:value-of select="/propuesta/deudor/nombre"/></td>
                  <td width="20mm">Rut</td>
                  <td width="40mm"><xsl:value-of select="/propuesta/deudor/rut"/></td>
                </tr>
                <tr>
                  <td width="40mm">Dirección</td>
                  <td colspan="3">
                    <xsl:value-of select="/propuesta/deudor/direccion"/>
                  </td>
                </tr>
                <tr>
                  <td width="40mm">Comuna</td>
                  <td width="67mm"><xsl:value-of select="/propuesta/deudor/comuna"/></td>
                  <td width="20mm">Localidad</td>
                  <td width="40mm"><xsl:value-of select="/propuesta/deudor/localidad"/></td>
                </tr>
                <tr>
                  <td width="40mm">Teléfono</td>
                  <td width="67mm"><xsl:value-of select="/propuesta/deudor/telefono"/></td>
                  <td colspan="2"><xsl:value-of select="/propuesta/deudor/telefono-celular"/></td>
                </tr>
                <tr>
                  <td width="40mm">Fax</td>
                  <td width="67mm"><xsl:value-of select="/propuesta/deudor/fax"/></td>
                  <td width="20mm">e-mail</td>
                  <td width="40mm"><xsl:value-of select="/propuesta/deudor/e-mail"/></td>
                </tr>
                <tr>
                  <td colspan="4"/>
                </tr>
              </tbody>
            </table>
            <xsl:if test="/propuesta/pie">
              <table width="167mm" border="0" cellspacing="0" cellpadding="0">
                <col width="40mm" number="1"/>
                <col width="40mm" number="2"/>
                <col width="40mm" number="3"/>
                <col width="40mm" number="4"/>
                <tbody>
                  <tr>
                    <td colspan="4"><b>Pie</b></td>
                  </tr>
                  <tr>
                    <td width="40mm">Valor</td>
                    <td width="40mm"><xsl:value-of select="/propuesta/simbolo-moneda"/><xsl:value-of select="/propuesta/pie/valor"/></td>
                    <td width="40mm">Medio Pago</td>
                    <td width="40mm"><xsl:value-of select="/propuesta/pie/medio-pago"/></td>
                  </tr>
                  <tr>
                    <td width="40mm">No Documento</td>
                    <td colspan="3"><xsl:value-of select="/propuesta/pie/numero-documento"/></td>
                  </tr>
                  <tr>
                    <td width="40mm">Institución Financiera</td>
                    <td colspan="3"><xsl:value-of select="/propuesta/pie/institucion"/></td>
                  </tr>
                  <tr>
                    <td colspan="4"/>
                  </tr>
                </tbody>
              </table>
            </xsl:if>
            <xsl:if test="/propuesta/cuota-anticipada">
              <table width="167mm" border="0" cellspacing="0" cellpadding="0">
                <col width="40mm" number="1"/>
                <col width="40mm" number="2"/>
                <col width="40mm" number="3"/>
                <col width="40mm" number="4"/>
                <tbody>
                  <tr>
                    <td colspan="4"><b>Cuota Anticipada</b></td>
                  </tr>
                  <tr>
                    <td width="40mm">Valor</td>
                    <td width="40mm"><xsl:value-of select="/propuesta/simbolo-moneda"/><xsl:value-of select="/propuesta/cuota-anticipada/valor"/></td>
                    <td width="40mm">Medio Pago</td>
                    <td width="40mm"><xsl:value-of select="/propuesta/cuota-anticipada/medio-pago"/></td>
                  </tr>
                  <tr>
                    <td width="40mm">No Documento</td>
                    <td colspan="3"><xsl:value-of select="/propuesta/cuota-anticipada/numero-documento"/></td>
                  </tr>
                  <tr>
                    <td width="40mm">Institución Financiera</td>
                    <td colspan="3"><xsl:value-of select="/propuesta/cuota-anticipada/institucion"/></td>
                  </tr>
                  <tr>
                    <td colspan="4"/>
                  </tr>
                </tbody>
              </table>
            </xsl:if>
            <table width="167mm" border="0" cellspacing="0" cellpadding="0">
              <col width="40mm" number="1"/>
              <col width="40mm" number="2"/>
              <col width="40mm" number="3"/>
              <col width="40mm" number="4"/>
              <tbody>
                <tr>
                  <td colspan="4"><b>Cuotas siguientes</b></td>
                </tr>
                <tr>
                  <td width="40mm">No Cuotas</td>
                  <td colspan="3"><xsl:value-of select="/propuesta/numero-cuotas"/></td>
                </tr>
                <tr>
                  <td width="40mm">Valor Cuota</td>
                  <td width="40mm"><xsl:value-of select="/propuesta/simbolo-moneda"/><xsl:value-of select="/propuesta/valor-cuota"/></td>
                  <td width="40mm">Medio Pago</td>
                  <td width="40mm"><xsl:value-of select="/propuesta/medio-pago"/></td>
                </tr>
                <tr>
                  <td width="40mm">No Documento</td>
                  <td colspan="3"><xsl:value-of select="/propuesta/numero-documento"/></td>
                </tr>
                <tr>
                  <td width="40mm">Institución Financiera</td>
                  <td colspan="3"><xsl:value-of select="/propuesta/institucion"/></td>
                </tr>
                <tr>
                  <td width="40mm">Día Pago</td>
                  <td width="40mm"><xsl:value-of select="/propuesta/dia-pago"/></td>
                  <td width="40mm">Fecha Pago</td>
                  <td width="40mm"><xsl:value-of select="/propuesta/fecha-primer-vencimiento"/></td>
                </tr>
                <tr>
                  <hr colspan="4"/>
                </tr>
                <tr>
                  <td width="40mm">Requiere Factura</td>
                  <td width="40mm"><xsl:value-of select="/propuesta/requiere-factura"/></td>
                  <td colspan="2">En caso afirmativo, el responsable de pago identificado declara ser contribuyente de IVA.</td>
                </tr>
                <tr>
                  <hr colspan="4"/>
                </tr>
              </tbody>
            </table>
          </xsl:if>
          <!-- fin if -->
          <table width="167mm" border="0" cellspacing="0" cellpadding="0">
            <col width="40mm" number="1"/>
            <col width="40mm" number="2"/>
            <col width="40mm" number="3"/>
            <col width="40mm" number="4"/>
            <tbody>
              <tr>
                <td colspan="4"><b>Vigencia del Seguro</b></td>
              </tr>
              <tr>
                <td width="40mm">Desde</td>
                <td width="40mm"><xsl:value-of select="/propuesta/fecha-vigencia-desde"/></td>
                <td width="40mm">Hasta</td>
                <td width="40mm"><xsl:value-of select="/propuesta/fecha-vigencia-hasta"/></td>
              </tr>
              <tr>
                <td width="40mm">Días Vigencia</td>
                <td colspan="3"><xsl:value-of select="/propuesta/dias-vigencia"/></td>
              </tr>
              <tr>
                <hr colspan="4"/>
              </tr>
            </tbody>
          </table>
          <table width="167mm" border="0" cellspacing="0" cellpadding="0">
            <col width="167mm" number="1"/>
            <tbody>
              <tr>
                <td width="167mm" bgcolor="0066cc">
                  <b>Notas Importantes a Considerar</b>
                </td>
              </tr>
              <tr>
                <td colspan="4"/>
              </tr>
              <tr>
                <td width="167mm">
                  <p>
        1. La presente operacion seraintermediaria a traves de Corredor de Seguros 
        Ltda.. Se deja constancia que la aceptacion de esta propuesta estasujeta 
        a la aprobacion de la Compania de Seguros, Corredor de Seguros Ltda. y 
        las Polizas que eventualmente se suscriban con dicha compania no compromete 
        al <xsl:value-of select="/propuesta/institucion"/>.
                  </p>
                  <p>
        2. Con la emision de la presente propuesta, no se obtiene cobertura alguna 
        al riesgo que se procura asegurar. La cobertura comienza a regir unicamente 
        a partir del momento en que esta propuesta sea aceptada por el asegurador 
        y se inicie la vigencia de la poliza.
                  </p>
                  <p>		
        3. Se adjunta informe sobre diversificacion de negocio de Corredor de 
        Seguros Ltda.
                  </p>
                  <p>		
        4. El proponente ha tomado conocimiento del derecho a decidir sobre la 
        contratacion de los seguros y a la libre eleccion del intermediario y 
        compania aseguradora.
                  </p>
                  <p>		
        5. Las coberturas contratadas se rigen segun lo dispuesto por las polizas 
        registradas en la Superintendencia de Valores y Seguros.
                  </p>
                  <p>		
        6. Para mayor comodidad, la renovacion de la poliza es automatica al termino 
        de la vigencia, salvo que el asegurado manifieste intencion de no continuar 
        con el seguro, para lo cual debera enviar aviso por carta certificada 
        a la Compania 30 dias antes de la fecha de termino de vigencia. La renovacion 
        se regirapor las politicas tecnicas de la Compania.
                  </p>
                </td>
              </tr>
            </tbody>
          </table>
        </section>
        <xsl:for-each select="/propuesta/item">
          <page/>
          <section>
            <title>Materia Asegurada <xsl:value-of select="materia-asegurada"/></title>
            <table width="167mm" border="0" cellspacing="0" cellpadding="0">
              <col width="40mm" number="1"/>
              <col width="67mm" number="2"/>
              <col width="20mm" number="3"/>
              <col width="40mm" number="4"/>
              <tbody>
                <tr>
                  <td colspan="4"><b>Seguro rige a favor de</b></td>
                </tr>
                <tr>
                  <td width="40mm">Nombre</td>
                  <td width="67mm"><xsl:value-of select="asegurado/nombre"/></td>
                  <td width="20mm">Rut</td>
                  <td width="40mm"><xsl:value-of select="asegurado/rut"/></td>
                </tr>
                <tr>
                  <td width="40mm">Dirección</td>
                  <td colspan="3"><xsl:value-of select="asegurado/direccion"/></td>
                </tr>
                <tr>
                  <td width="40mm">Comuna</td>
                  <td width="67mm"><xsl:value-of select="asegurado/comuna"/></td>
                  <td width="20mm">Localidad</td>
                  <td width="40mm"><xsl:value-of select="asegurado/localidad"/></td>
                </tr>
                <tr>
                  <td width="40mm">Teléfono</td>
                  <td width="67mm"><xsl:value-of select="asegurado/telefono"/></td>
                  <td colspan="2"><xsl:value-of select="asegurado/telefono-celular"/></td>
                </tr>
                <tr>
                  <td width="40mm">Fax</td>
                  <td width="67mm"><xsl:value-of select="asegurado/fax"/></td>
                  <td width="20mm">e-mail</td>
                  <td width="40mm"><xsl:value-of select="asegurado/e-mail"/></td>
                </tr>
                <tr>
                  <td colspan="4"/>
                </tr>
              </tbody>
            </table>
            <!-- if Materia Asegurada Vehiculo -->
            <xsl:if test="riesgo='VEHICULO'">
              <table width="167mm" border="0" cellspacing="0" cellpadding="0">
                <col width="40mm" number="1"/>
                <col width="67mm" number="2"/>
                <col width="20mm" number="3"/>
                <col width="40mm" number="4"/>
                <tbody>
                  <tr>
                    <td colspan="4"><b>Antecedentes de la materia asegurada</b></td>
                  </tr>
                  <tr>
                    <td width="40mm">Tipo de vehiculo</td>
                    <td width="40mm"><xsl:value-of select="vehiculo/tipo"/></td>
                    <td width="40mm">Marca</td>
                    <td width="40mm"><xsl:value-of select="vehiculo/marca"/></td>
                  </tr>
                  <tr>
                    <td width="40mm">Modelo</td>
                    <td width="40mm"><xsl:value-of select="vehiculo/modelo"/></td>
                    <td width="40mm">Año</td>
                    <td width="40mm"><xsl:value-of select="vehiculo/ano"/></td>
                  </tr>
                  <tr>
                    <td width="40mm">Patente</td>
                    <td width="40mm"><xsl:value-of select="vehiculo/patente"/></td>
                    <td width="40mm">No de motor</td>
                    <td width="40mm"><xsl:value-of select="vehiculo/numero-motor"/></td>
                  </tr>
                  <tr>
                    <td width="40mm">No de chasis</td>
                    <td width="40mm"><xsl:value-of select="vehiculo/numero-chasis"/></td>
                    <td width="40mm">Uso</td>
                    <td width="40mm"><xsl:value-of select="vehiculo/uso"/></td>
                  </tr>
                  <tr>
                    <td colspan="4"/>
                  </tr>
                  <!-- If vehiculo nuevo-->
                  <xsl:if test="vehiculo/indicador-factura='S'">
                    <tr>
                      <td colspan="4"><b>Vehículo nuevo</b></td>
                    </tr>
                    <tr>
                      <td width="40mm">Documento</td>
                      <td width="40mm"></td>
                      <td width="40mm">Fecha</td>
                      <td width="40mm"><xsl:value-of select="vehiculo/factura/fecha"/></td>
                    </tr>
                    <tr>
                      <td width="40mm">Nro documento</td>
                      <td colspan="3"><xsl:value-of select="vehiculo/factura/codigo"/></td>
                    </tr>
                    <tr>
                      <td width="40mm">Emisor</td>
                      <td width="40mm"><xsl:value-of select="vehiculo/factura/emisor/nombre"/></td>
                      <td width="40mm">Rut</td>
                      <td width="40mm"><xsl:value-of select="vehiculo/factura/emisor/rut"/></td>
                    </tr>
                  </xsl:if>
                  <!-- fin if -->
                  <!-- if requiere inspeccion -->
                  <xsl:if test="vehiculo/requiere-inspeccion='S'">
                    <tr>
                      <td colspan="4"><b>Inspección del vehículo</b></td>
                    </tr>
                    <tr>
                      <td width="40mm">Contacto</td>
                      <td width="40mm"><xsl:value-of select="vehiculo/inspeccion/contacto"/></td>
                      <td width="40mm">Teléfono</td>
                      <td width="40mm"><xsl:value-of select="vehiculo/inspeccion/telefono"/></td>
                    </tr>
                    <tr>
                      <td width="40mm">Centro de Inspección</td>
                      <td colspan="3"><xsl:value-of select="vehiculo/inspeccion/centro"/></td>
                    </tr>
                  </xsl:if>
                  <!-- fin if -->
                  <tr>
                    <hr colspan="4"/>
                  </tr>
                </tbody>
              </table>
            </xsl:if>
            <!-- fin if Materia Asegurada Vehiculo -->
            <!-- If Materia Asegurada Hogar -->
            <xsl:if test="riesgo='HOGAR'">
              <table width="167mm" border="0" cellspacing="0" cellpadding="0">
                <col width="40mm" number="1"/>
                <col width="67mm" number="2"/>
                <col width="20mm" number="3"/>
                <col width="40mm" number="4"/>
                <tbody>
                  <tr>
                    <td colspan="4"><b>Antecedentes de la materia asegurada</b></td>
                  </tr>
                  <tr>
                    <td width="40mm">Dirección</td>
                    <td colspan="3">
                      <xsl:value-of select="hogar/direccion"/>
                    </td>
                  </tr>
                  <tr>
                    <td width="40mm">Comuna</td>
                    <td width="67mm"><xsl:value-of select="hogar/comuna"/></td>
                    <td width="20mm">Ciudad</td>
                    <td width="40mm"><xsl:value-of select="hogar/localidad"/></td>
                  </tr>
                  <tr>
                    <td width="40mm">Tipo propiedad</td>
                    <td width="67mm"><xsl:value-of select="hogar/tipo-propiedad"/></td>
                    <td width="20mm">Uso</td>
                    <td width="40mm"><xsl:value-of select="hogar/uso"/></td>
                  </tr>
                  <tr>
                    <td width="40mm">Tipo Edificación</td>
                    <td width="67mm"><xsl:value-of select="hogar/tipo-edificacion"/></td>
                    <td width="20mm">Permanencia</td>
                    <td width="40mm"><xsl:value-of select="hogar/permanencia"/></td>
                  </tr>
                  <tr>
                    <td width="40mm">Lugar</td>
                    <td width="67mm"><xsl:value-of select="hogar/lugar"/></td>
                    <td width="20mm">Material construcción</td>
                    <td width="40mm"><xsl:value-of select="hogar/material-construccion"/></td>
                  </tr>
                </tbody>
              </table>
              <table width="167mm" border="0" cellspacing="0" cellpadding="0">
                <col width="40mm" number="1"/>
                <col width="67mm" number="2"/>
                <col width="20mm" number="3"/>
                <col width="40mm" number="4"/>
                <tbody>
                  <tr>
                    <td colspan="4"><b>Medidas de seguridad</b></td>
                  </tr>
                  <tr>
                    <td width="40mm">Alarma</td>
                    <td width="67mm"><xsl:value-of select="hogar/alarma"/></td>
                    <td width="20mm">Guardia</td>
                    <td width="40mm"><xsl:value-of select="hogar/guardia"/></td>
                  </tr>
                  <tr>
                    <td width="40mm">Violencia</td>
                    <td width="67mm"><xsl:value-of select="hogar/violencia"/></td>
                    <td width="20mm">Otro</td>
                    <td width="40mm"><xsl:value-of select="hogar/otro"/></td>
                  </tr>
                  <tr>
                    <hr colspan="4"/>
                  </tr>
                </tbody>
              </table>
            </xsl:if>
            <!-- fin If materia asegurada hogar -->
            <!-- If Materia Asegurada Vida -->
            <xsl:if test="riesgo='VIDA'">
              <table width="167mm" border="0" cellspacing="0" cellpadding="0">
                <col width="167mm" number="1"/>
                <tbody>
                  <tr>
                    <td><b>Beneficiarios</b></td>
                  </tr>
                </tbody>
              </table>
              <table width="167mm" border="0" cellspacing="0" cellpadding="0">
                <col width="40mm" number="1"/>
                <col width="20mm" number="2"/>
                <col width="40mm" number="3"/>
                <thead>
                  <tr>
                    <th width="40mm" align="left" valign="before"><b>Rut</b></th>
                    <th width="20mm" align="left" valign="before"><b>Nombre</b></th>
                    <th width="40mm" align="left" valign="before"><b>Relación/Parentesco</b></th>
                  </tr>
                </thead>
                <tbody>
                  <xsl:for-each select="vida/beneficiario">
                    <tr>
                      <tdd width="40mm"><xsl:value-of select="rut"/></tdd>
                      <tdd width="20mm"><xsl:value-of select="nombre"/></tdd>
                      <tdd width="40mm"><xsl:value-of select="parentesco"/></tdd>
                    </tr>
                  </xsl:for-each>
                  <tr>
                    <hr colspan="4"/>
                  </tr>
                </tbody>
              </table>
            </xsl:if>
            <!-- fin Materia Asegurada Vida -->
            <table width="167mm" border="0" cellspacing="0" cellpadding="0">
              <col width="40mm" number="1"/>
              <col width="127mm" number="2"/>
              <tbody>
                <tr>
                  <td width="40mm">Observaciones</td>
                  <td colspan="3"><xsl:value-of select="observaciones"/></td>
                </tr>
                <tr>
                  <hr colspan="4"/>
                </tr>
              </tbody>
            </table>
            <table width="167mm" border="0" cellspacing="0" cellpadding="0">
              <col width="40mm" number="1"/>
              <col width="67mm" number="2"/>
              <col width="20mm" number="3"/>
              <col width="40mm" number="4"/>
              <tbody>
                <tr>
                  <td width="40mm">Producto</td>
                  <td colspan="3"><xsl:value-of select="producto"/></td>
                </tr>
                <tr>
                  <td width="40mm">Plan</td>
                  <td colspan="3"><xsl:value-of select="plan"/></td>
                </tr>
                <tr>
                  <td colspan="3"></td>
                </tr>
                <tr>
                  <td colspan="4"><b>Coberturas</b></td>
                </tr>
              </tbody>
            </table>
            <table width="167mm" border="0" cellspacing="0" cellpadding="0">
              <col width="40mm" number="1"/>
              <col width="20mm" number="2"/>
              <col width="40mm" number="3"/>
              <col width="30mm" number="4"/>
              <col width="30mm" number="5"/>
              <thead>
                <tr>
                  <th width="40mm" align="left" valign="before"><b>Nombre</b></th>
                  <th width="20mm" align="left" valign="before"><b>CAD</b></th>
                  <th width="40mm" align="left" valign="before"><b>Monto Asegurado/Tope</b></th>
                  <th width="30mm" align="left" valign="before"><b>Prima</b></th>
                  <th width="30mm" align="left" valign="before"><b>Deducible</b></th>
                </tr>
              </thead>
              <tbody>
                <xsl:for-each select="cobertura">
                  <tr>
                    <tdd width="40mm">
                      <xsl:value-of select="nombre"/>
                    </tdd>
                    <tdd width="20mm">
                      <xsl:value-of select="cad"/>
                    </tdd>
                    <tdd width="40mm" align="right">
                      <xsl:value-of select="monto-asegurado"/>
                    </tdd>
                    <tdd width="30mm" align="right">
                      <xsl:value-of select="prima"/>
                    </tdd>
                    <tdd width="30mm" align="center">
                      <xsl:value-of select="deducible"/>
                    </tdd>
                  </tr>
                </xsl:for-each>
                <tr>
                  <td width="40mm">Prima Total</td>
                  <td width="20mm"></td>
                  <td width="40mm"></td>
                  <td width="40mm" align="right"><xsl:value-of select="/propuesta/simbolo-moneda"/><xsl:value-of select="/propuesta/prima-total"/></td>
                </tr>
              </tbody>
            </table>
            <table width="167mm" border="0" cellspacing="0" cellpadding="0">
              <col width="40mm" number="1"/>
              <col width="67mm" number="2"/>
              <col width="20mm" number="3"/>
              <col width="40mm" number="4"/>
              <tbody>
                <tr>
                  <td colspan="4"><b>Antecedentes del Pago</b></td>
                </tr>
                <tr>
                  <td colspan="4"><b>Responsable pago</b></td>
                </tr>
                <tr>
                  <td width="40mm">Nombre</td>
                  <td width="67mm"><xsl:value-of select="deudor/nombre"/></td>
                  <td width="20mm">Rut</td>
                  <td width="40mm"><xsl:value-of select="deudor/rut"/></td>
                </tr>
                <tr>
                  <td width="40mm">Dirección</td>
                  <td colspan="3">
                    <xsl:value-of select="deudor/direccion"/>
                  </td>
                </tr>
                <tr>
                  <td width="40mm">Comuna</td>
                  <td width="67mm"><xsl:value-of select="deudor/direccion/comuna"/></td>
                  <td width="20mm">Localidad</td>
                  <td width="40mm"><xsl:value-of select="deudor/direccion/localidad"/></td>
                </tr>
                <tr>
                  <td width="40mm">Teléfono</td>
                  <td width="67mm"><xsl:value-of select="deudor/telefono"/></td>
                  <td colspan="2"><xsl:value-of select="deudor/telefono-celular"/></td>
                </tr>
                <tr>
                  <td width="40mm">Fax</td>
                  <td width="67mm"><xsl:value-of select="deudor/fax"/></td>
                  <td width="20mm">e-mail</td>
                  <td width="40mm"><xsl:value-of select="deudor/email"/></td>
                </tr>
                <tr>
                  <td colspan="4"/>
                </tr>
              </tbody>
            </table>
          <!-- if Antecedentes Pago en Propuesta o Item -->
          <xsl:if test="indicador-tipo-poliza='I'">
            <table width="167mm" border="0" cellspacing="0" cellpadding="0">
              <col width="40mm" number="1"/>
              <col width="40mm" number="2"/>
              <col width="40mm" number="3"/>
              <col width="40mm" number="4"/>
              <tbody>
                <tr>
                  <td colspan="4"><b>Pie</b></td>
                </tr>
                <tr>
                  <td width="40mm">Valor</td>
                  <td width="40mm"><xsl:value-of select="pie/valor"/></td>
                  <td width="40mm">Medio Pago</td>
                  <td width="40mm"><xsl:value-of select="pie/medio-pago"/></td>
                </tr>
                <tr>
                  <td width="40mm">No Documento</td>
                  <td colspan="3"><xsl:value-of select="pie/numero-documento"/></td>
                </tr>
                <tr>
                  <td colspan="2">Institución Financiera</td>
                  <td colspan="2"><xsl:value-of select="pie/institucion-financiera"/></td>
                </tr>
                <tr>
                  <td colspan="4"/>
                </tr>
              </tbody>
            </table>
            <table width="167mm" border="0" cellspacing="0" cellpadding="0">
              <col width="40mm" number="1"/>
              <col width="40mm" number="2"/>
              <col width="40mm" number="3"/>
              <col width="40mm" number="4"/>
              <tbody>
                <tr>
                  <td colspan="4"><b>Cuota Anticipada</b></td>
                </tr>
                <tr>
                  <td width="40mm">Valor</td>
                  <td width="40mm"><xsl:value-of select="cuota-anticipada/valor"/></td>
                  <td width="40mm">Medio Pago</td>
                  <td width="40mm"><xsl:value-of select="cuota-anticipada/medio-pago"/></td>
                </tr>
                <tr>
                  <td width="40mm">No Documento</td>
                  <td colspan="3"><xsl:value-of select="cuota-anticipada/numero-documento"/></td>
                </tr>
                <tr>
                  <td colspan="2">Institución Financiera</td>
                  <td colspan="2"><xsl:value-of select="cuota-anticipada/institucion-financiera"/></td>
                </tr>
                <tr>
                  <td colspan="4"/>
                </tr>
              </tbody>
            </table>
            <table width="167mm" border="0" cellspacing="0" cellpadding="0">
              <col width="40mm" number="1"/>
              <col width="40mm" number="2"/>
              <col width="40mm" number="3"/>
              <col width="40mm" number="4"/>
              <tbody>
                <tr>
                  <td colspan="4"><b>Cuotas siguientes</b></td>
                </tr>
                <tr>
                  <td width="40mm">No Cuotas</td>
                  <td width="40mm"><xsl:value-of select="numero-cuotas"/></td>
                  <td width="40mm">Valor Cuota</td>
                  <td width="40mm"><xsl:value-of select="valor-cuota"/></td>
                </tr>
                <tr>
                  <td width="40mm">Día Pago</td>
                  <td width="40mm"><xsl:value-of select="dia-pago"/></td>
                  <td width="40mm">Fecha Pago</td>
                  <td width="40mm"><xsl:value-of select="fecha-pago"/></td>
                </tr>
                <tr>
                  <hr colspan="4"/>
                </tr>
                <tr>
                  <td width="40mm">Requiere Factura</td>
                  <td width="40mm"><xsl:value-of select="requiere-factura"/></td>
                  <td colspan="2">En caso afirmativo, el responsable de pago identificado declara ser contribuyente de IVA.</td>
                </tr>
              </tbody>
            </table>
            </xsl:if>
          </section>
        </xsl:for-each>
      </body>
    </doc>
  </xsl:template>
</xsl:stylesheet>
