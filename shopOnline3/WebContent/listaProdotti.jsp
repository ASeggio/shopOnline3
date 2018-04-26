<%@page import="it.accenture.model.Utente"%>
<%@page import="it.accenture.model.Prodotto"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Lista Prodotti</title>
<script type="text/javascript" src="jquery/jquery-3.2.1.min.js"></script>
<script type="text/javascript" src="bootstrap/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" href="css/stile.css">
</head>
<body>
<% Utente utente = (Utente)session.getAttribute("utenteLoggato"); %>
<% List<Prodotto> listaProdotti= (List<Prodotto>) request.getAttribute("listaProdotti"); %>

<!-- NAVBAR -->
<nav class ="nav navbar-inverse">
<div class= "navbar-header div-icona-home">
<a href="index.jsp">
<img src="img/LogoDef1.png" class="icona-home">
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
<% }else{ %>
<li><a href="ListaAcquisti" style="color:white"><i>I Miei Acquisti</i></a></li>
<li><a href="ListaOrdini" style="color:white"><i>I Miei Ordini</i></a></li>
<li><a href="Logout" style="color:white"><i>Logout</i></a></li>
<% } %>

</ul>


</div>

</nav>

<!-- jumbotron -->
<div class="jumbotron" style="background-color:white">
<img src="LogoDef.png">
<p style="color:black"><b><i>Registrati per accedere ai nostri servizi !</i></b></p>

</div><!-- chiusura jambotron -->

<!-- Tabella -->
<form>
<div class="container">
<div class="page-header text-center">
<h1>Lista Prodotti</h1>
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
<td style="color:hotpink"><%= prodotto.getIdProdotto() %></td>
<td style="color:hotpink"><%= prodotto.getNome() %></td>
<td style="color:hotpink"><%= prodotto.getCategoria() %></td>
<td style="color:hotpink"><%= prodotto.getMarca() %></td>
<td style="color:hotpink"><%= prodotto.getPrezzo() %></td>

<td style="color:hotpink"><%= prodotto.getSconto() %></td>
<td style="color:hotpink"><%= prodotto.getQuantitaDisponibile() %></td>
<td style="color:hotpink"><%= prodotto.getImmagine() %></td>
</tr>
<% } %>


</tbody>
</table>
</div>
</div>
</form>
</body>
</html>