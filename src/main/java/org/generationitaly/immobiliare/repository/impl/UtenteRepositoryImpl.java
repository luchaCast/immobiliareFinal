package org.generationitaly.immobiliare.repository.impl;

import java.util.List;

import org.generationitaly.immobiliare.entity.Utente;
import org.generationitaly.immobiliare.repository.UtenteRepository;

import jakarta.persistence.EntityManager;
import jakarta.persistence.EntityTransaction;
import jakarta.persistence.PersistenceException;
import jakarta.persistence.TypedQuery;

public class UtenteRepositoryImpl extends JpaRepositoryImpl<Utente, Integer> implements UtenteRepository {

	public Utente findByUsername(String username) {
		Utente utente = null;
		EntityManager em = null;
		EntityTransaction tx = null;
		try {
			em = emf.createEntityManager();
			tx = em.getTransaction();
			tx.begin();
			TypedQuery<Utente> query = em.createQuery("select u from Utente u where u.username = :username",
					entityClass);
			query.setParameter("username", username);
			List<Utente> utenti = query.getResultList();
			utente = !utenti.isEmpty() ? utenti.get(0) : null;
			tx.commit();
		} catch (Exception e) {
			System.err.println(e.getMessage());
			if (tx != null && tx.isActive())
				tx.rollback();
		} finally {
			if (em != null)
				em.close();
		}
		return utente;
	}
}
