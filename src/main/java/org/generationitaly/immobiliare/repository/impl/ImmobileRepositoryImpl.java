package org.generationitaly.immobiliare.repository.impl;

import java.util.List;

import org.generationitaly.immobiliare.entity.Immobile;
import org.generationitaly.immobiliare.repository.ImmobileRepository;

import jakarta.persistence.EntityManager;
import jakarta.persistence.EntityTransaction;
import jakarta.persistence.TypedQuery;

public class ImmobileRepositoryImpl extends JpaRepositoryImpl<Immobile, Integer> implements ImmobileRepository{

	public List<Immobile> findByCitta(String citta) {
		List<Immobile> immobili = null;
		EntityManager em = null;
		EntityTransaction tx = null;
		try {
			em = emf.createEntityManager();
			tx = em.getTransaction();
			tx.begin();
			/*- SQL = SELECT * FROM immobile INNER JOIN indirizzo ON immobile.indirizzo_id = indirizzo.id WHERE indirizzo.citta = ? */
			TypedQuery<Immobile> query = em.createQuery(
					"select immobile from Immobile immobile inner join immobile.indirizzo indirizzo where indirizzo.citta = :citta",
					entityClass);
			query.setParameter("citta", citta);
			immobili = query.getResultList();
			tx.commit();
		} catch (Exception e) {
			System.err.println(e.getMessage());
			if (tx != null && tx.isActive())
				tx.rollback();
		} finally {
			if (em != null)
				em.close();
		}
		return immobili;
	}
}
