package it.accenture.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import it.accenture.dao.RecensioneDao;
import it.accenture.dao.RecensioneDaoImpl;
import it.accenture.model.Prodotto;
import it.accenture.model.Recensioni;

public class InserisciRecensione extends HttpServlet{

@Override
protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	Recensioni recensioni = new Recensioni();
	List<Recensioni> listaRecensioni= new ArrayList<>();
	RecensioneDaoImpl recensioneService = new RecensioneDaoImpl();
	
	recensioneService.inserisciRecensione(recensioni);
	for (Recensioni recensione : listaRecensioni) {
		System.out.println(recensioni);
	}	
	
	req.setAttribute("recensione", listaRecensioni);
	RequestDispatcher dispatcher = req.getRequestDispatcher("dettagli.jsp");
	dispatcher.forward(req, resp);	
}
}	

	

	






