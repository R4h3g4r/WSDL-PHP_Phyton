<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="/WEB-INF/struts-html.tld" prefix="html" %>
<%@ taglib uri="/WEB-INF/struts-bean.tld" prefix="bean" %>
<%@ taglib uri="/WEB-INF/struts-logic.tld" prefix="logic" %>
<%@ taglib uri="/WEB-INF/c.tld" prefix="c" %>

<jsp:useBean id="sessionBci" scope="session" class="wcorp.model.seguridad.SessionBCI"></jsp:useBean>
<c:if test="${!empty formularioTransferenciaTercerosForm.tipoTransferencia}">
<bean:define id="tipoTransferencia" name="formularioTransferenciaTercerosForm" property="tipoTransferencia"/>
</c:if>

<%
String frames_body_array  = (String) sessionBci.getAttrib("frames_body_array"); 
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html:html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title><bean:message key="transferencia.terceros.titulopagina"/></title>
<link href="<%=request.getContextPath()%>/belwls/common/css/empresarios.css" rel="stylesheet" type="text/css">
<link href="<%=request.getContextPath()%>/belwls/empresarios/transferencias/css/transferencias.css" rel="stylesheet" type="text/css">
<!--[if IE 7]>
<link href="<%=request.getContextPath()%>/belwls/empresarios/transferencias/css/transferenciasie7.css" rel="stylesheet" type="text/css">
<![endif]-->

<style type="text/css">
	@import "<%=request.getContextPath()%>/belwls/common/css/jquery.datepick.css";
</style>

<script type="text/javascript" src="<%=request.getContextPath()%>/belwls/common/js/jquery-1.4.4.min.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/belwls/common/js/jquery-ui-1.8.6.min.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/belwls/common/js/jquery.validate.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/belwls/common/js/jquery.Rut.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/belwls/common/js/jquery.numeric.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/belwls/common/js/jquery.alphanumeric.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/belwls/common/js/jquery.Number.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/belwls/common/js/messages_es.js"></script>

<script type="text/javascript">

