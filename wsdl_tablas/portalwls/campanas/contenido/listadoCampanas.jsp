<%@ taglib uri="/WEB-INF/struts-bean.tld" prefix="bean"%> 
<%@ taglib uri="/WEB-INF/struts-html.tld" prefix="html"%>
<%@ taglib uri="/WEB-INF/struts-logic.tld" prefix="logic" %>
<%@ taglib uri="/WEB-INF/tld/perfil.tld" prefix="perfil-tag"%>
<%@ taglib uri="http://java.sun.com/jstl/core" prefix="c"%>



<!-- Inicio Listado Campañas -->
			<div id="titListaCam" style="display:none;">
	            <div class="separa-inv2"></div>
	            <div class="acordeonColapsado">
	            	<a href="javascript:;" onClick="mostrarOpciones('listaCampanas');">Lista de Campa&ntilde;as</a>
	            </div>
            </div>
            <div id="listaCampanas">
              <div class="subtitulosignomenos"><a href="javascript:;" onClick="mostrarOpciones('ocultaTodo');">Lista de Campa&ntilde;as</a></div>
			    <table width="100%" cellpadding="0" cellspacing="0" class="grilla44">
			    <col width="60%"><col width="40%">
				<c:forEach items="${listadoDeCampana}" var="ListadoDeCampana">   	                    
			    	<tr>
			        	<td>
			        		
			        		<c:if test="${ListadoDeCampana.mejorProximaOferta != 0}">
								<img title="Mejor Pr&oacute;xima Oferta N 
								<c:out value="${ListadoDeCampana.mejorProximaOferta}"/>"
								src="images/ico-estrella-menu.gif" />
							</c:if>
			        		<a href="javascript:detallecampana('<c:out value="${rut}"/>',<c:out value="${ListadoDeCampana.idCampana}"/>,<c:out value="${ListadoDeCampana.correlativoOferta}"/>);"> 
							<c:out value="${ListadoDeCampana.nombreOferta}"/></a>
						</td>
				   	    <td>
				   	    	<c:out value="${ListadoDeCampana.nombreCampana}"/>
						</td>
			        </tr>
		        </c:forEach>
	         	</table>
           	 <div class="separa-inv"></div>
            </div>
<!-- Fin Listado Campañas -->

<!-- Inicio Autogeneracion -->

<logic:notPresent name="nocliente">
				<perfil-tag:validar vista="ETE_CAMPANA" acciones="ABRIR_AUTOGENER">
					<div class="acordeonColapsado" id="titAutogen" style="display:;">
						<a href="javascript:;" onClick="mostrarOpciones('autogeneracion');">Autogeneraci&oacute;n</a>
					</div>
            		<div  id="autogeneracionListado" style="display:none;">
	              		<div class="subtitulosignomenos">
	              			<a href="javascript:;" onClick="mostrarOpciones('ocultaTodo');">Autogeneraci&oacute;n</a>
	              		</div>

						<label id="labelProducto" style="margin-top:4px;font-size:12px;">Producto</label>
						<br>
                        <select name="selectAuto" class="caja160" onchange="javascript:consultarSubProductos(this.value)" style="margin-top:4px;">
                            <option value="0" >Seleccione Producto</option>
                            <c:forEach items="${listaProductos}" var="ListaProductos">
                                <option value='<c:out value="${ListaProductos.idProducto}" />' >
                                    <c:out value="${ListaProductos.nombreProducto}" />
                                </option>
                            </c:forEach>
                        </select>
                        <br>
                        <label id="labelSubProducto" style="margin-top:4px;font-size:12px;">Sub Producto</label>
						<br>
                        <select name="subProducto" id="subProducto" class="caja160" onchange="javascript:autoGeneracionAct();" style="margin-top:4px;">
                            <option value="-1">Seleccione SubProducto</option>
                            <c:if test="${not empty LISTADO_SUBPROD_AUTOGENERADO}">
                                <c:forEach items="${LISTADO_SUBPROD_AUTOGENERADO}" var="listaSubproducto">
                                    <c:choose>
                                        <c:when test="${listaSubproducto.codigoSubproducto == subProductoSeleccionado}">
                                            <option value="<c:out value="${listaSubproducto.codigoSubproducto}"/>" selected="selected">
                                                <c:out value="${listaSubproducto.descripcionSubproducto}" />
                                            </option>
                                        </c:when>
                                        <c:otherwise>
		                                    <option value="<c:out value="${listaSubproducto.codigoSubproducto}"/>">
		                                        <c:out value="${listaSubproducto.descripcionSubproducto}" />
		                                    </option>
                                        </c:otherwise>
                                    </c:choose>
                                </c:forEach>
                            </c:if>
                        </select>
						<div class="separa-inv"></div>
                    </div>

			    </perfil-tag:validar>
			    <perfil-tag:validar vista="ETE_CAMPANA" acciones="ABRIR_AUTOGENER" logica="false">
			    	<input id="titAutogen" type="hidden">
			    	<input id="autogeneracionListado" type="hidden">
			    </perfil-tag:validar>
 	  	    </logic:notPresent>

