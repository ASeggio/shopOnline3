<%@page import="it.accenture.model.Ordine"%>
<%@page import="it.accenture.model.Recensioni"%>
<%@page import="it.accenture.model.Prodotto"%>
<%@page import="java.util.List"%>
<%@page import="it.accenture.model.Utente"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Recensioni</title>
<script type="text/javascript" src="jquery/jquery-3.2.1.min.js"></script>
<script type="text/javascript" src="bootstrap/js/bootstrap.min.js"></script>
<script type="text/javascript" src="js/gestioneForm.js"></script>
<link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" href="css/stile.css">

</head>
<body>
<% Utente utente = (Utente) session.getAttribute("utenteLoggato"); %>

<%List<Prodotto> listaCarrello = (List<Prodotto>) session.getAttribute("listaCarrello"); %>

<!-- NAVBAR -->
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

<form action="InserisciRecensione" method="post" style="margin-left:00px">
<p>Inserisci Titolo</p>
<input type="text" name="titolo" placeholder="inserisci titolo">
<p >Scrivi una recensione</p>
<textarea id="review-body-text-area-0" name="contenuto" style="height:150px; width: 300px;"></textarea>
<input class="a-button-input" type="submit" name ="Invia" value="Invia i dati" aria-labelledby="a-autoid-3-announce" >
<input type="hidden" value="<%=request.getAttribute("idProdotto")%>" name="IdProdotto">
 </form>







</body>
</html>