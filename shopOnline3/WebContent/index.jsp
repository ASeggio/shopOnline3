
<%@page import="it.accenture.model.Utente"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>HOME</title>
<script type="text/javascript" src="jquery/jquery-3.2.1.min.js"></script>
<script type="text/javascript" src="bootstrap/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" href="css/stile.css">
</head>
<body style="background-color:white">

<% Utente utente = (Utente) session.getAttribute("utenteLoggato"); %>

<nav class="nav navbar-inverse">
<div class="navbar-header div-icona-home">
<a href="index.jsp">
<img src="img\LogoDef123.png" class="icona-home">
</a>
</div><!-- chiusura navbar header -->
<div class="collapse navbar-collapse">
<ul class="nav navbar-nav">


<li>
 <!-- Link o pulsante per l'attivazione del dropdown -->
 <a data-toggle="dropdown" href="ListaProdotti" >Lista Prodotti</a>
 <!-- Menu dropdown -->
 <ul class="dropdown-menu">
   <li><a href="Elettronica">Elettronica</a></li>
   <li><a href="Libri">Libri</a></li>
   <li><a href="Abbigliamento">Abbigliamento</a></li>
   <li><a href="Casa">Casa</a></li>
   </ul>
  
 </li>
<!-- <li><a href="ListaProdotti">Lista Prodotti</a></li>
<li><a href="Elettronica">Elettronica</a></li>
<li><a href="Libri">Libri</a></li>
<li><a href="Abbigliamento">Abbigliamento</a></li>
<li><a href="Casa">Casa</a></li> -->
<% if (utente == null) { %>
<li><a href="registrazione.jsp?form=registrazione">Registrazione</a></li>
<li><a href="registrazione.jsp?form=login">Login</a></li>
<li><a href="Contatti">Contatti</a></li>
<li><input type="search" id="search" name="search" class="txt" size="20">
<input type="submit" class="btn" value="Search"></li>
<% } else { %>
<li><a href="ListaOrdini">Lista Acquisti</a></li>
<li><a href="ListaAcquisti">Lista ordini</a></li>
<li><a href="Logout">Logout</a></li>
<li><input type="text" placeholder="Search.."></li>
<% } %>
</ul>


</div><!-- chiusura navbar body -->
</nav><!-- chiusura navbar -->

<!-- jumbotron -->
<div class="jumbotron"  style="background-color:white; " >
<img  src="img/LogoDefMarina.png" >

<!-- DIV CONTAINER -->
<div class="container">

<div id="myCarousel" class="carousel slide" data-ride="carousel" data-interval="3000" style="margin-top: 4cm">

<div class="carousel-inner" >
<div class="item active">
<img class="img-carousel" src="img/abbigliamento.jpg">
</div>

<div class="item"  >
<img class="img-carousel"  src="https://www.informatica2008.it/55735-home_default/ux331un-ux331un-eg002t.jpg">
</div>
<div class="item">
<img class="img-carousel" src="img/Libri.jpg">
</div>
<div class="item">
<img class="img-carousel" src="img\casa1.jpg">
</div>

<!-- INDICATORI -->
<ol class = "carousel-indicators">
<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
<li data-target="#myCarousel" data-slide-to="1"></li>
<li data-target="#myCarousel" data-slide-to="2"></li>
<li data-target="#myCarousel" data-slide-to="3"></li>
</ol>

<!-- FRECCE -->
<a class = "left carousel-control" href="#myCarousel" data-slide="prev">
<span class="glyphicon glyphicon-chevron-left"></span>
</a>
<a class = "right carousel-control" href="#myCarousel" data-slide="next">
<span class="glyphicon glyphicon-chevron-right"></span>
</a>

</div><!-- chiusura carousel -->


</div><!-- chiusura container -->

<br>

<p style="color:black"><b><h2>Registrati per accedere ai nostri servizi !</b></h2></p>

</div>





</div> <!-- CHIUSURA CONTAINER -->


</body>
</html>