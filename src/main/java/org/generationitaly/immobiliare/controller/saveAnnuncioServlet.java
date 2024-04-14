package org.generationitaly.immobiliare.controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;

import org.generationitaly.immobiliare.entity.Immobile;
import org.generationitaly.immobiliare.entity.Indirizzo;
import org.generationitaly.immobiliare.repository.ImmobileRepository;
import org.generationitaly.immobiliare.repository.impl.ImmobileRepositoryImpl;

public class saveAnnuncioServlet extends HttpServlet {
	private ImmobileRepository immobileRepository = new ImmobileRepositoryImpl();

	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		HttpSession session = req.getSession();
		if (session.getAttribute("utente") == null) {
			resp.sendRedirect("login.jsp");
			return;
		}
		req.getRequestDispatcher("SaveAnnuncio.jsp").forward(req, resp);

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String provincia = request.getParameter("provincia");
		String citta = request.getParameter("citta");
		String via = request.getParameter("via");
		String numeroCiv = request.getParameter("numeroCiv");
		String locali = request.getParameter("locali");
		String superficie = request.getParameter("superficie");
		String prezzo = request.getParameter("prezzo");
		String foto = request.getParameter("foto");
		String descrizione = request.getParameter("descrizione");

		Indirizzo indirizzo = new Indirizzo();
		indirizzo.setProvincia(provincia);
		indirizzo.setCitta(citta);
		indirizzo.setVia(via);
		indirizzo.setNumeroCivico(numeroCiv);
		Immobile immobile = new Immobile();
		immobile.setNumeroLocali(Integer.parseInt(locali));
		immobile.setSuperficie(Integer.parseInt(superficie));
		immobile.setPrezzo(Double.parseDouble(prezzo));
		immobile.setFoto(foto);
		immobile.setIndirizzo(indirizzo);
		immobile.setDescrizione(descrizione);

		immobileRepository.save(immobile);
		response.sendRedirect("index.jsp");

	}

}
