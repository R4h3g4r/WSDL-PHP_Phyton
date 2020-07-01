<%--
************************************************************************************************************
*
* Archivo           DatosBasicosCredito.jsp
*
* Descripción       Página que permite visualizar un resumen de los datos básicos del crédito solciitado.
*
* Fecha creación    ??-??-????
*
* Historia de cambios
*  Version    Fecha      Autor                                    Cambios
*  =======   ==========  =======                                  =================================
*  1.0       ??-??-????  Desconocido.(BCI)                        Versión inicial.
*  1.1       21/10/2011  Jaime Tobar (Imagemaker I.T.)            Se agrega idProducto para validacion de montos.
*                                                                 
**************************************************************************************************************
--%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<%@ taglib uri="/WEB-INF/struts-html.tld" prefix="html"%>
<%@ taglib uri="/WEB-INF/struts-bean.tld" prefix="bean"%>
<%@ taglib uri="/WEB-INF/struts-logic.tld" prefix="logic"%>

<%@page import="wcorp.util.FechasUtil"%>
<%@page import="java.util.Date"%>
<%@page import="wcorp.util.Formatting"%>
<%@page import="java.util.Collection"%>
<%@page import="java.util.Iterator"%>

<%@page import="wcorp.hipotecario.vo.ProductoVO"%>
<%@page import="wcorp.hipotecario.ui.helpers.ConstantesSimulador"%>
<%@page import="wcorp.hipotecario.ui.actionforms.DatosBasicosForm"%>
<%@page import="wcorp.hipotecario.ui.actionforms.DatosSimulador"%>
<%@page import="wcorp.hipotecario.vo.RangoCreditoFinanciamientoVO"%>
<%@page import="wcorp.hipotecario.vo.SettingsVO"%>
<%@page import="wcorp.hipotecario.ui.helpers.SimulacionNovaHelper"%>

<%
DatosSimulador   datosSimulador  = (DatosSimulador) session.getAttribute(ConstantesSimulador.DATOS_SIMULADOR);
ProductoVO       producto        = (ProductoVO)     session.getAttribute(ConstantesSimulador.PRODUCTO);
DatosBasicosForm datosBasicos    = datosSimulador.getDatosBasicosForm();
SettingsVO       settingsVO        = (SettingsVO)     session.getAttribute(ConstantesSimulador.SETTING);
SimulacionNovaHelper settings = new SimulacionNovaHelper(settingsVO);

int     codMoneda     = settings.getCodMonedaProducto(producto.getCodProducto());
boolean isActiveUF    = (codMoneda==998);
boolean isActivePesos = !isActiveUF;

String NO_PERMITIDO = "No permitido";
Date hoy = FechasUtil.ahora().getTime();
%>
<html:html>
<head>
<title>Sitio Publico Desktop</title>
<link href="/conosurwls/chiphipotecario/simulacion/css/screen.css" rel="stylesheet" type="text/css" media="screen" />
<script type="text/javascript" src="/conosurwls/chiphipotecario/simulacion/js/global.js"></script>
<script type="text/javascript" src="/conosurwls/chiphipotecario/simulacion/js/main.js"></script>
<script type="text/javascript" src="/conosurwls/chiphipotecario/simulacion/js/im_menu.js"></script>
<script src="/conosurwls/chiphipotecario/simulacion/js/DatosBasicosCredito.js" language="javascript"></script>
<script src="/conosurwls/chiphipotecario/simulacion/js/DatosBasicos.js" language="javascript"></script>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />

