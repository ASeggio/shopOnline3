package it.accenture.dao;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import it.accenture.model.Acquisto;
import it.accenture.model.Ordine;
import it.accenture.model.TipoSpedizione;
import it.accenture.utilities.DBUtilityConnection;


public class OrdineDaoImpl implements OrdineDao{

	private Connection connection;
	private PreparedStatement prepared;
	private Statement statement;
	
	
	public OrdineDaoImpl() {
		connection = DBUtilityConnection.getConnection();
		prepared = null;
		statement = null;
	}

	@Override
	public void insertOrdine(Ordine ordine , Acquisto acquisto) {
		String query = "insert into ordine values (?, ?, ?, ?, ?, ?, ordine_sequence.nextval)";
		try {
			prepared = connection.prepareStatement(query);
			prepared.setInt(1, acquisto.getIdProdotto());
			prepared.setInt(2, ordine.getIdAcquisto());		
			prepared.setDate(3, Date.valueOf(acquisto.getDataInizio()));
			prepared.setDate(4, Date.valueOf(acquisto.getDataFine()));	
			prepared.setInt(5, acquisto.getQuantitaAcquistata());
			prepared.setDouble(6, acquisto.getPrezzoTotale());
			prepared.setInt(7, acquisto.getPrezzoDiSpedizione());
			prepared.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			if (prepared != null) {
				try {
					prepared.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
		}
	}

	@Override
	public void close() {
		try {
			connection.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	
	

}