var $jOsone = jQuery.noConflict();
$jOsone().ready(function() {
		inicio();
		$jOsone('#transferenciaInscrita').val("true");
		$jOsone('#esTransferenciaACuentaInscrita').val("true");
	$jOsone('.reutilizar-destinatario').click(function() {
		$jOsone(this).hide();
		$jOsone('#nombreDestinatarioSeleccionado').show();
		return false;
	});
	$jOsone("#montoTransferir").numeric(".");
	$jOsone("#celularDestinatario").numeric();
	$jOsone("#montoTransferir").keypress(function(e) {
		var key = e.charCode || e.keyCode || 0;                     
		var keychar = String.fromCharCode(key);
		var ValidPattern = /^[0-9]$/;
		if (!ValidPattern.test(keychar) && e.charCode!=0){
			return false;
			e.preventDefault();
		}
	});
	$jOsone("#montoTransferir").bind('keyup', function(){
		if($jOsone.Number.SoloNumber($jOsone("#montoTransferir").val())){
			var monto=$jOsone.Number.SinFormatoDinero($jOsone(this).val());
			$jOsone("#montoTransferir").val($jOsone.Number.FormatoDinero(monto));
		}
	});
	$jOsone("#rutDestinatario").Rut({
		format: true,
		format_on: 'keyup',
		validation: true
	});
	$jOsone("#numeroCuentaCorrienteDestino").numeric();
	$jOsone("#numeroCuentaCorrienteDestino").keypress(function(e) {
		var key = e.charCode || e.keyCode || 0;                     
		var keychar = String.fromCharCode(key);
		var ValidPattern = /^[0-9]$/;
		if (!ValidPattern.test(keychar) && e.charCode!=0){
			return false;
			e.preventDefault();
		}
	});
	
	
	$jOsone.validator.addMethod("rut", function(value, element) {
		return $jOsone.Rut.validar(value);
	}, " <bean:message key="errors.invalidsin"/>");
	$jOsone.validator.addMethod("alphanumeric", function(value, element) {
		return $jOsone(element).alphanumeric();
	}, " <bean:message key="errors.aphanumeric"/>");
	$jOsone.validator.addMethod("numerico", function(value, element) {
		return $jOsone.Number.SoloNumber(value);
	}, " <bean:message key="error.numerico"/>");
	$jOsone.validator.addMethod("cuentadistinta", function(value, element) {
		if( $jOsone("#codigoBancoDestino").val()=='016' && ( ( $jOsone("#numeroCuentaCorrienteOrigen").val()*1) == value ) ){
			return false;
		}
		else{
			return true;
		}
	}, " <bean:message key="errors.cuenta.destino.distinta"/>");
	$jOsone.validator.addMethod("cuentaBci", function(value, element) {
		if( $jOsone("#codigoBancoDestino").val()=='016' && ( ( $jOsone("#numeroCuentaCorrienteDestino").val().length >8) ) ){
			return false;
		}
		else{
			return true;
		}
	}, " <bean:message key="error.rango.caracteres.js"/>");
	$jOsone.validator.addMethod("montoMin", function(value, element) {
		$jOsone("#MjeTmp").html('&nbsp;');
		if($jOsone.Number.SoloNumber(value)){
			var MontoMinimo=1;
			var Monto=$jOsone.Number.SinFormatoDinero(value);
			if(Monto<MontoMinimo) 
				return false;
			else 
				return true;
		}
		else{
			$jOsone("#MjeTmp").text(" <bean:message key="errors.monto.invalido"/>");
			return false;
		}
	}, " <bean:message key="errors.monto.minimo"/>");
	$jOsone.validator.addMethod("dependeEmail", function(value, element) {
		if(value!=''){
			if(!validarEmail(value)){
				$jOsone('#mensajeDestinatario').attr('readonly','readonly');
				$jOsone('#mensajeDestinatario').attr('value','');
				return false;
			}else{
				$jOsone('#mensajeDestinatario').attr('readonly','');
			return true;
			}
		}else{ 
			return true;
		}
	}," <bean:message key="errors.email.beneficiario.formato"/>"); 
	$jOsone.validator.addMethod("montoMax", function(value, element) {
		if($jOsone.Number.SoloNumber(value)){
			var MontoForm=$jOsone.Number.SinFormatoDinero(value);
			$jOsone("#MjeTmp").html('&nbsp;');
			var saldoCuenta = sacarSignoPesoYPunto($jOsone("#SaldoCuenta2").val());
			var saldoSobregiro = sacarSignoPesoYPunto($jOsone("#SaldoSobregiro2").val());
			var Saldo=(((saldoCuenta*1)+(saldoSobregiro*1))*1);
			var limite=((($jOsone("#MontoMaximoDiario2").val()*1)-($jOsone("#MontoTranferidoHoy2").val()*1))*1);
			if(MontoForm<=Saldo){
				if(MontoForm <= limite){
					return true;
				}
				else{
					$jOsone("#MjeTmp").text($jOsone("#MjeTopeDiario").val()+ " "+$jOsone.Number.FormatoDineroVisual(limite));
				return false;
				}
			}
			else{
				$jOsone("#MjeTmp").text($jOsone("#MjeSaldo").val()+ " "+$jOsone.Number.FormatoDineroVisual(Saldo));
				return false;
			}
		} else{
			$jOsone("#MjeTmp").text(" <bean:message key="errors.monto.invalido"/>");
			return false;
			}
	},"&nbsp;"); 
	$jOsone("#form-ing-ttff").validate({
		rules: {
			nombreTransferencia: {
				required: true,
				minlength: 3
			},
			montoTransferir: {
				required: true ,
				montoMax: true,
				montoMin: true
			},
			nombreDestinatario: {
				required: true
			},
			numeroCuentaCorrienteDestino:  {
				required: true,
				maxlength: 18,
				cuentadistinta: true,
				numerico: true,
				cuentaBci: true
			},
			rutDestinatarioTemporal: {
				required: true, 
				rut: true
			},
			emailDestinatario: {
				required: false,
				maxlength: 30,
				dependeEmail:true
			},
			mensajeDestinatario: {
				required: false,
				maxlength: 30
			},
			celularDestinatario:{
				required: false,
				numerico: true,
				maxlength: 15
			},
			nombreCuenta:{
				required: true,
				maxlength: 30
			}
		},
		messages: {
		nombreTransferencia: {
			required: " <bean:message key="errors.campo.requerido"/>",
			minlength: " <bean:message key="errors.largomin.nombrettff"/>"
		},
		montoTransferir: {
			required: " <bean:message key="errors.campo.requerido"/>",
			minlength: " <bean:message key="errors.monto.minimo"/>"
		},
		nombreDestinatario: {
			required: " <bean:message key="errors.campo.requerido"/>"
		},
		numeroCuentaCorrienteDestino: 
		{
			required: " <bean:message key="errors.campo.requerido"/>",
			maxlength: " <bean:message key="errors.maximo.caracteres"/>"
		},
		rutDestinatario: {
			required: " <bean:message key="errors.campo.requerido"/>"
		},
		emailDestinatario: {
			required: " <bean:message key="errors.campo.requerido"/>",
			maxlength: " <bean:message key="errors.maximo.email.beneficiario"/>"
		},
		mensajeDestinatario: {
			required: " <bean:message key="errors.campo.requerido"/>",
			maxlength: " <bean:message key="errors.maximo.mensaje.beneficiario"/>"
		},
		nombreCuenta: {
			required: " <bean:message key="errors.campo.requerido"/>"
		}
		},
		focusCleanup: true
	});
});
</script>

