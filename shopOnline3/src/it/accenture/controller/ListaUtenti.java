package it.accenture.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import it.accenture.dao.UtenteDaoImpl;
import it.accenture.model.Utente;

public class ListaUtenti extends HttpServlet{

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		int idUtente = Integer.parseInt(req.getParameter("idUtente"));

		UtenteDaoImpl utenteService = new UtenteDaoImpl();
		Utente utente = utenteService.getById(idUtente);
		/*for (Utente utente : listaUtenti) {
			System.out.println(utente);
		}*/
		req.setAttribute("utente", utente);
		RequestDispatcher dispatcher = req.getRequestDispatcher("listaUtenti.jsp");
		dispatcher.forward(req, resp);
	}
	}
	