<!-- Fin Autogeneracion -->

<!-- Inicio Listado Comentarios Históricos -->
                <div class="acordeonColapsado" id="titComHist" style="display:;">
                    <a href="javascript:;" onClick="mostrarOpciones('comentariosHistoricos');">Comentarios Hist&oacute;ricos </a>
                </div>

            <div id="comentariosHistoricos" style="display:none;" >
              <div class="subtitulosignomenos"><a href="javascript:;" onClick="mostrarOpciones('ocultaTodo');">Comentarios Hist&oacute;ricos</a></div>
              <div style="overflow:auto;">

                <table width="100%" border="0" cellpadding="0" cellspacing="0" id="grilla4410">         
                <tr>
                    <th>Producto</th>
                    <th>SubProducto</th>
                    <th>Campañas</th>
                    <th>Usuario</th>
                    <th>Fecha</th>
                    <th>Comentario</th>
                    <th>Estado Gestión</th>					
                    <th>Estado Campaña</th>
                </tr>    
                <c:choose>
                    <c:when test="${!empty listadoDeComentariosHistoricos && listadoDeComentariosHistoricos != null}">
                            <c:forEach items="${listadoDeComentariosHistoricos}" var="listadoDeComentariosHistoricos">                          
                                <tr>
                                    <td align="center">
                                        <c:out value="${listadoDeComentariosHistoricos.nombreProducto}" />
                                    </td>
                                    <td>
                                        <c:out value="${listadoDeComentariosHistoricos.nombreSubProducto}" />
                                    </td>
                                    <td> 
                                        <c:out value="${listadoDeComentariosHistoricos.nombreCampana}" />
                                    </td>
                                    <td> 
                                        <c:out value="${listadoDeComentariosHistoricos.ejecutivo}" />
                                    </td>
                                    <td> 
                                        <c:out value="${listadoDeComentariosHistoricos.fecha}" />
                                    </td>
                                    <td> 
                                        <c:out value="${listadoDeComentariosHistoricos.texto}" />
                                    </td>
                                    <td> 
                                        <c:out value="${listadoDeComentariosHistoricos.estado}" />
                                    </td>
                                    <td> 
                                        <c:out value="${listadoDeComentariosHistoricos.estadoCampana}" />
                                    </td>
                                </tr>                                
                            </c:forEach>
                    </c:when>
                    <c:otherwise>
                                <tr>
                                  <td colspan="8">No hay comentarios históricos asociados al cliente.</td>
                                </tr>
                    </c:otherwise>
                </c:choose>                                                         
              </table>
             </div>
             <div class="separa-inv"></div>
             </div>

<!-- Fin Listado Comentarios Históricos-->   

