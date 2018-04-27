<%@page import="it.accenture.model.Utente"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title  >Contatti</title>
</head>
<script type="text/javascript" src="jquery/jquery-3.2.1.min.js"></script>
<script type="text/javascript" src="bootstrap/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" href="css/stile.css">
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

<li><a href="ListaProdotti" style="color:white"><i>Prodotti</i></a></li>
<% if(utente == null){ %>
<li><a href="registrazione.jsp?form=registrazione" style="color:white"><i>Registrazione</i></a></li>
<li><a href="registrazione.jsp?form=login" style="color:white"><i>Login</i></a></li>
<li><a href="Contatti" style="color:white"><i>Contatti</i></a></li>
<% }else{ %>
<li><a href="Logout" style="color:white"><i>Logout</i></a></li>
<li><a href="ListaAcquisti" style="color:white"><i>I Miei Acquisti</i></a></li>
<li><a href="ListaOrdini" style="color:white"><i>I Miei Ordini</i></a></li>
<% } %>
</nav>
<div class="jumbotron">

<span class="succ" style= "text-align: center; font-size: x-large; color: purple;font-size: -webkit-xxx-large; " >Contatti</span>
</div>

<p>LKDè</p>
<div>
<button style="margin-bottom: 5%; margin: 2%; " nr="" class="channeling-bar__button" type="button" aria-label="Chiamaci" aria-pressed="false" nr-tooltip="" >
<span nr="" class="channeling-bar__icon-wrapper channeling-bar__icon-wrapper--custom">
<img nr="" class="channeling-bar__custom-icon" src="https://nr1.s3.amazonaws.com/channelling/36D8D72/417A726/0/2/ic_contacts_cuca_multi_48_2x.png"></span>
<span nr="" class="channeling-bar__text">Chiamaci</span></button>
</div>
<button style="margin-bottom: 5%; margin: 2%; "nr="" class="channeling-bar__button" type="button" aria-label="Messenger" aria-pressed="false" nr-tooltip="">
<span nr="" class="channeling-bar__icon-wrapper channeling-bar__icon-wrapper--custom">
<img nr="" class="channeling-bar__custom-icon" src="https://nr1.s3.amazonaws.com/channelling/36D8D72/417A726/0/1/ic_contacts_fb_messenger_multi_48_2x.png"></span>
<span nr="" class="channeling-bar__text">Messenger</span></button>
<div>
<button style="margin-bottom: 5%; margin: 2%; nr="" class="channeling-bar__button" type="button" aria-label="Chatta con noi" aria-pressed="false" nr-tooltip="">
<span nr="" class="channeling-bar__icon-wrapper channeling-bar__icon-wrapper--custom">
<img nr="" class="channeling-bar__custom-icon" src="https://nr1.s3.amazonaws.com/channelling/36D8D72/417A726/0/3/ic_contacts_chat_multi_48_2x.png"></span>
<span nr="" class="channeling-bar__text">Chatta con noi</span></button>
</div>
<div>
<button style="margin-bottom: 5%; margin: 2%; nr="" class="channeling-bar__button" type="button" aria-label="Scrivici" aria-pressed="false" nr-tooltip="">
<span nr="" class="channeling-bar__icon-wrapper channeling-bar__icon-wrapper--custom">
<img nr="" class="channeling-bar__custom-icon" src="https://nr1.s3.amazonaws.com/channelling/36D8D72/417A726/0/1/ic_contacts_email_multi_48_2x.png"></span>
<span nr="" class="channeling-bar__text">Scrivici</span></button>

<h3 style="margin: 2%;" dir="ltr">
	La sede centrale di Milano:</h3>

 <i style="margin:2%; ">Via Carlo Ravizza, 26 </i>
<br>
 <i style="margin:2%; ">20149 Milano </i>
<br>
 <i style="margin:2%; ">C.F. e P.IVA 00125488756 </i>	
<br>
<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2798.0072991682077!2d9.147808115973735!3d45.469656879100974!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x4786c17ab77db391%3A0x89914c2267854f1f!2sVia+Carlo+Ravizza%2C+26%2C+20149+Milano+MI!5e0!3m2!1sit!2sit!4v1524757024895" width="1200" height="500" frameborder="0" style="border:0;margin: 2cm;" allowfullscreen></iframe>




</body>
</html>