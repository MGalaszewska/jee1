package ksiega.web;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import ksiega.domain.Book;

@WebServlet(urlPatterns = "/dataBook")
public class DataServletBook extends HttpServlet {
	private static final long serialVersionUID = 1L;

	@Override
	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		Book book = new Book(request.getParameter("title"), request.getParameter("author"),
				request.getParameter("type"), request.getParameter("genre"));
		
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		String selectedGenre = "";
		for (String genre : request.getParameterValues("genre")) {
			selectedGenre += genre + " ";
		}
		out.println("<html><body><h2>Dodano książkę</h2>" 
				+ "<p>Tytuł: " + request.getParameter("title") + "<br />"
				+ "<p>Autor: " + request.getParameter("author") + "<br />"
				+ "<p>Rodzaj: " + request.getParameter("type") + "<br />"
				+ "<p>Gatunek: " + selectedGenre + "<br />"
				+ "</body></html>"
				+ "<p><a href='showAllBooks.jsp'>Lista książek</a></p>"
				+ "<p><a href='index.jsp'>Powrót do strony głównej</a></p>");
		out.close();
		request.setAttribute("book", book);
		request.getRequestDispatcher("addedBook.jsp").forward(request, response);
		
	}
}
