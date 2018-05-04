<%@page import="java.util.List"%>
<%@page import="it.accenture.model.Utente"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>UTENTE AGGIORNATO</title>
<script type="text/javascript" src="jquery/jquery-3.2.1.min.js"></script>
<script type="text/javascript" src="bootstrap/js/bootstrap.min.js"></script>
<script type="text/javascript" src="js/gestioneForm.js"></script>
<link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" href="css/stile.css">

</head>
<body>
<% Utente utente = (Utente)session.getAttribute("utenteLoggato"); %>




<!-- NAVBAR -->
<nav class ="nav navbar-inverse">
<div class= "navbar-header div-icona-home">
<a href="index.jsp">
<img src="img/LogoDef123.png" class="icona-home">
</a>
</div>

<!-- NAVBAR HEADER -->
<div class="collapse navbar-collapse">
<ul class="nav navbar-nav">

<li><a href="ListaProdotti" style="color:white"><i>Prodotti</i></a></li>
<% if(utente == null){ %>
<li><a href="registrazione.jsp?form=registrazione" style="color:white"><i>Registrazione</i></a></li>
<li><a href="registrazione.jsp?form=login" style="color:white"><i>Login</i></a></li>
<li><a href="contatti" style="color:white">Contatti</a>
<li><input type="search" id="search" name="search" class="txt" size="20">
<input type="submit" class="btn" value="Search"></li>
<% }else{ %>
<li><a href="ListaAcquisti" style="color:white"><i>I Miei Acquisti</i></a></li>
<li><a href="ListaOrdini" style="color:white"><i>I Miei Ordini</i></a></li>
<li><a href="Logout" style="color:white"><i>Logout</i></a></li>
<% } %>

</ul>


</div>

</nav>


<!-- JUMBOTRON -->
<div class="jumbotron">
<h1>Modifica i campi</h1>
</div><!-- chiusura jumbotron -->



<form action="ModificaUtente" method="post" class="form-horizontal"
 no validate id="formUpdate">
<input type="hidden" value="<%=utente.getIdUtente() %>" name ="idUtente">

 <!-- NOME -->
<div class="form-group">
<label class="col-md-4 control-label">Inserisci Nome</label>
<div class="col-md-5">
<input type="text" name="nome" placeholder="inserisci nome" class="form-control" id="nome">
</div>
<span class="col-md-3"></span>
</div>

<!-- COGNOME -->
<div class="form-group">
<label class="col-md-4 control-label">Inserisci Cognome</label>
<div class="col-md-5">
<input type="text" name="cognome" placeholder="inserisci cognome" class="form-control" id="cognome">
</div>
<span class="col-md-3"></span>
</div>

<!-- USERNAME -->
<div class="form-group">
<label class="col-md-4 control-label">Inserisci Username</label>
<div class="col-md-5">
<input type="text" name="username" placeholder="inserisci username" class="form-control" id="username">
</div>
<span class="col-md-3"></span>
</div>

<!-- PASSWORD -->
<div class="form-group">
<label class="col-md-4 control-label">Inserisci Password</label>
<div class="col-md-5">
<input type="password" placeholder="Password" id="password" class="form-control" name="password">
<button type="button" id="eye" onclick="myFunction()">
    <img src="https://cdn0.iconfinder.com/data/icons/feather/96/eye-16.png" alt="eye"/>
</button>



</div>
<span class="col-md-3"></span>
</div>

<!-- INDIRIZZO -->
<div class="form-group">
<label class="col-md-4 control-label">Inserisci Indirizzo</label>
<div class="col-md-5">
<input type="text" name="indirizzo" placeholder="inserisci indirizzo" class="form-control" id="indirizzo">
</div>
<span class="col-md-3"></span>
</div>
<!-- BOTTONI -->
<div class="form-group">
<span class="col-md-4"></span>
<div class="col-md-5">
<input type="submit" value="Invia" class="btn btn-warning" >

</div>
<span class="col-md-3"></span>
</div>
</form><!-- chiusura form login -->
















</body>
</html>