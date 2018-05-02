<%@page import="java.util.List"%>
<%@page import="it.accenture.controller.ListaUtenti"%>
<%@page import="it.accenture.model.Utente"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Lista Utenti</title>
</head>
<body>
<% List<Utente> listaUtenti= (List<Utente>) request.getAttribute("listaUtenti"); %>

<div class="container">
<div class="page-header text-center">
<h1>Lista Utenti</h1>
</div>


<table class="table table-hover table-bordered">
<thead>
<tr>

<th>NOME</th>
<th>COGNOME</th>
<th>USERNAME</th>
<th>PASSWORD</th>
<th></th>
<tbody>
<%for (Utente utente : listaUtenti) { %>
<tr>

<td><%=utente.getNome() %></td>
<td><%=utente.getCognome() %></td>
<td><%=utente.getUsername() %></td>
<td><%=utente.getPassword() %></td>

</form>
</td>
</tr>
<%} %>
</tbody>
</tr>
</thead>
</table>

</div>
<img src="css/img/utente.png" align="right">
</body>
</html>