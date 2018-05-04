package it.accenture.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sun.javafx.beans.IDProperty;

import it.accenture.dao.AcquistoDaoImpl;
import it.accenture.dao.ProdottoDaoImpl;
import it.accenture.model.Acquisto;
import it.accenture.model.Prodotto;

public class ListaAcquisti extends HttpServlet{
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		List<Acquisto> listaAcquisti = new ArrayList<>();
		AcquistoDaoImpl acquistoService = new AcquistoDaoImpl();
		listaAcquisti = acquistoService.getAll();
		ServletRequest session = null;
		
		
		for (Acquisto acquisto : listaAcquisti) {
			
			System.out.println(); 
	}
	
	req.setAttribute("listaAcquisti", listaAcquisti);
	RequestDispatcher dispatcher = req.getRequestDispatcher("listaAcquisti.jsp");
	dispatcher.forward(req, resp);
	}
	
	
	
	
	
	
	}










