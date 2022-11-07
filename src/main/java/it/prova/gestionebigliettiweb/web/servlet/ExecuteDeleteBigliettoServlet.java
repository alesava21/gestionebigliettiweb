package it.prova.gestionebigliettiweb.web.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import it.prova.gestionebigliettiweb.service.MyServiceFactory;

@WebServlet("/admin/ExecuteDeleteBigliettoServlet")
public class ExecuteDeleteBigliettoServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String parametroIdBigliettoDaEliminare = request.getParameter("idDaInviareComeParametro");
		
		try {
			MyServiceFactory.getBigliettoServiceInstance().rimuovi(Long.parseLong(parametroIdBigliettoDaEliminare));
			request.setAttribute("listaBigliettiAttribute", MyServiceFactory.getBigliettoServiceInstance().listAll());
			request.setAttribute("successMessage", "Operazione effettuata con successo!");

		} catch (Exception e) {
			e.printStackTrace();
		}
		
		request.getRequestDispatcher("/biglietto/results.jsp").forward(request, response);
	}

}
