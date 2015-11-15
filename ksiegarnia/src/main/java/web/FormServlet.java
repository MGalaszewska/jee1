package web;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(urlPatterns = "/bookForm")
public class FormServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	@Override
	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out = response.getWriter();
		out.println("<html><body><h2>Dodawamy książkę</h2>"
				+ "<form method='post' action='addBook.jsp'>"
				+ "Tytuł: &nbsp;<input type='text' name='title' /> <br/>"
				+ "Autor: <input type='text' name='author' /> <br />"
				+ "<input type='radio' name ='type' value='podręcznik'>Podręcznik<br/>"
				+ "<input type='radio' name ='type' value='książka'>Książka<br/><br/>"
				+ "<input type='submit' value=' OK ' />" + "</form>"
				+ "</body></html>"
				+ "<p><a href='index.jsp'>Powrót do strony głównej</a></p>");
		out.close();
	}
}