package web;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.Client;
/**
 * Servlet implementation class creerClient
 */
@WebServlet("/creerClient")
public class creerClient extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 String nom = request.getParameter("nom");
	     String prenom = request.getParameter("prenom");
	     String telephone = request.getParameter("telephone");
	     String email = request.getParameter("email");
	
	     if (nom == null || nom.isEmpty() ||
	         prenom == null || prenom.isEmpty() ||
	         telephone == null || telephone.isEmpty() ||
	         email == null || email.isEmpty()) {

	         request.setAttribute("erreur", "Oups, erreur !!! Vous devez remplir tous les champs");
	         request.getRequestDispatcher("Inscription.jsp").forward(request, response);
	         return;
	     }
	     Client client = new Client(nom, prenom, telephone, email);
	     
	     request.setAttribute("client", client);
	     request.setAttribute("message", "Client ajouté avec succès");

	     request.getRequestDispatcher("infoClient.jsp").forward(request, response);
	}

}
