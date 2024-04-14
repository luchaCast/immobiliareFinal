package org.generationitaly.immobiliare.repository.impl;

import java.lang.reflect.ParameterizedType;
import java.util.List;

import org.generationitaly.immobiliare.repository.JpaRepository;
import org.generationitaly.immobiliare.repository.PersistenceUtil;

import jakarta.persistence.EntityManager;
import jakarta.persistence.EntityManagerFactory;
import jakarta.persistence.EntityTransaction;

/*
  NOTA
 LE CLASSI DEL PACCHETO Impl FANNO extends JpaRepositoryImpl<TClass, Integer> implements ClasseRepository
  esempio --> EsempioRepositoryImpl extends JpaRepositoryImpl <Esempio, Integer> implements EsempioRepository 
  */
public class JpaRepositoryImpl<T, ID> implements JpaRepository<T, ID> {

	protected EntityManagerFactory emf = PersistenceUtil.getEntityManagerFactory();
	protected Class<T> entityClass;

	//

	public JpaRepositoryImpl() {
		entityClass = (Class<T>) ((ParameterizedType) getClass().getGenericSuperclass()).getActualTypeArguments()[0];
	}

	public void save(T entity) {
		EntityManager em = null;
		EntityTransaction tx = null;
		try {
			em = emf.createEntityManager();
			tx = em.getTransaction();
			tx.begin();
			em.persist(entity);
			tx.commit();
		} catch (Exception e) {
			System.err.println(e.getMessage());
			if (tx != null && tx.isActive())
				tx.rollback();
		} finally {
			if (em != null)
				em.close();
		}
	}

	public void update(T entity) {
		EntityManager em = null;
		EntityTransaction tx = null;
		try {
			em = emf.createEntityManager();
			tx = em.getTransaction();
			tx.begin();
			em.merge(entity);
			tx.commit();
		} catch (Exception e) {
			System.err.println(e.getMessage());
			if (tx != null && tx.isActive())
				tx.rollback();
		} finally {
			if (em != null)
				em.close();
		}
	}

	public void delete(T entity) {
		EntityManager em = null;
		EntityTransaction tx = null;
		try {
			em = emf.createEntityManager();
			tx = em.getTransaction();
			tx.begin();
			em.remove(em.merge(entity));
			tx.commit();
		} catch (Exception e) {
			System.err.println(e.getMessage());
			if (tx != null && tx.isActive())
				tx.rollback();
		} finally {
			if (em != null)
				em.close();
		}
	}

	public void deleteById(ID primaryKey) {
		EntityManager em = null;
		EntityTransaction tx = null;
		try {
			em = emf.createEntityManager();
			tx = em.getTransaction();
			tx.begin();
			em.remove(em.find(entityClass, primaryKey));
			tx.commit();
		} catch (Exception e) {
			System.err.println(e.getMessage());
			if (tx != null && tx.isActive())
				tx.rollback();
		} finally {
			if (em != null)
				em.close();
		}
	}

	public T findById(ID primaryKey) {
		T entity = null;
		EntityManager em = null;
		EntityTransaction tx = null;
		try {
			em = emf.createEntityManager();
			tx = em.getTransaction();
			tx.begin();
			entity = em.find(entityClass, primaryKey);
			tx.commit();
		} catch (Exception e) {
			System.err.println(e.getMessage());
			if (tx != null && tx.isActive())
				tx.rollback();
		} finally {
			if (em != null)
				em.close();
		}
		return entity;
	}

	public List<T> findAll() {
		List<T> entities = null;
		EntityManager em = null;
		EntityTransaction tx = null;
		try {
			em = emf.createEntityManager();
			tx = em.getTransaction();
			tx.begin();
			entities = em.createQuery("from " + entityClass.getSimpleName(), entityClass).getResultList();
			tx.commit();
		} catch (Exception e) {
			System.err.println(e.getMessage());
			if (tx != null && tx.isActive())
				tx.rollback();
		} finally {
			if (em != null)
				em.close();
		}
		return entities;
	}

	public Long count() {
		Long count = null;
		EntityManager em = null;
		EntityTransaction tx = null;
		try {
			em = emf.createEntityManager();
			tx = em.getTransaction();
			tx.begin();
			count = em.createQuery("select count(*) from " + entityClass.getSimpleName(), Long.class).getSingleResult();
			tx.commit();
		} catch (Exception e) {
			System.err.println(e.getMessage());
			if (tx != null && tx.isActive())
				tx.rollback();
		} finally {
			if (em != null)
				em.close();
		}
		return count;
	}
}
