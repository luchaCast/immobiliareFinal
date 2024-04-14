<%@page import="org.generationitaly.immobiliare.entity.Utente"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%Utente utente = (Utente)session.getAttribute("utente");%>
 
<% String username = (String)session.getAttribute("username");%>
<%=username%>
