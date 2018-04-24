<%@page import="it.accenture.model.Utente"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Lista prodotti in offerta</title>
<script type="text/javascript" src="jquery/jquery-3.2.1.min.js"></script>
<script type="text/javascript" src="bootstrap/js/bootstrap.min.js"></script>
<script type="text/javascript" src="js/gestioneForm.js"></script>
<link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" href="css/stile.css">
</head>
<body>
<% Utente utente = (Utente) session.getAttribute("utenteLoggato"); %>
<% String scelta = (String) request.getParameter("form");%>
<!-- NAVBAR -->
<nav class="nav navbar-inverse">
<div class="navbar-header div-icona-home">
<a href="index.jsp">
<img src="img\PageImage-515435-3918738-home_icon.png" class="icona-home">
</a>
</div><!-- chiusura navbar header -->
<div class="collapse navbar-collapse">
<ul class="nav navbar-nav">

<li><a href="ListaProdottiInOfferta">Lista prodotti in offerta</a></li>
<% if (utente == null) { %>
<li><a href="registrazione.jsp?form=registrazione">Registrazione</a></li>
<li><a href="registrazione.jsp?form=login">Login</a></li>
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
<h1>Registrati per registrarti</h1>
</div><!-- chiusura jumbotron -->
<% } else if (scelta.equals("login")) { %>
<!-- JUMBOTRON -->
<div class="jumbotron">
<h1>Effettua il login</h1>
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
<input type="password" name="password" placeholder="inserisci password" class="form-control" id="password">
</div>
<span class="col-md-3"></span>
</div>

<!-- INDIRIZZO -->
<div class="form-group">
<label class="col-md-4 control-label">Inserisci Indirizzo</label>
<div class="col-md-5">
<input type="text" name="inidirizzo" placeholder="inserisci indirizzo" class="form-control" id="indirizzo">
</div>
<span class="col-md-3"></span>
</div>

<% } %>

<!-- BOTTONI -->
<div class="form-group">
<span class="col-md-4"></span>
<div class="col-md-5">
<input type="submit" value="Registrati" class="btn btn-primary">
<input type="reset" value="Resetta" class="btn btn-warning">
</div>
<span class="col-md-3"></span>
</div>
</form><!-- chiusura form registrazione -->

</body>
</html>