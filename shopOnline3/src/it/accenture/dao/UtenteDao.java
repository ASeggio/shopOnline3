package it.accenture.dao;

import java.util.List;


import it.accenture.model.Utente;

public interface UtenteDao {
	
	public void registrazione (Utente utente);
	
	public Utente login (String username, String password);
	
	public void saveUser(Utente u);
	
	public void modificaUtente(Utente utenteLoggato);
	
	public List<Utente> getAll();
	
	public List<Utente> getById(int idUtente);
	
	public void close();

	
	//ciao

}
