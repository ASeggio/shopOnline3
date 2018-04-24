package it.accenture.model;

import java.util.ArrayList;
import java.util.List;



public class Utente {

	private int idUtente;
	private String nome;
	private String cognome;
	private String username;
	private String password;
	private String indirizzo;
	private List<Ordine> listaOrdini = new ArrayList<>();
	private List<Acquisto> listaAcquisti = new ArrayList<>();
	
	public Utente() {
		
	}
	
	public Utente(int idUtente, String nome, String cognome, String username, String password, String indirizzo,
			List<Ordine> listaOrdini, List<Acquisto> listaAcquisti) {
		super();
		this.idUtente = idUtente;
		this.nome = nome;
		this.cognome = cognome;
		this.username = username;
		this.password = password;
		this.indirizzo = indirizzo;
		this.listaOrdini = listaOrdini;
		this.listaAcquisti = listaAcquisti;
	}

	public int getIdUtente() {
		return idUtente;
	}

	public void setIdUtente(int idUtente) {
		this.idUtente = idUtente;
	}

	public String getNome() {
		return nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}

	public String getCognome() {
		return cognome;
	}

	public void setCognome(String cognome) {
		this.cognome = cognome;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getIndirizzo() {
		return indirizzo;
	}

	public void setIndirizzo(String indirizzo) {
		this.indirizzo = indirizzo;
	}

	public List<Ordine> getListaOrdini() {
		return listaOrdini;
	}

	public void setListaOrdini(List<Ordine> listaOrdini) {
		this.listaOrdini = listaOrdini;
	}

	public List<Acquisto> getListaAcquisti() {
		return listaAcquisti;
	}

	public void setListaAcquisti(List<Acquisto> listaAcquisti) {
		this.listaAcquisti = listaAcquisti;
	}

	@Override
	public String toString() {
		return "Utente [idUtente=" + idUtente + ", nome=" + nome + ", cognome=" + cognome + ", username=" + username
				+ ", password=" + password + ", indirizzo=" + indirizzo + "]";
	}
	


















}
