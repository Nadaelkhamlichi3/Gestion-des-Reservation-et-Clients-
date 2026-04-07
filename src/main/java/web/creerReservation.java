package web;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.Reservation;
import model.Client;
/**
 * Servlet implementation class creerReservation
 */
@WebServlet("/creerReservation")
public class creerReservation extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String nom = request.getParameter("nom");
        String prenom = request.getParameter("prenom");
        String telephone = request.getParameter("telephone");
        String email = request.getParameter("email");
        String type = request.getParameter("type");
        String prixStr = request.getParameter("prix");
        String vue = request.getParameter("vue");

        if (nom == null || nom.isEmpty() ||
            prenom == null || prenom.isEmpty() ||
            telephone == null || telephone.isEmpty() ||
            email == null || email.isEmpty() ||
            type == null || type.isEmpty() ||
            prixStr == null || prixStr.isEmpty() ||
            vue == null || vue.isEmpty()) {

            request.setAttribute("erreur", "Oups, erreur !!! Vous devez remplir tous les champs");
            request.getRequestDispatcher("Reservation.jsp").forward(request, response);
            return;
        }

        double prix = Double.parseDouble(prixStr);

        Client client = new Client(nom, prenom, telephone, email);
        Reservation reservation = new Reservation(client, type, prix, vue);

        request.setAttribute("reservation", reservation);
        request.setAttribute("message", "Client ajouté avec succès");

        request.getRequestDispatcher("infoReservation.jsp").forward(request, response);
    }

}
