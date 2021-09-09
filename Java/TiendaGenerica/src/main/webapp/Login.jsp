<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<title>Login</title>
	 
	<link rel="stylesheet" type="text/css" href="assets/css/Iniciar.css">
	<link href="https://fonts.googleapis.com/css?family=Poppins:600&display=swap" rel="stylesheet"/>
	<script src="https://kit.fontawesome.com/a81368914c.js"></script>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta charset="ISO-8859-1">
  <script>       

       function sololetras(l) {

        key=l.keyCode || l.which;

        teclado=String.fromCharCode(key);

        letras="qwertyuiopasdfghjklÃ±zxcvbnm QWERTYUIOPASDFGHJKLÃ‘ZXCVBNM";

        especiales="s";

        teclado_especial=false; 

        for( var i in especiales){

          if(key==especiales[i]){
            teclado_especial=true;
          }
        } 

        if (letras.indexOf(teclado)==- 1 && !teclado_especial) {
          return false;
        }
      }

    </script>
</head>
<body>
	<img class="wave" src="assets/img/Logo_Log.png">
	<div class="container">
		<div class="img">
			<img src="assets/img/bg.svg">
		</div>
		<div class="login-content">
			<form method="post" action="LoginServlet">
				<img src="assets/img/avatar.svg">
				<h2 class="title">Bienvenido</h2>
           		<div class="input-div one">
           		   <div class="i">
           		   	<i class="fas fa-user"></i>
           		   </div>
           		   <div class="div">
        		   	<h5>Usuario</h5>
        		   	<input type="text" name="usuario" onkeypress="return sololetras(event)"  class="input" required="">
           		   </div>
           		</div>
           		<div class="input-div pass">
           		   <div class="i">
           		    	<i class="fas fa-lock"></i>
           		   </div>
           		   <div class="div">
           		    	<h5>Contrase�a</h5>
           		    	<input type="password" name="password" class="input" required="">
            	   </div>
            	</div>
            	
              <button type="submit" class="btn" value="Volver"><span>Ingresar</span></button>
              <button class="btn" value="Volver"><span>Volver</span></button>
            </form>
        </div>
    </div>
    <script type="text/javascript" src="assets/js/main.js"></script>
</body>
</html>
