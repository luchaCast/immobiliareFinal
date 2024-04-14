package org.generationitaly.immobiliare.repository;

import java.util.List;
/* NOTA 
  LE INTERFACCIE FANNO EXTENDS JpaReposotiry <TClasse, Integer> 
  Esempio ---> EsempioRepository extends JpaRepository<Esempio, Integer>
 */

public interface JpaRepository <T, ID> {
	
		void save(T entity);

		void update(T entity);

		void delete(T entity);
		
		void deleteById(ID primaryKey);

		T findById(ID primaryKey);

		List<T> findAll();

		Long count();
}
