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
<body style="background-color:white">
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
<img src="img\a.png" class="icona-home" style="margin-top:30px">
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
     <li><a href="ListaProdotti" style="color:grey">Tutti i prodotti</a></li>
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
<li><form action="CercaProdotto" method="get" style="margin-left: 350px"></li>
<li><input type="search" id="search" name="search" class="txt" size="20">
<input type="submit" class="btn" value="Search"></li>
</form>

<li style="left: 20cm;"  ><a href="ListaUtenti">Il mio Account</a></li>

</ul>


</div><!-- chiusura navbar body -->
</nav><!-- chiusura navbar -->

<div class="jumbotron"  style="background-color:white; " >
<img  src="img/a.png"style="width:250px;height:350px" >


</div><!-- chiusura jambotron -->



   <form action ="utenteAggiornato.jsp" method="get" >
<div class="container">
<!--  <div class="page-header text-center"> -->
<h1 class ="page-header text-center"><font face="Pristina" >Dettagli Utente</h1></font>
<div class="table-responsive">
<table class="table" style="background-color:white">
<thead>
<tr>
<th style="color:darkblue"><font face="Pristina" size="5">Id Utente</th>
<th style="color:darkblue"><font face="Pristina" size="5">Nome</th>
<th style="color:darkblue"><font face="Pristina" size="5">Cognome</th>
<th style="color:darkblue"><font face="Pristina" size="5">Username</th>
<th style="color:darkblue"><font face="Pristina" size="5">Indirizzo</th>


</tr>

</thead>

<!--  <table class="table table-hover table-bordered" >

<tr>
<th>ID</th>
<th>NOME</th>
<th>COGNOME</th>
<th>USERNAME</th>
<th>INDIRIZZO</th>

</tr>
-->

<tr>
<td style="color:black"><b><font face="Pristina" size="5"><%=utente.getIdUtente() %></td>
<td style="color:black"><b><font face="Pristina" size="5"><%=utente.getNome() %></td>
<td style="color:black"><b><font face="Pristina" size="5"><%=utente.getCognome() %></td>
<td style="color:black"><b><font face="Pristina" size="5"><%=utente.getUsername() %></td>
<td style="color:black"><b><font face="Pristina" size="5"><%=utente.getIndirizzo() %></td>
<td><input type ="hidden" value="<%=utente.getIdUtente() %>" name="id"></td>
<td><input type="submit" value="Modifica" style="color: darkblue;">

<span class="col-md-4"></span></td>
</tr>  








</table>
</form>
</body>
</html>