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


import it.accenture.dao.UtenteDaoImpl;

import it.accenture.model.Utente;

public class ListaUtenti extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		List<Utente> listaUtente = new ArrayList<>();
		UtenteDaoImpl utenteService = new UtenteDaoImpl();
		HttpSession sessione = req.getSession();
		Utente utenteLoggato = (Utente) sessione.getAttribute("utenteLoggato");
		listaUtente = utenteService.getById(utenteLoggato.getIdUtente());
		for (Utente utente : listaUtente) {
			System.out.println(utente);
		}
		req.setAttribute("listaUtente", listaUtente);
		RequestDispatcher dispatcher = req.getRequestDispatcher("listaUtenti.jsp");
		dispatcher.forward(req, resp);
	}
	}
	







