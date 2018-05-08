package it.accenture.dao;

import java.util.List;

import it.accenture.model.Acquisto;
import it.accenture.model.Ordine;

public interface OrdineDao {
	
	public List<Ordine> getAllOrdine();
	public List<Ordine> getAllAcquisto();
	public void insertOrdine(Ordine ordine, Acquisto acquisto);
	
	//public void insertOrdine1(Ordine ordine);
	
	public void close();
	
}
