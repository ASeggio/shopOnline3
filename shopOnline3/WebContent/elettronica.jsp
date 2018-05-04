<%@page import="it.accenture.model.Utente"%>
<%@page import="it.accenture.model.Prodotto"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Elettronica</title>
<script type="text/javascript" src="jquery/jquery-3.2.1.min.js"></script>
<script type="text/javascript" src="bootstrap/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" href="css/stile.css">
</head>
<body>
<% Utente utente = (Utente)session.getAttribute("utenteLoggato"); %>
<% List<Prodotto> listaProdotti= (List<Prodotto>) request.getAttribute("listaProdotti"); %>
<%List<Prodotto> listaCarrello = (List<Prodotto>) session.getAttribute("listaCarrello"); %>
<!--  <% //Prodotto prodotto = (Prodotto) request.getAttribute("prodotto");%> -->

<!-- NAVBAR -->
<nav class="nav navbar-inverse" style="background-color:black">
<div class="navbar-header div-icona-home" style="margin-top:30px">
<a href="index.jsp">
<img src="img\LogoDef123.png" class="icona-home">
</a>
</div><!-- chiusura navbar header -->
<div class="collapse navbar-collapse">
<ul class="nav navbar-nav">


<!--  <div class="container">
<a href="listaCarrello.jsp">
<button class="btn ui-li-count" id="carrello"><img src="img/icona-carrello.png" width="40%">
<%if(listaCarrello !=null) { %>
<%=listaCarrello.size() %>
<%} else { %>
0
<%} %>
</button>
</a>

</div>
-->


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
<li><a href="registrazione.jsp?form=registrazione">Registrazione</a></li>
<li><a href="registrazione.jsp?form=login">Login</a></li>
<li><a href="Contatti">Contatti</a></li>
<li><input type="search" id="search" name="search" class="txt" size="20" style="margin-left:100px">
<input type="submit" class="btn" value="Search"></li>
<li><a href="ListaUtenti">Il mio Account</a></li>
<li><a href="listaCarrello.jsp">
<button  class="btn ui-li-count" id="carrello" style="background-color:black;" > 
 <img src="img/cart.png" width="40" height="40"  >
<!-- <img src="img/icona-carrello.png" width="17%" >  -->
<%if(listaCarrello !=null) { %>
<%=listaCarrello.size() %>
<%} else { %>
0
<%} %>
</button>
</a>
</li>
<% } else { %>

<li><a href="ListaAcquisti" style="color:white"><i>I Miei Acquisti</i></a></li>
<li><a href="ListaOrdini" style="color:white"><i>I Miei Ordini</i></a></li>
<li><a href="Logout" style="color:white"><i>Logout</i></a></li>
<li><input type="search" id="search" name="search" class="txt" size="20" style="margin-left: 250px">
<input type="submit" class="btn" value="Search"></li>
<li><a href="ListaUtenti">Il mio Account</a></li>
<% } %>


<!-- ciao -->
</ul>


</div><!-- chiusura navbar body -->
</nav><!-- chiusura navbar -->
<!-- jumbotron -->
<!-- jumbotron -->
<div class="jumbotron"  style="background-color:white; " >
<img  src="img/LogoDef1.png" >

<p style="color:black"><b><i><font face="Pristina" >Registrati per accedere ai nostri servizi !</i></b></p>

</div><!-- chiusura jambotron -->

<!-- Tabella -->
<form>
<div class="container">
<!--  <div class="page-header text-center"> -->
<h1 class ="page-header text-center">Lista Prodotti</h1>
</div>
<div class="table-responsive">
<table class="table">
<thead>
<tr>
<th style="color:darkblue">Id Prodotto</th>
<th style="color:darkblue">Nome</th>
<th style="color:darkblue">Categoria</th>
<th style="color:darkblue">Marca</th>
<th style="color:darkblue">Prezzo</th>
<th style="color:darkblue">Offerta</th>
<th style="color:darkblue">Sconto</th>
<th style="color:darkblue">Quantità disponibile</th>
<th style="color:darkblue">Immagine</th>
</tr>

</thead>

<tbody>
<% for(Prodotto prodotto : listaProdotti) { %>
<tr>
<td style="color:black"><b><%= prodotto.getIdProdotto() %></td></b>
<td style="color:black"><b><%= prodotto.getNome() %></td></b>
<td style="color:black"><b><%= prodotto.getCategoria() %></td></b>
<td style="color:black"><b><%= prodotto.getMarca() %></td></b>
<td style="color:black"><b><%= prodotto.getPrezzo() %></td></b>
<td style="color:black"><b><%= prodotto.isOfferta() %></td></b>
<td style="color:black"><b><%= prodotto.getSconto() %></td></b>
<td style="color:black"><b><%= prodotto.getQuantitaDisponibile() %></td></b>
<td style="color:black"><img src="<%= prodotto.getImmagine() %>"></td>



<td>
<form action ="Dettagli" method = "post">
<input type="hidden" name="idProdotto" value="<%=prodotto.getIdProdotto() %>">
<input type="submit" value="Dettagli" class="2btn btn-secondary">
</form>
</td>


<td>
<form action="Carrello" method="get">
<input type="hidden" name="idProdotto" value="<%=prodotto.getIdProdotto()%>">
<button class="btn" id="idCarrello"
<% if (utente == null) { %>
disabled
<% } %>

>
<img src="img/aggiungialcarrello.jpg" style="width: 40px;">
</button>
 <!-- chiusura input submit -->
</form>
</td>
</tr>
</div>
<% } %>
</tbody>
</table>
</form>




</body>
</html>