<script type="text/javascript">
function cambiar_destinatario(){
	if($jOsone("#nombreDestinatarioSeleccionado").val() ==  ""){
		var sNada="";
		$jOsone('#numeroCuentaCorrienteDestino').val(sNada);
		$jOsone('#codigoBancoDestino').val(sNada);
		$jOsone('#descripcionBancoDestinoTemporal').val(sNada);
		$jOsone('#descripcionBancoDestino').val(sNada);
		$jOsone('#rutDestinatario').val(sNada);
		$jOsone('#nombreDestinatario').val(sNada);
		$jOsone('#emailDestinatario').val(sNada);
		$jOsone('#nombreCuenta').val(sNada);
		$jOsone("#numeroCuentaCorrienteDestino").attr("readonly","");
    	$jOsone("#codigoBancoDestino").attr("disabled","");
    	$jOsone("#descripcionBancoDestinoTemporal").attr("readonly","");
    	$jOsone("#descripcionBancoDestino").attr("readonly","");
    	$jOsone("#rutDestinatario").attr("readonly","");
    	$jOsone("#nombreDestinatario").attr("readonly","");    		
    	$jOsone("#emailDestinatario").attr("readonly","");
    	$jOsone("#nombreCuenta").attr("readonly","");
    	$jOsone("#celularDestinatario").attr("readonly","");     	
	}
	else {
		$jOsone("#numeroCuentaCorrienteDestino").attr("readonly","readonly");
		$jOsone("#codigoBancoDestino").attr("disabled","disabled");
		$jOsone("#descripcionBancoDestinoTemporal").attr("readonly","readonly");
		$jOsone("#descripcionBancoDestino").attr("readonly","readonly");
		$jOsone("#rutDestinatario").attr("readonly","readonly");
		$jOsone("#nombreDestinatario").attr("readonly","readonly");    		
		$jOsone("#emailDestinatario").attr("readonly","readonly");
		$jOsone("#nombreCuenta").attr("readonly","readonly");
		$jOsone("#nombreDestinatarioSeleccionado").attr("readonly","readonly");
		$jOsone("#celularDestinatario").attr("readonly","readonly");     		
		if($jOsone('#emailDestinatario').val() == ''){
			$jOsone('#emailDestinatario').attr('readonly','readonly');
			$jOsone('#mensajeDestinatario').attr('readonly','readonly');
			$jOsone('#mensajeDestinatario').val("");
		}else{
			$jOsone('#mensajeDestinatario').attr('readonly','');
		}
		var _cuentas = $jOsone('#nombreDestinatarioSeleccionado').val().split("##");
		if(_cuentas[0]!="")
		{
		    var presetValue = "true";
			$jOsone('#transferenciaInscrita').val("true");
			$jOsone('#numeroCuentaCorrienteDestino').val(_cuentas[1]);
    		$jOsone('.campo-banco-destino').attr('value',_cuentas[2]);
    		$jOsone('#descripcionBancoDestinoTemporal').val($jOsone.trim($jOsone("#codigoBancoDestino option:selected").val()));
    		$jOsone('#descripcionBancoDestino').val($jOsone.trim($jOsone("#codigoBancoDestino option:selected").text()));
    		$jOsone('#rutDestinatario').val($jOsone.trim(_cuentas[3])+'-'+_cuentas[4]);
    		$jOsone('#nombreDestinatario').val($jOsone.trim(_cuentas[5]));
    		$jOsone('#emailDestinatario').val($jOsone.trim(_cuentas[6]));
    		$jOsone('#nombreDestinatarioSeleccionado').hide();
    		$jOsone('.reutilizar-destinatario').show();
            $jOsone('#nombreDestinatario').focus();
    		$jOsone('#rutDestinatario').focus();
    		$jOsone('#numeroCuentaCorrienteDestino').focus();
    		$jOsone('body').focus();
    			if($jOsone('#emailDestinatario').val() != ''){
    				$jOsone('#mensajeDestinatario').attr('readonly','');
    			}
    			else{
    				$jOsone('#mensajeDestinatario').attr('readonly','readonly');
    				$jOsone('#mensajeDestinatario').val("");
    			}
    		if($jOsone.trim(_cuentas[0])!=""){
    			   $jOsone('#nombreCuenta').val($jOsone.trim(_cuentas[0]));
    		}
    		else{
    			$jOsone('#nombreCuenta').val("");
    		}
    		$jOsone('#nombreCuenta').focus();
		}
		else{
    		var sNada="";
			$jOsone('#numeroCuentaCorrienteDestino').val(sNada);
    		$jOsone('#codigoBancoDestino').val(sNada);
    		$jOsone('#descripcionBancoDestinoTemporal').val(sNada);
    		$jOsone('#descripcionBancoDestino').val(sNada);
    		$jOsone('#rutDestinatario').val(sNada);
    		$jOsone('#nombreDestinatario').val(sNada);
    		$jOsone('#emailDestinatario').val(sNada);
    		$jOsone('#nombreCuenta').val(sNada);
    		$jOsone('#nombreDestinatarioSeleccionado').hide();
    		$jOsone('.reutilizar-destinatario').show();
		    }
	}
}

