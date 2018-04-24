package it.accenture.model;

import java.time.LocalDate;

public class Acquisto {

	private int idAcquisto;
	private TipoSpedizione tipoSpedizione;
	private LocalDate dataInizio;
	private LocalDate dataFine;
	private int prezzoDiSpedizione;
	private int quantitaAcquistata;
	public int getIdAcquisto() {
		return idAcquisto;
	}
	public void setIdAcquisto(int idAcquisto) {
		this.idAcquisto = idAcquisto;
	}
	public TipoSpedizione getTipoSpedizione() {
		return tipoSpedizione;
	}
	public void setTipoSpedizione(TipoSpedizione tipoSpedizione) {
		this.tipoSpedizione = tipoSpedizione;
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
	public Acquisto(int idAcquisto, TipoSpedizione tipoSpedizione, LocalDate dataInizio, LocalDate dataFine,
			int prezzoDiSpedizione, int quantitaAcquistata) {
		super();
		this.idAcquisto = idAcquisto;
		this.tipoSpedizione = tipoSpedizione;
		this.dataInizio = dataInizio;
		this.dataFine = dataFine;
		this.prezzoDiSpedizione = prezzoDiSpedizione;
		this.quantitaAcquistata = quantitaAcquistata;
	}
	@Override
	public String toString() {
		return "Acquisto [idAcquisto=" + idAcquisto + ", tipoSpedizione=" + tipoSpedizione + ", dataInizio="
				+ dataInizio + ", dataFine=" + dataFine + ", prezzoDiSpedizione=" + prezzoDiSpedizione
				+ ", quantitaAcquistata=" + quantitaAcquistata + "]";
	}
	
}
