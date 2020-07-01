<html>
<head>
<title>BCIExpress</title>

<script language="JavaScript">
<!--
function doCerrar()
{
  window.close();
  return;
}

//-->
</script>

</head>

<frameset rows="*,30" frameborder="0" framespacing="0" border="0">
  <frame name="detalle"    src="/belwls/bciexpress/multilinea/movimientos/mul_movimientos_con.jsp?paso=<%= request.getParameter("paso") %>" scrolling="auto" noresize>
  <frame name="statuszone" src="/belwls/bciexpress/multilinea/movimientos/printzone.html"           scrolling="NO"   noresize border="0">
</frameset>

<noframes>Actualice su navegador a una version mas reciente.</noframes>

</html>