<script language="JavaScript">
	var activeUF      = <%=isActiveUF%>;
	var UF = <%=settings.getValorUF()%>;
	var activePesos   = <%=isActivePesos%>;
	var idProducto    = <%=producto.getCodProducto()%>;
	
	/*
	<%=producto.toString()%>
	*/
	<%
	Collection col = producto.getRangosCreditoFinanciamiento();
	Iterator it = col.iterator();
	%>
	var rangosArr = new Array(<%=col.size()%>);
	<%
	int cont = 0;
	while(it.hasNext()) {
		RangoCreditoFinanciamientoVO rcf=(RangoCreditoFinanciamientoVO) it.next();	
	%>
		var rango = new RangosCredito();
		rango.maxCredito=<%=rcf.getMontoFinCredito()%>;
		rango.minCredito=<%=rcf.getMontoIniCredito()%>;
		rango.maxPjeFin=<%=rcf.getPorcentajeMaxFinanciamiento()*100%>;
		rango.minPjeFin=<%=rcf.getPorcentajeMinFinanciamiento()*100%>;	
		rangosArr[<%=cont%>]=rango;	
	<%	cont++;
	}%>
	
	var maxCredito = 0;
	var minCredito = 0;
	var maxPjeFin  = 0;
	var minPjeFin  = 0;
	var rentaMinUF = <%=settings.getRentaMinimaUF()%>;
	var msg="";	
	buscarRangoGlobal();
	
</script>

