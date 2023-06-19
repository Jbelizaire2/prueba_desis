var Fn = {
	// Valida el rut con su cadena completa "XXXXXXXX-X"
	validaRut : function (rutCompleto) {
		rutCompleto = rutCompleto.replace("‐","-");
		if (!/^[0-9]+[-|‐]{1}[0-9kK]{1}$/.test( rutCompleto ))
			return false;
		var tmp 	= rutCompleto.split('-');
		var digv	= tmp[1]; 
		var rut 	= tmp[0];
		if ( digv == 'K' ) digv = 'k' ;
		
		return (Fn.dv(rut) == digv );
	},
	dv : function(T){
		var M=0,S=1;
		for(;T;T=Math.floor(T/10))
			S=(S+T%10*(9-M++%6))%11;
		return S?S-1:'k';
	}
}

// Validacion del formulario 
function Agregar() {
let cont=0;
   let host = window.location.href; 
     

let nombres=document.getElementById("nombres");
let alias =document.getElementById("alias");
 
let rut= document.getElementById("rut");
let email= document.getElementById("correo");
let region= document.getElementById("region");
let comuna= document.getElementById("comuna");
let candidato= document.getElementById("candidato");
let isCheckedWeb = document.getElementById('web').checked;
let isCheckedTv = document.getElementById('tv').checked;
let isCheckedRed = document.getElementById('red').checked;
let isCheckedAmigo = document.getElementById('amigo').checked;
let emailRegex = /^[-\w.%+]{1,64}@(?:[A-Z0-9-]{1,63}\.){1,125}[A-Z]{2,63}$/i;
let hasNumber = /\d/; 

if  (nombres.value==""){
  alert('Ingrese el nombre y apellido!');
  return false;
  } else if  (alias.value ==""){
  alert('Ingrese el alias');

  return false;
  }else if  (alias.value.length<5){
  alert('La cantidad de caracter minimo permitido de ser mayor a 5');

  return false;
  }else if  (!hasNumber.test(alias.value)){
    alert('Por lo menos el texto Alias debe lleva un numero');
  
    return false;
    }else if  (rut.value ==""){
    alert('Ingrese el RUT');
  return false;
  }else if (!Fn.validaRut( rut.value)){
		alert("El rut ingresado es válido ");
    return false;
	}
    else if  (email.value ==""){
    alert('Ingrese el correo electronico');
  return false;
  }else if (!emailRegex.test(email.value)) {

     alert("El correo ingresado es inválido ");
    } else if  (region.value ==""){
    alert('Seleccione la región');
  return false;
  }else if  (comuna.value ==""){
    alert('Seleccione la comuna');
  return false;
  }else if  (candidato.value ==""){
    alert('Seleccione el candidato');
  return false;
  }
  
  if(isCheckedWeb){
  cont++;
}
 if(isCheckedTv){
  cont++;
}
if(isCheckedRed){
  cont++;
}
if(isCheckedAmigo){
  cont++;
}

if(cont<2){
    alert("Debe elegir al menos dos opciones de:\nComo se enteró de Nosotros");
    return false;
}

const myArray = nombres.toString().split(" ");
let apellido=myArray[1];
if(apellido==''){
  alert('El apellido esta vacio!');
return false;
}
// funccion que realiza el registro del voto luego de la validacion
const url = host+"src/controlador/conUsuario.php";
  let data = {envios: "votar",nombres: nombres.value,alias: alias.value,rut:rut.value,email:email.value,
comuna:comuna.value,candidato:candidato.value,isCheckedWeb:isCheckedWeb,isCheckedTv:isCheckedTv,
isCheckedAmigo:isCheckedAmigo,isCheckedRed:isCheckedRed};
fetch(url,{
    method: 'POST',
    headers: {
"Content-Type": "application/json; charset=UTF-8"
},
    body:  JSON.stringify(data) 
})
    .then( respuesta => respuesta)
    .then( resultado => {
       
         
            console.log(resultado);
            alert(resultado.mensaje);
            location.reload();
      
    })
}

// funccion change del select de regiones que carga las comunas dependientes
const handleChange=(e)=>{
  var host = window.location.href; 
  let sleTex = e.options[e.selectedIndex].innerHTML;
  let selVal = e.value;
  
  
const url = host+"src/controlador/conUsuario.php";
  let data = {envios: "comunas",idregion: selVal};
  const select = document.querySelector("#comuna");
  fetch(url,{
        method: 'POST',
        headers: {
    "Content-Type": "application/json; charset=UTF-8"
  },
        body:  JSON.stringify(data) 
    })
        .then( respuesta => respuesta.json())
        .then( resultado => {
            resultado.forEach( comentario => {
              let nuevaOpcion = document.createElement("option");
        nuevaOpcion.value = comentario.idcomuna;
        nuevaOpcion.text = comentario.nombre;
        select.add(nuevaOpcion);
                //console.log(comentario)
            })
        })
  
}
  // Fetch API
  var host = window.location.href; 
     

const url = host+"src/controlador/conUsuario.php";
// funccion que recarga las regiones
 const consultarRegionesAPI= () => {
  let data2 = {envios: "regiones"};
  const select = document.querySelector("#region");
    fetch(url,{
        method: 'POST',
        headers: {
    "Content-Type": "application/json; charset=UTF-8"
  },
        body:  JSON.stringify(data2) 
    })
        .then( respuesta => respuesta.json())
        .then( resultado => {
            resultado.forEach( comentario => {
              let nuevaOpcion = document.createElement("option");
        nuevaOpcion.value = comentario.idregion;
        nuevaOpcion.text = comentario.nombre;
        select.add(nuevaOpcion);
                //console.log(comentario)
            })
        })
}
// funccion que recarga el combo candidatos
const consultaCandidatosAPI= () => {
  let data2 = {envios: "candidatos"};
  const select = document.querySelector("#candidato");
    fetch(url,{
        method: 'POST',
        headers: {
    "Content-Type": "application/json; charset=UTF-8"
  },
        body:  JSON.stringify(data2) 
    })
        .then( respuesta => respuesta.json())
        .then( resultado => {
            resultado.forEach( comentario => {
              let nuevaOpcion = document.createElement("option");
        nuevaOpcion.value = comentario.id;
        nuevaOpcion.text = comentario.nombre+" "+comentario.apellido+" Del Partido: "+comentario.partido;
        select.add(nuevaOpcion);
                //console.log(comentario)
            })
        })
}
consultarRegionesAPI();
consultaCandidatosAPI();