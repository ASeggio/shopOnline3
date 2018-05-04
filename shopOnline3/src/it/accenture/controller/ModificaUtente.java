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
import it.accenture.dao.UtenteDaoImpl;
import it.accenture.model.Prodotto;
import it.accenture.model.Utente;

public class ModificaUtente extends HttpServlet{

	
	@Override
	
		protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		HttpSession sessione= req.getSession();
		Utente utenteLoggato = (Utente) sessione.getAttribute("utenteLoggato");
		UtenteDaoImpl utenteService = new UtenteDaoImpl();
		
		
		String nome = req.getParameter("nome");
		String cognome = req.getParameter("cognome");
		String username = req.getParameter("username");
		String password = req.getParameter("password");
		String indirizzo = req.getParameter("indirizzo");

		
		utenteLoggato.setNome(nome);
		utenteLoggato.setCognome(cognome);
		utenteLoggato.setUsername(username);
		utenteLoggato.setPassword(password);
		utenteLoggato.setIndirizzo(indirizzo);
		//ciao
		
		utenteService.modificaUtente(utenteLoggato);
		System.out.println("utente modificato");
		utenteService.close();
		RequestDispatcher dispatcher = req.getRequestDispatcher("index.jsp");
		dispatcher.forward(req, resp);
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
	


	}
	
}
	
	
	


	
		
	










	


