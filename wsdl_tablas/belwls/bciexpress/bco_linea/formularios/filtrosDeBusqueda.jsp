<?xml version="1.0" encoding="iso-8859-1"?>
<%@ taglib uri="http://java.sun.com/jstl/core" prefix="c" %>
<filtro>
<c:if test="${!empty detallesFormularios}">
<esError>NO</esError>
<tieneResultado>SI</tieneResultado>
<productos>
<c:forEach var="producto" items="${detallesFormularios.productosFiltrados}" >
<idProducto><c:out value="${producto.idProducto}"></c:out></idProducto>
<nombreDelProducto><c:out value="${producto.nombreDelProducto}"></c:out></nombreDelProducto>
</c:forEach>
</productos>
<monedas>
<c:forEach var="moneda" items="${detallesFormularios.monedasFiltrados}" >
<idMoneda><c:out value="${moneda.idMoneda}"></c:out></idMoneda>
<nombreDeLaMoneda><c:out value="${moneda.nombreDeLaMoneda}"></c:out></nombreDeLaMoneda>
</c:forEach>
</monedas>
<tasas>
<c:forEach var="tasa" items="${detallesFormularios.tasasFiltrados}" >
<idTasa><c:out value="${tasa.idTasa}"></c:out></idTasa>
<nombreDeLaTasa><c:out value="${tasa.nombreDeLaTasa}"></c:out></nombreDeLaTasa>
</c:forEach>
</tasas>
<plazos>
<c:forEach var="plazo" items="${detallesFormularios.plazosFiltrados}" >
<idPlazo><c:out value="${plazo.idPlazo}"></c:out></idPlazo>
<nombreDelPlazo><c:out value="${plazo.nombreDelPlazo}"></c:out></nombreDelPlazo>
</c:forEach>
</plazos>
</c:if>
<c:if test="${empty detallesFormularios}">
<c:if test="${empty mensaje}"><esError>NO</esError></c:if>
<c:if test="${!empty mensaje}"><esError>SI</esError></c:if>
<tieneResultado>NO</tieneResultado>
</c:if>
</filtro>