<%@page import="it.accenture.model.Prodotto"%>
<%@page import="java.util.List"%>
<%@page import="it.accenture.model.Utente"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Lista Carrello</title>
</head>
<body>
<script type="text/javascript" src="jquery/jquery-3.2.1.min.js"></script>
<script type="text/javascript" src="bootstrap/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" href="css/stile.css">
</head>
<body style="bckground-color:white">
<% Utente utente = (Utente)session.getAttribute("utenteLoggato"); %>
<% List<Prodotto> listaProdotti= (List<Prodotto>) request.getAttribute("listaProdotti"); %>
<%List<Prodotto> listaCarrello = (List<Prodotto>) session.getAttribute("listaCarrello"); %>
<!--  <% //Prodotto prodotto = (Prodotto) request.getAttribute("prodotto");%> -->

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
<input type="search" id="search" name="nomeProdotto" class="txt" size="20" >
<input type="submit" class="btn" value="Search">
</form>
</li>
 <% if (utente != null) { %>
<li><a href="ListaUtenti">My Account</a></li>
<% } %>
</ul>






</div>

</nav>
<!-- jumbotron -->
<div class="jumbotron" style="background-color:white">
<img  src="img/a.png" style="width:250px;height:350px">


</div><!-- chiusura jambotron -->

<!-- Tabella -->

>

</div>
<div class="container">
<!--  <div class="page-header text-center"> -->
<h1 class ="page-header text-center"><font face="Pristina" >I tuoi prodotti</font></h1>
<div class="table-responsive">
<table class="table" style="background-color:white">
<%if(listaCarrello!= null){ %>
<thead>
<tr  cellpadding="25px">
<th style="color:darkblue"><font face="Pristina" size="5">Id Prodotto</font></th>
<th style="color:darkblue"><font face="Pristina" size="5">Nome</font></th>
<th style="color:darkblue"><font face="Pristina" size="5">Categoria</font></th>
<th style="color:darkblue"><font face="Pristina" size="5">Marca</font></th>
<th style="color:darkblue"><font face="Pristina" size="5">Prezzo</font></th>

</tr>

</thead>

<tbody>
<% for(Prodotto prodotto : listaCarrello) { %>
<tr>
<td><font face="Pristina" size="5"><%=prodotto.getIdProdotto()%></font></td>
<td><font face="Pristina" size="5"><%=prodotto.getNome()%></font></td>
<td><font face="Pristina" size="5"><%=prodotto.getCategoria().toString().replace("_", " ")%></font></td>
<td><font face="Pristina" size="5"><%=prodotto.getMarca()%></font></td>
<td><font face="Pristina" size="5"><%=prodotto.getPrezzo() %> &euro;</font> </td>
<td><form action="EffettuaAcquisto" method="get">
<font face="Pristina" size="5">
<input type="hidden" name="idProdotto" value="<%= prodotto.getIdProdotto()%>">
<input type="submit" value="Acquista" style="color: darkblue;">
</font>
</form>

</td>
<td>
<form action="RimuoviAcquisto" method="get">
<font face="Pristina" size="5">
<input type="hidden" name="idProdotto" value="<%= prodotto.getIdProdotto()%>">
<input type="submit" value="Rimuovi" style="color: darkblue;">
</font>
</form>

</td>
</tr>
<% } %>
<% } else {%>
<h1><font face="Pristina" >Carrello vuoto</font></h1>
<% } %>

</tbody>
</table>
</body>
</html>