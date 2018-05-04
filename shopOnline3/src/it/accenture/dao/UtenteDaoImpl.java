package it.accenture.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;

import org.apache.catalina.User;

import it.accenture.model.Categoria;

import it.accenture.model.Prodotto;
import it.accenture.model.Utente;
import it.accenture.utilities.DBUtilityConnection;

public class UtenteDaoImpl implements UtenteDao{
	
	private Connection connection;
	private PreparedStatement prepared;
	private Statement statement;
	
	public UtenteDaoImpl() {
		connection = DBUtilityConnection.getConnection();
		prepared = null;
		statement =null;
		
	}
	
	
	@Override
	public Utente login(String username, String password) {
		Utente utente = null;
		ResultSet rs = null;
		String query="select * from utente where username = ? and password = ?";
		try {
			prepared = connection.prepareStatement(query);
			prepared.setString(1, username);
			prepared.setString(2, password);
			rs = prepared.executeQuery();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				if(rs.next()){
					utente = new Utente();
					utente.setIdUtente(rs.getInt(1));
					utente.setNome(rs.getString(2));
					utente.setCognome(rs.getString(3));
					utente.setUsername(username);
					utente.setPassword(password);
					utente.setIndirizzo(rs.getString(6));
					
					
				}
			} catch (SQLException e) {
						e.printStackTrace();
			} finally {
				if(prepared!=null) {
					try {
						prepared.close();
					} catch (SQLException e) {
						
						e.printStackTrace();
					}
				}
			}
		}
		return utente;
	}

	@Override
	public void close() {
		
		try {
			connection.close();
		} catch (SQLException e) {
				e.printStackTrace();
		}
		
	}


	@Override
	public void registrazione(Utente utente) {
		String query="insert into utente values(utente_sequence.nextval, ?, ?, ?, ?, ?)";
		try {
			prepared = connection.prepareStatement(query);
			prepared.setString(1, utente.getNome());
			prepared.setString(2, utente.getCognome());
			prepared.setString(3, utente.getUsername());
			prepared.setString(4, utente.getPassword());
			prepared.setString(5, utente.getIndirizzo());
			prepared.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			if(prepared!=null) {
				try {
					prepared.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
		}
		
	}


	
	

	
	
	


	@Override
	public void saveUser(Utente u) {
		String query = "insert into utente values "
				 + "(utente_sequence.nextval, ?, ?, ?, ?, ?)";
	try {
		prepared = connection.prepareStatement(query);
		
		prepared.setString(1, u.getNome());
		prepared.setString(2, u.getCognome());
		prepared.setString(3, u.getUsername());
		prepared.setString(4, u.getPassword());
		prepared.setString(5, u.getIndirizzo());
		prepared.executeUpdate();
	} catch (SQLException e) {	
		e.printStackTrace();
	}finally {
		if (prepared != null){
			try {
				prepared.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
	}
}


	@Override
	public void modificaUtente (Utente utenteLoggato) {
	
		String query = "update utente set  nome  = ?, cognome = ?, username= ?, password = ?,indirizzo= ? where id_utente = " +utenteLoggato.getIdUtente();
	
		try {
			prepared = connection.prepareStatement(query);
			
			prepared.setString(1, utenteLoggato.getNome());
			prepared.setString(2, utenteLoggato.getCognome());
			prepared.setString(3, utenteLoggato.getUsername());
			prepared.setString(4, utenteLoggato.getPassword());
			prepared.setString(5, utenteLoggato.getIndirizzo());
			prepared.executeUpdate();
		} catch (SQLException e) {	
			e.printStackTrace();
		}finally {
			try {
			if (prepared != null){
				prepared.close();
			}
			} catch (SQLException e) {
					e.printStackTrace();
				}
			}
		
	}
			
	

	@Override
	public List<Utente> getAll() {
		List<Utente> listaUtenti = new ArrayList<>();
		String query = "select * from utente";
		ResultSet rs = null;
		try {
			statement = connection.createStatement();
			rs = statement.executeQuery(query);
			while (rs.next()){
				Utente utente = new Utente();
				utente.setIdUtente(rs.getInt(1));
				utente.setNome(rs.getString(2));
				utente.setCognome(rs.getString(3));
				utente.setUsername(rs.getString(4));
				utente.setPassword(rs.getString(5));
				utente.setIndirizzo(rs.getString(6));
				listaUtenti.add(utente);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			try{
				if(rs != null){
					rs.close();
				}
				if(statement != null){
					statement.close();
				}
			}catch (SQLException e) {
				e.printStackTrace();
			}	
		}
		
		return listaUtenti;
		
	}


	@Override
	public List<Utente> getById(int idUtente) {
		List<Utente> listaUtente = new ArrayList<>();
		
		String query = "select * from utente where id_utente = " + idUtente;
		ResultSet rs = null;
		try {
			statement = connection.createStatement();
			rs = statement.executeQuery(query);
			while (rs.next()){
				Utente utente = new Utente();
				utente.setIdUtente(idUtente);
				utente.setNome(rs.getString(2));
				utente.setCognome(rs.getString(3));
				utente.setUsername(rs.getString(4));
				utente.setPassword(rs.getString(5));
				utente.setIndirizzo(rs.getString(6));
				listaUtente.add(utente);
					
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			try{
				if(rs != null){
					rs.close();
				}
				if(statement != null){
					statement.close();
				}
			}catch (SQLException e) {
				e.printStackTrace();
			}	
		}
		//ciao
		
		
		return listaUtente;
	}
}