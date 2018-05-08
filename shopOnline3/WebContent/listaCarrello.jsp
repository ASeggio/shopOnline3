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
<div class="navbar-header div-icona-home" style="margin-top:30px">
<a href="index.jsp">
<img src="img\a.png" class="icona-home">
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
 <li><a href="ListaProdottiInOfferta" >Prodotti in offerta</a></li>
<li><a href="registrazione.jsp?form=registrazione">Registrazione</a></li>
<li><a href="registrazione.jsp?form=login">Login</a></li>
<li><a href="Contatti">Contatti</a></li>
<li><form action="CercaProdotto" method="get" style="margin-left:300px"></li>
<li><input type="search" id="search" name="nomeProdotto" class="txt" size="20" >
<input type="submit" class="btn" value="Search"></li>
</form>
<li><a href="listaCarrello.jsp" >
<button  class="btn ui-li-count" id="carrello" style="background-color:black; "> 
<img src="img/cart.png" width="40" height="40" >
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
<li><a href="ListaProdottiInOfferta" >Prodotti in offerta</a></li>
<li><a href="ListaAcquisti" >I Miei Acquisti</a></li>
<li><a href="ListaOrdini">I Miei Ordini</a></li>
<li><a href="Logout" >Logout</a></li>
<li><form action="CercaProdotto" method="get"></li>
<li><input type="search" id="search" name="nomeProdotto" class="txt" size="20" style="margin-left:50px">
<input type="submit" class="btn" value="Search"></li>
</form>
<li><a href="ListaUtenti">Il mio Account</a></li>
<li><a href="listaCarrello.jsp">
<button  class="btn ui-li-count" id="carrello" style="background-color:black;"  > 
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
<% } %>

</ul>
</div><!-- chiusura navbar body -->
</nav><!-- chiusura navbar -->
<!-- jumbotron -->
<div class="jumbotron" style="background-color:white">
<img  src="img/a.png" style="width:250px;height:350px">


</div><!-- chiusura jambotron -->

<!-- Tabella -->

>

</div>
<div class="container">
<!--  <div class="page-header text-center"> -->
<h1 class ="page-header text-center"><font face="Pristina" >I tuoi prodotti</h1></font>
<div class="table-responsive">
<table class="table" style="background-color:white">
<%if(listaCarrello!= null){ %>
<thead>
<tr  cellpadding="25px">
<th style="color:darkblue"><font face="Pristina" size="5">Id Prodotto</th>
<th style="color:darkblue"><font face="Pristina" size="5">Nome</th>
<th style="color:darkblue"><font face="Pristina" size="5">Categoria</th>
<th style="color:darkblue"><font face="Pristina" size="5">Marca</th>
<th style="color:darkblue"><font face="Pristina" size="5">Prezzo</th>

</tr>

</thead>
<% } %>
<tbody>
<% for(Prodotto prodotto : listaCarrello) { %>
<tr>
<td><font face="Pristina" size="5"><%=prodotto.getIdProdotto()%></td>
<td><font face="Pristina" size="5"><%=prodotto.getNome()%></td>
<td><font face="Pristina" size="5"><%=prodotto.getCategoria().toString().replace("_", " ")%></td>
<td><font face="Pristina" size="5"><%=prodotto.getMarca()%></td>
<td><font face="Pristina" size="5"><%=prodotto.getPrezzo() %> &euro; </td>
<td>
<form action="EffettuaAcquisto" method="get">
<input type="hidden" name="idProdotto" value="<%= prodotto.getIdProdotto()%>">
<input type="submit" value="Acquista">
</form>
</td>

</tr>
<% } %>
</tbody>
</body>
</html>