package it.accenture.model;

import java.time.LocalDate;

public class Ordine {

	private int idProdotto;
	private int idAcquisto;
	private LocalDate dataInizio;
	private LocalDate dataFine;
	private int prezzoDiSpedizione;
	private int quantitaAcquistata;
	private double prezzoTotale;
	
	public Ordine () {
		
	}
	
	public LocalDate getDataInizio() {
		return dataInizio;
	}
	public void setDataInizio(LocalDate dataInizio) {
		this.dataInizio = dataInizio;
	}
	public LocalDate getDataFine() {
		return dataFine;
	}
	public void setDataFine(LocalDate dataFine) {
		this.dataFine = dataFine;
	}
	public int getPrezzoDiSpedizione() {
		return prezzoDiSpedizione;
	}
	public void setPrezzoDiSpedizione(int prezzoDiSpedizione) {
		this.prezzoDiSpedizione = prezzoDiSpedizione;
	}
	public int getQuantitaAcquistata() {
		return quantitaAcquistata;
	}
	public void setQuantitaAcquistata(int quantitaAcquistata) {
		this.quantitaAcquistata = quantitaAcquistata;
	}
	public double getPrezzoTotale() {
		return prezzoTotale;
	}
	public void setPrezzoTotale(double prezzoTotale) {
		this.prezzoTotale = prezzoTotale;
	}
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
		return "Ordine [idProdotto=" + idProdotto + ", idAcquisto=" + idAcquisto + ", dataInizio=" + dataInizio
				+ ", dataFine=" + dataFine + ", prezzoDiSpedizione=" + prezzoDiSpedizione + ", quantitaAcquistata="
				+ quantitaAcquistata + ", prezzoTotale=" + prezzoTotale + "]";
	}
	
	
	
	
	
}