function inicio(){
	  $jOsone('#mensajeDestinatario').attr("readonly","readonly");
		  $jOsone("#numeroCuentaCorrienteDestino").attr("readonly","readonly");
			$jOsone("#codigoBancoDestino").attr("disabled","disabled");
			$jOsone("#descripcionBancoDestinoTemporal").attr("readonly","readonly");
			$jOsone("#descripcionBancoDestino").attr("readonly","readonly");
			$jOsone("#rutDestinatario").attr("readonly","readonly");
			$jOsone("#nombreDestinatario").attr("readonly","readonly");    		
			$jOsone("#emailDestinatario").attr("readonly","readonly");
			$jOsone("#nombreDestinatarioSeleccionado").attr("readonly","readonly");
			if($jOsone('#emailDestinatario').val() == ''){
				$jOsone('#emailDestinatario').attr("readonly","readonly");
				$jOsone('#mensajeDestinatario').attr("readonly","readonly");
				$jOsone('#mensajeDestinatario').val("");
			}else{
				$jOsone('#mensajeDestinatario').removeAttr("readonly");
			}

}

function volver(){
	if (navigator.appName=="Netscape"){       
		self.history.go(-1); 
	 }else{
		 history.back(-2);
	 } 
}

function sacarSignoPesoYPunto (monto){
	monto = monto.replace("$","");
	return monto.replace(".","");
}

function modificaValores(select){
   	 $jOsone.ajax({
   		    url: "/belwls/empresarios/transferencias/aterceros/ingresarTransferenciaEnLinea.do?method=ajaxObtenerSaldoDeCuentaSeleccionada",
   		    datatype:'json',
   		    timeout:80000,
   		    data: {method : "ajaxObtenerSaldoDeCuentaSeleccionada", 
   		    	numeroCuentaCorrienteSeleccionada:$jOsone('#numeroCuentaCorrienteOrigen').val()},
   		    success: function(j){
   		    	$jOsone(".colorsaldodisponible").html(j.saldoDisponible);
   		    	$jOsone(".lineaSobregiroDisponible").html(j.lineaDeSobregiro);
   		    	$jOsone("#SaldoCuenta2").val(j.saldoDisponible);
   		    	$jOsone("#SaldoSobregiro2").val(j.lineaDeSobregiro);
   		    },
   		    error: function(){
   		    }
   	});
}

function validarEmail(valor) {
	  if (/[\w-\.]{3,}@([\w-]{2,}\.)*([\w-]{2,}\.)[\w-]{2,4}/.test(valor)){
	   return true;
	  } else {
	   return false;
	  }
}

function transferir(){
	
	  if ($jOsone("#transferenciaInscrita").val() == "false" || $jOsone("#transferenciaInscrita").val() == ""){
		  document.forms[0].action="/belwls/empresarios/transferencias/aterceros/confirmarNoInscrita.do?method=solicitarConfirmacionDeTransferenciaACuentaNoInscrita";    			   
	  }else{
		  document.forms[0].action="/belwls/empresarios/transferencias/aterceros/confirmarTransferenciaEnLinea.do";
	  }
	  if($jOsone("#form-ing-ttff").validate().form() === true){
	  	document.forms[0].submit();
	  }
}
</script>


<script type="text/javascript">
function redireccionar(){
	var formulario = document.forms[0];
	formulario.action = "/belwls/empresarios/transferenciasEmpresa.do?method=obtenerDatosParaTransferenciaEntreProductos";
	formulario.submit();
}
</script>


<!-- No cambiar el orden de la importacion de los scripts -->
<script type="text/javascript" src="/common/js/beebcitools.js"></script>
<script type="text/javascript" src="<%=request.getContextPath() %>/belwls/bciexpress/js/menu_frame/frames_body_array.js" ></script>
<script type="text/javascript">
<!--
<%=frames_body_array%>
//-->
</script>
<script type="text/javascript" src="<%=request.getContextPath() %>/belwls/bciexpress/js/menu_frame/mmenu.js"></script>

</head>
<body onload="javascript:inicio();">

<div id="contenedor-menu-lateral" style="position:relative; margin-bottom:0px;">
       		<div id="menu-lateral" style="margin-bottom:0px;">
           		<div class="round-top" style="margin-bottom:0px;"></div>
           		<div class="round-middle" style="margin-bottom:0px;">
           			<h4>Transferencias</h4>
						<ul>
							<li style="font-size: 12px"><a href='/belwls/empresarios/transferencias/principal/principalTransferencias.do' target="_top">
          						<bean:message key="transferencia.terceros.tituloPanorama"/></a>
          					</li>
							
							<li style="font-size: 12px"><a href='../mantenedorcuentas/principalCuentasInscritas.do' target="_top">
								<bean:message key="transferencia.terceros.menuCuentasInscritas"/></a>
							</li>
							<li class="current" style="font-size: 12px">
								<bean:message key="transferencia.terceros.menuRealizarnuevaTransferencia" />
							</li>
<li style="font-size: 12px"><a href="/belwls/empresarios/transferencias/pendientes/transferenciasPendientesPrincipalTer.jsp" target="_top">
								Pendientes por Resolver</a>
							<li style="font-size: 12px"><a href='../historicas/principalHistoricas.do' target="_top">
		       					<bean:message key="panorama.menuTransferenciasHistoricas"/></a>
		       					</li>	
							<li  style="font-size: 12px">
									<a href='javascript:volver()'>Volver</a>
							</li>							
      					</ul> 
        		</div>
        		<div class="round-bottom"></div>
       		</div>
     	</div>

