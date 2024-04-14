<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
	<nav class="navbar navbar-expand-lg bg-body-tertiary .bg-secondary.bg-gradient">
  			<div class="container-fluid">
  			  	 <img src="https://cdn-icons-png.freepik.com/512/8395/8395475.png" alt="Logo" width="30" height="24" class="d-inline-block align-text-top">
    			<a class="navbar-brand" href="index.jsp">IMMOBILIARE </a>
   				<button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
      			<span class="navbar-toggler-icon"></span>
  			 </button>
    		<div class="collapse navbar-collapse" id="navbarText">
				<ul class="navbar-nav me-auto mb-2 mb-lg-0">
        		<li class="nav-item">
         			<a class="nav-link active" aria-current="page" href="index.jsp">Home</a>
       			</li>
       			<li class="nav-item">
         			<a class="nav-link" aria-current="page" href="save">Nuovo annuncio</a>
       			</li>
       			<li class="nav-item">
         			<a class="nav-link" aria-current="page" href="annunci-servlet">Annunci</a>
       			</li>
	      	</ul>
	      	 <a href="schedaUtente.jsp"><b><%@include file="utente.jsp" %></b></a> 
 			 <form class="d-flex" action="Logout" method="post">
      			<button class="btn btn-danger" type="submit" style="margin-left: 10px;">Logout</button>
   			  </form>
	    </div>
	  </div>
	</nav>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
	