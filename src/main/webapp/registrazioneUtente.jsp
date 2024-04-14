<!DOCTYPE html>
<%@page import="org.generationitaly.immobiliare.entity.Utente"%>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Registrati</title>
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
		<link rel="preconnect" href="https://fonts.googleapis.com">
		<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
		<link href="https://fonts.googleapis.com/css2?family=Nanum+Myeongjo&family=Rajdhani:wght@300;400;500;600;700&display=swap" rel="stylesheet">
		<style type="text/css">
			body{
				  font-family: "Nanum Myeongjo", serif;
			}
			.title{
				text-align: center;
				font-weight: bold;
			}
			.bg-secondary.bg-gradient{
   			
			}	
			a{
				color:black;
			}
			a:hover{
				color:green;
			}
			.annuncio{
				font-size: 25px;
				text-align: left;	
			}			
		
		</style>	
	</head>
	<body>
	<div class="container">
		<div class="row">
			<div class="title">
				<h2>REGISTRATI </h2>
			</div>
		</div>
				<form class="row g-3" action="registrazione" method="post">
				  <div class="col-md-6">
				    <label for="inputUsername" class="form-label">Username</label>
				    <input type="text" class="form-control" id="inputUsername" name="username">
				  </div>
				  <div class="col-md-6">
				    <label for="inputPassword" class="form-label">Password</label>
				    <input type="text" class="form-control" id="inputPassword" name="password" size=8>
				  </div>
				  <div class="col-12">
				    <label for="inputEmail" class="form-label">Email</label>
				    <input type="email" class="form-control" id="inputEmail" placeholder="esempio@gmail.com" name="email">
				  </div>
				 <div class="col-md-6">
				    <label for="inputNome" class="form-label">Nome</label>
				    <input type="text" class="form-control" id="inputNome" name="nome">
				  </div>
				  <div class="col-md-6">
				    <label for="inputCognome" class="form-label">Cognome</label>
				    <input type="text" class="form-control" id="inputCognome" name="cognome">
				  </div>
				  <div class="col-md-4">
				    <label for="inputTelefono" class="form-label">Telefono</label>
				    <input type="text" class="form-control" id="inputTelefono" placeholder="(+39) 347 123 1234" name="telefono">
				  </div>
				  <div class="col-md-4">
				    <label for="inputEta" class="form-label">Eta</label>
				    <input type="text" class="form-control" id="inputEta" name="eta">
				  </div>
				  <div class="col-12">
				  <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#exampleModal"> Registrati </button>
							<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
							  <div class="modal-dialog">
							    <div class="modal-content">
							      <div class="modal-body">
							        Vuoi confermare i dati?
							      </div>
							      <div class="modal-footer">
							        <button type="button" class="btn btn-success" data-bs-dismiss="modal">Non ancora</button>
							        <button type="submit" class="btn btn-success">Accetta</button>
							      </div>
						    </div>
						  </div>
					</div>
				</div>
			</form>
	</div>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
	</body>
</html>