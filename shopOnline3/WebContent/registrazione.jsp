
<%@page import="it.accenture.model.Utente"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>REGISTRAZIONE</title>
<script type="text/javascript" src="jquery/jquery-3.2.1.min.js"></script>
<script type="text/javascript" src="bootstrap/js/bootstrap.min.js"></script>
<script type="text/javascript" src="js/gestioneForm.js"></script>
<link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" href="css/stile.css">
<!-- ciao -->
</head>
<body style="background-color:white">
<% Utente  utente = (Utente) session.getAttribute("utenteLoggato"); %>
<% String scelta = (String) request.getParameter("form");%>
<!-- NAVBAR -->
<nav class="nav navbar-inverse" style="background-color:black">
<div class="navbar-header div-icona-home" style="margin-top:30px">
<a href="index.jsp">
<img src="img\LogoDef123.png" class="icona-home">
</a>
</div><!-- chiusura navbar header -->
<div class="collapse navbar-collapse">
<ul class="nav navbar-nav">

<li><a href="ListaProdotti">Lista Prodotti</a></li>
<% if (utente == null) { %>
<li><a href="registrazione.jsp?form=registrazione">Registrazione</a></li>
<li><a href="registrazione.jsp?form=login">Login</a></li>
<li><a href="Contatti">Contatti</a></li>
<li><form action="CercaProdotto" method="get" style="margin-left:300px"></li>
<li><input type="search" id="search" name="search" class="txt" size="20" >
<input type="submit" class="btn" value="Search"></li></form>
<% } else { %>
<li><a href="ListaProdottiInOfferta">Lista prodotti in offerta</a></li>
<li><a href="ListaProdottiPerCategoria">Lista prodotti per categoria</a></li>
<li><a href="Logout">Logout</a></li>
<% } %>
</ul>
</div><!-- chiusura navbar body -->
</nav><!-- chiusura navbar -->



<% if(scelta.equals("registrazione")) { %>
<!-- JUMBOTRON -->
<div class="jumbotron">
<h1><font face="Pristina" >Registrati !</h1>
</div><!-- chiusura jumbotron -->
<% } else if (scelta.equals("login")) { %>
<!-- JUMBOTRON -->
<div class="jumbotron">
<h1><font face="Pristina" >Effettua il login</h1>
</div><!-- chiusura jumbotron -->
<% } %>


<!-- CONTAINER -->
<div class="container">

 <% if(scelta.equals("registrazione")) { %>
<!-- FORM REGISTRAZIONE -->
<form action="Registrazione" method="post" class="form-horizontal"
 no validate id="formRegistrazione">
 
 <!-- NOME -->
<div class="form-group">
<label class="col-md-4 control-label"><font face="Pristina" size="5">Inserisci Nome</label>
<div class="col-md-5">
<input type="text" name="nome" placeholder="inserisci nome" class="form-control" id="nome"><font face="Pristina" size="5">
</div>
<span class="col-md-3"></span>
</div>

<!-- COGNOME -->
<div class="form-group">
<label class="col-md-4 control-label"><font face="Pristina" size="5">Inserisci Cognome</label>
<div class="col-md-5">
<input type="text" name="cognome" placeholder="inserisci cognome" class="form-control" id="cognome"><font face="Pristina" size="5">
</div>
<span class="col-md-3"></span>
</div>

<!-- USERNAME -->
<div class="form-group">
<label class="col-md-4 control-label"><font face="Pristina" size="5">Inserisci Username</label>
<div class="col-md-5">
<input type="text" name="username" placeholder="inserisci username" class="form-control" id="username"><font face="Pristina" size="5">
</div>
<span class="col-md-3"></span>
</div>

<!-- PASSWORD -->
<div class="form-group">
<label class="col-md-4 control-label"><font face="Pristina" size="5">Inserisci Password</label>
<div class="col-md-5">
<input type="password" placeholder="Password" id="password" class="form-control" name="password"><font face="Pristina" size="5">
<button type="button" id="eye" onclick="myFunction()">
    <img src="https://cdn0.iconfinder.com/data/icons/feather/96/eye-16.png" alt="eye"/>
</button>



</div>
<span class="col-md-3"></span>
</div>

<!-- INDIRIZZO -->
<div class="form-group">
<label class="col-md-4 control-label"><font face="Pristina" size="5">Inserisci Indirizzo</label>
<div class="col-md-5">
<input type="text" name="indirizzo" placeholder="inserisci indirizzo" class="form-control" id="indirizzo"><font face="Pristina" size="5">
</div>
<span class="col-md-3"></span>
</div>


<!-- BOTTONI -->
<div class="form-group">
<span class="col-md-4"></span>
<div class="col-md-5">
<input type="submit" value="Registrati" style="color: darkblue;">
<input type="reset" value="Reset" style="color: darkblue;">
</div>
<span class="col-md-3"></span>
</div>
</form><!-- chiusura form registrazione -->

<!-- LINK GIA REGISTRATO -->
<div id="linkRegistrato">
<span class="col-md-4"></span>
<div class="col-md-5 text-primary">
<p><font face="Pristina" size="5">Sei già registrato ?</p>
<p><a onclick="cambioForm()"><font face="Pristina" size="5">Clicca qui</a> per la login</p>
</div>
<span class="col-md-3"></span>
</div>

 <% } else if(scelta.equals("login")) { %>
 
 <!-- FORM LOGIN -->
 <form action="Login" method="post" class="form-horizontal"
 no validate id="formLogin">

<!-- USERNAME -->
<div class="form-group">
<label class="col-md-4 control-label"><font face="Pristina" size="5">Inserisci Username</label>
<div class="col-md-5">
<input type="text" name="username" placeholder="inserisci username" class="form-control" id="username"><font face="Pristina" size="5">
</div>
<span class="col-md-3"></span>
</div>

<!-- PASSWORD -->
<div class="form-group">
<label class="col-md-4 control-label"><font face="Pristina" size="5">Inserisci Password</label>
<div class="col-md-5">
<input type="password" placeholder="Password" id="password" class="form-control" name="password"><font face="Pristina" size="5">
<button type="button" id="eye" onclick="myFunction()">
    <img src="https://cdn0.iconfinder.com/data/icons/feather/96/eye-16.png" alt="eye"/>
</button>

</div>
<span class="col-md-3"></span>
</div>

<!-- BOTTONI -->
<div class="form-group">
<span class="col-md-4"></span>
<div class="col-md-5">
<input type="submit" value="Login" style="color: darkblue;">
<input type="reset" value="Reset" style="color: darkblue;">
</div>
<span class="col-md-3"></span>
</div>
</form><!-- chiusura form login -->

<!-- LINK NON REGISTRATO -->
<div id="linkLogin">
<span class="col-md-4"></span>
<div class="col-md-5 text-primary">
<p><font face="Pristina" size="5">Non sei registrato ?</p>
<p><a onclick="cambioForm()"><font face="Pristina" size="5">Clicca qui</a> per la registrazione</p>
</div>
<span class="col-md-3"></span>
</div>
<% } %>

<% if(request.getAttribute("errore") != null) { %>
<br>
<br>
<div class="alert alert-danger text-center">
<h3><font face="Pristina" size="5">Username o Password Sbagliati</h3>
</div>
<% } %>
 
</div><!-- chiusura container -->



</body>
</html>