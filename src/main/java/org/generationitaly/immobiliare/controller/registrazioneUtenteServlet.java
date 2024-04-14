package org.generationitaly.immobiliare.controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

import org.generationitaly.immobiliare.entity.Utente;
import org.generationitaly.immobiliare.repository.UtenteRepository;
import org.generationitaly.immobiliare.repository.impl.UtenteRepositoryImpl;

public class registrazioneUtenteServlet extends HttpServlet {
	private UtenteRepository utenteRepository = new UtenteRepositoryImpl();

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		String nome = request.getParameter("nome");
		String cognome = request.getParameter("cognome");
		String email = request.getParameter("email");
		int eta = Integer.parseInt(request.getParameter("eta"));
		String telefono = request.getParameter("telefono");

		Utente utente = new Utente();
		utente.setUsername(username);
		utente.setPassword(password);
		utente.setEmail(email);
		utente.setNome(nome);
		utente.setCognome(cognome);
		utente.setEta(eta);
		utente.setTelefono(telefono);

		utenteRepository.save(utente);
		response.sendRedirect("login");
	}

}
