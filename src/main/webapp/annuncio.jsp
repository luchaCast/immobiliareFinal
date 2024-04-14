<%@page import="org.generationitaly.immobiliare.entity.Utente"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="org.generationitaly.immobiliare.entity.Immobile" %>
<%@page import="java.util.List" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Annunci vendita</title>
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
			.navbar.bg-light {
   			 background-color: rgba(235, 255, 230)!important;
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
  		 		<h2 class="title"> ANNUNCIO :) !  </h2>
  			 </div>
  		</div>
  		<div class="row">
  			<div class="col-6" style="margin-top: 150px;">
  				<%Immobile immobile = (Immobile)session.getAttribute("immobile");%>
  				<img alt="casa" src="<%=immobile.getFoto()%>">
  			</div>
  			<div class="col-6" style="margin-top: 150px">
  				<div class="annuncio">
  					<p>Provincia: <%=immobile.getIndirizzo().getProvincia()+" - "+ immobile.getIndirizzo().getCitta()%></p>
  					<p>Via: <%=immobile.getIndirizzo().getVia()+" " +immobile.getIndirizzo().getNumeroCivico()%></p>
  					<p>Locali: <%=immobile.getNumeroLocali()%></p>
  					<p>Prezzo: <%=immobile.getPrezzo()%></p>
  					<p>Superficie: <%=immobile.getSuperficie()%></p>
  					<p>Descrizione: <%=immobile.getDescrizione() %></p>
  				</div>
  				<form action="delete" method="post">
					<input type="hidden" value="<%= immobile.getId()%>" name="id">
			  		 <button type="button" class="btn btn-success" data-bs-toggle="modal" data-bs-target="#exampleModal"> Elimina </button>
							<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
							  <div class="modal-dialog">
							    <div class="modal-content">
							      <div class="modal-header">
							        <h1 class="modal-title fs-5" id="exampleModalLabel">ATTENZIONE </h1>
							        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
							      </div>
							      <div class="modal-body">
							        Vuoi eliminare l'annuncio?
							      </div>
							      <div class="modal-footer">
							        <button type="button" class="btn btn-success" data-bs-dismiss="modal">Close</button>
							        <button type="submit" class="btn btn-success">Accetta</button>
							      </div>
						    </div>
						  </div>
					</div>
				</form>
				<br>
				<form action="update" method="get">
					<input type="hidden" value="<%= immobile.getId()%>" name="id">
			  		<button type="submit" class="btn btn-success">Update</button>
				</form>
  			</div>
  		</div>
 	</div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
</body>
</html>