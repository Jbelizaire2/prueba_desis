<?php
$_POST = json_decode(file_get_contents("php://input"), true);

require_once("../modelo/clsUsers.php");


$users = new Users();


$envio = $_POST["envios"];





//var_dump($envio);
if ($envio == "regiones") {
	$datos = $users->getRegiones();

	echo $datos;
}

if ($envio == "comunas") {
	$idregion = $_POST["idregion"];
	$datos = $users->getComunas($idregion);

	echo $datos;
}

if ($envio == "candidatos") {
	$datos = $users->getCandidatos();

	echo $datos;
}

if ($envio == "votar") {
	$datos = $_POST;

	$nombre = $_POST["nombres"];
	$alias = $_POST["alias"];
	$rut = $_POST["rut"];
	$mail = $_POST["email"];
	$comuna = $_POST["comuna"];
	$candidato = $_POST["candidato"];
	$medios = "";
	if ($_POST["isCheckedWeb"] == true) {
		$medios .= "Web";
	}
	 if ($_POST["isCheckedTv"] == true) {
		$medios .= "  TV";
	} 
	if ($_POST["isCheckedAmigo"] == true) {
		$medios .= "  Amigo";
	} 
	 if ($_POST["isCheckedRed"] == true) {
		$medios .= "  Red";
	}
	$datos = $users->setVotantes($nombre, $alias, $rut, $mail, $comuna, $candidato, $medios);
	echo $datos;
}







?>