package it.accenture.dao;

import java.util.List;

import it.accenture.model.Prodotto;


	public interface ProdottoDao {

	public List<Prodotto> getAll();

	public Prodotto getProdottoById (int idProdotto);
	
	public void updateDisponibile(int idProdotto);
	
	public void close();






}
