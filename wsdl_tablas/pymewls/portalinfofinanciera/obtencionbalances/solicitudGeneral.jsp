<%@ taglib uri="/WEB-INF/struts-html.tld" prefix="html"%>
<%@ taglib uri="/WEB-INF/struts-bean.tld" prefix="bean"%>
<%@ taglib uri="/WEB-INF/struts-logic.tld" prefix="logic"%>
<%@ taglib prefix="c" uri="/WEB-INF/c.tld"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
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
<script type="text/javascript" src="../js/jquery.tools.min.js"></script>

<script type="text/javascript">

$(document).ready(function(){
	
	$("#toolTipCarpeta p[title]").tooltip();
	$("#toolTipFormulario p[title]").tooltip();
	
	$('input[id$="radio_carpeta_tributaria"]').attr('checked', true);
	
	$('input[id$="radio_carpeta_tributaria"]').click(function(){
		$('.form_seleccionar_opcion .col_destacado').removeClass('col_destacado');
		$(this).parent().addClass('col_destacado');
		$('.cont_formularios').hide();
		$('.formulario_carpeta_tributaria').show();
		$('.beneficios').show();
		$('#mensaje_confirmacion').html('Su estado financiero utilizando la <strong>carpeta tributaria</strong> ha sido actualizado con éxito.');
	});

	$('input[id$="radio_formulario_22"]').click(function(){
		$('.form_seleccionar_opcion .col_destacado').removeClass('col_destacado');
		$(this).parent().addClass('col_destacado');
		$('.cont_formularios').hide();
		$('.beneficios').hide();
		$('.formulario_22').show();
		$('#mensaje_confirmacion').html('Su estado financiero utilizando el <strong>formulario 22</strong> ha sido actualizado con éxito.');
	});


	//valida campos con opcion carpeta tributaria
	$('.bot_carpeta_tributaria .bot_02').click(function(){  
		
		if ($('.formulario_carpeta_tributaria input[name$="codigoCTE"]').val()=="" || $('.formulario_carpeta_tributaria input[name$="codigoCTE"]').val().length < 6)
		{
			$('.formulario_carpeta_tributaria input[name$="codigoCTE"]').addClass('obligatorio').focus().select();
			$('.formulario_carpeta_tributaria input[name$="codigoCTE"]').keyup(function() {
				$('.formulario_carpeta_tributaria input[name$="codigoCTE"]').removeClass('obligatorio');
			});
			return false;
		}

		if ($('.formulario_carpeta_tributaria input[name$="passwordCTE"]').val()=="" || $('.formulario_carpeta_tributaria input[name$="passwordCTE"]').val().length < 6)
		{
			$('.formulario_carpeta_tributaria input[name$="passwordCTE"]').addClass('obligatorio').focus().select();
			$('.formulario_carpeta_tributaria input[name$="passwordCTE"]').keyup(function() {
				$('.formulario_carpeta_tributaria input[name$="passwordCTE"]').removeClass('obligatorio');
			});
			return false;
		}
            $('.bot_carpeta_tributaria .bot_02').hide();
			document.solicitudBalancesForm.tipoBalance.value="CTE";
            document.solicitudBalancesForm.submit();
	});
	
	//valida campos con opcion formulario 22
	$('.bot_formulario_22 .bot_02').click(function(){  
		if ($('.formulario_22 input[name$="folio"]').val()=="" || $('.formulario_22 input[name$="folio"]').val().length < 6)
		{
			$('.formulario_22 input[name$="folio"]').addClass('obligatorio').focus().select();
			$('.formulario_22 input[name$="folio"]').keyup(function() {
				$('.formulario_22 input[name$="folio"]').removeClass('obligatorio');
			});
			return false;
		}
            $('.bot_formulario_22 .bot_02').hide();
            document.solicitudBalancesForm.tipoBalance.value="Formulario 22";
            document.solicitudBalancesForm.submit();
	});

});

function funcionUpperCase(){
	var clave = $('.formulario_carpeta_tributaria input[name$="passwordCTE"]').val();
	clave = clave.toUpperCase();
	$('.formulario_carpeta_tributaria input[name$="passwordCTE"]').val(clave);
}
</script>
</head>
<body>
<div id="content">