</head>
<body>
<html:form action="/simulacionAction">
<div class="simulador_pasos">
        <ul class="pasos_simulacion">
          <li>Objetivos del Cr&eacute;dito</li>
          <li class="activo">Condiciones del Cr&eacute;dito</li>
          <li>Resultado</li>
        </ul>
        <div class="detalle_simulacion">
          <h2>Ingresa las caracter&iacute;sticas del Cr&eacute;dito Hipotecario que est&aacute;s simulando</h2>
          <div class="informacion">
            <table class="tabla_datos">
                <tr>
                  <th>
                  
                  <div class="ayuda_abajo" id="ayuda_hiptc_cond_0" style="display:none;">
                      <div class="ayuda_main_abajo">
                            <p class="cerrar_abajo"><a href="javascript:openHelpHipCond(0);esconder_select('select_plazo');">cerrar</a></p>
                            <div class="ayuda_contenido_abajo">
                                <h4>Seguro</h4>
                                <p>Estos seguros cubren los principales riesgos<br>a los que usted se puede ver afecto. </p>
                        </div>
                      </div>
                    </div>

                  <button class="bot_ayuda"  onfocus="blur();" onClick="openHelpHipCond(0); esconder_select('select_plazo'); return false;">?</button>Seguro:
                   </th>
                  
                  <td>
                  <html:select property="idSeguro" id="select_seguro">
					<html:optionsCollection name='setting' property="tablaSeguros" label="descripcion" value="codigo"/>
				  </html:select>
                  </td>
                  <th>
                  
                  <div class="ayuda_abajo" id="ayuda_hiptc_cond_1" style="display:none;">
                      <div class="ayuda_main_abajo">
                            <p class="cerrar_abajo"><a href="javascript:openHelpHipCond(1);">cerrar</a></p>
                            <div class="ayuda_contenido_abajo">
                                <h4>Meses de Gracia </h4>
                                <p>Meses iniciales para no pagar dividendo.<br>Se comienza a pagar despu&eacute;s de este periodo. </p>
                            </div>
                      </div>
                    </div>
                  
                  <button class="bot_ayuda" onFocus="blur();" onClick="openHelpHipCond(1); return false;">?</button>
                  
                  Meses de Gracia </th>
                  <td>
                 <%if(producto.isIndGracia()){%>
					<select name="mesGracia" id="select_meses_gracia">
						<%for (int i=2; i<=producto.getMaxMesesGracia(); i++) { %>
						<option value='<%= String.valueOf(i) %>' <%=((String.valueOf(datosBasicos.getMesGracia()).equals(String.valueOf(i)))?"selected":"")%>><%= String.valueOf(i) %></option>
						<%}%>
					</select>
				<%} else {%>
				<%=NO_PERMITIDO%>
				<%}%></td>
                </tr>
                <tr>
                  <th>
                  
                  <div class="ayuda_abajo" id="ayuda_hiptc_cond_2" style="display:none;">
                      <div class="ayuda_main_abajo">
                            <p class="cerrar_abajo"><a href="javascript:openHelpHipCond(2);">cerrar</a></p>
                            <div class="ayuda_contenido_abajo">
                                <h4>Plazo de Cr&eacute;dito </h4>
                                <p>N&uacute;mero de a&ntilde;os en que<br>se paga el Cr&eacute;dito Hipotecario.</p>
                        </div>
                      </div>
                    </div>

                  <button class="bot_ayuda" onFocus="blur();" onClick="openHelpHipCond(2); return false;">?</button>

                  Plazo:</th>
                  <td><%if(producto.isIndRequierePlazo()){ %>
					<select name="plazo" id="select_plazo">
						<%for(int i = 0; i < producto.getPlazos().length; i ++) { %>
						<option value='<%=producto.getPlazos()[i]%>' <%=((datosBasicos.getPlazo() == producto.getPlazos()[i])?"selected":"")%>><%=producto.getPlazos()[i] + " años" %></option>
						<%}%>
					</select>
				<%} else {%>
					<%=NO_PERMITIDO%>
				<%}%></td>
                  <th>
                  
                  <div class="ayuda_abajo" id="ayuda_hiptc_cond_3" style="display:none;">
                      <div class="ayuda_main_abajo">
                            <p class="cerrar_abajo"><a href="javascript:openHelpHipCond(3);">cerrar</a></p>
                            <div class="ayuda_contenido_abajo">
                                <h4>Meses de No Pago</h4>
                                <p>Meses en que no paga el dividendo.<br>Aplica para todo el plazo del Cr&eacute;dito Hipotecario. </p>
                        </div>
                      </div>
                    </div>

                  <button class="bot_ayuda" onFocus="blur();" onClick="openHelpHipCond(3); return false;">?</button>
                  
                  Meses de No Pago </th>
                  <td>
                  <%if(producto.isIndExclusion()){%>
                  <select name="mesExclusion" id="select4">
					<option value="0"  <%=((datosBasicos.getMesExclusion() == 0)?"selected":"")%>>Sin mes de exclusión</option>
					<option value="1"  <%=((datosBasicos.getMesExclusion() == 1)?"selected":"")%>>Enero</option>
					<option value="2"  <%=((datosBasicos.getMesExclusion() == 2)?"selected":"")%>>Febrero</option>
					<option value="3"  <%=((datosBasicos.getMesExclusion() == 3)?"selected":"")%>>Marzo</option>
					<option value="4"  <%=((datosBasicos.getMesExclusion() == 4)?"selected":"")%>>Abril</option>
					<option value="5"  <%=((datosBasicos.getMesExclusion() == 5)?"selected":"")%>>Mayo</option>
					<option value="6"  <%=((datosBasicos.getMesExclusion() == 6)?"selected":"")%>>Junio</option>
					<option value="7"  <%=((datosBasicos.getMesExclusion() == 7)?"selected":"")%>>Julio</option>
					<option value="8"  <%=((datosBasicos.getMesExclusion() == 8)?"selected":"")%>>Agosto</option>
					<option value="9"  <%=((datosBasicos.getMesExclusion() == 9)?"selected":"")%>>Septiembre</option>
					<option value="10" <%=((datosBasicos.getMesExclusion() == 10)?"selected":"")%>>Octubre</option>
					<option value="11" <%=((datosBasicos.getMesExclusion() == 11)?"selected":"")%>>Noviembre</option>
					<option value="12" <%=((datosBasicos.getMesExclusion() == 12)?"selected":"")%>>Diciembre</option>
				</select>
				<%} else {%>
					<%=NO_PERMITIDO%>
				<%}%>
				</td>
                </tr>
              </table>
              <table class="tabla_datos">
                <tr>
                  <th nowrap="nowrap">Valor de la Propiedad </th>
                  <th>UF</th>
                  <th><input type="text" id="<%=((isActiveUF)?"valorPropiedad":"tempValorPropiedad")%>" onKeyPress='return esInteger(event);' name='<%=((isActiveUF)?"valorPropiedad":"tempValorPropiedad")%>' maxlength="12" onBlur='UF2Pesos(this,document.forms[0].<%=((!isActiveUF)?"valorPropiedad":"tempValorPropiedad")%>);setPieYFinanciamiento();' style="margin-left:10px "/></th>
                  <th>$</th>
                  <th><input type="text" id="<%=((isActivePesos)?"valorPropiedad":"tempValorPropiedad")%>" onKeyPress='return esInteger(event);' name='<%=((isActivePesos)?"valorPropiedad":"tempValorPropiedad")%>' maxlength="12" onBlur='Pesos2UF(this,document.forms[0].<%=((!isActivePesos)?"valorPropiedad":"tempValorPropiedad")%>);setPieYFinanciamiento();' style="margin-left:10px "/></th>
                </tr>
                <tr>
                  <td nowrap="nowrap">Monto del Financiamiento</td>
                  <td>UF</td>
                  <td><input type="text" id='<%=((isActiveUF)?"credito":"tempCredito")%>' onKeyPress='return esInteger(event);' name='<%=((isActiveUF)?"credito":"tempCredito")%>' maxlength="12" onBlur='UF2Pesos(this,document.forms[0].<%=((!isActiveUF)?"credito":"tempCredito")%>);setPieYFinanciamiento();' style="margin-left:10px "/></td>
                  <td>$</td>
                  <td><input type="text" id='<%=((isActivePesos)?"credito":"tempCredito")%>' onKeyPress='return esInteger(event);' name='<%=((isActivePesos)?"credito":"tempCredito")%>' maxlength="12" onBlur='Pesos2UF(this,document.forms[0].<%=((!isActivePesos)?"credito":"tempCredito")%>);setPieYFinanciamiento();' style="margin-left:10px "/></td>
                </tr>
                <tr>
                  <th nowrap="nowrap">Pie </th>
                  <th>UF</th>
                  <th>&nbsp;<b id="pie"></b></th>
                  <th>$</th>
                  <th>&nbsp;<b id="piepesoss"></b></th>
                </tr>
                <tr>
                  <td nowrap="nowrap">Financiamiento </td>
                  <td>%</td>
                  <td>&nbsp;<b id="financiamiento"></b></td>
                  <td>&nbsp;</td>
                  <td>&nbsp;</td>
                </tr>
              </table>
                  <p class="align_center">
                  <button class="bot_tipo_100px" onFocus="blur();" onClick="history.back(); return false;">Volver</button>
                  <button class="bot_tipo_100px" onFocus="blur();" onClick="simularCredito(); return false;">Simular</button>
                  </p>
                  
                    <!--FECHA / UF -->
					<div class="datos_uf">
					<div class="uf">UF $ <%=Formatting.number(settings.getValorUF(),"###,###,##0.00")%></div>
					<div class="fecha"><span>Fecha: <%=FechasUtil.convierteDateAString(hoy, "dd/MM/yyyy") %></span>&nbsp;<span><%=FechasUtil.convierteDateAString(hoy, "hh:mm:ss") %></span></div>
					</div>
					<!--FIN FECHA / UF --> 
                  
          </div>
        </div>
      </div>
