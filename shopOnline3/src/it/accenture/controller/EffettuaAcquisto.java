package it.accenture.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import it.accenture.dao.ProdottoDaoImpl;
import it.accenture.model.Prodotto;

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
		int sconto = Integer.parseInt(req.getParameter("sconto"));
		int qDisponibile = Integer.parseInt(req.getParameter("qDisponibile"));
		
	}
	
}
