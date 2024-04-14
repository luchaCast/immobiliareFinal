<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="org.generationitaly.immobiliare.entity.Immobile" %>
<%@page import="java.util.List" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Info annuncio</title>
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
  		 		<h2 class="title"> ANNUNCIO :) !  </h2>
  			 </div>
  		</div>
  		<div class="row">
  			<div class="col-4">
  				<%Immobile immobile = (Immobile)session.getAttribute("immobile");%>
  				<img alt="casa" src="<%=immobile.getFoto()%>">
  			</div>
  			<div class="col-8" style="margin-top: 150px">
  				<div class="annuncio">
  					<p>Provincia: <%=immobile.getIndirizzo().getProvincia()+" - "+ immobile.getIndirizzo().getCitta()%></p>
  					<p>Via: <%=immobile.getIndirizzo().getVia()+" " +immobile.getIndirizzo().getNumeroCivico()%></p>
  					<p>Locali: <%=immobile.getNumeroLocali()%></p>
  					<p>Prezzo: <%=immobile.getPrezzo()%></p>
  					<p>Superficie: <%=immobile.getSuperficie()%></p>
  				</div>
  			</div>
  		</div>
 	</div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
</body>
</html>