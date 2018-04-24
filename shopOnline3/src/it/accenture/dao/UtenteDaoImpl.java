package it.accenture.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
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
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void close() {
		// TODO Auto-generated method stub
		
	}


	@Override
	public void registrazione(Utente utente) {
		String query="insert into utente values(cliente_sequence.nextval, ?, ?, ?, ?, ?)";
		try {
			prepared = connection.prepareStatement(query);
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