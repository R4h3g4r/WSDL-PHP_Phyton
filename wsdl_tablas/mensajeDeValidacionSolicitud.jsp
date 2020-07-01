<%@ page language="java" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="/WEB-INF/c.tld" prefix="c"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
    <title>Gestion Ciclo Solicitud</title>
    <meta http-equiv="pragma" content="no-cache">
    <meta http-equiv="cache-control" content="no-cache">
    <meta http-equiv="expires" content="0">
    <meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
    <meta http-equiv="description" content="Gestionar ciclo solicitud">
    <!-- CSS -->
    <link href="/workstationwls/flujounicodesolicitudes/css/popup.css" media="screen" rel="stylesheet"
      type="text/css" />
    <!-- JAVASCRIPT -->
    <script type="text/javascript" src="/workstationwls/flujounicodesolicitudes/js/flujounicodesolicitudes.js"></script>
    <script type="text/javascript" src="/workstationwls/flujounicodesolicitudes/js/ciclosolicitud.js"></script>
    
    <script type="text/javascript">
        function gestionarCicloSolicitud() {    	
        	var origenEmp = document.getElementsByName("origenEmp")[0].value;
            var accionCambioEstado = document.getElementsByName("accionCambioEstado")[0].value;
            var cargoRecomendarDevolver = document.getElementsByName("cargoRecomendarDevolver")[0].value;
            var formulario = document.getElementsByName('CambioEstadoSolicitudForm')[0];
            <c:choose>
                <c:when test="${origenEmp != 'true'}">
                	formulario.submit();
                    formulario.action = '/workstationwls/flujounicodesolicitudes/evaluacionDeSolicitud.do?accion=desplegarevaluacion';
                </c:when>
                <c:when test="${param.accionCambioEstado == 'RECHAZAR' && origenEmp == 'true'}">
                formulario.submit();
                formulario.action = '/workstationwls/flujounicodesolicitudes/evaluacionDeSolicitud.do?accion=desplegarevaluacionPyme';
                </c:when>
                <c:when test="${param.accionCambioEstado == 'DEVOLVER' && origenEmp == 'true' && cargoRecomendarDevolver == 'true'}">
                formulario.submit();
                formulario.action = '/workstationwls/flujounicodesolicitudes/evaluacionDeSolicitud.do?accion=desplegarevaluacionPyme';
                </c:when>
                <c:otherwise>
                    formulario.action = '/workstationwls/flujounicodesolicitudes/gestionarCicloSolicitud.do?accion=gestionarCicloSolicitudValidada';
                </c:otherwise>
            </c:choose>
            formulario.submit();
            document.getElementById('comentarios4').style.display = '';
        }

    </script>
  </head>
  <body>
    <form action="" method="post" name="CambioEstadoSolicitudForm">
      <input name="numeroDeSolicitud" type="hidden" value='<c:out value="${param.numeroDeSolicitud}"/>'>
      <input name="estadoActual" type="hidden" value='<c:out value="${param.estadoActual}"/>'>
      <input name="accionCambioEstado" type="hidden" value='<c:out value="${param.accionCambioEstado}"/>'>
      <input name="nuevaObservacion" type="hidden" value='<c:out value="${param.nuevaObservacion}"/>'>
      <input name="ejecutivoSolicitante" type="hidden" value='<c:out value="${param.ejecutivoSolicitante}"/>'>
      <input name="vista_origen" type="hidden" value='vstModificarEstadoEval'>
      <input name="origenEmp" type="hidden" value='<c:out value="${origenEmp}"/>'>
      <input name="cargoRecomendarDevolver" type="hidden" value='<c:out value="${cargoRecomendarDevolver}"/>'>
      <input name="flagNormalizaCheck" type="hidden" value='<c:out value="${flagNormalizaCheck}"/>'>
      <input name="flagNormaliza" type="hidden"  value='<c:out value="${flagNormalizaCheck}"/>'>


        <c:choose>

    <c:out value="${origenSolicitud}"/>

    </c:choose>
    <div id="subtitulo">
      Resumen Validaci&oacute;n Solicitud
    </div>
    <div id="subtitulosimplerojo" style="color: red;">
      <c:choose>
        <c:when test="${!empty error}">
          <img title="Error, no permite continuar"
            src="/workstationwls/flujounicodesolicitudes/images/01-ico-error.png" />&nbsp;Los errores impiden continuar 
          </c:when>
        <c:otherwise>
          <input type="button" class="boton120" value="Continuar" onclick="gestionarCicloSolicitud();">
        </c:otherwise>
      </c:choose>
    </div>

    <div id="comentarios4" style="text-align:center;display:none;">
        <img src="/workstationwls/flujounicodesolicitudes/images/000-cargando.gif">
    </div>

    <table class="tabla" width="100%">
      <tr>
        <th width="12%">
          RUT
        </th>
        <th  width="15%">
          Módulo
        </th>
        <th width="72%">
          Glosa
        </th>
        <th width="1%">
          &nbsp;
        </th>
      <tr>
        <c:choose>
            <c:when test="${not empty mensajes}">
                <c:forEach items="${mensajes}" var="row">
                <tr>
                    <td>
                        <c:out value="${row.rut}" />
                        -
                        <c:out value="${row.digitoVerificador}" />
                    </td>
                    <td>
                        <c:out value="${row.origen}" />
                    </td>
                    <td>
                        <c:out value="${row.glosaMensaje}" />
                    </td>
                    <td>
                        <c:choose>
                            <c:when test="${row.categoria == 'ERROR'}">
                                <img title="Error, no permite continuar"
                                    src="/workstationwls/flujounicodesolicitudes/images/01-ico-error.png" />
                            </c:when>
                            <c:when test="${row.categoria == 'ALERTA'}">
                                <img title="Alert, se permite continuar"
                                    src="/workstationwls/flujounicodesolicitudes/images/01-ico-alerta.png" />
                            </c:when>
                            <c:when test="${row.categoria == 'INFO'}">
                                <img title="Información" src="/workstationwls/flujounicodesolicitudes/images/01-ico-info.png" />
                            </c:when>
                            <c:otherwise>
                                <c:out value="${row.categoria}" />
                            </c:otherwise>
                        </c:choose>
                    </td>
                <tr>
                </c:forEach>
            </c:when>
            <c:otherwise>
                <tr>
                    <td colspan="4">
                        No se encontraron mensajes para la solicitud.
                    </td>
                </tr>
            </c:otherwise>
        </c:choose>
    </table>
    
  </form>
  </body>
