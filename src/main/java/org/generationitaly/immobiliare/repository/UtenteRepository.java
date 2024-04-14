package org.generationitaly.immobiliare.repository;

import org.generationitaly.immobiliare.entity.Utente;

public interface UtenteRepository extends JpaRepository<Utente, Integer>{

	Utente findByUsername(String username);
}
