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


public class UpdateServlet extends HttpServlet {
	private ImmobileRepository immobileRepository = new ImmobileRepositoryImpl();
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		if(session.getAttribute("utente") == null) {
			response.sendRedirect("login.jsp");
			return;
		}
		int id = Integer.parseInt(request.getParameter("id"));
		Immobile immobile = immobileRepository.findById(id);
		request.setAttribute("immobile", immobile);
		List<Immobile> immobili = immobileRepository.findAll();
		session.setAttribute("immobili", immobili);
		request.getRequestDispatcher("updateAnnuncio.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int id = Integer.parseInt(request.getParameter("id"));
		int numeroLocali = Integer.parseInt(request.getParameter("locali"));
		int superficie = Integer.parseInt(request.getParameter("superficie"));
		double prezzo = Double.parseDouble(request.getParameter("prezzo"));
		String foto = request.getParameter("foto");
		String provincia = request.getParameter("provincia");
		String citta = request.getParameter("citta");
		String via = request.getParameter("via");
		String numeroCivico = request.getParameter("numeroCiv");
		String descrizione = request.getParameter("descrizione");

		Immobile immobile = immobileRepository.findById(id);
		immobile.setNumeroLocali(numeroLocali);
		immobile.setSuperficie(superficie);
		immobile.setPrezzo(prezzo);
		immobile.setFoto(foto);
		immobile.getIndirizzo().setProvincia(provincia);
		immobile.getIndirizzo().setCitta(citta);
		immobile.getIndirizzo().setVia(via);
		immobile.getIndirizzo().setNumeroCivico(numeroCivico);
		immobile.setDescrizione(descrizione);
		
		immobileRepository.update(immobile);
		response.sendRedirect("annunci.jsp");
	}

}
