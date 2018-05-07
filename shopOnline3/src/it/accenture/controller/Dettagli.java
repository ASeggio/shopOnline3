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
import it.accenture.dao.RecensioneDaoImpl;
import it.accenture.model.Prodotto;
import it.accenture.model.Recensioni;


public class Dettagli extends HttpServlet{
//ciao
@Override
protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	int idProdotto = Integer.parseInt(req.getParameter("idProdotto"));
	ProdottoDaoImpl prodottoService = new ProdottoDaoImpl();
	Prodotto prodotto = prodottoService.getProdottoById(idProdotto);
	System.out.println(prodotto);
	List<Recensioni> listaRecensioni = new ArrayList<>();
	RecensioneDaoImpl recensioneService = new RecensioneDaoImpl();
	listaRecensioni = recensioneService.getRecensioniByIdProdotto(idProdotto);
	req.setAttribute("prodotto", prodotto);
	req.setAttribute("listaRecensioni", listaRecensioni);
	RequestDispatcher dispatcher = req.getRequestDispatcher("dettagli.jsp");
	dispatcher.forward(req, resp);
}
}
