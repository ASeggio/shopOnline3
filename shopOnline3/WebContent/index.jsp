
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
<% } %>

</ul>
</div><!-- chiusura navbar body -->
</nav><!-- chiusura navbar -->

<!-- jumbotron -->
<div class="jumbotron"  style="background-color:white; " >
<img  src="img/a.png"; style="width:250px;height:350px" >

      <h1 class="w3-hide-large w3-hide-medium">New arrivals</h1>
      <h1 class="w3-hide-small">COLLECTION 2018</h1>
<!-- DIV CONTAINER -->
<div class="container">

<div id="myCarousel" class="carousel slide" data-ride="carousel" data-interval="3000" style="margin-top: 3cm; background-color:white">

<div class="carousel-inner" >
<div class="item active">
<img class="img-carousel" src="img/vestitic.jpg">
</div>

<div class="item"  >
<img class="img-carousel"  src="img/apple-imac-repair.jpg">
</div>
<div class="item">
<img class="img-carousel" src="img/LIBRI USCITE.jpg">
</div>
<div class="item">
<img class="img-carousel" src="img\casashabby.jpg">
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
<img class="img-carousel" src="img/gonne.jpg"data-toggle="popover" title="40,00 euro

35% di sconto solo per i primi di 2 acquirenti

ancora 8 gonne disponibili" data-content="Some content inside the popover">
</a>
</div>

<div class="item"  >
<img class="img-carousel"  src="img/caffettiera1.jpg"data-toggle="popover" title="25,00 euro

25% di sconto solo per i primi di 3 acquirenti

ancora 8 caffettiere disponibili" data-content="Some content inside the popover"></a>
</div>
<div class="item">
<img class="img-carousel" src="img/books-pile.png"data-toggle="popover" title="17,00 euro

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

 <!-- Subscribe section -->
  <div class="w3-container w3-black w3-padding-32" align="left">
    <h1>Subscribe</h1>
    <p>To get special offers and VIP treatment:</p>
    <p><input class="w3-input w3-border" type="text" placeholder="Enter e-mail" style="width:100%"></p>
    <button ><a href="paginaVIP.jsp" > Sottoscrivi</button> 
 
  </div>
</div>

<script>
$(document).ready(function(){
	$("#popover").popover({ trigger: "hover focus" }); 
});
</script>

 






</body>
</html>