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



</head>
<body>

<% Utente utente = (Utente)session.getAttribute("utenteLoggato"); %>

<nav class="nav navbar-inverse" style="background-color:black">
<div class="navbar-header div-icona-home"  style="margin-top: 3%">
<a href="index.jsp">
<img src="img\a.png" class="icona-home">
</a>
</div><!-- chiusura navbar header -->
<div class="collapse navbar-collapse">
<ul class="nav navbar-nav"  style="margin-top: 3%;width:92%">

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


<% } else { %>
<li><a href="ListaProdottiInOfferta" >Prodotti in offerta</a></li>
<li><a href="ListaAcquisti" >I Miei Acquisti</a></li>
<li><a href="ListaOrdini" >I Miei Ordini</a></li>
<li><a href="Logout" ><i>Logout</i></a></li>
<% } %>



<li style="float: right;"><form action="CercaProdotto" method="get" style="margin-left:100px">
<input type="search" id="search" name="search" class="txt" size="20" >
<input type="submit" class="btn" value="Search">
</form>
</li>
 <% if (utente != null) { %>
<li><a href="ListaUtenti">My Account</a></li>
<% } %>
</ul>






</div>

</nav>


<div class="jumbotron">
<img src="img\loghi.jpg" class="icona-contatti" align= "right"; style=" width: 8%;
	margin-left: 2px;
	margin-top: 2px;" >
<span class="succ" style= "text-align: center; font-size: x-large; color: purple;font-size: -webkit-xxx-large; "><font face="Lucida Calligraphy">Contatti </font></span>

<h2 style="margin-left: 2cm;margin-right: 2cm;  text-align: left;"><font face="Lucida Calligraphy">Chi Siamo</h2></font>
 
 <p style="margin-left: 2cm;margin-right: 2cm; text-align: justify;">IoBuy � una multinazionale italiana con sedi in varie parti del mondo. 

Nasce a Milano nel 2018 e ideata da 4 dei pi� importanti imprenditori del Paese, uniti dallo spirito di far crescere all'interno del mercato italiano un settore innovativo e sempre pi� crescente come l'e-commerce. 
Al momento offriamo 4 categorie di prodotti in cui i nostri clienti possono scegliere tra abbigliamento, libri, elettronica e prodotti per la casa. L'azienda � in forte espansione ed entro il 2020 contiamo di ampliare i nostri prodotti al fine di divenire leader nel nostro settore.
IoBuy cerca di accorciare al massimo i tempi di attesa per le chiamate al servizio clienti e offre anche il servizio "Chatta con Noi"(attivo 24 ore su 24 tutti i giorni), offrendo un servizio di qualit� e superiore ad altri competitors. L'Azienda fornisce anche un servizio di e-mail per l'assistenza.
Inoltre � molto social! E' possibile contattarci anche su Messenger e seguirci sui principali social network.
 <p>


<span nr="" class="channeling-bar__icon-wrapper channeling-bar__icon-wrapper--custom">
<img nr="" class="channeling-bar__custom-icon" src="https://nr1.s3.amazonaws.com/channelling/36D8D72/417A726/0/2/ic_contacts_cuca_multi_48_2x.png"></span>
<span nr="" class="channeling-bar__text">Chiamaci</span></button>


<span nr="" class="channeling-bar__icon-wrapper channeling-bar__icon-wrapper--custom">
<img nr="" class="channeling-bar__custom-icon" src="https://nr1.s3.amazonaws.com/channelling/36D8D72/417A726/0/1/ic_contacts_fb_messenger_multi_48_2x.png"></span>
<span nr="" class="channeling-bar__text">Messenger</span></button>


<span nr="" class="channeling-bar__icon-wrapper channeling-bar__icon-wrapper--custom">
<img nr="" class="channeling-bar__custom-icon" src="https://nr1.s3.amazonaws.com/channelling/36D8D72/417A726/0/3/ic_contacts_chat_multi_48_2x.png"></span>
<span nr="" class="channeling-bar__text">Chatta con noi</span></button>



<span nr="" class="channeling-bar__icon-wrapper channeling-bar__icon-wrapper--custom">
<img nr="" class="channeling-bar__custom-icon" src="https://nr1.s3.amazonaws.com/channelling/36D8D72/417A726/0/1/ic_contacts_email_multi_48_2x.png"></span>
<span nr="" class="channeling-bar__text">Scrivici</span></button>
</div>
<div style= "border: 1px; solid #000">

<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2798.0072991682077!2d9.147808115973735!3d45.469656879100974!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x4786c17ab77db391%3A0x89914c2267854f1f!2sVia+Carlo+Ravizza%2C+26%2C+20149+Milano+MI!5e0!3m2!1sit!2sit!4v1524757024895" 
width="1000" height="500" frameborder="0" align=auto style="float:right; margin:2cm; margin-right: 10cm ;   " ></iframe>
<p style="margin: 2%; font-size:xx-large ">
<font face="Lucida Calligraphy"> Contatti:</font>	</p>
<p>
 <i style="margin:2%; ">Indirizzo: Via Carlo Ravizza, 26 </i>
<br>
 <i style="margin:2%; ">20149 Milano </i>
<br>
<i style="margin:2%; ">Sito: www.iobuy.com </i>
<br>
<i style="margin:2%; ">Tel. 02/5546464 Fax. 02/5546454 </i>
<br> 
<i style="margin:2%; ">E-mail: iobuy@gmail.com </i>
<br> 
<i style="margin:2%; ">C.F. e P.IVA 00125488756 </i>	
</p>
</div>
</div>
<br>
<div class="footer" style="background-color:black">


</div>
</body>
</html>

