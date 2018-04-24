package it.accenture.model;

public enum TipoSpedizione {

	CONSEGNA_TRE_GIORNI(8),
	CONSEGNA_UN_GIORNO(15),
	CONSEGNA_STANDARD(0);
	
	private int prezzoDiSpedizione;

	public int getPrezzoDiSpedizione() {
		return prezzoDiSpedizione;
	}

	public void setPrezzoDiSpedizione(int prezzoDiSpedizione) {
		this.prezzoDiSpedizione = prezzoDiSpedizione;
	}

	private TipoSpedizione(int prezzoDiSpedizione) {
		this.prezzoDiSpedizione = prezzoDiSpedizione;
	}
	
}
