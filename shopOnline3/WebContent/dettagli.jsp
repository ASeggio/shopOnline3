<%@page import="it.accenture.model.Utente"%>
<%@page import="it.accenture.model.Prodotto"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Dettagli</title>
<script type="text/javascript" src="jquery/jquery-3.2.1.min.js"></script>
<script type="text/javascript" src="bootstrap/js/bootstrap.min.js"></script>
<script type="text/javascript" src="js/gestioneForm.js"></script>
<script>
imageZoom("myimage", "myresult"); 
</script>
<link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" href="css/stile.css">
</head>
<body>
<script>
imageZoom("myimage", "myresult"); 
</script>
<% Utente utente = (Utente)session.getAttribute("utenteLoggato"); %>
<% List<Prodotto> listaProdotti= (List<Prodotto>) request.getAttribute("listaProdotti"); %>
<% Prodotto prodotto = (Prodotto) request.getAttribute("prodotto");%> 

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
<% }else{ %>
<li><a href="ListaAcquisti" style="color:white"><i>I Miei Acquisti</i></a></li>
<li><a href="ListaOrdini" style="color:white"><i>I Miei Ordini</i></a></li>
<li><a href="Logout" style="color:white"><i>Logout</i></a></li>
<% } %>

</ul>


</div>

</nav>

<!-- jumbotron -->
<div class="jumbotron">
<h3>Dettagli prodotto</h3>
<p></p>

</div><!-- chiusura jambotron -->

<!-- Tabella -->
<form>
<div class="container">
<div class ="table-responsive"></div>

<table class="table">
<thead>
<tr>
<th style="color:darkblue">Id Prodotto</th>
<th style="color:darkblue">Nome</th>
<th style="color:darkblue">Marca</th>
<th style="color:darkblue">Prezzo</th>
<th style="color:darkblue">Sconto</th>
<th style="color:darkblue">Quantità disponibile</th>
<th style="color:darkblue"> Immagine </th>
</div>
</tr>

</thead>

<tbody>

<tr>
<td style="color:black"><b><%= prodotto.getIdProdotto() %></td></b>
<td style="color:black"><b><%= prodotto.getNome() %></td></b>
<td style="color:black"><b><%= prodotto.getMarca() %></td></b>
<td style="color:black"><b><%= prodotto.getPrezzo() %></td></b>
<td style="color:black"><b><%= prodotto.getSconto() %></td></b>
<td style="color:black"><b><%= prodotto.getQuantitaDisponibile() %></td></b>
<td><div class="img-zoom-container">
  <img id="myimage" src="<%= prodotto.getImmagine() %>" width="300" height="200">
  <div id="myresult" class="img-zoom-result"></div>
</div>
</td>

</tr>


</tbody>
</table>
</div>
</div>
</form>
</body>
</html>