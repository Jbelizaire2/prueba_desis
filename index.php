<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Formulario de Votación</title>
    
   
  
<style>
.custom { width: 300px !important; }
.corps {
  
  background-image: url("src/public/imagen/fondo-e-v_2.png");

  height: auto;
  width:100%;
  position: relative;
  background-color: #fff;
  background-repeat: no-repeat;
  background-size: cover;
  
}
#msgerror {
	font-size:1.4em;
}
</style>
</head> 
<body class='corps' >
    
<center>
 <div class="form-group">
  <h1>FORMULARIO DE VOTACIÓN</h1>
 
  

      <div class="login-box-body" style="border-style: groove; width:70%;" >
        <p class="login-box-msg"><h4>FORMULARIO DE VOTACIÓN </h4></p>

        <form method="post" action="#" >
		<table >
		<tr>
                      <td> Nombre Y Apellido:</td><td>  <input type="text" class="form-control" name="nombres" id="nombres"  placeholder="Nombres"></td>
                             
                 </tr>
           <tr><td> Alias: </td><td> <input type="text" class="form-control" placeholder="Alias" name="alias" id="alias"></td> </tr>
           <tr><td> RUT: </td><td> <input type="text" class="form-control" placeholder="RUT" name="rut" id="rut"></td> </tr>
           <tr><td> Email: </td><td> <input type="email" class="form-control" placeholder="Correo" name="correo" id="correo"></td> </tr>
           <tr><td> Región: </td><td> <select id='region' class="form-control" name='region' onChange='handleChange(this)' >
                 <option value=''>Seleccione Región</option>
             </select></td> </tr>
             <tr><td> Comuna: </td><td> <select id='comuna' class="form-control" name='comuna' >
                 <option value=''>Seleccione Comuna</option>
             </select></td> </tr>
             <tr><td> Candidato: </td><td> <select id='candidato' class="form-control" name='candidato' >
                 <option value=''>Seleccione Candidato</option>
             </select></td> </tr>
             <tr><td> Como se enteró de Nosotros: </td><td> <label class="mda-radio">
                     <input  name="web"  type="checkbox" id="web" style="width:30px;height:25px;"  value="web"  />
                     <em class="bg-red-500"></em>Web</label>&nbsp;&nbsp;&nbsp;
               
                  <label class="mda-radio">
                     <input  name="tv" type="checkbox" id="tv" style="width:30px;height:25px;" value="tv" />
                     <em class="bg-pink-500"></em>TV</label>
                     <label class="mda-radio">
                     <input  name="red"  type="checkbox" id="red" style="width:30px;height:25px;"  value="red"  />
                     <em class="bg-red-500"></em>Redes Sociales</label>&nbsp;&nbsp;&nbsp;
               
                  <label class="mda-radio">
                     <input  name="amigo" type="checkbox" id="amigo" style="width:30px;height:25px;" value="amigo" />
                     <em class="bg-pink-500"></em>Amigo</label>
                    </td> </tr>
          
            
                  <tr><td>  <button type="button" class="btn btn-primary btn-block btn-flat" name="votar" onclick="Agregar()" >Votar</button></td></tr>
                
                  <p>&nbsp;</p>
                 <p class="text-info" id="msgerror"></p>
           
		</table>
        
        </form>
      </div>
    
</div>
</center>
<script src="./index.js"></script>
</body>   
</html>
