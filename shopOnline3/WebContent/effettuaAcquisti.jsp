<%@page import="it.accenture.model.Prodotto"%>
<%@page import="it.accenture.model.Acquisto"%>
<%@page import="java.util.List"%>
<%@page import="it.accenture.model.Utente"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Acquisti</title>
<script type="text/javascript" src="jquery/jquery-3.2.1.min.js"></script>
<script type="text/javascript" src="bootstrap/js/bootstrap.min.js"></script>
<script type="text/javascript" src="js/gestioneForm.js"></script>
<link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" href="css/stile.css">
</head>
<body>

<% Utente utente = (Utente)session.getAttribute("utenteLoggato"); %>
<% List<Acquisto> listaAcquisti= (List<Acquisto>) request.getAttribute("listaAcquisti"); %>
<% String scelta = (String) request.getParameter("form");%>
<%List<Prodotto> listaCarrello = (List<Prodotto>) session.getAttribute("listaCarrello"); %>
<%Prodotto prodotto = (Prodotto) request.getAttribute("prodotto"); %>


 

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


</ul>


</div><!-- chiusura navbar body -->
</nav><!-- chiusura navbar -->

<!-- Tabella -->
<div class="container">
<!--  <div class="page-header text-center"> -->
<h1 class ="page-header text-center"><font face="Pristina" >Lista Prodotti</h1></font>
<div class="table-responsive">
<table class="table" style="background-color:white">
<thead>
<tr>
<th style="color:darkblue"><font face="Pristina" size="5">Id Prodotto</th>
<th style="color:darkblue"><font face="Pristina" size="5">Nome</th>
<th style="color:darkblue"><font face="Pristina" size="5">Categoria</th>
<th style="color:darkblue"><font face="Pristina" size="5">Marca</th>
<th style="color:darkblue"><font face="Pristina" size="5">Prezzo</th>
<th style="color:darkblue"><font face="Pristina" size="5">Offerta</th>
<th style="color:darkblue"><font face="Pristina" size="5">Sconto</th>
<th style="color:darkblue"><font face="Pristina" size="5">Quantità disponibile</th>
<th style="color:darkblue"><font face="Pristina" size="5">Immagine</th>
</tr>

</thead>
     
<tbody>
<tr>
<td style="color:black"><b><font face="Pristina" size="5"><%= prodotto.getIdProdotto() %></td></b>
<td style="color:black"><b><font face="Pristina" size="5"><%= prodotto.getNome() %></td></b>
<td style="color:black"><b><font face="Pristina" size="5"><%= prodotto.getCategoria() %></td></b>
<td style="color:black"><b><font face="Pristina" size="5"><%= prodotto.getMarca() %></td></b>
<td style="color:black"><b><font face="Pristina" size="5"><%= prodotto.getPrezzo() %></td></b>
<td style="color:black"><b><font face="Pristina" size="5"><%= prodotto.isOfferta() %></td></b>
<td style="color:black"><b><font face="Pristina" size="5"><%= prodotto.getSconto() %></td></b>
<td style="color:black"><b><font face="Pristina" size="5"><%= prodotto.getQuantitaDisponibile() %></td></b>
<td style="color:black"><img src="<%= prodotto.getImmagine() %>"></td>
</tr>
</tbody>

<form action="EffettuaAcquisto" method="post">
<!--  formula -->
<div class="form-group">
<label class="control-label col-md-5">Scegli il tipo di spedizione</label>
<div class="col-md-4">
<input type="radio" name="tipoSpedizione" value="CONSEGNA_TRE_GIORNI" checked>
consegna in tre giorni
<br>
<input type="radio" name="tipoSpedizione" value="CONSEGNA_UN_GIORNO" >
consegna in un giorno
<br>
<input type="radio" name="tipoSpedizione" value="CONSEGNA_STANDARD" >
consegna in sette giorni
<br>
</div>
<span class="col-md-3"></span>
</div>

<div>

<label>Scegli quantità</label>
<input type="number" name="qAcquistata" step="1" min="0" max="<%=prodotto.getQuantitaDisponibile() %>">
<input type="submit" value="Acquista">
<input type="hidden" name="idProdotto" value="<%=prodotto.getIdProdotto()%>">
<input type="hidden" name="prezzo" value="<%=prodotto.getPrezzo()%>">
<input type="hidden" name="offerta" value="<%=prodotto.isOfferta()%>">
<input type="hidden" name="percSconto" value="<%=prodotto.getSconto()%>">

 
</div>


</form>







</body>
</html>