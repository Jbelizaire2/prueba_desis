<?php

//archivo de conexion a la base de datos
include_once("conf.php");

//Clase administrativo
class Users {
    		 
    public $server ,  $user, $pass, $bd, $con;
  
   private $db;
      //conexion con la base de datos a traves de PDO
    public function __construct() {
        $this->pass=PASSWORD;
        $this->user=USER;
        $this->server=HOST;
        $this->bd=BD;
        $this->usuarios = array();
        $this->db = new PDO('mysql:host=;dbname='.$this->bd, $this->user, $this->pass);
    }
//clase de configuracion mysql utf8
    private function setNames() {
        return $this->db->query("SET NAMES 'utf8'");
    }

  
//funccion que administra los votos revisa y guardar 
    public function setVotantes($nombre, $alias,$rut,$mail,$comuna,$candidato,$medios) {

        self::setNames();
        try {  
            $this->db->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
          
            $this->db->beginTransaction();

            $sql="SELECT * FROM tpersonas WHERE rut=:rut";
            $stmt = $this->db->prepare($sql);
            $stmt->execute(['rut' => $rut]);
            $res = $stmt->fetchAll();
            $cant=count($res);
            if($cant==0){
                $porciones = explode(" ", $nombre);
                $primer_nombre=$porciones[0];
                $apellido=$porciones[1];
            //Aqui se procede al registro del nuevo votante
            $sql2="INSERT INTO tpersonas(rut, nombre, apellido,correo) VALUES ('$rut','$primer_nombre','$apellido','$mail')";
            $this->db->query($sql2);
            $id = $this->db->lastInsertId();
            }else{

                $id=$res[0]["idpersona"];
            }
            $sql3="SELECT * FROM tvotantes WHERE id_persona=:id";
            $stmt = $this->db->prepare($sql3);
            $stmt->execute(['id' => $id]);
            $res1 = $stmt->fetchAll();
            $cant1=count($res1);
            if ($cant1==0){
                $sql4="INSERT INTO tvotantes(id_persona, id_comuna, id_candidato,medios) VALUES ('$id','$comuna','$candidato','$medios')";
                $this->db->query($sql4);
                $mensaje="Voto emitido con exito";
            }else{

                $mensaje="Usted ya emitió su voto";
            }
            $datos1=['mensaje' => $mensaje, 'id'=>$id];
            $datos = json_encode($datos1, true);
                $this->db->commit();
                return $datos;
            
            
          } catch (Exception $e) {
            $this->db->rollBack();
            return $e->getMessage();
          }
      
    }
    //funccion que devuelve las regiones que se muestre en el combo inicial
    public function getRegiones() {

        self::setNames();
        $sql = "SELECT * FROM tregiones ORDER BY nombre";
	     $stmt =  $this->db->query($sql); 
          $regiones = $stmt->fetchAll(PDO::FETCH_ASSOC);
		  $datos = json_encode($regiones, true);
        return $datos;
    }
     //funccion que devuelve las comunas depende del region seleccionado que se muestre en el combo inicial
    public function getComunas($idregion) {

        self::setNames();
        $sql = "SELECT * FROM tcomunas WHERE idregion='$idregion' ORDER BY nombre ";
	     $stmt =  $this->db->query($sql); 
          $comunas = $stmt->fetchAll(PDO::FETCH_ASSOC);
		  $datos = json_encode($comunas, true);
        return $datos;
    }
     //funccion que devuelve los candidatos que se muestre en el combo inicial
  
    public function getCandidatos() {

        self::setNames();
        $sql = "SELECT c.partido,c.id, p.rut,p.nombre,p.apellido FROM tcandidatos AS c LEFT JOIN tpersonas AS p ON c.id_persona=p.idpersona WHERE c.estatus='1' ORDER BY p.nombre";
	     $stmt =  $this->db->query($sql); 
          $candidatos = $stmt->fetchAll(PDO::FETCH_ASSOC);
		  $datos = json_encode($candidatos, true);
        return $datos;
    }
}

 ?>