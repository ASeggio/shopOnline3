package it.accenture.dao;

import java.util.List;

import it.accenture.model.Acquisto;
import it.accenture.model.Prodotto;


public interface AcquistoDao {
	
	public List<Acquisto> getAll();

	public void insertAcquisto(Acquisto acquisto);
	
	public Acquisto getAcquistoByQuantita (int quantitaDisponibile);
	
	public void close();


}
