package it.prova.gestionebigliettiweb.web.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import it.prova.gestionebigliettiweb.model.Biglietto;
import it.prova.gestionebigliettiweb.service.MyServiceFactory;
import it.prova.gestionebigliettiweb.utility.UtilityBigliettoForm;

@WebServlet("/admin/EecuteInsertBIgliettoServlet")
public class EecuteInsertBIgliettoServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		// estraggo i dati
		String provenienza = request.getParameter("provenienzaInput");
		String destinazione = request.getParameter("destinazioneInput");
		String prezzo = request.getParameter("prezzoInput");
		String data = request.getParameter("datainput");

		// preparo un bean (che mi serve sia per tornare in pagina
		// che per inserire) e faccio il binding dei parametri
		Biglietto bigliettoInatance = UtilityBigliettoForm.createBigliettoFromParams(provenienza, destinazione, prezzo, data);

		// se la validazione non risulta ok
		if (!UtilityBigliettoForm.validateBigliettoBean(bigliettoInatance)) {
			request.setAttribute("insert_biglietto_attr", bigliettoInatance);
			request.setAttribute("errorMessage", "Attenzione sono presenti errori di validazione bisogna completare tutti i campi prima di procedere");
			request.getRequestDispatcher("/biglietto/insert.jsp").forward(request, response);
			return;
		}
		
		// se sono qui i valori sono ok quindi posso creare l'oggetto da inserire
		// occupiamoci delle operazioni di business
		
		try {
			MyServiceFactory.getBigliettoServiceInstance().inserisciNuovo(bigliettoInatance);
			request.setAttribute("listaBigliettiAttribute", MyServiceFactory.getBigliettoServiceInstance().listAll());
			request.setAttribute("successMessage", "Operazione effettuata con successo");
			
		} catch (Exception e) {
			e.printStackTrace();
			request.setAttribute("errorMessage", "Attenzione si è verificato un errore.");
			request.getRequestDispatcher("/index.jsp").forward(request, response);
			return;
		}
		
		request.getRequestDispatcher("/biglietto/results.jsp").forward(request, response);

	}

}