<html:hidden property='valorPropiedadUf' styleId="valorPropiedadUf" />
<html:hidden property='montoCreditoUf' styleId="montoCreditoUf" />
<html:hidden property='pieUf' styleId="pieUf" />
<html:hidden property='piePesos' styleId="piePesos" />
<html:hidden property='valorPropiedadPesos' styleId="valorPropiedadPesos" />
<html:hidden property='montoCreditoPesos' styleId="montoCreditoPesos" />
<html:hidden property='pjeFinanciamiento' styleId="pjeFinanciamiento" />
<html:hidden property='PAC' styleId="PAC" value='true' />
<html:hidden property='diaVencimiento' value='10' />      
</html:form>
<% if (session.getAttribute("tipoArea").equals("privada")) {%>
	<script src="https://ssl.google-analytics.com/urchin.js" type="text/javascript"></script>
<%} else { %>
	<script src="http://www.google-analytics.com/urchin.js" type="text/javascript"></script>
<%} %>
<script type="text/javascript">
	document.write(unescape("%3Cscript src='/conosurwls/common/js/ga.js' type='text/javascript'%3E%3C/script%3E"));
</script>
<script type="text/javascript">
	var pageTracker = _gat._getTracker(UA-768036-11");
	pageTracker._setCookieTimeout(30*24*60*60);
	pageTracker._setDomainName("bcinova.cl");
	pageTracker._initData();
	pageTracker._trackPageview("/banco_nova/simulador_chip/condiciones");
</script>      
</body>

</html:html>
