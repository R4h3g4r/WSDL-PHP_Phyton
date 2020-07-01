<%@ taglib uri="/WEB-INF/c.tld" prefix="c"%>
<%@ taglib uri="/WEB-INF/struts-html.tld" prefix="html"%>
<%@ taglib uri="/WEB-INF/struts-logic.tld" prefix="logic"%>
<%@ taglib uri="/WEB-INF/struts-bean.tld" prefix="bean"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
  <head>
    <meta http-equiv="Pragma" content="no-cache">
    <meta http-equiv="Expires" content="-1">
    <title>Seleccion Cartolas</title>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <link href="/belwls/bciexpress/css/bciexpress.css" media="screen" rel="stylesheet" type="text/css" />
    <link href="/belwls/bciexpress/css/estilos_express.css" media="screen" rel="stylesheet" type="text/css" />
    <link href="/belwls/bciexpress/css/menu_left/style.css" media="screen" rel="stylesheet" type="text/css" />
    <script type="text/javascript" language="javascript">
        
          function aceptar(){
          
              if(document.forms[0].cartola.value==1){
                document.forms[0].action = "/belwls/inversiones/administracionCartera/pasoUno.do";
              }else if(document.forms[0].cartola.value==2){
                document.forms[0].action = "/belwls/inversiones/cartolaFip/pasoUno.do";
              }else{
                document.forms[0].cartola.value=0;
                document.forms[0].action = "/belwls/inversiones/cartolaFip/pasoUno.do";
              }
            document.forms[0].submit();
          }
          
          
        </script>
  </head>
  <body>
    <table cellSpacing="0" cellPadding="0" width="100%" align="center" border="0" class="T0">
      <tr>
        <td>
          <table width="100%" border="0" cellspacing="0" cellpadding="4">
            <tr>
              <td class="T1_t1">
                Cartolas
              </td>
            </tr>
            <tr>
              <td class="T2" colspan="5" nowrap="nowrap">
                <form name="IngresoCartolasForm" id="IngresoCartolasForm" action="" method="post">
                  <input type="hidden" name="codigoFondo" value="-1" />
                  <table id="contenidos" class="TO" border="0" cellpadding="0" cellspacing="0" width="100%">
                    <tbody>
                      <tr>
                        <td class="T2" id="tdcontenido">
                          <table id="borde" border="0" cellpadding="0" cellspacing="0" width="" align="center" >
                            <tbody>
                              <tr>
                                <th width="6">
                                </th>
                              </tr>
                              <tr>
                                <td id="bordeizqmorado" width="6" height="6">
                                  &nbsp;
                                </td>
                                <th class="T2">
                                  <strong><dfn>
                                      Selecci&oacute;n de Par&aacute;metros
                                    </dfn> </strong>
                                </th>
                                <td id="bordederechomorado">
                                  &nbsp;
                                </td>
                              </tr>
                              <tr>
                                <td id="tdbordeizq">
                                  &nbsp;
                                </td>
                                <td class="centrotablaformularios" style="margin: 0px; padding: 0px;">
                                  <!--Inicio Mensaje de validacion-->
                                  <logic:messagesPresent>
                                    <table id="mensajeerror"
                                      style="border: 1px solid rgb(204, 0, 0); padding-left: 15px" border="0"
                                      cellspacing="0" width="100%">
                                      <tbody>
                                        <tr>
                                          <td style="margin: 3px;">
                                            <html:messages id="error">
                                              <li style='color: red;'>
                                                <c:out value='${error}' />
                                              </li>
                                            </html:messages>
                                          </td>
                                        </tr>
                                      </tbody>
                                    </table>
                                  </logic:messagesPresent>
                                  <!--FIN Mensaje de validacion-->
                                  <table align="center">
                                    <tr>
                                      <td>
                                        &nbsp;
                                      </td>
                                    </tr>
                                    <tr>
                                      <td>
                                        <select name="cartola">
                                          <option value="0">
                                            Seleccione
                                          </option>
                                          <option value="1">
                                            BAM Administracion de Cartera
                                          </option>
                                          <option value="2">
                                            BAM Fondos de Inversion Privado
                                          </option>
                                        </select>
                                      </td>
                                    </tr>
                                    <tr>
                                      <td>
                                        &nbsp;
                                      </td>
                                    </tr>
                                  </table>
                                  <table id="botonera" border="0" cellpadding="0" cellspacing="0" width="100%">
                                    <tbody>
                                      <tr>
                                        <td>
                                          <div align="center">
                                            <img
                                              src="/belwls/inversiones/common/images/botones/btn_continuar.gif"
                                              onclick="javascript:aceptar();" border="0" width="100" height="21">
                                          </div>
                                        </td>
                                      </tr>
                                    </tbody>
                                  </table>
                                </td>
                                <td id="tdbordeder">
                                  &nbsp;
                                </td>
                              </tr>
                              <tr>
                                <td>
                                  <img src="/bcinetwls/inversioneswls/common/images/curvaabajoizquierda.gif"
                                    width="6" height="6">
                                </td>
                                <td id="bordebajotabla">
                                  <img src="/bcinetwls/inversioneswls/common/images/bordeblancoabajo.gif" width="6"
                                    height="6">
                                </td>
                                <td>
                                  <img src="/bcinetwls/inversioneswls/common/images/curvaabajoderecha.gif"
                                    width="6" height="6">
                                </td>
                              </tr>
                            </tbody>
                          </table>
                  </table>
              </td>
            </tr>
            </tbody>
          </table>
          </form>
        </td>
      </tr>
    </table>
    </td>
    </tr>
    </table>
  </body>
</html>
<%--
******************************************************************************************************

* Archivo           seleccionCartolas.jsp

* Descripción		Muestra un combobox para selección de cartolas.

* @author           Rafael Pizarro B. (TINet)

* Versión           1.0

* Fecha creación    18/02/2010

* Historia de cambios
   Versión Fecha      Autor                   Cambios
   ======= ========== ======================  ===============================
   1.0     18/02/2010 Rafael Pizarro B. (TINet)          Versión Inicial
******************************************************************************************************
--%>
