package org.generationitaly.immobiliare.controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;

import org.generationitaly.immobiliare.entity.Immobile;
import org.generationitaly.immobiliare.repository.ImmobileRepository;
import org.generationitaly.immobiliare.repository.impl.ImmobileRepositoryImpl;

public class annuncioServlet extends HttpServlet {
	private ImmobileRepository immobileRepository = new ImmobileRepositoryImpl();
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		if(session.getAttribute("utente") == null) {
			response.sendRedirect("login.jsp");
			return;
		}
		
		int id = Integer.parseInt(request.getParameter("id"));
		Immobile immobile = immobileRepository.findById(id);
		
		
		session.setAttribute("immobile", immobile);
		request.getRequestDispatcher("annuncio.jsp").forward(request, response);
	}

	
	

}
