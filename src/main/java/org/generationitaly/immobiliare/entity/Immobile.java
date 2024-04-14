package org.generationitaly.immobiliare.entity;

import jakarta.persistence.CascadeType;
import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.OneToOne;
import jakarta.persistence.Table;

@Entity
@Table(name="immobile")
public class Immobile {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "id", nullable = false)
	private int id;

	@Column(name = "numero_locali", nullable = false)
	private int numeroLocali;

	@Column(name = "superficie", nullable = false)
	private int superficie;

	@Column(name = "prezzo", nullable = false)
	private double prezzo;

	@Column(name = "foto", nullable = false, length = 1024)
	private String foto;
	
	@Column(name="descrizione", nullable=false, length = 2000)
	private String descrizione;

	@OneToOne(cascade = CascadeType.ALL)
	@JoinColumn(name = "indirizzo_id", unique = true, nullable = false)
	private Indirizzo indirizzo;

	public String getDescrizione() {
		return descrizione;
	}

	public void setDescrizione(String descrizione) {
		this.descrizione = descrizione;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getNumeroLocali() {
		return numeroLocali;
	}

	public void setNumeroLocali(int numeroLocali) {
		this.numeroLocali = numeroLocali;
	}

	public int getSuperficie() {
		return superficie;
	}

	public void setSuperficie(int superficie) {
		this.superficie = superficie;
	}

	public double getPrezzo() {
		return prezzo;
	}

	public void setPrezzo(double prezzo) {
		this.prezzo = prezzo;
	}

	public String getFoto() {
		return foto;
	}

	public void setFoto(String foto) {
		this.foto = foto;
	}

	public Indirizzo getIndirizzo() {
		return indirizzo;
	}

	public void setIndirizzo(Indirizzo indirizzo) {
		this.indirizzo = indirizzo;
	}

	@Override
	public String toString() {
		return "Immobile [id=" + id + ", numeroLocali=" + numeroLocali + ", superficie=" + superficie + ", prezzo="
				+ prezzo + ", foto=" + foto + ", indirizzo=" + indirizzo + "]";
	}
}
