//gestioneForm.js
function cambioForm(){
	console.log(window.location.href);
	var indirizzo = window.location.href;
	var split = window.location.href.split('=');
	if(indirizzo.includes("form=registrazione")){
		console.log('siamo su registrazione');
		var nuovoIndirizzo = split[0] + "=login";
		//console.log(nuovoIndirizzo);
		window.location.href = nuovoIndirizzo;
	} else if(indirizzo.includes("form=login")){
		console.log('siamo su login');
		var nuovoIndirizzo = split[0] + "=registrazione";
		//console.log(nuovoIndirizzo);
		window.location.href = nuovoIndirizzo;
	}
}

function show() {
    var p = document.getElementById('pwd');
    p.setAttribute('type', 'text');
}

function hide() {
    var p = document.getElementById('pwd');
    p.setAttribute('type', 'password');
}

var pwShown = 0;

document.getElementById("eye").addEventListener("click", function () {
    if (pwShown == 0) {
        pwShown = 1;
        show();
    } else {
        pwShown = 0;
        hide();
    }
}, false);

function myFunction() {
    var x = document.getElementById("password");
    if (x.type === "password") {
        x.type = "text";
    } else {
        x.type = "password";
    }
}



/*function controlloDate(){
	var dataInizio = new Date(document.getElementById('dataInizio').value);
	var dataFine = new Date(document.getElementById('dataFine').value);
	console.log(dataInizio + ' - ' + dataFine);
	if(dataFine <= dataInizio) {
		document.getElementById('alertDate').style.display = "block";
		return false;
	} else {
		return true;
	} 
} */