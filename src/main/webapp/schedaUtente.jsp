<!DOCTYPE html>
<%@page import="org.generationitaly.immobiliare.entity.Utente"%>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Scheda utente</title>
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
<%@include file="nav.jsp" %>
	<div class="container">
		<div class="row">
			<div class="title" style="margin-bottom: 30px;">
				<h2>INFORMAZIONE PERSONALE </h2>
			</div>
		</div>
	    <div class="row">
      <div class="col-lg-4">
        <div class="card mb-4">
          <div class="card-body text-center">
            <img src="https://mdbcdn.b-cdn.net/img/Photos/new-templates/bootstrap-chat/ava3.webp" alt="avatar"
              class="rounded-circle img-fluid" style="width: 150px;">
            <h5 class="my-3"><%=utente.getUsername() %></h5>
            <p class="text-muted mb-1">Administratore</p>
            <div class="d-flex justify-content-center mb-2">
              <button type="button" data-mdb-button-init data-mdb-ripple-init class="btn btn-primary">Follow</button>
              <button type="button" data-mdb-button-init data-mdb-ripple-init class="btn btn-outline-primary ms-1">Message</button>
            </div>
          </div>
        </div>
      </div>
      <div class="col-lg-8">
        <div class="card mb-4">
          <div class="card-body">
            <div class="row">
              <div class="col-sm-3">
                <p class="mb-0">Nome completo</p>
              </div>
              <div class="col-sm-9">
                <p class="text-muted mb-0"><%=utente.getNome()+" "+utente.getCognome()%> </p>
              </div>
            </div>
            <hr>
            <div class="row">
              <div class="col-sm-3">
                <p class="mb-0">Email</p>
              </div>
              <div class="col-sm-9">
                <p class="text-muted mb-0"><%=utente.getEmail() %></p>
              </div>
            </div>
            <hr>
            <div class="row">
              <div class="col-sm-3">
                <p class="mb-0">Telefono</p>
              </div>
              <div class="col-sm-9">
                <p class="text-muted mb-0"><%=utente.getTelefono()%></p>
              </div>
            </div>
            <hr>
            <div class="row">
              <div class="col-sm-3">
                <p class="mb-0">Eta</p>
              </div>
              <div class="col-sm-9">
                <p class="text-muted mb-0"><%=utente.getEta()%></p>
              </div>
            </div>
            <hr>
            <div class="row">
              <div class="col-sm-3">
                <p class="mb-0">Indirizzo</p>
              </div>
              <div class="col-sm-9">
                <p class="text-muted mb-0">..da compilare..</p>
              </div>
            </div>
          </div>
        </div>
		</div>
	</div>
</div>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
	</body>
</html>