<html:form action="/solicitudBalances">
	<input type="hidden" name="accion" value="solicitarRentasGeneral">
	<input type="hidden" name="tipoBalance" value="">
    
    <h2 class="encabezado">Actualización de Estados Financieros</h2>
    
    <div class="cont_servicios">
    
      <h3><span class="texto_titulo">Solicitud</span></h3>
        
        <div class="fondo">

            <ul class="pasos_empresas">
            	<li class="bot_tf_01 width_400 activo"><span class="activo">1</span>Seleccione el Formulario e Ingrese sus datos</li>
				<li class="bot_tf_02 width_150"><span>2</span>Comprobante</li>
       	  	</ul>

			<div class="clear"></div>
			
            <!--PASOS SIMULADOR-->
            <div class="form_seleccionar_opcion fondo_borde_gris borde_ie">
				<p>
					<strong>Seleccione la opción con la que desea actualizar su estado financiero</strong>
				</p>
				
				<div id="toolTipCarpeta">
					<p class="col_3 col_destacado" title='La carpeta tributaria electrónica concentra <br>
														  la información tributaria del contribuyente, <br> 
														  evitando así la búsqueda de copias de <br>
														  declaraciones, ahorrando tiempo y costos, <br>
														  puede obtenerla en www.sii.cl'>
				  <input name="radio_estado_financiero" id="radio_carpeta_tributaria" type="radio" checked="checked" value="Formulario 22" />
						<label for="radio_carpeta_tributaria">
				    		Carpeta tributaria
			    	</p>
			  	</div>
			  	
			  	<div id="toolTipFormulario">
			  		<p class="col_3" title='El Formulario 22  se utiliza para realizar <br>
			  								la declaración anual de impuestos a la renta, <br>
			  								también se conoce como DAI, puede obtenerla <br>
			  								desde www.sii.cl'>
				  		<input name="radio_estado_financiero" id="radio_formulario_22" type="radio" value="Formulario 22" />
			  			<label for="radio_formulario_22">
				  			Formulario 22
			  			</label>
			  		</p>
			  	</div>
            	<div class="clear">
            	</div>
			</div>
			
			<!--CARPETA TRIBUTARIA-->
			<div class="cont_formularios formulario_carpeta_tributaria">
				<h4>Actualizar con Carpeta tributaria</h4>
				<div class="fondo_borde_gris borde_ie">
					<div class="col_3 width_150">
						<p>RUT<br /><bean:write name="solicitudBalancesForm" property="rut"/></p>
					</div>
					<div class="col_3">
					    <p><label for="codigoCTE">Código Carpeta Tributaria</label><br />
                                                <html:text property="codigoCTE" styleId="" styleClass="width_190" maxlength="7" onkeypress="return esNumero(event)"></html:text>
                                            </p>
					</div>
					<div class="col_3">
					<p>
					  <label for="passwordCTE">Clave Carpeta Tributaria</label><br />
                          <html:text property="passwordCTE" styleId="" styleClass="width_110" maxlength="10" onkeyup="funcionUpperCase()"></html:text>
                                        </p>
					</div>
					<div class="clear"></div>
				</div>
				
				<p class="bot_carpeta_tributaria botones"><button title="Actualizar" class="bot_02" type="button">Actualizar</button></p>
			</div>
			<!--END CARPETA TRIBUTARIA-->
			
			<!--FORMULARIO 22-->
			<div class="cont_formularios formulario_22" style="display: none;">
				<h4>Actualizar con Formulario 22</h4>
				<div class="fondo_borde_gris borde_ie">
					<div class="col_3">
						<p><label for="rut_formulario_22">RUT</label><br /><bean:write name="solicitudBalancesForm" property="rut"/></p>
					</div>
					<div class="col_3">
						<p><label for="folio">Folio Formulario</label><br /><html:text property="folio" styleId="" styleClass="width_190" onkeypress="return esNumero(event)"></html:text></p>
					</div>
					<div class="col_3">
						<p><label for="anio">Año</label><br />
							<select name="anio" class="width_90">
								<logic:iterate name="solicitudBalancesForm" property="comboAnios" id="listaAnios">
									<option value='<bean:write name="listaAnios" />'><bean:write name="listaAnios" /></option>
								</logic:iterate>
							</select>
						</p>
					</div>

					<div class="clear"></div>

					<div class="col_3">
						<p><label for="valorF22Cod18">Código 18</label><br /><html:text property="valorF22Cod18" styleId="" styleClass="width_190" maxlength="50" onkeypress="return esNumero(event)"/></p>

					</div>
					<div class="col_3">
						<p><label for="valorF22Cod25">Código 25</label><br /><html:text property="valorF22Cod25" styleId="" styleClass="width_190" maxlength="50" onkeypress="return esNumero(event)"/></p>
					</div>
					<div class="col_3">
						<p><label for="valorF22Cod36">Código 36</label><br /><html:text property="valorF22Cod36" styleId="" styleClass="width_190" maxlength="50" onkeypress="return esNumero(event)"/></p>
					</div>

					<div class="clear"></div>

					<div class="col_3">
						<p><label for="valorF22Cod158">Código 158</label><br /><html:text property="valorF22Cod158" styleId="" styleClass="width_190" maxlength="50" onkeypress="return esNumero(event)"/></p>
					</div>
					<div class="col_3">
						<p><label for="valorF22Cod305">Código 305</label><br /><html:text property="valorF22Cod305" styleId="" styleClass="width_190" maxlength="50" onkeypress="return esNumero(event)"/></p>
					</div>
					<div class="col_3">
						<p><label for="valorF22Cod611">Código 611</label><br /><html:text property="valorF22Cod611" styleId="" styleClass="width_190" maxlength="50" onkeypress="return esNumero(event)"/></p>
					</div>

					<div class="clear"></div>

				</div>
				<p class="bot_formulario_22 botones"><button title="Actualizar" class="bot_02" type="button">Actualizar</button></p>
			</div>
			<!--END FORMULARIO 22-->
			
		
			<p class="beneficios"><a title="Descargue PDF de ayuda" target="_new" href="http://www.bci.cl/empresarios/como_crear_carpeta_tributaria.html">
			<strong>Instrucciones para generar Código y Clave Carpeta Tributaria Electrónica en SII</strong></a></p>

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

* Archivo          solicitudGeneral.jsp
* Descripción      Body encargado solicitar los datos para la Actualización Carpeta Tributaria
                    
* Autor            Denisse Velásquez Salazar (SEnTRA)
* Versión           1.0
* Fecha Creación    26/03/2013

* Historia de cambios
   versión   fecha          autor                               cambios
   =======   ==========     ==============================      ======================================
   1.0       26/03/2013     Denisse Velásquez Salazar (SEnTRA)  Versión inicial
   1.1       29/05/2013     Sergio Cuevas Diaz        (SEnTRA)  Se agrega tooltip a los radio button, 
   																al campo clave se hacen mayuscula el texto,
   																cambio de texto inferior
******************************************************************************************************
--%>