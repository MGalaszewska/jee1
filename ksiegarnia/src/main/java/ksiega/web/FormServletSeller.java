package ksiega.web;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(urlPatterns = "/sellerForm")
public class FormServletSeller extends HttpServlet {
	private static final long serialVersionUID = 1L;

	@Override
	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out = response.getWriter();
		out.println("<html><title>Dodaj pracownika</title>"
				+ "<style type='text/css'>body {background: #FFFFFF;"
				+ "background-color: #6399C7;"
				+ "background-image: url('http://www.stronastartowa.com/img/bg.gif');"
				+ "background-attachment: fixed;"
				+ "background-repeat: repeat-x;"
				+ "background-position: bottom;	}"
				+ "body {color: White;font-family: Arial, Verdana, Helvetica, sans-serif; text-indent: 0%;"
				+ "font-size: 20px;	cursor: default; text-align: center;}"
				+ "h1 {font-family: Helvetica;font-size: xx-large;font-weight: 900;	}"
				+ "a:visited {text-decoration: none;color: Black}"
				+ "a:link {	text-decoration: none;color: White;}"
				+ "a:hover {text-decoration: underline;	color: White;}"
				+ "</style>"
				+ "<body><h2>Wpisz dane pracownika</h2>"
				+ "<form action='checkSeller'>"
				+ "Imię: &nbsp;<input type='text' name='firstName' /> <br/>"
				+ "Nazwisko: <input type='text' name='lastName' /> <br/>"
				+ "PESEL: <input maxlength='11' type='text' name='pesel' /> <br/>"
				+ "Pensja: <input type='text' name='salary' /> <br/>"
				+ "<input type='submit' value=' OK ' />" + "</form>"
				+ "</body></html>"
				+ "<p><a href='index.jsp'>Powrót do strony głównej</a></p>");
		out.close();
	}
}