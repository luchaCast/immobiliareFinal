package org.generationitaly.immobiliare.controller;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.util.concurrent.locks.ReentrantLock;

import org.generationitaly.immobiliare.entity.Utente;
import org.generationitaly.immobiliare.repository.UtenteRepository;
import org.generationitaly.immobiliare.repository.impl.UtenteRepositoryImpl;

public class Login extends HttpServlet {

	private UtenteRepository utenteRepository = new UtenteRepositoryImpl();

	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.getRequestDispatcher("login.jsp").forward(req, resp);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		System.out.println("servlet login");

		String username = request.getParameter("username");
		String password = request.getParameter("password");

		System.out.println(username + " " + password);

		Utente utente = utenteRepository.findByUsername(username);
		if (utente != null && utente.getPassword().equals(password)) {
			HttpSession session = request.getSession();
			session.setAttribute("utente", utente);
			session.setAttribute("username", username);
			request.getRequestDispatcher("index.jsp").forward(request, response);
		} else {
			System.out.println("sbagliato");
			request.setAttribute("erroreCredenziali", "Credenziali errate");
			request.getRequestDispatcher("login.jsp").forward(request, response);
		}
	}
}
