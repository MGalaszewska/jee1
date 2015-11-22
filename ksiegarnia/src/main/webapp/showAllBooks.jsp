<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Lista książek</title>
<style type="text/css">
body {
	background: #FFFFFF;
	background-color: #6399C7;
	background-image: url('http://www.stronastartowa.com/img/bg.gif');
	background-attachment: fixed;
	background-repeat: repeat-x;
	background-position: bottom;
	text-align: center;
}

h1 {
	font-family: Helvetica;
	font-size: xx-large;
	font-weight: 900;
}

table {
	border-collapse: collapse;
	width: 200px;
	text-align: center;
	margin-left: auto;
	margin-right: auto;
	vertical-align: bottom
}

td {
	border: 2px solid #000000;
	padding: 5px;
}

.header {
	font-weight: bold;
	background-color: #C0C0C0;
}

a:visited {
	text-decoration: none;
	color: Black
}

a:link {
	text-decoration: none;
	color: White;
}

a:hover {
	text-decoration: underline;
	color: White;
}

.przycisk {
	width: 60px;
}
</style>
</head>
<body>

	<h1>Książki</h1>
	<table>
	<tr class="header">
		<td>Tytuł</td>
		<td>Autor</td>
		<td>Rodzaj</td>
		<td>Opcje</td>
	</tr>
	<jsp:useBean id="storage" class="ksiega.service.StorageService"
		scope="application" />
	<c:forEach var="book" items="${storage.getAllBook()}">
		<tr>
			<td>${book.getTitle()}</td>
			<td>${book.getAuthor()}</td>
			<td>${book.getType()}</td>
			<td>
				<form action="removeBook.jsp">
					<input class="przycisk" type="submit" value="Usuń"> <input
						visibility: hidden type="text" name="id" value=${book.id}>
				</form>
				<form action="updateBook.jsp">
					<input class="przycisk" type="submit" value="Zmień"> <input
						visibility: hidden type="text" name="id" value=${book.id}>
				</form>
			</td>
		</tr>
	</c:forEach>
	</table>
		<p>
<<<<<<< HEAD
=======
	<%
		out.println("<h1>Książki</h1><table /><tr class='header'><td>Tytuł</td><td>Autor</td><td>Rodzaj</td><td>Opcje</tr>");
		for (Book book : storage.getAllBook()) {
			out.println("<tr><td>"
					+ book.getTitle()
					+ "</td><td>"
					+ book.getAuthor()
					+ "</td><td>"
					+ book.getType()
					+ "</td>"
					+ "<td><form action='removeBook.jsp'>"
					+ "<input class='przycisk' type='submit' value='   Usuń  '>"
					+ "<input visibility: hidden type='text' name='id' value='"
					+ book.getId()
					+ "'></form>"
					+ "<form action='updateBook.jsp'>"
					+ "<input class='przycisk' type='submit' value='Zmień'>"
					+ "<input visibility: hidden type='text' name='id' value='"
					+ book.getId() + "'></form></td></tr>");

		}
		out.println("</table>");
	%>
	<p>
>>>>>>> 2a81c0f7c9682b9f8075108edbf3348ce99ff450
		<a href="bookForm">Dodaj książkę</a>
	</p>
	<p>
		<a href="index.jsp">Powrót do strony głównej</a>
	</p>
</body>
</html>
