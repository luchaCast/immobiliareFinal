<%@page import="org.generationitaly.immobiliare.repository.impl.ImmobileRepositoryImpl"%>
<%@page import="org.generationitaly.immobiliare.repository.ImmobileRepository"%>
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
			.bg-secondary.bg-gradient {
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
  	<%@include file="navSR.jsp" %>
	<div class="container">
  		<div class="row">
  			<div class="col">
  		 		<h2 class="title"> ANNUNCI VENDITA ! </h2>
  			 </div>
  			<div style="text-align: right; font-size: 20px;">
  				<%List<Immobile> immobili =(List<Immobile>)session.getAttribute("immobili");%>
  				<p><b>Risultati: <%= immobili.size()%></b></p>
  			</div>	
  		</div>
  		<div class="row">
  			<div class="col-8" style="margin-bottom: 25px;">
  				<form action="find-annuncio-senzaR" method="get">
  					<input type="text" name="citta" placeholder="es. Roma" class="form-control">
  					<button type="submit" class="btn btn-success">Ricerca</button>
  				</form>
  		</div>
  			<div class="row">
  			<div class="col-10">
  			<% if (immobili.isEmpty()) { %>
				<h3>Nessun immobile presente</h3>
				<% } else {
					for (Immobile immobile : immobili) { %>
  			<div style="margin-bottom: 15px">
  				<div class="card mb-3" style="max-width: 540px;">
				<div class="row g-0">
					<div class="col-4">
						<img alt="casa" src="<%=immobile.getFoto()%>" alt="casa" height="150px" width="150px">
					  </div>
					<div class="col-md-8">
					<div class="card-body">
					<h3 class="card-title"><%=immobile.getPrezzo()+ " euro"%></h3>
					    <h5 class="card-title">
					     <a href="annuncio?id=<%=immobile.getId()%>"><b>Via: </b><%=immobile.getIndirizzo().getVia()%> <%=immobile.getIndirizzo().getNumeroCivico()%>, 
						            <%=immobile.getIndirizzo().getProvincia()%> <%=immobile.getIndirizzo().getCitta()%></a>   </h5>
						   <p class="card-text"><small class="text-body-secondary"><%=immobile.getDescrizione()%></small></p>
					     <p class="card-text"><b>Locali: </b><%=immobile.getNumeroLocali()%> <br>
						<b>Superficie: </b><%=immobile.getSuperficie()%> m2 <br>
						</div>
				    </div>
				  </div>
				</div>		
  			</div>  					
  				<%}%>
  			<%}%>
  			</div>
  		</div>
  				
  		</div>
 	</div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
</body>
</html>