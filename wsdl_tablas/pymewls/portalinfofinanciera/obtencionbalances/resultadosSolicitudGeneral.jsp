<%@ taglib uri="/WEB-INF/struts-html.tld" prefix="html"%>
<%@ taglib uri="/WEB-INF/struts-bean.tld" prefix="bean"%>
<%@ taglib uri="/WEB-INF/struts-logic.tld" prefix="logic"%>
<%@ taglib prefix="c" uri="/WEB-INF/c.tld"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html lang="es" xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>BCI Corporativo</title>
<link href="../css/screen.css" rel="stylesheet" type="text/css" media="screen" />
<link href="../css/iconos.css" rel="stylesheet" type="text/css" media="screen" />
<link href="../css/formularios_empresarios.css" rel="stylesheet" type="text/css" media="screen" />
<script type="text/javascript" src="../js/jquery-1.5.2.min.js"></script>
<script type="text/javascript" src="../js/jquery.numeric.js"></script>
<script type="text/javascript" src="../js/valida.js"></script>

<script type="text/javascript">

$(document).ready(function(){
	$('.bot_comprobante .bot_02').click(function(){
		document.solicitudBalancesForm.submit();
	});
});
</script>
</head>
<body>

<div id="content">

	<html:form action="/solicitudBalances">
	<input type="hidden" name="accion"      value="formularioSolicitudGeneral">
    
    <h2 class="encabezado">Actualización de Estados Financieros</h2>
    
    <div class="cont_servicios">
    
      <h3><span class="texto_titulo">Solicitud</span></h3>
        
        <div class="fondo">

            <ul class="pasos_empresas">
            	<li class="bot_tf_02 width_150"><span>1</span>Seleccione el Formulario e Ingrese sus datos</li>
		<li class="bot_tf_01 width_400 activo"><span class="activo">2</span>Comprobante</li>
       	  	</ul>

			<div class="clear"></div>

			<!--COMPROBANTE-->
			<div class="cont_comprobante">
				<div class="fondo_borde_gris borde_ie">
					<div class="form_comprobante">
						<p><strong>Estimado Cliente:</strong></p>
						<p id="mensaje_confirmacion">Su estado financiero utilizando <strong>
						<logic:equal name="solicitudBalancesForm" value="CTE"	property="tipoBalance">
							carpeta tributaria
						</logic:equal >
						<logic:notEqual name="solicitudBalancesForm" value="CTE"	property="tipoBalance">
							<bean:write name="solicitudBalancesForm" property="tipoBalance"/>
						</logic:notEqual >
						</strong> ha sido actualizado con Exito.</p>
						<div class="clear"></div>
					</div>
				</div>
				<p class="bot_comprobante botones"><button title="Volver al inicio" class="bot_02 width_130" type="button">Volver al inicio</button></p>
			</div>
			<!--END COMPRANTE-->

        </div>
        <!--END FONDO-->

        <div class="fondo_bottom">&nbsp;</div> 
                
    </div>
    <!--END CONT_SERVICIOS-->
    
	</html:form>
    
</div>
<!--END DIV CONTENT-->
</body>
</html>
<%--
******************************************************************************************************

* Archivo          resultadosSolicitudGeneral.jsp
* Descripción      Body encargado de entregar resultado de la Actualización de Estados Financieros.
                    
* Autor            Denisse Velásquez Salazar (SEnTRA)
* Versión           1.0
* Fecha Creación    26/03/2013

* Historia de cambios
   versión   fecha          autor                               cambios
   =======   ==========     ==============================      ======================================
   1.0       26/03/2013     Denisse Velásquez Salazar (SEnTRA)  Versión inicial
   1.1       29/05/2013     Sergio Cuevas Diaz        (SEnTRA)  Se modifica el link de retorno a 
                                                                "Volver al inicio".
******************************************************************************************************
--%>
