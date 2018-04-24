package it.accenture.dao;

import java.util.List;

import it.accenture.model.Prodotto;

	public interface ProdottoDao {

	public List<Prodotto> getAll();

	public void close();






}
