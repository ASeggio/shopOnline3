
<%@page import="it.accenture.model.Utente"%>
<%@page import="it.accenture.model.Prodotto"%>
<%@page import="java.util.List"%>
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
<%List<Prodotto> listaCarrello = (List<Prodotto>) session.getAttribute("listaCarrello"); %>

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

<p style="color:black"><b><font face="Pristina"><h2><b>Registrati per accedere ai nostri servizi !</b></h2></p>

</div>
</div>



</div> <!-- CHIUSURA CONTAINER -->
<br>
<br>




 
<!-- DIV CONTAINER -->
<div class="container">
<h2 style="text-align:center" ><font face="Pristina"><b>I nostri prodotti di successo!</h2></b>
<div id="myCarousel1" class="carousel slide" data-ride="carousel" data-interval="3000" style="margin-top: 4cm">

<div class="carousel-inner" >
<div class="item active">
<img class="img-carousel" src="img/abbigliamento/gonna.jpg"data-toggle="popover" title="40,00 euro

35% di sconto solo per i primi di 2 acquirenti

ancora 8 gonne disponibili" data-content="Some content inside the popover">
</a>
</div>

<div class="item"  >
<img class="img-carousel"  src="img/casa/caffettiera.jpg"data-toggle="popover" title="25,00 euro

25% di sconto solo per i primi di 3 acquirenti

ancora 8 caffettiere disponibili" data-content="Some content inside the popover"></a>
</div>
<div class="item">
<img class="img-carousel" src="img/libri/libro4.jpg"data-toggle="popover" title="17,00 euro

15% di sconto solo per i primi di 5 acquirenti

ancora 10 gonne disponibili" data-content="Some content inside the popover"></a>
</div> 
<!-- INDICATORI -->
<ol class = "carousel-indicators">
<li data-target="#myCarousel1" data-slide-to="0" class="active"></li>
<li data-target="#myCarousel1" data-slide-to="1"></li>
<li data-target="#myCarousel1" data-slide-to="2"></li>

</ol>

<!-- FRECCE -->
<a class = "left carousel-control" href="#myCarousel1" data-slide="prev">
<span class="glyphicon glyphicon-chevron-left"></span>
</a>
<a class = "right carousel-control" href="#myCarousel1" data-slide="next">
<span class="glyphicon glyphicon-chevron-right"></span>
</a>

</div><!-- chiusura carousel -->


</div><!-- chiusura container -->
</div>



</div>
</div>



</div> <!-- CHIUSURA CONTAINER -->

<div class="container">


</div>

<script>
$(document).ready(function(){
	$("#popover").popover({ trigger: "hover focus" }); 
});
</script>

 





</body>
</html>