</html>
<%
/******************************************************************************************************
* Archivo           mensajeDeValidacionSolicitud.jsp
* Descripción       Página encargada de mostrar el los mensajes de validación de una solicitud.
* path              /workstationwls/flujounicodesolicitudes/ciclosolicitud
* " Todos los derechos reservados por Banco de Crédito e Inversiones."
* Historia de cambios
*   versión   fecha         autor                                    cambios
*   =======   ==========    =====================================    =================================
*   1.0       12/08/2010    José Verdugo. (TINet)                 Versión inicial
*   1.1       26/11/2010    Felipe Rivera C.(TINet):              Se cambian las proporsiones de las
*             columnas de la tabla que muestra los mensajes al usuario. Se retiran tags "autor" y "versión".
*   1.2       30/03/2012    Felipe Rivera C.(TINet): Se agrega validación y mensaje para el caso en que no
*   se encuentren items en el listado de mensajes. se cambia el flujo de evalaución para que se despliegue el
*   estado de la evaluación como paso solo despues de rechazar una solicitud 
*   1.3       04/11/2014    Gustavo Espinoza S. (TINet):            Se agrega lógica para mostrar checks de rechazo.
*                           - Jessica Ramirez (ing. Soft. BCI)      Se normaliza documentacion del fuente.
*   1.4       20/04/2015    Diego Contreras Q. (TINet):            Se eliminan check de rechazo y se agrega lógica para validar origen de una solicitud.
*                           - Jessica Ramirez (ing. Soft. BCI)
*                           - Viviana Alvarado (ing. Soft. BCI)
*  1.5        12/08/2015    Gonzalo Paredes C. (TINet)              Se modifica validacion para el despliegue de pagina.
*                           - Viviana Alvarado (ing. Soft. BCI):
*   1.6       10/04/2015    Gustavo Espinoza S. (TINet):            Se agrega logica para el flag normaliza. Se retira linea,
*                           - Viviana Alvarado (ing. Soft. BCI)     de documentacion por posibles errores de compilación.
******************************************************************************************************/
%>
