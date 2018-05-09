package it.accenture.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import it.accenture.dao.ProdottoDaoImpl;
import it.accenture.dao.RecensioneDao;
import it.accenture.dao.RecensioneDaoImpl;
import it.accenture.model.Prodotto;
import it.accenture.model.Recensioni;
import it.accenture.model.Utente;

public class InserisciRecensione extends HttpServlet{

@Override
protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	HttpSession session = req.getSession();
	String titolo = req.getParameter("titolo");
	String contenuto = req.getParameter("contenuto");
	Utente utenteLoggato = (Utente) session.getAttribute("utenteLoggato");
	int idProdotto = Integer.parseInt(req.getParameter("IdProdotto"));
	
	
	Recensioni recensioni = new Recensioni();
	RecensioneDaoImpl recensioneService = new RecensioneDaoImpl();
	recensioni.setTitolo(titolo);
	recensioni.setContenuto(contenuto);
	recensioni.setIdUtente(utenteLoggato.getIdUtente());
	recensioni.setIdProdotto(idProdotto);
	
	recensioneService.inserisciRecensione(recensioni);
	System.out.println(recensioni);	
	List<Recensioni> listaRecensioni = new ArrayList<>();
	listaRecensioni = recensioneService.getRecensioniByIdProdotto(idProdotto);
	
	req.setAttribute("listaRecensioni", listaRecensioni);
	Prodotto prodotto = new Prodotto();
	ProdottoDaoImpl prodottoService = new ProdottoDaoImpl();
	prodotto = prodottoService.getProdottoById(idProdotto);
	req.setAttribute("prodotto", prodotto);
	System.out.println(prodotto);
	System.out.println(listaRecensioni);
	RequestDispatcher dispatcher = req.getRequestDispatcher("dettagli.jsp");
	
	dispatcher.forward(req, resp);	
}
 @Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	 int idProdotto = Integer.parseInt(req.getParameter("idProdotto"));
	 	
		req.setAttribute("idProdotto", idProdotto);
		RequestDispatcher dispatcher = req.getRequestDispatcher("recensioni.jsp");
		dispatcher.forward(req, resp);
	}
}	

	

	






