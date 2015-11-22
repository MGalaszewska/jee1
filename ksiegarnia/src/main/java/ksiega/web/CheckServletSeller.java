package ksiega.web;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import ksiega.domain.Seller;

@WebServlet(urlPatterns = "/checkSeller")
public class CheckServletSeller extends HttpServlet {
	private static final long serialVersionUID = 1L;

	@Override
	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		
		try {
			Seller seller= new Seller(request.getParameter("firstName"),
					request.getParameter("lastName"),
					request.getParameter("pesel"), request.getParameter("salary"));
			if (Seller.validate(seller) == false) {
				throw new Exception();
			} else {
			request.setAttribute("seller", seller);
			request.getRequestDispatcher("addedSeller.jsp").forward(request,
					response);
			}
		} catch (Exception e) {
			request.getRequestDispatcher("errorSeller.jsp").forward(request,
					response);
		}
	}
}
