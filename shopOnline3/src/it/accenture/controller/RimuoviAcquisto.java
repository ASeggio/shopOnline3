package it.accenture.controller;



import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import it.accenture.dao.ProdottoDaoImpl;
import it.accenture.model.Prodotto;

public class RimuoviAcquisto extends HttpServlet{
	
	
	
	
	 @Override
		protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		 HttpSession session = req.getSession(); 
		
			int idProdotto=  Integer.parseInt(req.getParameter("idProdotto"));
			 List<Prodotto> listaCarrello = (List<Prodotto>) session.getAttribute("listaCarrello");
			ProdottoDaoImpl prodottoService = new ProdottoDaoImpl();
			Prodotto prodotto = new Prodotto();
			prodotto = prodottoService.getProdottoById(idProdotto);
			prodottoService.close();
			listaCarrello.remove(prodotto);
			System.out.println(listaCarrello);
			session.setAttribute("listaCarrello", listaCarrello);
			resp.sendRedirect("listaCarrello.jsp");
		
		
		}
	
	}


