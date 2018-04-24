package it.accenture.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import it.accenture.model.Utente;
import it.accenture.utilities.DBUtilityConnection;

public class UtenteDaoImpl implements UtenteDao{
	
	private Connection connection;
	private PreparedStatement prepared;
	
	public UtenteDaoImpl() {
		connection = DBUtilityConnection.getConnection();
		prepared = null;
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
					
				}
			} catch (SQLException e) {
						e.printStackTrace();
			} finally {
				if(prepared!=null) {
					try {
						prepared.close();
					} catch (SQLException e) {
						// TODO Auto-generated catch block
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
			prepared.executeQuery();
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
}