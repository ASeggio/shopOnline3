package it.accenture.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import it.accenture.dao.UtenteDaoImpl;
import it.accenture.model.Utente;

public class Registrazione extends HttpServlet{
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String nome = req.getParameter("nome");
		String cognome = req.getParameter("cognome");
		String username = req.getParameter("username");
		String password = req.getParameter("password");
		String indirizzo = req.getParameter("indirizzo");
		Utente utente = new Utente();
		utente.setNome(nome);
		utente.setCognome(cognome);
		utente.setUsername(username);
		utente.setPassword(password);
		utente.setIndirizzo(indirizzo);
		System.out.println(utente);
		if(utente != null){
			//successo
			HttpSession sessione = req.getSession();
			sessione.setAttribute("utenteRegistrato", utente);
			RequestDispatcher dispatcher = req.getRequestDispatcher("index.jsp");
			dispatcher.forward(req, resp);
		} else {
			
			req.setAttribute("errore", true);
			RequestDispatcher dispatcher = req.getRequestDispatcher("registrazione.jsp?form=login");
			dispatcher.forward(req, resp);
		}
		/*
		UtenteDaoImpl utenteService = new UtenteDaoImpl();
		utenteService.registrazione(utente);
		System.out.println("utente registrato");
		utenteService.close();
		RequestDispatcher dispatcher = req.getRequestDispatcher("registrazione.jsp?form=login");
		dispatcher.forward(req, resp);
		
	}
*/
}
}
