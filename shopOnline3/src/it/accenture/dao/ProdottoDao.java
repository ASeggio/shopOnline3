package it.accenture.dao;

import java.util.List;

import it.accenture.model.Prodotto;


	public interface ProdottoDao {

	public List<Prodotto> getAll();

	public Prodotto getProdottoById (int idProdotto);
	
	public void updateDisponibile(int idProdotto);
	
	public List<Prodotto> getProdottobyOfferta (int idProdotto, boolean offerta);
	
	public void close();






}
