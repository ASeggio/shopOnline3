package it.accenture.controller;

import java.io.IOException;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.sun.javafx.beans.IDProperty;

import it.accenture.dao.AcquistoDaoImpl;

import it.accenture.dao.ProdottoDaoImpl;

import it.accenture.model.Acquisto;

import it.accenture.model.Prodotto;
import it.accenture.model.Utente;


public class ListaAcquisti extends HttpServlet{
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		Acquisto acquisto = new Acquisto();
		String dataInizioString = req.getParameter("dataInizio");
		String dataFineString = req.getParameter("dataFine");
	
		/*LocalDate dataInizio = LocalDate.parse(dataInizioString);
		LocalDate dataFine = LocalDate.parse(dataFineString);
		Calendar inizio= Calendar.getInstance();
		Calendar fine = Calendar.getInstance();
		inizio.set(dataInizio.getYear(), dataInizio.getMonthValue(), dataInizio.getDayOfMonth());
		fine.set(dataFine.getYear(), dataFine.getMonthValue(), dataFine.getDayOfMonth());
		Date dataInizio1 = inizio.getTime();
		Date dataFine1 = fine.getTime();*/
		
		int prezzoDiSpedizione = 10;
		
		int quantitaAcquistata = Integer.parseInt(req.getParameter("quantitaAcquistata"));
		
		HttpSession sessione = req.getSession();
		Utente clienteLoggato = (Utente) sessione.getAttribute("clienteLoggato");
		
		
		int idProdotto = Integer.parseInt(req.getParameter("idProdotto"));
		
		acquisto.setIdProdotto(idProdotto);
		//acquisto.setDataInizio(dataInizio);
		//acquisto.setDataFine(dataFine);
		acquisto.setPrezzoDiSpedizione(prezzoDiSpedizione);
		acquisto.setQuantitaAcquistata(quantitaAcquistata);

		System.out.println(acquisto);
		
		AcquistoDaoImpl acquistoService = new AcquistoDaoImpl();
		acquistoService.insertAcquisto(acquisto);
		acquistoService.close();
		
		
	RequestDispatcher dispatcher = req.getRequestDispatcher("listaAcquisti.jsp");
	dispatcher.forward(req, resp);
	}	
}










