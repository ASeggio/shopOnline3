package it.accenture.dao;

import java.util.List;


import it.accenture.model.Prodotto;


	public interface ProdottoDao {

	public List<Prodotto> getAll();
	
	public List<Prodotto> getAllA();
	
	public List<Prodotto> getAllE();
	
	public List<Prodotto> getAllL();
	
	public List<Prodotto> getAllC();

	public Prodotto getProdottoById (int idProdotto);
	
	public void updateDisponibile(int idProdotto);
	
	public List<Prodotto> getProdottobyOfferta (boolean offerta);
	
	public List<Prodotto> getProdottiByNome (String nome);
	
	public void close();
	
	






}
