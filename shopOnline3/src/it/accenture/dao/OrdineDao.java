package it.accenture.dao;

import java.util.List;

import it.accenture.model.Acquisto;
import it.accenture.model.Ordine;

public interface OrdineDao {
	
	

	public void insertOrdine(Ordine ordine, Acquisto acquisto);
	
	public void close();
	
}
