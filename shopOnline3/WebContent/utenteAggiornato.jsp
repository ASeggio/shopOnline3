<%@page import="java.util.List"%>
<%@page import="it.accenture.model.Utente"%>
<%@page import="it.accenture.model.Prodotto"%>
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
<body style="background-color:white">
<% Utente utente = (Utente)session.getAttribute("utenteLoggato"); %>
<%List<Prodotto> listaCarrello = (List<Prodotto>) session.getAttribute("listaCarrello"); %>




<nav class="nav navbar-inverse" style="background-color:black">
<div class="navbar-header div-icona-home"  style="margin-top: 3%">
<a href="index.jsp">
<img src="img\a.png" class="icona-home">
</a>
</div><!-- chiusura navbar header -->
<div class="collapse navbar-collapse">
<ul class="nav navbar-nav"  style="margin-top: 3%;width:92%">

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
 <% if (utente == null) { %>
<li><a href="ListaProdottiInOfferta" >Prodotti in offerta</a></li>
<li><a href="registrazione.jsp?form=registrazione">Registrazione</a></li>
<li><a href="registrazione.jsp?form=login">Login</a></li>
<li><a href="Contatti">Contatti</a></li>
<li style="margin-top:4%;float: right;">
<button  class="btn ui-li-count" id="carrello" style="background-color:black;" > 
 <img src="img/cart.png" width="40" height="40" data-toggle="popover" title="Registrati per accedere al carrello" data-content="Some content inside the popover" >
<%if(listaCarrello !=null) { %>
<%=listaCarrello.size() %>
<%} else { %>
0
<%} %>
</button>
</a>
</li>

<% } else { %>
<li><a href="ListaProdottiInOfferta" >Prodotti in offerta</a></li>
<li><a href="ListaAcquisti" >I Miei Acquisti</a></li>
<li><a href="ListaOrdini" >I Miei Ordini</a></li>
<li><a href="Logout" ><i>Logout</i></a></li>
<li style="margin-top:3%;float: right;"><a href="listaCarrello.jsp">
<button  class="btn ui-li-count" id="carrello" style="background-color:black;" > 
 <img src="img/cart.png" width="40" height="40" >
<%if(listaCarrello !=null) { %>
<%=listaCarrello.size() %>
<%} else { %>
0
<%} %>
</button>
</a>
</li>
<% } %>


<li style="float: right;"><form action="CercaProdotto" method="get" style="margin-left:100px">
<input type="search" id="search" name="search" class="txt" size="20" >
<input type="submit" class="btn" value="Search">
</form>
</li>
 <% if (utente != null) { %>
<li><a href="ListaUtenti">My Account</a></li>
<% } %>
</ul>






</div>

</nav>

<!-- JUMBOTRON -->
<div class="jumbotron">
<h1><font face="Pristina">Modifica i campi</h1>
</div><!-- chiusura jumbotron -->



<form action="ModificaUtente" method="post" class="form-horizontal"
 no validate id="formUpdate">
<input type="hidden" value="<%=utente.getIdUtente() %>" name ="idUtente">

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
<input type="submit" value="Invia" style="color: darkblue;">
</div>
<span class="col-md-3"></span>
</div>

</form><!-- chiusura form registrazione -->


<!-- ciao -->










</font>
</body>
</html>