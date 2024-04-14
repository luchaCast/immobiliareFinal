<%@page import="org.generationitaly.immobiliare.entity.Utente"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Nuovo annuncio</title>
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
			.bg-secondary.bg-gradient
							 {
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
	<%@include file="nav.jsp" %>
	<div class="container">
  		<div class="row">
  			<div class="col">
  		 		<h2 class="title"> NUOVO ANNUNCIO :) !  </h2>
  			 </div>
  		</div>
  	<div class="row">
  			<div class="col-6">
  					<form action="save" method="post">
	  					<div class="form-floating mb-3">
						  <input type="text" class="form-control" id="inputProvincia" placeholder="RM" size=2 name="provincia">
						  <label for="inputProvincia">Provincia: </label>
						</div>
						<div class="form-floating mb-3">
						  <input type="text" class="form-control" id="inputCitta" placeholder="Roma" name="citta">
						  <label for="inputCitta">Citta: </label>
						</div>
						<div class="form-floating mb-3">
							<input type="text" class="form-control" id="inputVia" placeholder="RM" name="via">
							<label for="inputVia">Via: </label>
						</div>
						<div class="form-floating mb-3">
						  <input type="text" class="form-control" id="inputNumeroCivico" placeholder="1230" name="numeroCiv">
						  <label for="inputNumeroCivico">Numero civico: </label>
						</div>
						<div class="form-floating mb-3">
						  <input type="number" class="form-control" id="inputLocali" placeholder="2" name="locali">
						  <label for="inputNumeroLocali">Locali: </label>
						</div>
						<div class="form-floating mb-3">
						  <input type="number" class="form-control" id="inputSuperficie" placeholder="50" name="superficie">
						  <label for="inputSuperficie">Superficie: </label>
						</div>
						<div class="form-floating mb-3">
						  <input type="number" class="form-control" id="inputPrezzo" placeholder="25.000" name="prezzo">
						  <label for="inputPrezzo">Prezzo: </label>
						</div>
						<div class="form-floating mb-3">
						  <input type="text" class="form-control" id="inputFoto" placeholder="url foto" name="foto">
						  <label for="inputFoto">URL foto: </label>
						</div>
						<div class="form-floating mb-3">
						  <textarea class="form-control" id="inputDescrizione" placeholder="Descrizione" style="height: 100px" name="descrizione"></textarea>
						  <label for="inputDescrizione">Descrizione: </label>
						</div>
						<div class="col-auto">
						    <button type="submit" class="btn btn-success mb-3" onclick="salva()">Salva</button>
						    <script type="text/javascript">
						    	function salva(){
						    		alert("Aggiunto con successo!")
						    	}
						    </script>
						</div>
  				</form>
  			</div>
  		</div>
  </div>
	
</body>
</html>