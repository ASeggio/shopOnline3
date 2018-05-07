package it.accenture.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import it.accenture.dao.ProdottoDaoImpl;
import it.accenture.model.Prodotto;
import sun.rmi.server.Dispatcher;

public class CercaProdotto extends HttpServlet {
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		List<Prodotto> listaCerca = new ArrayList<>();
		String nomeProdotto = req.getParameter("nomeProdotto");
		
		ProdottoDaoImpl prodottoService = new ProdottoDaoImpl();
		listaCerca = prodottoService.getProdottiByNome(nomeProdotto);
		System.out.println("i prodotti sono : " + listaCerca.size());
		prodottoService.close();
		req.setAttribute("listaCerca", listaCerca);
		RequestDispatcher dispatcher = req.getRequestDispatcher("listaCerca.jsp");
		dispatcher.forward(req, resp);
		
	}

}
