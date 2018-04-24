<%@page import="it.accenture.model.Utente"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<script type="text/javascript" src="jquery/jquery-3.2.1.min.js"></script>
<script type="text/javascript" src="bootstrap/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" href="css/stile.css">
</head>
<body style="background-color:white">
<% Utente utente = (Utente)session.getAttribute("utenteLoggato"); %>

<!-- NAVBAR -->
<nav class ="nav navbar-inverse">
<div class= "navbar-header div-icona-home">
<a href="index.jsp">
<img src="img/LogoDef.png" class="icona-home">
</a>
</div>

<!-- NAVBAR HEADER -->
<div class="collapse navbar-collapse">
<ul class="nav navbar-nav">

<li><a href="ListaStanze" style="color:white"><i>Prodotti</i></a></li>
<% if(utente == null){ %>
<li><a href="registrazione.jsp?form=registrazione" style="color:white"><i>Registrazione</i></a></li>
<li><a href="registrazione.jsp?form=login" style="color:white"><i>Login</i></a></li>
<li><a href="Contatti" style="color:white"><i>Contatti</i></a></li>
<% }else{ %>
<li><a href="Logout" style="color:white"><i>Logout</i></a></li>
<li><a href="ListaAcquisti" style="color:white"><i>I Miei Acquisti</i></a></li>
<li><a href="ListaOrdini" style="color:white"><i>I Miei Ordini</i></a></li>
<% } %>

<label for="s" class="hide">Cerca sul sito</label>
<input type="search" id="s" name="s" placeholder="Cosa cerchi?">
<input type="submit" id="sub" name="sub" value="Cerca">


</ul>



</div>

</nav>

<!-- jumbotron -->
<div class="jumbotron" style="background-color:white">
<img src="img/LogoDef.png">
<p style="color:blue"><b><i>Registrati per accedere ai nostri servizi !</b></i></p>

</div>
<!-- DIV CONTAINER -->
<div class="container">

<!--  CAROUSEL -->
<div id="myCarousel" class="carousel slide" data-ride="carousel"
data-interval="3000">

<div class="carousel-inner">
<div class="item active">
<img class="img-carousel" src="img/EXT8P_XL.jpg">
</div>
<div class="item">
<img class="img-carousel" src="img/home2.jpg">
</div>
<div class="item">
<img class="img-carousel" src="img/home3.jpg">
</div>
</div>
<!-- INDICATORI -->
<ol class="carousel-indicators">
<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
<li data-target="#myCarousel" data-slide-to="1"></li>
<li data-target="#myCarousel" data-slide-to="2"></li>
</ol>
<!-- FRECCE -->
<a class="left carousel-control" href="#myCarousel" data-slide="prev">
<span class="glyphicon glyphicon-chevron-left"></span>
</a>
<a class="right carousel-control" href="#myCarousel" data-slide="next">
<span class="glyphicon glyphicon-chevron-right"></span>
</a>
</div><!-- CHIUSURA CAROUSEL -->







</div> <!-- CHIUSURA CONTAINER -->


</body>
</html>