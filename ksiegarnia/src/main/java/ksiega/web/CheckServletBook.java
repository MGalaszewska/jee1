package ksiega.web;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import ksiega.domain.Book;

@WebServlet(urlPatterns = "/checkBook")
public class CheckServletBook extends HttpServlet {
	private static final long serialVersionUID = 1L;

	@Override
	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		
		/*
		Book book = new Book(request.getParameter("title"),
				request.getParameter("author"), request.getParameter("type"),
				request.getParameter("genre"));

		response.setContentType("text/html");
		String[] requestGenres = request.getParameterValues("genre");
		
		String selectedGenres = "";
		if (requestGenres == null) {
			selectedGenres = "brak";
		} else {
			for (String genre : requestGenres) {
				selectedGenres += genre + ", ";
			}
			selectedGenres = selectedGenres.substring(0,
					selectedGenres.length() - 2);
		}
		
		book.setGenre(selectedGenres);
		request.setAttribute("genre", selectedGenres);
		request.setAttribute("book", book);
		
		request.getRequestDispatcher("addedBook.jsp")
				.forward(request, response);

	}
	*/
		try {
			Book book = new Book(request.getParameter("title"),
					request.getParameter("author"),
					request.getParameter("type"));
			if (Book.validate(book) == false) {
				throw new Exception();
			} else {
			request.setAttribute("book", book);
			request.getRequestDispatcher("addedBook.jsp").forward(request,
					response);
			}
		} catch (Exception e) {
			request.getRequestDispatcher("errorBook.jsp").forward(request,
					response);
		}
	}

}