<div style="margin-left:200px; margin-top:-160px;">

	<div class="tit_secu">
		<div class="divtitulo">
			<h2>
			<span class="titulo"><bean:message key="transferencia.terceros.form.titulo"/></span>
			</h2>
			<br>
		</div>
		<div id="secuencia" style="margin-left:5px">
					<ol class="stages stage1">
						<li class="current step1">1. <bean:message key="transferencia.terceros.paso1"/></li>
						<li class="step2">2. <bean:message key="transferencia.terceros.paso2"/></li>
						<li class="ticket"><bean:message key="transferencia.terceros.paso3"/></li>
					</ol>
		</div>
	</div>
		<div class="subtituloTTFF">
					<h3>
						<bean:message key="transferencia.terceros.titulo"/>
					</h3>
		</div>
		<div>
			<div>
				<logic:messagesPresent >
				<div class="caja-mensajeNoInscrita">
					<div class="modal-infoNoInscrita modal-advertenciaNoInscrita">
						<h3><html:errors /></h3>
					</div>
				</div>
				</logic:messagesPresent>
			</div>
			<html:form styleId="form-ing-ttff" action="/confirmarTransferenciaEnLinea.do" >
				<html:hidden property="tipoTransferencia"  value="TLN"/>
				<html:hidden property="modalidadTransferencia" value="EN LINEA"/>
                <html:hidden property="tipoTransferencia"/>
				
				<input type="hidden" id="MjeSaldo" value="<bean:message key="errors.monto.superaSaldo"/>"/>
				
				<input type="hidden" id="MjeTopeDiario" value="<bean:message key="errors.monto.Mayor.quePermitido.clean"/>"/>
                <br>
				<div class="cuent_origen">
				
				<fieldset class="fst-dat">
					<legend>Tipo de Transferencia</legend>
						<div class="radio-group" align="center" >
							<input type="radio" checked="true" name="trans" onclick="" />
								<label style="color: #000000;">Transferir a Terceros</label>&nbsp;&nbsp;&nbsp;&nbsp;
							<input type="radio" name="trans" onclick="javascript:redireccionar();" />
							<label style="color: #000000;">Transferir entre Productos Contratados</label>
						</div>
				</fieldset>
					
					<fieldset><legend class="leyenda"><bean:message key="transferencia.terceros.titulo.seccion.origen"/></legend>
						<table width="100%" class="center">
							<tr>
								<td class="right cuarentaporciento" ><span class="etiquetaDeAtributo "><bean:message key="campo.nombrettff"/>:</span></td>
								<td class ="quinceporciento left">
									<html:text styleId="nombreTransferencia" property="nombreTransferencia" size="20" maxlength="20"/>
								</td>
							</tr>
							<tr>
								<td class="right cuarentaporciento" ><span class="etiquetaDeAtributo "><bean:message key="campo.numerocuenta"/>:</span></td>
								<td class ="quinceporciento left">

                                    <label> 
                                    <logic:present name="cuentasCorrienteEnPesos">

                                        <bean:size id="size" name="cuentasCorrienteEnPesos" />
                                        <logic:equal name="size" value="1">


                                            <bean:write name="formularioTransferenciaTercerosForm" property="numeroCuentaCorrienteOrigen" />
                                            <input type="hidden" name="numeroCuentaCorrienteOrigen" id="numeroCuentaCorrienteOrigen" value="<bean:write name="formularioTransferenciaTercerosForm" property="numeroCuentaCorrienteOrigen"/>" />
                                        </logic:equal>

                                        <logic:greaterThan name="size" value="1">
                                            <html:select property="numeroCuentaCorrienteOrigen" styleId="numeroCuentaCorrienteOrigen" onchange="modificaValores(this);">
                                                <html:optionsCollection name="cuentasCorrienteEnPesos" label="numCuentaCorriente" value="numCuentaCorriente" />
                                            </html:select>
                                        </logic:greaterThan>

                                    </logic:present>
                                    </label>
                                    
                                    <logic:notPresent name="cuentasCorrienteEnPesos">
                                        Sin cuentas corrientes
                                    </logic:notPresent>
								</td>							
							</tr>
							<tr>
								<td class="right cuarentaporciento" ><span class="etiquetaDeAtributo "><bean:message key="campo.saldocuenta"/>:</span></td>
								<td class ="quinceporciento left">
								<input type="hidden" id="SaldoCuenta2"  name="saldoDisponibleCuenta2"  value="<bean:write name="formularioTransferenciaTercerosForm"  property="saldoDisponibleCuenta"/>"/>
								<input type="hidden" id="SaldoSobregiro2"  name="saldoDisponibleCuenta2"  value="<bean:write name="formularioTransferenciaTercerosForm" property="saldoDisponibleLineaSobregiro"/>"/>
								<input type="hidden" id="MontoMaximoDiario2"  name="montoMaximoTransferirPorDia2"  value="<bean:write name="formularioTransferenciaTercerosForm" property="montoMaximoTransferirPorDia"/>"/>
								<input type="hidden" id="MontoTranferidoHoy2"  name="montoTranferidoDia2"  value="<bean:write  name="formularioTransferenciaTercerosForm" property="montoTranferidoDia" />"/>
								
									<label class="colorsaldodisponible"> 
										<logic:present name="formularioTransferenciaTercerosForm" property="saldoDisponibleCuenta">
											<bean:write name="formularioTransferenciaTercerosForm"  property="saldoDisponibleCuenta" format="$ #,##0" />
											<input type="hidden" id="SaldoCuenta"  name="saldoDisponibleCuenta"  value="<bean:write name="formularioTransferenciaTercerosForm"  property="saldoDisponibleCuenta" format="###0" />"/>
										</logic:present>
										<logic:notPresent name="formularioTransferenciaTercerosForm" property="saldoDisponibleCuenta">
											<bean:message key="errors.saldo.nodisponible"/>
											<input type="hidden" id="SaldoCuenta"  name="saldoDisponibleCuenta"  value="0"/>
										</logic:notPresent>
									</label>
								</td>							
							</tr>
							<tr>
								<td class="right cuarentaporciento" ><span class="etiquetaDeAtributo "><bean:message key="campo.saldosobregiro"/>:</span></td>
								
								<td class ="quinceporciento left">
									<label class="lineaSobregiroDisponible"> 
										<logic:present name="formularioTransferenciaTercerosForm" property="saldoDisponibleLineaSobregiro">
													<bean:write name="formularioTransferenciaTercerosForm" property="saldoDisponibleLineaSobregiro" scope="request" format="$ #,##0" />
													<input type="hidden" id="SaldoSobregiro" name="saldoDisponibleLineaSobregiro" value="<bean:write name="formularioTransferenciaTercerosForm" property="saldoDisponibleLineaSobregiro" format="###0" />"/>
										</logic:present>
										
										<logic:notPresent name="formularioTransferenciaTercerosForm" property="saldoDisponibleLineaSobregiro">
													<bean:message key="errors.saldo.nodisponible"/>
													<input type="hidden" id="SaldoSobregiro" name="saldoDisponibleLineaSobregiro" value="0"/>
										</logic:notPresent>
									</label>
								</td>
															
							</tr>
							<!-- monto máximo diario -->
							<logic:present name="formularioTransferenciaTercerosForm" property="montoMaximoTransferirPorDia" >
								<input type="hidden" id="MontoMaximoDiario"  name="montoMaximoTransferirPorDia" value="<bean:write  name="formularioTransferenciaTercerosForm" property="montoMaximoTransferirPorDia" format="###0" />"/>
							</logic:present>
							
							<logic:notPresent name="formularioTransferenciaTercerosForm" property="montoMaximoTransferirPorDia" >
								<input type="hidden" id="MontoMaximoDiario"  name="montoMaximoTransferirPorDia" value="0" />
							</logic:notPresent>	
							
							<!-- monto transferido en el día -->
							<logic:present  name="formularioTransferenciaTercerosForm" property="montoTranferidoDia">
								<input type="hidden" id="MontoTranferidoHoy"  name="montoTranferidoDia"  value="<bean:write  name="formularioTransferenciaTercerosForm" property="montoTranferidoDia" format="###0" />"/>
							</logic:present>
							
							<logic:notPresent name="formularioTransferenciaTercerosForm" property="montoTranferidoDia">
								<input type="hidden" id="MontoTranferidoHoy" name="montoTranferidoDia" value="0"/>
							</logic:notPresent>
							
							<tr>
								<td class="right cuarentaporciento" ><span class="etiquetaDeAtributo "><bean:message key="campo.monto.transferir"/>:</span></td>
								<td class ="quinceporciento left texto">
									<div id="divMonto"></div>
									<html:text styleId="montoTransferir" property="montoTransferir" size="19" maxlength="19"/>
									<span class="error" id="MjeTmp"></span>
								</td>						
							
							</tr>											
						</table>
					</fieldset>
					
					<fieldset><legend class="leyenda"><bean:message key="transferencia.terceros.titulo.seccion.destino"/></legend>
						<table width="100%" class="center">
						
							<tr>
								<td width="14" class="right cuarentaporciento" ><span class="etiquetaDeAtributo "><bean:message key="campo.nombre.destinatario"/>:</span></td>
								<td width="931" class ="quinceporciento left texto">
                                    
                                    <logic:present name="cuentasInscritas">
									<input class="campo-destinatario" type="text" id="nombreDestinatario" value="<bean:write name="formularioTransferenciaTercerosForm" property="nombreDestinatario"/>" name="nombreDestinatario"  size="35" maxlength = "35"/>
									
									<input type="hidden" id="transferenciaInscrita"  name="transferenciaInscrita" value="<bean:write name="formularioTransferenciaTercerosForm" property="transferenciaInscrita"/>"/>
									<input type="hidden" id="esTransferenciaACuentaInscrita"  name="esTransferenciaACuentaInscrita" value="<bean:write name="formularioTransferenciaTercerosForm" property="esTransferenciaACuentaInscrita"/>"/>
									<a href="#" class="icono-reutilizar reutilizar-destinatario">Reutilizar Destinatario</a>
											<!-- combo box cuentas incritas -->						
										<select style="display:none;" name="nombreDestinatarioSeleccionado" id="nombreDestinatarioSeleccionado" onchange="javascript:cambiar_destinatario()">
										<option value="">Seleccionar Destinatario</option>
                                        
                                        
                                        <bean:size id="cantidadCuentasInscritas" name="cuentasInscritas" />
                                        <logic:equal name="cantidadCuentasInscritas" value="0">
                                        
                                           <select style="display:none;" name="nombreDestinatarioSeleccionado" id="nombreDestinatarioSeleccionado">
                                              <option value="">Sin Cuentas Inscritas</option>
                                        </select>
                                        </logic:equal>
                                        <logic:greaterThan name="cantidadCuentasInscritas" value="0">
                                            
                                             <c:forEach var="cuenta" items="${cuentasInscritas}">
                                              <c:if test="${!empty cuenta.nombreDeLaCuenta}">
                                                <option value="<c:out value="${cuenta.nombreDeLaCuenta}##${cuenta.cuentaTercero}##${cuenta.codigoDelBanco}##${cuenta.rutBeneficiario}##${cuenta.dvBeneficiario}##${cuenta.nombreBeneficiario}##${cuenta.emailBeneficiario}##${cuenta.nombreDelBanco}" />"><c:out value="${cuenta.nombreBeneficiario}" /></option>
                                              </c:if>
                                            <c:if test="${empty cuenta.nombreDeLaCuenta}">
                                                <option value="<c:out value=" ##${cuenta.cuentaTercero}##${cuenta.codigoDelBanco}##${cuenta.rutBeneficiario}##${cuenta.dvBeneficiario}##${cuenta.nombreBeneficiario}##${cuenta.emailBeneficiario}##${cuenta.nombreDelBanco}" />"><c:out value="${cuenta.nombreBeneficiario}" /></option>
                                            </c:if>
                                            </c:forEach>
                                            
                                        </logic:greaterThan>
                                        
										</select>
                                        <!-- fin combo box cuentas incritas -->
			                        </logic:present>
                                    
                                    <logic:notPresent name="cuentasInscritas">
                                    
                                    <input  class="campo-destinatario"  type="text" id="nombreDestinatario" value="" name="nombreDestinatario"  size="35"/>
                                    
                                    <a href="#" class="icono-reutilizar reutilizar-destinatario">Reutilizar Destinatario</a>
                                        <select style="display:none;" name="nombreDestinatarioSeleccionado" id="nombreDestinatarioSeleccionado">
                                              <option value="">Sin Cuentas Inscritas</option>
                                        </select>
                                    </logic:notPresent>
                                   
                                   </td>
							</tr>
                            <tr id="seccion-combo-bancos">
                                <td class="right cuarentaporciento" ><span class="etiquetaDeAtributo "><bean:message key="campo.banco"/>:</span></td>
                                <td class ="quinceporciento left texto" style = "width:235px;">
                                
                                <logic:present name="bancos_cca">
                                    <html:select  size="1" styleClass="campo-banco-destino"  styleId="codigoBancoDestino" property="codigoBancoDestino" >
                                        <html:optionsCollection name="bancos_cca" label="nombre" value="codBanco"/>
                                    </html:select>
                                    </logic:present>
                                <logic:notPresent name="bancos_cca">
                                        <bean:message key="errors.sinbanco"/>
                                </logic:notPresent>
                                
                             </td>                            
                            </tr>
							<tr id="seccion-nombre-banco">
								<td class="right cuarentaporciento" ><span class="etiquetaDeAtributo "><bean:message key="campo.banco"/>:</span></td>
								<td class ="quinceporciento left texto">
								<input type="hidden" id="descripcionBancoDestino" name="descripcionBancoDestino"  value="<bean:write name="formularioTransferenciaTercerosForm" property="descripcionBancoDestino"/>" />
                                <input type="text" class="campo-destinatario" size="30" id="descripcionBancoDestinoTemporal" name="descripcionBancoDestinoTemporal" value="<bean:write name="formularioTransferenciaTercerosForm" property="descripcionBancoDestino"/>" />								
                                <input type="hidden" class="campo-banco-destino" id="codigoBancoDestino" name="codigoBancoDestino"  value="<bean:write name="formularioTransferenciaTercerosForm" property="codigoBancoDestino"/>" />
                            </td>
                            </tr>
							
							<tr>
								<td class="right cuarentaporciento" ><span class="etiquetaDeAtributo "><bean:message key="campo.cta.destino"/>:</span></td>
								<td class ="quinceporciento left">
								<input  class="campo-destinatario"  type="text" id="numeroCuentaCorrienteDestino" name="numeroCuentaCorrienteDestino"   value="<bean:write name="formularioTransferenciaTercerosForm" property="numeroCuentaCorrienteDestino"/>"  size="30"maxlength="18"/>								</td>

                            </tr>
							<tr>
								<td class="right cuarentaporciento" ><span class="etiquetaDeAtributo "><bean:message key="campo.rut"/>:</span></td>
								<td class ="quinceporciento left">
									<div id = "divRut" class="textoRojo"></div>
									<input  class="campo-destinatario"  type="text" id="rutDestinatario" name="rutDestinatarioTemporal"  value="<bean:write name="formularioTransferenciaTercerosForm" property="rutDestinatarioTemporal"/>"  size="30" maxlength="12"/>
								</td>
							</tr>
							<tr>
								<td class="right cuarentaporciento"> </td>
								<td class="quinceporciento left"><i class="mensajeMonto"><bean:message key="campo.ejemplo.rut"/></i></td>
							</tr>
							<tr>
								<td class="right cuarentaporciento" ><span class="etiquetaDeAtributo "><bean:message key="campo.confirmar.correo.electronico"/>:</span></td>
								<td class ="quinceporciento left">
								<input  class="campo-destinatario"  type="text" id="emailDestinatario" name="emailDestinatario"  size="30" maxlength = "30" value="<bean:write name="formularioTransferenciaTercerosForm" property="emailDestinatario"/>"/>								</td>
							</tr>
							<tr>
								<td class="right cuarentaporciento" ><span class="etiquetaDeAtributo "><bean:message key="campo.confirmar.mensaje.destinatario"/>:</span></td>
								<td class ="quinceporciento left">
								<input  class="campo-destinatario"  type="text" id="mensajeDestinatario" name="mensajeDestinatario" readonly="readonly" size="30" maxlength = "8" value="<bean:write name="formularioTransferenciaTercerosForm" property="mensajeDestinatario"/>"/>	
							</tr>
                            <tr>
                                <td class="right cuarentaporciento" ><span class="etiquetaDeAtributo "><bean:message key="campo.confirmar.destinatario.celular"/>:</span></td>
                                <td class ="quinceporciento left">
                                <input class="campo-destinatario"  type="text" id="celularDestinatario" name="celularDestinatario"  size="30" value="<bean:write name="formularioTransferenciaTercerosForm" property="celularDestinatario"/>" maxlength="15"/>    
                            </tr>

						</table>
					</fieldset>
					<div style="height:15px;"></div>
				</div>
					<!-- <input value="Transferir" type = "button" class = "botontonton" name = "Transferir" id = "transferirCuenta"/> -->				
					<input type="submit" value="Transferir" class="botontonton" onclick="javascript:transferir();"/>
			</html:form>
		</div>
		</div>
