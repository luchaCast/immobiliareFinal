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

public class annuncioSenzaRegServlet extends HttpServlet {
	private ImmobileRepository immobileRepository = new ImmobileRepositoryImpl();

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		int id = Integer.parseInt(request.getParameter("id"));
		Immobile immobile = immobileRepository.findById(id);
		HttpSession session = request.getSession();
		session.setAttribute("immobile", immobile);
		request.getRequestDispatcher("annuncioSenzaRegistrazione.jsp").forward(request, response);
	}

}
