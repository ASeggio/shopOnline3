package it.accenture.dao;

import java.util.List;

import it.accenture.model.Acquisto;


public interface AcquistoDao {
	
	public List<Acquisto> getAll();

	public Acquisto getAcquistoByQuantita (int quantitaDisponibile);
	
	public void close();


}