<form name="homeForm" method="post" action="">
	<input type="hidden" name="objeto" value="">
</form>
</body>

</html:html>
<%--
 ******************************************************************************************************
 * Archivo           transferiratercerosForm.jsp
 * Descripción       Página que contiene el formulario de ingreso Transferencias.
 * Versión           1.4
 * Fecha creación    21/02/2011
 * Todos los Derechos Reservados por Banco BCI
 * Historia de cambios
 * versión   fecha          autor                                               cambios
  =======   ==========     ==============================                 ======================================
  1.0       21/02/2011     Carlos Garrido G. Freddy Monsalve. OS.ONE       Creación 
  1.1       04/08/2011     Carlos Garrido G. Manuel Hernández A. OS.ONE    Se aplica el diseño grafico entragado por Amable y se cambia la manera
																		   de recibir los parametros. Se cambio el nombre de la variable
																		   rutDestinatario por rutDestinatarioTemporal. Se agrega la variable
																		   frames_body_array para solucionar error del menú nivel uno que aparecía
																		   "Error aplicativo" al pasar por encima de él con el mouse.
																		   Se mejora el formateo del monto a transferir.
																		   Se controla el despliege de la aplicación cuando el cliente no posee
																		   cuentas inscritas. Se elimina la lista de banco por que la cta inscrita
																		   ya viene con el nombre del banco. Se mejora el despliege de las cuentas
																		   corrientes.
  1.2  		23/08/2011		Freddy Painenao. Freddy Monsalve Os.ONE        Se agrega menu lateral y logica Javascript para link volver en
																		   distintos navegadores.
  1.3 		07/09/2011     Freddy Painenao. Freddy Monsalve Os.ONE         se arregla overlap de menu en IE
  
  1.4           18/01/2012      Samuel Merino A. (ADA Ltda.)                   Se agrega fieldset que permitira seleccionando un radio button redireccionar
                                                                           a la página de transferencias entre productos contratados.
  1.5 		18/01/2012     Ivan Lopez B., Samuel Merino A. (ADA Ltda.)     Se agrega link a funcionalidad "pendientes por resolver", y se incorporan
                                                                           radiobuttons para acceder a la funcionalidad de "ingresar transferencia entre
																		   productos contratados".
																		   ******************************************************************************************************
  1.4		02/01/2012	   Pamela Riquelme T. Manuel Hernández A.( OS.ONE) Se modifica pagina, para distinguir si se esta enviando una TTFF a cuenta inscrita o no inscrita. Se modifico la URL para acceder al metodo json que obtendra los saldos de la cuenta seleccionada.                   
******************************************************************************************************

--%>
