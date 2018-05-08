package it.accenture.model;

public class Ordine {

	private int idProdotto;
	private int idAcquisto;
	public int getIdProdotto() {
		return idProdotto;
	}
	public void setIdProdotto(int idProdotto) {
		this.idProdotto = idProdotto;
	}
	public int getIdAcquisto() {
		return idAcquisto;
	}
	public void setIdAcquisto(int idAcquisto) {
		this.idAcquisto = idAcquisto;
	}
	@Override
	public String toString() {
		return "Ordine [idProdotto=" + idProdotto + ", idAcquisto=" + idAcquisto + "]";
	}
	
	
	
	
}
