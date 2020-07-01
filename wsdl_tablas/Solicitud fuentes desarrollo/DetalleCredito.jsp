<%@ taglib uri="http://java.sun.com/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jstl/fmt" prefix="fmt"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Mn / Consumo / Detalle de Cr&eacute;ditos</title>
<link href="css/popup.css" media="screen" rel="stylesheet" type="text/css" />
<link href="css/popup-print.css" media="print" rel="stylesheet" type="text/css" />
<script src="js/intra.js" type="text/javascript" language="javascript"></script>
<script>

var numeroOperacion = "<c:out value='${detalleCreditoForm.map.numeroOperacion}' />";

function marcaSelector() {
  if (top.amenu != null) {
    //alert("top.amenu es " + top.amenu);
    var selector = top.amenu.document.getElementById("selectMN");
    var nuevoIndice = -1;
    var i;
    for (i=0; i<selector.options.length; i++) {
      if (selector.options[i].value == numeroOperacion) {
        nuevoIndice = i;
      }
    }
    selector.selectedIndex = nuevoIndice;
  } else {
    alert("El marco de menús no está disponible. Intente recargar la página o verifique la dirección de acceso.");
  }
}
</script>
</head>

<body class="productosv" onload="marcaSelector()">
  <div id="logo">
    <div id="fecha"><fmt:formatDate value="${detalleCreditoForm.map.fechaHora}" pattern="dd/MM/yyyy" /></div>
    <img src="images/02-logo-bci.gif" />
  </div>
  <div id="titulo">
    <div id="titulocc" style="font-weight:normal">
      N&deg; Operación: <b><c:out value="${detalleCreditoForm.map.numeroOperacion}" /></b>
    </div>
    Mn / Consumo / Detalle de Cr&eacute;ditos
  </div>
  <div id="no-print">
    <div id="subtitulo-top2">
      Ejecutivo : <b><c:out value="${detalleCreditoForm.map.nombreEjecutivo}" /></b>
    </div>
  </div>
  <div id="no-print">
    <table width="100%" border="0" cellpadding="0" cellspacing="0">
      <tr>
        <!--=====MITAD IZQUIERDA==============-->
        <td width="50%" class="mitad-iz">
          <table width="100%" border="0" cellpadding="0" cellspacing="0" id="tabla">
            <tr>
              <td width="50%"><b>Monto Cr&eacute;dito :</b></td>
              <td style="text-align:right">
                <fmt:formatNumber value='${detalleCreditoForm.map.montoCredito}' pattern='0,000.0' maxFractionDigits='2' minFractionDigits='2' minIntegerDigits="1" />
              </td>
            </tr>
            <tr>
              <th><b>Saldo Cr&eacute;dito :</b></th>
              <th style="text-align:right">
                <fmt:formatNumber value='${detalleCreditoForm.map.saldoCredito}' pattern='0,000.0' maxFractionDigits='2' minFractionDigits='2' minIntegerDigits="1" />
              </th>
            </tr>
            <tr>
              <td><b>Monto Pr&oacute;ximo Vcto. * :</b></td>
              <td style="text-align:right">
                $<fmt:formatNumber value='${detalleCreditoForm.map.montoProximoVencimiento}' pattern='0,000.0' maxFractionDigits='2' minFractionDigits='2' minIntegerDigits="1" />
              </td>
            </tr>
            <tr>
              <th height="25"><b>Pr&oacute;xima Cuota a Pagar :</b></th>
              <th><c:out value="${detalleCreditoForm.map.proximaCuotaAPagar}" /> de <c:out value="${detalleCreditoForm.map.numVencimientosOriginales}" /></th>
            </tr>
            <tr>
              <td><b>Tipo Tasa de Inter&eacute;s :</b></td>
              <td><c:out value="${detalleCreditoForm.map.tipoTasaInteres}" /></td>
            </tr>
            <tr>
              <th><b>Tasa Inter&eacute;s / Spread :</b></th>
              <th>
                <fmt:formatNumber value='${detalleCreditoForm.map.tasaInteres}' pattern='0,000000' minIntegerDigits="1" maxFractionDigits='2' minFractionDigits='2' />%
                /
                <fmt:formatNumber value='${detalleCreditoForm.map.spread}' pattern='0,000000' minIntegerDigits="1" maxFractionDigits='2' minFractionDigits='2' />%</th>
            </tr>
            <tr>
              <td><b>Monto Reajuste Devengado* :</b></td>
              <td>
                $<fmt:formatNumber value='${detalleCreditoForm.map.montoReajusteDevengado}' pattern='0,000.0' maxFractionDigits='2' minFractionDigits='2' minIntegerDigits="1" />
              </td>
            </tr>
            <tr>
              <th><b>Monto Intereses* :</b></th>
              <th>
                $<fmt:formatNumber value='${detalleCreditoForm.map.montoIntereses}' pattern='0,000.0' maxFractionDigits='2' minFractionDigits='2' minIntegerDigits="1" />
              </th>
            </tr>
            <tr>
              <td height="21"><b>N&ordm; Vctos. Originales :</b></td>
              <td><c:out value="${detalleCreditoForm.map.numVencimientosOriginales}" /></td>
            </tr>
            <tr>
              <th><b>N&ordm; Vcto. Vigente :</b></th>
              <th><c:out value="${detalleCreditoForm.map.numVencimientosVigentes}" /></th>
            </tr>
          </table>
        </td>
        <td width="50%" class="mitad-der">
          <table width="100%" border="0" cellpadding="0" cellspacing="0" id="tabla">
            <tr>
              <td width="54%"><b>Moneda :</b></td>
              <td width="46%"><c:out value="${detalleCreditoForm.map.moneda}" /></td>
            </tr>
            <tr>
              <th><b>Fecha Curse :</b></th>
              <th><fmt:formatDate value="${detalleCreditoForm.map.fechaCurse}" pattern="dd/MM/yyyy" /></th>
            </tr>
            <tr>
              <td><b>Tipo Operaci&oacute;n :</b></td>
              <td><c:out value="${detalleCreditoForm.map.tipoOperacion}" /></td>
            </tr>
            <tr>
              <th><b>Fecha Vcto. Max :</b></th>
              <th><fmt:formatDate value="${detalleCreditoForm.map.fechaVencimientoMax}" pattern="dd/MM/yyyy" /></th>
            </tr>
            <tr>
              <td><b>Fecha Prox&iacute;ma Cuota :</b></td>
              <td><fmt:formatDate value="${detalleCreditoForm.map.fechaProximaCuota}" pattern="dd/MM/yyyy" /></td>
            </tr>
            <tr>
              <th><b>Fecha Devengo :</b></th>
              <th><fmt:formatDate value="${detalleCreditoForm.map.fechaDevengo}" pattern="dd/MM/yyyy" /></th>
            </tr>
            <tr>
              <td><b>Ind Situaci&oacute;n Contable :</b></td>
              <td><c:out value="${detalleCreditoForm.map.indSituacionContable}" /></td>
            </tr>
            <tr>
              <th><b>Fecha Colocaci&oacute;n :</b></th>
              <th><fmt:formatDate value="${detalleCreditoForm.map.fechaColocacion}" pattern="dd/MM/yyyy" /></th>
            </tr>
            <tr>
              <td><b>Fecha Contable :</b></td>
              <td><fmt:formatDate value="${detalleCreditoForm.map.fechaContable}" pattern="dd/MM/yyyy" /></td>
            </tr>
            <tr>
              <th><b>Tipo Cargo :</b></th>
              <th><c:out value="${detalleCreditoForm.map.tipoCargo}" /></th>
            </tr>
            <tr>
              <td><b>Condici&oacute;n Garant&iacute;a :</b></td>
              <td><c:out value="${detalleCreditoForm.map.condicionGarantia}" /></td>
            </tr>
          </table>
        </td>
      </tr>
    </table>
    * : Valores en pesos
    </div>
    <div id="si-print">
      <table width="100%" border="0" cellpadding="0" cellspacing="0" id="grilla44">
        <tr>
          <td width="25%">Monto Cr&eacute;dito :</td>
          <td width="25%" align="right">
            <b><fmt:formatNumber value='${detalleCreditoForm.map.montoCredito}' pattern='0,000.0' maxFractionDigits='2' minFractionDigits='2' minIntegerDigits="1" /></b>
          </td>
          <td width="25%">Moneda :</td>
          <td width="25%"><b><c:out value="${detalleCreditoForm.map.moneda}" /></b></td>
        </tr>
        <tr>
          <td>Saldo Cr&eacute;dito :</td>
          <td align="right">
            <b><fmt:formatNumber value='${detalleCreditoForm.map.saldoCredito}' pattern='0,000.0' maxFractionDigits='2' minFractionDigits='2' minIntegerDigits="1" /></b>
          </td>
          <td>Fecha Curse :</td>
          <td><b><fmt:formatDate value="${detalleCreditoForm.map.fechaCurse}" pattern="dd/MM/yyyy" /></b></td>
        </tr>
        <tr>
          <td>Monto Pr&oacute;ximo Vcto. :</td>
          <td align="right">
            <b><fmt:formatNumber value='${detalleCreditoForm.map.montoProximoVencimiento}' pattern='0,000.0' maxFractionDigits='2' minFractionDigits='2' minIntegerDigits="1" /></b>
          </td>
          <td>Tipo Operaci&oacute;n :</td>
          <td><b><c:out value="${detalleCreditoForm.map.tipoOperacion}" /></b></td>
        </tr>
		<tr>
          <td>Pr&oacute;xima Cuota a Pagar :</td>
          <td>
            <b><c:out value="${detalleCreditoForm.map.proximaCuotaAPagar}" /> de <c:out value="${detalleCreditoForm.map.numVencimientosOriginales}" /></b>
          </td>
          <td>Fecha Vcto. Max :</td>
          <td><b><fmt:formatDate value="${detalleCreditoForm.map.fechaVencimientoMax}" pattern="dd/MM/yyyy" /></b></td>
        </tr>
		<tr>
          <td>Tipo Tasa de Inter&eacute;s :</td>
          <td><b><c:out value="${detalleCreditoForm.map.tipoTasaInteres}" /></b></td>
          <td>Fecha Devengo :</td>
          <td><b><fmt:formatDate value="${detalleCreditoForm.map.fechaDevengo}" pattern="dd/MM/yyyy" /></b></td>
        </tr>
		<tr>
          <td>Tasa Inter&eacute;s / Spread :</td>
          <td><b>
            <fmt:formatNumber value='${detalleCreditoForm.map.tasaInteres}' minIntegerDigits="1" pattern='0,000000' maxFractionDigits='2' minFractionDigits='2' />%
            /
            <fmt:formatNumber value='${detalleCreditoForm.map.spread}' minIntegerDigits="1" pattern='0,000000' maxFractionDigits='2' minFractionDigits='2' />%</b></td>
          <td>Ind Situaci&oacute;n Contable :</td>
          <td><b><c:out value="${detalleCreditoForm.map.indSituacionContable}" /></b></td>
        </tr>
		<tr>
          <td>Monto Reajuste Devengado* :</td>
          <td>
            <b>$<fmt:formatNumber value='${detalleCreditoForm.map.montoReajusteDevengado}' pattern='0,000.0' maxFractionDigits='2' minFractionDigits='2' minIntegerDigits="1" /></b>
          </td>
          <td>Fecha Colocaci&oacute;n :</td>
          <td><b><fmt:formatDate value="${detalleCreditoForm.map.fechaColocacion}" pattern="dd/MM/yyyy" /></b></td>
        </tr>
		<tr>
          <td>Monto Intereses* :</td>
          <td>
            <b>$<fmt:formatNumber value='${detalleCreditoForm.map.montoIntereses}' pattern='0,000.0' maxFractionDigits='2' minFractionDigits='2' minIntegerDigits="1" /></b>
          </td>
          <td>Fecha Contable :</td>
          <td><b><fmt:formatDate value="${detalleCreditoForm.map.fechaContable}" pattern="dd/MM/yyyy" /></b></td>
        </tr>
        <tr>
		  <td>N&ordm; Vctos. Originales :</td>
		  <td><b><c:out value="${detalleCreditoForm.map.numVencimientosOriginales}" /></b></td>
		  <td>Tipo Cargo :</td>
		  <td align="right"><c:out value="${detalleCreditoForm.map.tipoCargo}" /></td>
        </tr>
	    <tr>
          <td>N&ordm; Vctos. Vigentes :</td>
          <td><b><c:out value="${detalleCreditoForm.map.numVencimientosVigentes}" /></b></td>
          <td>Condici&oacute;n Garant&iacute;a :</td>
          <td align="right"><c:out value="${detalleCreditoForm.map.condicionGarantia}" /></td>
        </tr>
      </table>
      * : Valores en pesos
    <div id="separa-inv"></div>
  </div>
  <jsp:include page="info-contacto.jsp" />
</body>
</html>
