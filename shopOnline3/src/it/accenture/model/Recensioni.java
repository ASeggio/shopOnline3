package it.accenture.model;

public class Recensioni {

	private String titolo;
	private String contenuto; //max 1000 caratteri
	private int idUtente;
	private int idProdotto;
	
	public Recensioni(String titolo, String contenuto, int idUtente, int idProdotto) {
		super();
		this.titolo = titolo;
		this.contenuto = contenuto;
		this.idUtente = idUtente;
		this.idProdotto = idProdotto;
	}

	public String getTitolo() {
		return titolo;
	}

	public void setTitolo(String titolo) {
		this.titolo = titolo;
	}

	public String getContenuto() {
		return contenuto;
	}

	public void setContenuto(String contenuto) {
		this.contenuto = contenuto;
	}

	public int getIdUtente() {
		return idUtente;
	}

	public void setIdUtente(int idUtente) {
		this.idUtente = idUtente;
	}

	public int getIdProdotto() {
		return idProdotto;
	}

	public void setIdProdotto(int idProdotto) {
		this.idProdotto = idProdotto;
	}

	@Override
	public String toString() {
		return "Recensioni [titolo=" + titolo + ", contenuto=" + contenuto + ", idUtente=" + idUtente + ", idProdotto="
				+ idProdotto + "]";
	}


}
