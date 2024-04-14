package org.generationitaly.immobiliare.repository;

import java.util.List;

import org.generationitaly.immobiliare.entity.Immobile;

public interface ImmobileRepository extends JpaRepository<Immobile, Integer>{

	List<Immobile> findByCitta(String citta);
}
