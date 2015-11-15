<%@page import="ksiega.domain.Book"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Dynamiczny tytuł</title>
</head>
<body>

	<jsp:useBean id="storage" class="ksiega.service.StorageService"
		scope="application" />
	<%
		out.println("<table border cellspacing='0' style='border: 15px'/><tr><td>Tytuł</td><td>Autor</td><td>Rodzaj</td><td>Opcje</tr>");
		for (Book book : storage.getAllBook()) {
			out.println("<tr><td>"
					+ book.getTitle()
					+ "</td><td>"
					+ book.getAuthor()
					+ "</td><td>"
					+ book.getType()
					+ "</td>"
					+"<td><form action='removeBook.jsp'>"
					+ "<input type='submit' value='Usuń'>"
					+ "<input visibility: hidden type='text' name='id' value='"
					+ book.getId()
					+ "'></form>"
					+ "<form action='updateBook.jsp'>"
					+ "<input type='submit' value='Zmień'>"
					+ "<input visibility: hidden type='text' name='id' value='"
					+ book.getId() + "'></form></td></tr>");

		}
		out.println("</table>");
	%>
	<p>
		<a href="bookForm">Dodaj książkę</a>
	</p>
	<p>
		<a href="index.jsp">Powrót do strony głównej</a>
	</p>

</body>
</html>