package it.accenture.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.Statement;
import java.util.List;

import javax.servlet.http.HttpServlet;

import it.accenture.model.Recensioni;
import it.accenture.utilities.DBUtilityConnection;


public class RecensioneDaoImpl implements RecensioneDao{

	

	private Connection connection;
	private PreparedStatement prepared;
	private Statement statement;
	
	public RecensioneDaoImpl(){
	connection = DBUtilityConnection.getConnection();
	statement = null;
	prepared = null;

}	
	@Override
	public void inserisciRecensione (Recensioni recensioni) {
		String query = "insert into recensioni values (?,?,?,?)";
		
	
	
	
	
	
	
	
	
	
	}

	
	
	
	
	
	
	@Override
	public List<Recensioni> getAllByUtente(int idUtente) {
		
		
		return null;
	}

	
		
	















}
