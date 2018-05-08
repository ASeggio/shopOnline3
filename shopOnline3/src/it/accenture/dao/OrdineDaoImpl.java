package it.accenture.dao;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

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
		String query = "insert into ordine values (?, ?, ?, ?, ?, ?, ?)";
		try {
			prepared = connection.prepareStatement(query);
			prepared.setInt(1, acquisto.getIdProdotto());
			prepared.setInt(2, acquisto.getIdAcquisto());		
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

	@Override
	public List<Ordine> getAllOrdine() {
		List<Ordine> listaOrdini = new ArrayList<>();
		Acquisto acquisto = new Acquisto();
		ResultSet rs = null;
		String query = "select * from ordine where sysdate < data_fine";
		try {
			statement = connection.createStatement();
			rs = statement.executeQuery(query);
			while(rs.next()){
			Ordine ordine = new Ordine();
			
			//Acquisto acquisto = new Acquisto();
			ordine.setIdProdotto(rs.getInt(1));
			ordine.setIdAcquisto(rs.getInt(2));
			ordine.setDataInizio(rs.getDate(3).toLocalDate());
			ordine.setDataFine(rs.getDate(4).toLocalDate());
			ordine.setQuantitaAcquistata(rs.getInt(5));
			ordine.setPrezzoTotale(rs.getDouble(6));
			ordine.setPrezzoDiSpedizione(rs.getInt(7));
			
			listaOrdini.add(ordine);
			}
		} catch (SQLException e) {
				e.printStackTrace();
		} finally {
			if(rs != null) {
				try {
					rs.close();
				} catch (SQLException e) {
						e.printStackTrace();
				} if(statement!=null) {
					try {
						statement.close();
					} catch (SQLException e) {
						e.printStackTrace();
					}
				}
			}
		}
		return listaOrdini;
	}

	@Override
	public List<Ordine> getAllAcquisto() {
		List<Ordine> listaOrdini = new ArrayList<>();
		Acquisto acquisto = new Acquisto();
		ResultSet rs = null;
		String query = "select * from ordine where sysdate > data_fine";
		try {
			statement = connection.createStatement();
			rs = statement.executeQuery(query);
			while(rs.next()){
			Ordine ordine = new Ordine();
			
			//Acquisto acquisto = new Acquisto();
			ordine.setIdProdotto(rs.getInt(1));
			ordine.setIdAcquisto(rs.getInt(2));
			ordine.setDataInizio(rs.getDate(3).toLocalDate());
			ordine.setDataFine(rs.getDate(4).toLocalDate());
			ordine.setQuantitaAcquistata(rs.getInt(5));
			ordine.setPrezzoTotale(rs.getDouble(6));
			ordine.setPrezzoDiSpedizione(rs.getInt(7));
			
			listaOrdini.add(ordine);
			}
		} catch (SQLException e) {
				e.printStackTrace();
		} finally {
			if(rs != null) {
				try {
					rs.close();
				} catch (SQLException e) {
						e.printStackTrace();
				} if(statement!=null) {
					try {
						statement.close();
					} catch (SQLException e) {
						e.printStackTrace();
					}
				}
			}
		}
		return listaOrdini;
	}
	}

	/*@Override
	public void insertOrdine1(Ordine ordine) {
		String query = "insert into ordine1 values (?, ?)";
		try {
			prepared = connection.prepareStatement(query);
			prepared.setInt(1, ordine.getIdAcquisto());
			prepared.setInt(2, ordine.getIdProdotto());		
			
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

		
	} */
	
	
