package it.accenture.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sun.javafx.beans.IDProperty;

import it.accenture.dao.ProdottoDaoImpl;
import it.accenture.model.Prodotto;
import it.accenture.model.Utente;

public class Abbigliamento extends HttpServlet{


	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		List<Prodotto> listaProdotti= new ArrayList<>();
		ProdottoDaoImpl prodottoService = new ProdottoDaoImpl();
		listaProdotti = prodottoService.getAllA();
		for (Prodotto prodotto : listaProdotti) {
			System.out.println(prodotto);
		}
		req.setAttribute("listaProdotti", listaProdotti);
		RequestDispatcher dispatcher = req.getRequestDispatcher("abbigliamento.jsp");
		dispatcher.forward(req, resp);
	}
	 
		@Override
		protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
			
			int idProdotto = Integer.parseInt(req.getParameter("idProdotto"));
			ProdottoDaoImpl prodottoService = new ProdottoDaoImpl();
			Prodotto prodotto = prodottoService.getProdottoById(idProdotto);
			System.out.println(prodotto);
			req.setAttribute("prodotto", prodotto);
			RequestDispatcher dispatcher = req.getRequestDispatcher("listaAcquisti.jsp");
			dispatcher.forward(req, resp);
			
			
			
			
			
			
		}













}
