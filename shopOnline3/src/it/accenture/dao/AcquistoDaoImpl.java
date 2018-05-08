package it.accenture.dao;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;

import it.accenture.model.Acquisto;
import it.accenture.model.Categoria;

import it.accenture.model.Prodotto;

import it.accenture.model.TipoSpedizione;

import it.accenture.utilities.DBUtilityConnection;

public class AcquistoDaoImpl implements AcquistoDao{

	private Connection connection;
	private PreparedStatement prepared;
	private Statement statement;
	
	 public AcquistoDaoImpl() {
		 connection = DBUtilityConnection.getConnection();
		 statement = null;
		 prepared = null;
	}
	
	
	@Override
	public List<Acquisto> getAll() {
		
		List<Acquisto> listaAcquisti = new ArrayList<>();
		ResultSet rs = null;
		String query = "select * from acquisto";
		try {
			statement = connection.createStatement();
			rs = statement.executeQuery(query);
			while(rs.next());
			Acquisto acquisto = new Acquisto();
			acquisto.setTipoSpedizione(TipoSpedizione.valueOf(rs.getString(1)));
			acquisto.setDataInizio(rs.getDate(2).toLocalDate());
			acquisto.setDataFine(rs.getDate(3).toLocalDate());
			acquisto.setPrezzoDiSpedizione(rs.getInt(4));
			acquisto.setQuantitaAcquistata(rs.getInt(5));
			listaAcquisti.add(acquisto);
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
		return listaAcquisti;
	}

	@Override
	public Acquisto getAcquistoByQuantita(int quantitaDisponibile) {
		Acquisto acquisto = null;
		ResultSet rs = null;
		String query = "select * from acquisto where quantita_disponibile = " + quantitaDisponibile;
		try {
			statement = connection.createStatement();
			rs = statement.executeQuery(query);
			if(rs.next()) {
				acquisto = new Acquisto();
				acquisto.setTipoSpedizione(TipoSpedizione.valueOf(rs.getString(1)));
				acquisto.setDataInizio(rs.getDate(2).toLocalDate());
				acquisto.setDataFine(rs.getDate(3).toLocalDate());
				acquisto.setPrezzoDiSpedizione(rs.getInt(4));
				acquisto.setQuantitaAcquistata(quantitaDisponibile);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				if(rs!=null) {
				
					rs.close();
				}
					if(statement!=null) {
						statement.close();
					}
			
					if(statement!=null) {
						statement.close();
					}
			}catch (SQLException e) {
				e.printStackTrace();
			}
	}	
		return acquisto;
	
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
	public void insertAcquisto(Acquisto acquisto) {
		String query = "insert into acquisto1 values (?, ?, ?, ?, ?, ?, acquisto_sequence.nextval)";
		try {
			prepared = connection.prepareStatement(query);
			prepared.setInt(1, acquisto.getIdProdotto());
			
			prepared.setDate(2, Date.valueOf(acquisto.getDataInizio()));
			prepared.setDate(3, Date.valueOf(acquisto.getDataFine()));
			
			prepared.setInt(4, acquisto.getPrezzoDiSpedizione());
			prepared.setInt(5, acquisto.getQuantitaAcquistata());
			prepared.setDouble(6, acquisto.getPrezzoTotale());
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

}
	


