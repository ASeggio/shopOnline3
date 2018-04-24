package it.accenture.dao;

import java.util.List;

import it.accenture.model.Prodotto;


	public interface ProdottoDao {

	public List<Prodotto> getAll();

	public Prodotto getProdottoByQuantita (int quantitaDisponibile);
	
	public void close();






}
