<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>LOGIN </title>
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
		<link rel="preconnect" href="https://fonts.googleapis.com">
		<link rel="preconnect" href="https://fonts.gstatic.com">
		<link href="https://fonts.googleapis.com/css2?family=Rajdhani:wght@300;400;500;600;700&display=swap" rel="stylesheet">
		<style type="text/css">
			body{
				  font-family: "Nanum Myeongjo", serif;
			}		
			.senzaR {
				font-size: 12px;
			}
			
			.errore{
				font-size: 15px; color: red;
			}
		</style>	
	</head>
	
	
	<body>
	<div class="container">
		<div class="row">
		<div class="conteiner-fluid">
			<img src="https://cdn-icons-png.freepik.com/512/8395/8395475.png" alt="Logo" width="30" height="24" class="d-inline-block align-text-top">
		</div>
		</div>
		<div class=row>
			<div class="col-6" style="margin-top: 200px; margin-left: 300px;">
			<h2 style="text-align:center; font-weight: bold;">LOGIN </h2>
				<form action="login" method="post">
					<div class="form-floating mb-3">
						  <input type="text" class="form-control" id="usernameInput" placeholder="iltuonome" name="username" required="required">
						  <label for="usernameInput">Username </label>
					</div>
					<div class="form-floating">
						  <input type="password" class="form-control" id="passwordInput" placeholder="Password" name="password" required="required">
						  <label for="passwordInput">Password</label>
					</div>
					<%Object errore = request.getAttribute("erroreCredenziali"); 									%>
					<%if (errore != null){ %>
						<p class="errore"><%=errore%></p> 
					<%}%>	
					<div style="margin-top: 30px" >
						<button type="submit" class="btn btn-success w-100 py-2"> Login </button>
					</div>
					<%if (errore!= null){ %>
					<div class="container">
						<div class="row" style="margin-top: 30px; text-align: center;">
							<div class="col">
							<a href="indexSR.jsp" class="btn-group w-100 py-2 btn btn-success">Continua senza registrazione	</a>
							</div>
							<div class="col">
								<a href="registrazioneUtente.jsp" class="btn-group w-100 py-2 btn btn-success" >Registrati</a>  
							</div>	
						</div>
					</div>				 
					<%} %>
				</form>
			</div>
		</div>
	</div>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
	</body>
</html>