<!-- Inicio Listado Campañas Vencidas -->
		<perfil-tag:validar vista="ETE_CAMPANA" acciones="ABRIR_CAMP_EXP">
	            <div class="acordeonColapsado" id="titCamEx" style="display:;">
	            	<a href="javascript:;" onClick="mostrarOpciones('campanasExpiradas');">Campa&ntilde;as Expiradas </a>
	            </div>

 	  	    <div id="campanasExpiradas" style="display:none;" >
              <div class="subtitulosignomenos"><a href="javascript:;" onClick="mostrarOpciones('ocultaTodo');">Campa&ntilde;as Expiradas </a></div>
              <div style="overflow:auto;">

			  	<table width="100%" border="0" cellpadding="0" cellspacing="0" id="grilla4410">
		        <c:choose>
					<c:when test="${!empty listadoDeCampanaVencidas && listadoDeCampanaVencidas != null}">
							<c:forEach items="${listadoDeCampanaVencidas}" var="ListadoDeCampanaVencidas">   	                    
					            <tr>
					               <c:if test="${empty esProservice}">
						               <td width="20%" align="center">
						                   <c:out value="${ListadoDeCampanaVencidas.fechaDeGestion}" />
						               </td>
						           </c:if>
					              	<td width="50%">
						              	<a href="javascript:detallecampana('<c:out value="${rut}" />',<c:out value="${ListadoDeCampanaVencidas.idCampana}" />,<c:out value="${ListadoDeCampanaVencidas.correlativoOferta}" />);">
						              		<c:out value="${ListadoDeCampanaVencidas.nombreOferta}" />
										</a>
									</td>
					              <td width="25%"> 
					              	<c:out value="${ListadoDeCampanaVencidas.nombreCampana}" />
					              </td>
					            </tr>
							</c:forEach>
					</c:when>
					<c:otherwise>
								<tr>
					              <td width="50%">&nbsp;</td>
					              <td width="25%"> &nbsp;</td>
					            </tr>
					</c:otherwise>
				</c:choose>															
	          </table>
			 </div>
			 <div class="separa-inv"></div>
			 </div>

		</perfil-tag:validar>
		<perfil-tag:validar vista="ETE_CAMPANA" acciones="ABRIR_CAMP_EXP" logica="false">
			<input id="titCamEx" type="hidden">
			<input id="campanasExpiradas" type="hidden">
		</perfil-tag:validar>

<!-- Fin Listado Campañas Vencidas-->					 
<%--
******************************************************************************************************

* Archivo           listadoCampanas.jsp

* Descripción  Sub-Vista que despliega las campañas, campañas expiradas y lista de productos para un cliente.

* @author           Eduardo Gallardo (TINet)

* Versión           1.6

* Fecha creación 19/02/2007

* Historia de cambios
   versión   fecha       autor               cambios
   =======   ==========    ================================       =================================
   1.0       19/02/2007     Eduardo Gallardo (TINet) versión inicial
   
   1.1       23/08/2007  Felipe Concha Madrigal (Neoris Chile)  Se Implementa validacion de acceso mediante 
                   el uso del Tag Libray Perfil.   
                   
   1.2       19/02/2007     José Verdugo (TINet)       Se Agrega columna que indica mejor próxima.
             Se mueve documentación al final del archivo.

   1.3       17/04/2009  Felipe Rivera Cid (TINet),
                         Daniel Muñoz(TINet)            Se el combo "SubProducto" el cual se utiliza durante la 
                                                        autogeneración de una campaña. Se cambia look and feel de la pagina.
   1.4       22/07/2009  Daniel Zúñiga F.  (TINet)      Se agrega lógica para ocultar bloque de autogeneración de 
                                                        campaña, cuando se muestra el detalle de un cliente 
                                                        asociado a una campaña Proservice.
   1.5       09/10/2009 Felipe Rivera C.(TINet)         Se retira la validacion de proservice para permitir a los ejecutivos
                                                        proservice autogenerar campañas.

   1.6       25/08/2009 Daniel Zúñiga F.   (TINet)     - Se agrega lógica para desplegar la columna fecha de gestión 
                                                        en el listado de campañas expiradas.
                                                         - Se agrega nuevo bloque de comentarios históricos.                                                         
*************************************************************************************************
--%>
    