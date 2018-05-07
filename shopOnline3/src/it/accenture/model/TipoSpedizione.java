package it.accenture.model;

public enum TipoSpedizione {

	CONSEGNA_TRE_GIORNI(3, 8),
	CONSEGNA_UN_GIORNO(1, 15),
	CONSEGNA_STANDARD(7, 0);
	
	private int tempoConsegna;
	private int prezzoDiSpedizione;

	private TipoSpedizione(int tempoConsegna, int prezzoDiSpedizione) {
		this.tempoConsegna = tempoConsegna;
		this.prezzoDiSpedizione = prezzoDiSpedizione;
	}

	public int getTempoConsegna() {
		return tempoConsegna;
	}

	public void setTempoConsegna(int tempoConsegna) {
		this.tempoConsegna = tempoConsegna;
	}

	public int getPrezzoDiSpedizione() {
		return prezzoDiSpedizione;
	}

	public void setPrezzoDiSpedizione(int prezzoDiSpedizione) {
		this.prezzoDiSpedizione = prezzoDiSpedizione;
	}
	
}
