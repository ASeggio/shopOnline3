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

import it.accenture.dao.RecensioneDao;
import it.accenture.dao.RecensioneDaoImpl;
import it.accenture.model.Prodotto;
import it.accenture.model.Recensioni;
import it.accenture.model.Utente;

public class InserisciRecensione extends HttpServlet{

@Override
protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	HttpSession session = req.getSession();
	Utente utenteLoggato = (Utente) session.getAttribute("utenteLoggato");
	int idProdotto = Integer.parseInt(req.getParameter("idPrdotto"));
	String contenuto = req.getParameter("contenuto");
	String titolo = req.getParameter("titolo");
	Recensioni recensioni = new Recensioni();
	RecensioneDaoImpl recensioneService = new RecensioneDaoImpl();
	recensioni.setContenuto(contenuto);
	recensioni.setTitolo(titolo);
	recensioni.setIdProdotto(idProdotto);
	recensioni.setIdUtente(utenteLoggato.getIdUtente());
	recensioneService.inserisciRecensione(recensioni);
	System.out.println(recensioni);	
	req.setAttribute("recensioni", recensioni);
	RequestDispatcher dispatcher = req.getRequestDispatcher("dettagli.jsp");
	dispatcher.forward(req, resp);	
}
}	

	

	






