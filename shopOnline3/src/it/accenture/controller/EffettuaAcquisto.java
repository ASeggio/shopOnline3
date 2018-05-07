package it.accenture.controller;

import java.io.IOException;
import java.time.LocalDate;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import it.accenture.dao.AcquistoDaoImpl;
import it.accenture.dao.ProdottoDaoImpl;
import it.accenture.model.Acquisto;
import it.accenture.model.Prodotto;
import it.accenture.model.TipoSpedizione;
import it.accenture.model.Utente;
import oracle.net.aso.a;

public class EffettuaAcquisto extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		int idProdotto = Integer.parseInt(req.getParameter("idProdotto"));
		ProdottoDaoImpl prodottoService = new ProdottoDaoImpl();
		Prodotto prodotto = prodottoService.getProdottoById(idProdotto);
		System.out.println(prodotto);
		req.setAttribute("prodotto", prodotto);
		RequestDispatcher dispatcher = req.getRequestDispatcher("effettuaAcquisto.jsp");
		dispatcher.forward(req, resp);
	}
	
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		int idProdotto = Integer.parseInt(req.getParameter("idProdotto"));
		double prezzo = Double.parseDouble(req.getParameter("prezzo"));
		boolean offerta = Boolean.parseBoolean(req.getParameter("offerta"));
		int percSconto = Integer.parseInt(req.getParameter("percSconto"));
		int qAcquistata = Integer.parseInt(req.getParameter("qAcquistata"));
		
		String tipoSpedizione = req.getParameter("tipoSpedizione");
		TipoSpedizione spedizione = TipoSpedizione.valueOf(tipoSpedizione);
		LocalDate dataInizio = LocalDate.now();
		LocalDate dataFine = dataInizio.plusDays(dataInizio.getDayOfMonth());
		
		HttpSession sessione = req.getSession();
		Utente utenteLoggato = (Utente) sessione.getAttribute("utenteLoggato");
		
		double prezzoTotale = (prezzo * qAcquistata) + spedizione.getPrezzoDiSpedizione();
		double sconto = 0;
		double prezzoScontato = 0;
		
		if(offerta) {
			sconto = prezzoTotale * percSconto/100;
			prezzoScontato = prezzoTotale - sconto;
			Acquisto acquisto = new Acquisto();
			acquisto.setDataInizio(dataInizio);
			acquisto.setDataFine(dataFine);
			acquisto.setIdProdotto(idProdotto);
			acquisto.setIdUtente(utenteLoggato.getIdUtente());
			acquisto.setPrezzoDiSpedizione(spedizione.getPrezzoDiSpedizione());
			acquisto.setQuantitaAcquistata(qAcquistata);
			acquisto.setTipoSpedizione(spedizione);
			acquisto.setPrezzoTotale(prezzoScontato);
			AcquistoDaoImpl acquistoService = new AcquistoDaoImpl();
			acquistoService.insertAcquisto(acquisto);
			acquistoService.close();
			resp.sendRedirect("ListaOrdini");
			
			
		}else {
			Acquisto acquisto = new Acquisto();
			acquisto.setDataInizio(dataInizio);
			acquisto.setDataFine(dataFine);
			acquisto.setIdProdotto(idProdotto);
			acquisto.setIdUtente(utenteLoggato.getIdUtente());
			acquisto.setPrezzoDiSpedizione(spedizione.getPrezzoDiSpedizione());
			acquisto.setQuantitaAcquistata(qAcquistata);
			acquisto.setTipoSpedizione(spedizione);
			acquisto.setPrezzoTotale(prezzoTotale);
			AcquistoDaoImpl acquistoService = new AcquistoDaoImpl();
			acquistoService.insertAcquisto(acquisto);
			acquistoService.close();
			resp.sendRedirect("ListaOrdini");
			
		}
	}
	
}
