<%@page import="it.accenture.model.Prodotto"%>
<%@page import="java.util.List"%>
<%@page import="it.accenture.model.Utente"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Lista Prodotti In Offerta</title>
<script type="text/javascript" src="jquery/jquery-3.2.1.min.js"></script>
<script type="text/javascript" src="bootstrap/js/bootstrap.min.js"></script>
<script type="text/javascript" src="js/gestioneForm.js"></script>
<link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" href="css/stile.css">
</head>
<body>
<% Utente utente = (Utente) session.getAttribute("utenteLoggato"); %>
<% List<Prodotto> listaProdotti= (List<Prodotto>) request.getAttribute("listaProdotti"); %>
<!-- NAVBAR -->
<!-- NAVBAR -->
<nav class ="nav navbar-inverse">
<div class= "navbar-header div-icona-home">
<a href="index.jsp">
<img src="img/a.png" class="icona-home">
</a>
</div>

<li><a href="ListaProdottiInOfferta">Prodotti in offerta</a></li>
<% if (utente == null) { %>
<li><a href="registrazione.jsp?form=login">Login</a></li>
<% } else { %>
<li><a href="ListaProdottiPerCategoria">Prodotti per categoria</a></li>
<li><a href="ListaAcquisti" >I Miei Acquisti</a></li>
<li><a href="ListaOrdini" >I Miei Ordini</a></li>
<li><a href="Logout">Logout</a></li>
<% } %>
</ul>
</div><!-- chiusura navbar body -->
</nav><!-- chiusura navbar -->

<!-- Tabella -->
<div class="table-responsive">
<table class="table" style="background-color:white">
<thead>
<tr>
<th style="color:darkblue"><font face="Pristina" size="5">Nome</font></th>
<th style="color:darkblue" ><font face="Pristina" size="5">Categoria</font></th>
<th style="color:darkblue"><font face="Pristina" size="5">Marca</font></th>
<th style="color:darkblue"><font face="Pristina" size="5">Prezzo</font></th>
<th style="color:darkblue"><font face="Pristina" size="5">Offerta</font></th>
<th style="color:darkblue"><font face="Pristina" size="5">Sconto</font></th>
<th style="color:darkblue"><font face="Pristina" size="5">Quantità disponibile</font></th>
<th ><img>Immagine</th>
</tr>
</thead>
<tbody>
<% for(Prodotto prodotto : listaProdotti) { %>
<tr>
<td style="color:hotpink"><font face="Pristina" size="5"><%=prodotto.getNome() %></font></td>
<td style="color:hotpink"><font face="Pristina" size="5"><%= prodotto.getCategoria() %></font></td>
<td style="color:hotpink"><font face="Pristina" size="5"><%= prodotto.getMarca() %></font></td>
<td style="color:hotpink"><font face="Pristina" size="5"><%= prodotto.getPrezzo() %></font></td>
<td style="color:hotpink"><font face="Pristina" size="5"><%= prodotto.getSconto() %></font></td>
<td style="color:hotpink"><font face="Pristina" size="5"><%= prodotto.getQuantitaDisponibile() %></font></td>
</tr>
<% } %>
</tbody>
</table>
</div>



</body>
</html>