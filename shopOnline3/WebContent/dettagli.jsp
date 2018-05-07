<%@page import="it.accenture.model.Recensioni"%>
<%@page import="it.accenture.model.Utente"%>
<%@page import="it.accenture.model.Prodotto"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta name="viewport" content="width=device-width, initial-scale=1.0">
<style>
* {box-sizing: border-box;}
.img-magnifier-container {
  position:relative;
}
.img-magnifier-glass {
  position: absolute;
  border: 3px solid #000;
  border-radius: 50%;
  cursor: none;
  /*Set the size of the magnifier glass:*/
  width: 100px;
  height: 100px;
}
</style>
<script>
function magnify(imgID, zoom) {
  var img, glass, w, h, bw;
  img = document.getElementById(imgID);
  /*create magnifier glass:*/
  glass = document.createElement("DIV");
  glass.setAttribute("class", "img-magnifier-glass");
  /*insert magnifier glass:*/
  img.parentElement.insertBefore(glass, img);
  /*set background properties for the magnifier glass:*/
  glass.style.backgroundImage = "url('" + img.src + "')";
  glass.style.backgroundRepeat = "no-repeat";
  glass.style.backgroundSize = (img.width * zoom) + "px " + (img.height * zoom) + "px";
  bw = 3;
  w = glass.offsetWidth / 2;
  h = glass.offsetHeight / 2;
  /*execute a function when someone moves the magnifier glass over the image:*/
  glass.addEventListener("mousemove", moveMagnifier);
  img.addEventListener("mousemove", moveMagnifier);
  /*and also for touch screens:*/
  glass.addEventListener("touchmove", moveMagnifier);
  img.addEventListener("touchmove", moveMagnifier);
  function moveMagnifier(e) {
    var pos, x, y;
    /*prevent any other actions that may occur when moving over the image*/
    e.preventDefault();
    /*get the cursor's x and y positions:*/
    pos = getCursorPos(e);
    x = pos.x;
    y = pos.y;
    /*prevent the magnifier glass from being positioned outside the image:*/
    if (x > img.width - (w / zoom)) {x = img.width - (w / zoom);}
    if (x < w / zoom) {x = w / zoom;}
    if (y > img.height - (h / zoom)) {y = img.height - (h / zoom);}
    if (y < h / zoom) {y = h / zoom;}
    /*set the position of the magnifier glass:*/
    glass.style.left = (x - w) + "px";
    glass.style.top = (y - h) + "px";
    /*display what the magnifier glass "sees":*/
    glass.style.backgroundPosition = "-" + ((x * zoom) - w + bw) + "px -" + ((y * zoom) - h + bw) + "px";
  }
  function getCursorPos(e) {
    var a, x = 0, y = 0;
    e = e || window.event;
    /*get the x and y positions of the image:*/
    a = img.getBoundingClientRect();
    /*calculate the cursor's x and y coordinates, relative to the image:*/
    x = e.pageX - a.left;
    y = e.pageY - a.top;
    /*consider any page scrolling:*/
    x = x - window.pageXOffset;
    y = y - window.pageYOffset;
    return {x : x, y : y};
  }
}
</script>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Dettagli</title>
<script type="text/javascript" src="jquery/jquery-3.2.1.min.js"></script>
<script type="text/javascript" src="bootstrap/js/bootstrap.min.js"></script>
<script type="text/javascript" src="js/gestioneForm.js"></script>
<script  type="text/javascript" src="jquery.js"></script>
<script src="jquery.elevatezoom.js" type="text/javascript"></script>
<script>
    $('#zoom_01').elevateZoom();
</script>
<link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" href="css/stile.css">
</head>
<body>

<% Utente utente = (Utente)session.getAttribute("utenteLoggato"); %>
<% Prodotto prodotto = (Prodotto) request.getAttribute("prodotto");%> 
<%List<Prodotto> listaCarrello = (List<Prodotto>) session.getAttribute("listaCarrello"); %>
<% List<Recensioni> listaRecensioni = (List<Recensioni>) request.getAttribute("listaRecensioni"); %>
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
<li><form action="CercaProdotto" method="get" style="margin-left:150px"></li>
<li><input type="search" id="search" name="search" class="txt" size="20" >
<input type="submit" class="btn" value="Search"></li>
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
<li><a href="ListaAcquisti" >I Miei Acquisti</a></li>
<li><a href="ListaOrdini">I Miei Ordini</a></li>
<li><a href="Logout" >Logout</a></li>
<li><form action="CercaProdotto" method="get" style="margin-left:00px"></li>
<li><input type="search" id="search" name="search" class="txt" size="20" >
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
<% } %>


<!-- ciao -->
</ul>

</div>

</nav>

<!-- jumbotron -->
<div class="jumbotron">
<h3><font face="Pristina" ><b>Dettagli prodotto</h3></b>
<p></p>

</div><!-- chiusura jambotron -->

<!-- Tabella -->
<div class="container">
<div class ="table-responsive">

<table class="table">
<thead>
<tr>
<th style="color:darkblue"><font face="Pristina" size="5">Id Prodotto</th>
<th style="color:darkblue"><font face="Pristina" size="5">Nome</th>
<th style="color:darkblue"><font face="Pristina" size="5">Marca</th>
<th style="color:darkblue"><font face="Pristina" size="5">Prezzo</th>
<th style="color:darkblue"><font face="Pristina" size="5">Sconto</th>
<th style="color:darkblue"><font face="Pristina" size="5">Quantità disponibile</th>

</tr>

</thead>

<tbody>

<tr>
<td style="color:black"><b><font face="Pristina" size="5"><%= prodotto.getIdProdotto() %></td></b>
<td style="color:black"><b><font face="Pristina" size="5"><%= prodotto.getNome() %></td></b>
<td style="color:black"><b><font face="Pristina" size="5"><%= prodotto.getMarca() %></td></b>
<td style="color:black"><b><font face="Pristina" size="5"><%= prodotto.getPrezzo() %></td></b>
<td style="color:black"><b><font face="Pristina" size="5"><%= prodotto.getSconto() %></td></b>
<td style="color:black"><b><font face="Pristina" size="5"><%= prodotto.getQuantitaDisponibile() %></td></b>

<td>
<div class="img-magnifier-container">
  <img id="myimage" src="<%= prodotto.getImmagine() %>" width="300" height="300">
</div>
</td>


<script>
magnify("myimage", 3);
</script>


</tr>
</tbody>
</table>



</div>

<p >Scrivi una recensione</p>
<textarea id="review-body-text-area-0" style="height:150px; width: 300px;"></textarea>
<input class="a-button-input" type="submit" name ="Invia" value="Invia i dati" aria-labelledby="a-autoid-3-announce" >

                                  
<div class="container">
<div class ="table-responsive">

<table class="table">
<thead>
<tr>
<th style="color:darkblue"><font face="Pristina" size="5">Titolo</th>
<th style="color:darkblue"><font face="Pristina" size="5">Contenuto</th>
</tr>

</thead>

<tbody>

<%for(Recensioni recensioni : listaRecensioni) { %>

<tr>
<td style="color:black"><b><font face="Pristina" size="5"><%= recensioni.getTitolo()%></td></b>
<td style="color:black"><b><font face="Pristina" size="5"><%= recensioni.getContenuto() %></td></b>
<% } %>

</tr>
</tbody>
</table>
</div>













</body>
</html>