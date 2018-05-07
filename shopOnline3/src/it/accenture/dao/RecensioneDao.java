package it.accenture.dao;

import java.util.List;


import it.accenture.model.Recensioni;

public interface RecensioneDao {

	public void inserisciRecensione(Recensioni recensioni);
	
	
	public List<Recensioni> getAllByUtente(int idUtente);
	
	
	
	
	
	
		
	}

















