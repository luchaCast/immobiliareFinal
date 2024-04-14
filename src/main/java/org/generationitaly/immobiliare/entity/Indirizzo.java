package org.generationitaly.immobiliare.entity;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name="indirizzo")
public class Indirizzo {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "id", nullable = false)
	private int id;

	@Column(name = "provincia", nullable = false, length = 2)
	private String provincia;

	@Column(name = "citta", nullable = false, length = 45)
	private String citta;

	@Column(name = "via", nullable = false, length = 45)
	private String via;

	@Column(name = "numero_civico", length = 8)
	private String numeroCivico;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getProvincia() {
		return provincia;
	}

	public void setProvincia(String provincia) {
		this.provincia = provincia;
	}

	public String getCitta() {
		return citta;
	}

	public void setCitta(String citta) {
		this.citta = citta;
	}

	public String getVia() {
		return via;
	}

	public void setVia(String via) {
		this.via = via;
	}

	public String getNumeroCivico() {
		return numeroCivico;
	}

	public void setNumeroCivico(String numeroCivico) {
		this.numeroCivico = numeroCivico;
	}

	@Override
	public String toString() {
		return "Indirizzo [id=" + id + ", provincia=" + provincia + ", citta=" + citta + ", via=" + via
				+ ", numeroCivico=" + numeroCivico + "]";
	}

}
