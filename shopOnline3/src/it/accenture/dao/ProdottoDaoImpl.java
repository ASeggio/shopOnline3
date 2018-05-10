package it.accenture.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;


import it.accenture.model.Categoria;
import it.accenture.model.Prodotto;
import it.accenture.model.Utente;
import it.accenture.utilities.DBUtilityConnection;

public class ProdottoDaoImpl implements ProdottoDao{

	private Connection connection;
	private Statement statement;
	private PreparedStatement prepared;
	
	
	public ProdottoDaoImpl (){
		connection = DBUtilityConnection.getConnection();
		statement = null;
		prepared = null;
	
	
	}


	



	

	@Override
	public List<Prodotto> getAll() {
		List<Prodotto> listaProdotti= new ArrayList<>();

		String query ="select * from prodotto";
				ResultSet rs= null;
		try {
			statement = connection.createStatement();
			rs = statement.executeQuery(query);
			while(rs.next()){
				Prodotto prodotto = new Prodotto();
				prodotto.setIdProdotto(rs.getInt(1));
				prodotto.setNome(rs.getString(2));
				prodotto.setCategoria(Categoria.valueOf(rs.getString(3)));
				prodotto.setMarca(rs.getString(4));
				prodotto.setPrezzo(rs.getDouble(5));
				prodotto.setOfferta(rs.getBoolean(6));
				prodotto.setSconto(rs.getInt(7));
				prodotto.setQuantitaDisponibile(rs.getInt(8));
				prodotto.setImmagine(rs.getString(9));
				listaProdotti.add(prodotto);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			try{
				if(statement!=null){
					statement.close();
				}
				if (rs != null){
				rs.close();
			}
		}catch (SQLException e){
			e.printStackTrace();
		}
		}
			return listaProdotti;
	}

	
	
	@Override
	public Prodotto getProdottoById(int idProdotto) {
		Prodotto prodotto= null;
		ResultSet rs= null;
		String query = "select * from prodotto where id_prodotto = " + idProdotto;
		try {
			statement = connection.createStatement();
			rs = statement.executeQuery(query);
			if(rs.next()){
				prodotto = new Prodotto();
				prodotto.setIdProdotto(idProdotto);
				prodotto.setNome(rs.getString(2));
				prodotto.setCategoria(Categoria.valueOf(rs.getString(3)));
				prodotto.setMarca(rs.getString(4));
				prodotto.setPrezzo(rs.getDouble(5));
				prodotto.setOfferta(rs.getBoolean(6));
				prodotto.setSconto(rs.getInt(7));
				prodotto.setQuantitaDisponibile(rs.getInt(8));
				prodotto.setImmagine(rs.getString(9));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			try{
				if(rs != null){
					rs.close();
				}
				if (statement != null){
					statement.close();
				}
			}catch (SQLException e) {
				e.printStackTrace();
			}
			}
			return prodotto;
	}
	
	
	
	public void close() {
	try {
		connection.close();
	} catch (SQLException e) {
		e.printStackTrace();
	}
	
	}	
	@Override
	public void updateDisponibile(int idProdotto) {
		String query= "update prodotto set disponibile = 'false' where idProdotto = " + idProdotto;
		try {
			statement=connection.createStatement();
			statement.executeUpdate(query);
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			if (statement != null){
				try {
					statement.close();
				} catch (SQLException e) {
					e.printStackTrace();
	}
			}
}
}


	@Override
	public List <Prodotto> getProdottobyOfferta(boolean offerta) {
		List<Prodotto> listaProdotti= new ArrayList<>();
		ResultSet rs= null;
		String query = "select * from prodotto where offerta = 'true'";
		try {
			statement = connection.createStatement();
			rs = statement.executeQuery(query);
			while(rs.next()){
				Prodotto prodotto = new Prodotto();
				prodotto.setIdProdotto(rs.getInt(1));
				prodotto.setNome(rs.getString(2));
				prodotto.setCategoria(Categoria.valueOf(rs.getString(3)));
				prodotto.setMarca(rs.getString(4));
				prodotto.setPrezzo(rs.getDouble(5));
				prodotto.setOfferta(rs.getBoolean(6));
				prodotto.setSconto(rs.getInt(7));
				prodotto.setQuantitaDisponibile(rs.getInt(8));
				prodotto.setImmagine(rs.getString(9));
				listaProdotti.add(prodotto);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			try{
				if(statement!=null){
					statement.close();
				}
				if (rs != null){
				rs.close();
			}
		}catch (SQLException e){
			e.printStackTrace();
		}
		}		
		
		return listaProdotti;
	}








	@Override
	public List<Prodotto> getAllA() {
		List<Prodotto> listaProdotti= new ArrayList<>();

		String query ="select * from prodotto where categoria = 'ABBIGLIAMENTO'";
				ResultSet rs= null;
		try {
			statement = connection.createStatement();
			rs = statement.executeQuery(query);
			while(rs.next()){
				Prodotto prodotto = new Prodotto();
				prodotto.setIdProdotto(rs.getInt(1));
				prodotto.setNome(rs.getString(2));
				prodotto.setCategoria(Categoria.valueOf(rs.getString(3)));
				prodotto.setMarca(rs.getString(4));
				prodotto.setPrezzo(rs.getDouble(5));
				prodotto.setOfferta(rs.getBoolean(6));
				prodotto.setSconto(rs.getInt(7));
				prodotto.setQuantitaDisponibile(rs.getInt(8));
				prodotto.setImmagine(rs.getString(9));
				listaProdotti.add(prodotto);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			try{
				if(statement!=null){
					statement.close();
				}
				if (rs != null){
				rs.close();
			}
		}catch (SQLException e){
			e.printStackTrace();
		}
		}
			return listaProdotti;
	}

	
	








	@Override
	public List<Prodotto> getAllE() {
		List<Prodotto> listaProdotti= new ArrayList<>();

		String query ="select * from prodotto where categoria = 'ELETTRONICA'";
				ResultSet rs= null;
		try {
			statement = connection.createStatement();
			rs = statement.executeQuery(query);
			while(rs.next()){
				Prodotto prodotto = new Prodotto();
				prodotto.setIdProdotto(rs.getInt(1));
				prodotto.setNome(rs.getString(2));
				prodotto.setCategoria(Categoria.valueOf(rs.getString(3)));
				prodotto.setMarca(rs.getString(4));
				prodotto.setPrezzo(rs.getDouble(5));
				prodotto.setOfferta(rs.getBoolean(6));
				prodotto.setSconto(rs.getInt(7));
				prodotto.setQuantitaDisponibile(rs.getInt(8));
				prodotto.setImmagine(rs.getString(9));
				listaProdotti.add(prodotto);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			try{
				if(statement!=null){
					statement.close();
				}
				if (rs != null){
				rs.close();
			}
		}catch (SQLException e){
			e.printStackTrace();
		}
		}
			return listaProdotti;
	}

	







	@Override
	public List<Prodotto> getAllL() {
		List<Prodotto> listaProdotti= new ArrayList<>();

		String query ="select * from prodotto where categoria = 'LIBRI'";
				ResultSet rs= null;
		try {
			statement = connection.createStatement();
			rs = statement.executeQuery(query);
			while(rs.next()){
				Prodotto prodotto = new Prodotto();
				prodotto.setIdProdotto(rs.getInt(1));
				prodotto.setNome(rs.getString(2));
				prodotto.setCategoria(Categoria.valueOf(rs.getString(3)));
				prodotto.setMarca(rs.getString(4));
				prodotto.setPrezzo(rs.getDouble(5));
				prodotto.setOfferta(rs.getBoolean(6));
				prodotto.setSconto(rs.getInt(7));
				prodotto.setQuantitaDisponibile(rs.getInt(8));
				prodotto.setImmagine(rs.getString(9));
				listaProdotti.add(prodotto);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			try{
				if(statement!=null){
					statement.close();
				}
				if (rs != null){
				rs.close();
			}
		}catch (SQLException e){
			e.printStackTrace();
		}
		}
			return listaProdotti;
	}

	








	@Override
	public List<Prodotto> getAllC() {
		List<Prodotto> listaProdotti= new ArrayList<>();

		String query ="select * from prodotto where categoria = 'CASA'";
				ResultSet rs= null;
		try {
			statement = connection.createStatement();
			rs = statement.executeQuery(query);
			while(rs.next()){
				Prodotto prodotto = new Prodotto();
				prodotto.setIdProdotto(rs.getInt(1));
				prodotto.setNome(rs.getString(2));
				prodotto.setCategoria(Categoria.valueOf(rs.getString(3)));
				prodotto.setMarca(rs.getString(4));
				prodotto.setPrezzo(rs.getDouble(5));
				prodotto.setOfferta(rs.getBoolean(6));
				prodotto.setSconto(rs.getInt(7));
				prodotto.setQuantitaDisponibile(rs.getInt(8));
				prodotto.setImmagine(rs.getString(9));
				listaProdotti.add(prodotto);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			try{
				if(statement!=null){
					statement.close();
				}
				if (rs != null){
				rs.close();
			}
		}catch (SQLException e){
			e.printStackTrace();
		}
		}
			return listaProdotti;
	}








	@Override
	public List<Prodotto> getProdottiByNome(String nome) {
		List<Prodotto> listaCerca = new ArrayList<>();
		String query ="select * from prodotto where upper(nome) like upper('%" + nome + "%')";
		ResultSet rs= null;
		try {
			statement = connection.createStatement();
			rs = statement.executeQuery(query);
			while(rs.next()){
				Prodotto prodotto = new Prodotto();
				prodotto.setIdProdotto(rs.getInt(1));
				prodotto.setNome(nome);
				prodotto.setCategoria(Categoria.valueOf(rs.getString(3)));
				prodotto.setMarca(rs.getString(4));
				prodotto.setPrezzo(rs.getDouble(5));
				prodotto.setOfferta(rs.getBoolean(6));
				prodotto.setSconto(rs.getInt(7));
				prodotto.setQuantitaDisponibile(rs.getInt(8));
				prodotto.setImmagine(rs.getString(9));
				listaCerca.add(prodotto);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			try{
				if(statement!=null){
					statement.close();
				}
				if (rs != null){
				rs.close();
				}
			}catch (SQLException e){
			e.printStackTrace();
			}
		}
		return listaCerca;
	}




		
	@Override
	public void updateQuantita(int idProdotto, int qAcquistata) {
		String query = "update prodotto set quantita_disponibile = quantita_disponibile - " + qAcquistata + " where id_prodotto = " + idProdotto;
		try {
			statement = connection.createStatement();
			
			statement.executeUpdate(query);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			if (statement != null) {
				try {
					statement.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
		}
		
		
	}
	
	
	}
	








	
	
	
	