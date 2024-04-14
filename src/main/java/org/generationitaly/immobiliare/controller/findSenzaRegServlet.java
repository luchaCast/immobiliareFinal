package org.generationitaly.immobiliare.controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.util.List;

import org.generationitaly.immobiliare.entity.Immobile;
import org.generationitaly.immobiliare.repository.ImmobileRepository;
import org.generationitaly.immobiliare.repository.impl.ImmobileRepositoryImpl;


public class findSenzaRegServlet extends HttpServlet {
	private ImmobileRepository immobileRepository = new ImmobileRepositoryImpl();
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		
		String citta = request.getParameter("citta");
		List<Immobile> immobili = immobileRepository.findByCitta(citta);
		session.setAttribute("immobili", immobili);
		request.getRequestDispatcher("annunciSenzaRegistrazione.jsp").forward(request, response);
		
	}

}
