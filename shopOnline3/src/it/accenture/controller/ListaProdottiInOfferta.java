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

public class ListaProdottiInOfferta extends HttpServlet {


@Override
protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	int idProdotto = Integer.parseInt(req.getParameter("idProdotto"));
	boolean offerta = Boolean.parseBoolean(req.getParameter("offerta"));
	ProdottoDaoImpl prodottoService = new ProdottoDaoImpl();
	List<Prodotto> listaProdotti = prodottoService.getProdottobyOfferta(idProdotto, offerta);
	System.out.println(listaProdotti);
	RequestDispatcher dispatcher = req.getRequestDispatcher("listaProdottiInOfferta.jsp");
	dispatcher.forward(req, resp);












}

















}
