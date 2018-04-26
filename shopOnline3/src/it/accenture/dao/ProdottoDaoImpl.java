package it.accenture.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.sun.corba.se.spi.orbutil.fsm.Guard.Result;

import it.accenture.model.Categoria;
import it.accenture.model.Prodotto;
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
		ResultSet rs= null;
		String query =" select* from prodotto";
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
				if(prepared!=null){
					prepared.close();
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
		String query = "select * from prodotto where idProdotto = ?";
		try {
			prepared = connection.prepareStatement(query);
			prepared.setInt(1,  idProdotto);
			rs = prepared.executeQuery();
			if(rs.next()){
				prodotto = new Prodotto();
				prodotto.setIdProdotto(rs.getInt(1));
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
				if(prepared != null){
					prepared.close();
				}
				if (rs != null){
					rs.close();
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
		String query= "update prodotto set disponibile = 'false' where idProdotto = " +idProdotto;
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
	public List <Prodotto> getProdottobyOfferta(int idProdotto, boolean offerta) {
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
				if(prepared!=null){
					prepared.close();
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
	}