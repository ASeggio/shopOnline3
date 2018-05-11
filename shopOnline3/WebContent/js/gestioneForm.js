function cambioForm(){
	console.log(window.location.pathname);
	var indirizzo = window.location.href;
	var split = window.location.href.split('=');
	if(indirizzo.includes("form=registrazione")){
		//console.log('siamo su registrazione')
		var nuovoIndirizzo = split [0] + "=login";
		window.location.href = nuovoIndirizzo;
	} else if(indirizzo.includes("form=login")){
		var nuovoIndirizzo = split [0] + "=registrazione";
		//console.log('siamo su login')
		window.location.href = nuovoIndirizzo;
	}	
}
function validazioneForm() {
	var nome = document.getElementById('nome').value;
	var cognome = document.getElementById('cognome').value;
	var username = document.getElementById('username').value;
	var password = document.getElementById('password').value;
	var indirizzo = document.getElementById('indirizzo').value;
	
	var controllo = true;
	if(nome == "" & cognome == "" & username == "" & password == "" & indirizzo ==""){
		document.getElementById('nome').placeholder = 'Campo obbligatorio'
			document.getElementById('nome').classList.add('alert-danger');
			document.getElementById('cognome').placeholder = 'Campo obbligatorio'
			document.getElementById('cognome').classList.add('alert-danger');
		document.getElementById('username').placeholder = 'Campo obbligatorio'
		document.getElementById('username').classList.add('alert-danger');
		document.getElementById('password').placeholder = 'Campo obbligatorio'
		document.getElementById('password').classList.add('alert-danger');
		document.getElementById('indirizzo').placeholder = 'Campo obbligatorio'
			document.getElementById('indirizzo').classList.add('alert-danger');
		
		controllo = false;
	}else if (nome == "" & cognome == "" & username == "" & password == "" & indirizzo =="") {
		document.getElementById('nome').placeholder = 'Campo obbligatorio'
			document.getElementById('nome').classList.add('alert-danger');
			document.getElementById('cognome').classList.remove('alert-danger');
			document.getElementById('cognome').classList.add('alert-success');
		document.getElementById('username').placeholder = 'Campo obbligatorio'
		document.getElementById('username').classList.add('alert-danger');
		document.getElementById('password').classList.remove('alert-danger');
		document.getElementById('password').classList.add('alert-success');
		document.getElementById('indirizzo').classList.remove('alert-danger');
		document.getElementById('indirizzo').classList.add('alert-success');
		controllo = false;
	}else if (nome != "" & cognome != "" & username != "" & password == "" & indirizzo != "") {
		document.getElementById('nome').classList.remove('alert-danger');
		document.getElementById('nome').classList.add('alert-success');
		document.getElementById('cognome').placeholder = 'Campo obbligatorio'
		document.getElementById('cognome').classList.add('alert-danger');
		document.getElementById('username').classList.remove('alert-danger');
		document.getElementById('username').classList.add('alert-success');
		document.getElementById('password').placeholder = 'Campo obbligatorio'
		document.getElementById('password').classList.add('alert-danger');
		document.getElementById('indirizzo').placeholder = 'Campo obbligatorio'
			document.getElementById('indirizzo').classList.add('alert-danger');
		controllo = false;
	}	
	if(controllo == false){
		document.getElementById('alert').style.display = 'block';
	}
	return controllo;
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


function imageZoom(imgID, resultID) {
	  var img, lens, result, cx, cy;
	  img = document.getElementById(imgID);
	  result = document.getElementById(resultID);
	  /*create lens:*/
	  lens = document.createElement("DIV");
	  lens.setAttribute("class", "img-zoom-lens");
	  /*insert lens:*/
	  img.parentElement.insertBefore(lens, img);
	  /*calculate the ratio between result DIV and lens:*/
	  cx = result.offsetWidth / lens.offsetWidth;
	  cy = result.offsetHeight / lens.offsetHeight;
	  /*set background properties for the result DIV*/
	  result.style.backgroundImage = "url('" + img.src + "')";
	  result.style.backgroundSize = (img.width * cx) + "px " + (img.height * cy) + "px";
	  /*execute a function when someone moves the cursor over the image, or the lens:*/
	  lens.addEventListener("mousemove", moveLens);
	  img.addEventListener("mousemove", moveLens);
	  /*and also for touch screens:*/
	  lens.addEventListener("touchmove", moveLens);
	  img.addEventListener("touchmove", moveLens);
	  function moveLens(e) {
	    var pos, x, y;
	    /*prevent any other actions that may occur when moving over the image*/
	    e.preventDefault();
	    /*get the cursor's x and y positions:*/
	    pos = getCursorPos(e);
	    /*calculate the position of the lens:*/
	    x = pos.x - (lens.offsetWidth / 2);
	    y = pos.y - (lens.offsetHeight / 2);
	    /*prevent the lens from being positioned outside the image:*/
	    if (x > img.width - lens.offsetWidth) {x = img.width - lens.offsetWidth;}
	    if (x < 0) {x = 0;}
	    if (y > img.height - lens.offsetHeight) {y = img.height - lens.offsetHeight;}
	    if (y < 0) {y = 0;}
	    /*set the position of the lens:*/
	    lens.style.left = x + "px";
	    lens.style.top = y + "px";
	    /*display what the lens "sees":*/
	    result.style.backgroundPosition = "-" + (x * cx) + "px -" + (y * cy) + "px";
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
