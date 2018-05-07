<%@page import="java.util.List"%>
<%@page import="it.accenture.model.Utente"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>LISTA UTENTI</title>
</head>
<body>
<script type="text/javascript" src="jquery/jquery-3.2.1.min.js"></script>
<script type="text/javascript" src="bootstrap/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" href="css/stile.css">
</head>
<body style="background-color:white">
<% List<Utente> listaUtenti= (List<Utente>) request.getAttribute("listaUtenti"); %>
<% Utente utente = (Utente)session.getAttribute("utenteLoggato"); %>

<nav class="nav navbar-inverse">
<div class="navbar-header div-icona-home">
<a href="index.jsp">
<img src="img\LogoDef123.png" class="icona-home">
</a>
</div><!-- chiusura navbar header -->
<div class="collapse navbar-collapse">
<ul class="nav navbar-nav">


<li>
 <!-- Link o pulsante per l'attivazione del dropdown -->
 <a data-toggle="dropdown" href="ListaProdotti" >Lista Prodotti</a>
 <!-- Menu dropdown -->
 <ul class="dropdown-menu" style="background-color:black">
   <li><a href="Elettronica" style="color:grey">Elettronica</a></li>
   <li><a href="Libri" style="color:grey">Libri</a></li>
   <li><a href="Abbigliamento" style="color:grey">Abbigliamento</a></li>
   <li><a href="Casa" style="color:grey">Casa</a></li>
   </ul>
  
 </li>
<!-- <li><a href="ListaProdotti">Lista Prodotti</a></li>
<li><a href="Elettronica">Elettronica</a></li>
<li><a href="Libri">Libri</a></li>
<li><a href="Abbigliamento">Abbigliamento</a></li>
<li><a href="Casa">Casa</a></li> -->

<li><a href="registrazione.jsp?form=registrazione">Registrazione</a></li>
<li><a href="registrazione.jsp?form=login">Login</a></li>
<li><a href="Contatti">Contatti</a></li>
<li><input type="search" id="search" name="search" class="txt" size="20">
<input type="submit" class="btn" value="Search"></li>


<li style="left: 20cm;"  ><a href="ListaUtenti">Il mio Account</a></li>

</ul>


</div><!-- chiusura navbar body -->
</nav><!-- chiusura navbar -->

<form class="col-md-4" action ="utenteAggiornato.jsp" method="get" >

   

<table class="table table-hover table-bordered" >

<tr>
<th>ID</th>
<th>NOME</th>
<th>COGNOME</th>
<th>USERNAME</th>
<th>INDIRIZZO</th>

</tr>

<tr>
<td><%=utente.getIdUtente() %></td>
<td><%=utente.getNome() %></td>
<td><%=utente.getCognome() %></td>
<td><%=utente.getUsername() %></td>
<td><%=utente.getIndirizzo() %></td>
<td><input type ="hidden" value="<%=utente.getIdUtente() %>" name="id"></td>
<td><input type="submit" value="Modifica" class="btn btn-warning">

<span class="col-md-4"></span></td>
</tr>  








</table>
</form>
</body>
</html>