<%@page import="ksiega.domain.Seller"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Lista pracowników</title>
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

	<jsp:useBean id="storage" class="ksiega.service.StorageService"
		scope="application" />
	<%
		out.println("<table /><tr class='header'><td>Imię</td><td>Nazwisko</td><td>PESEL</td><td>Pensja</td><td>Opcje</tr>");
		for (Seller seller : storage.getAllSellers()) {
			out.println("<tr><td>"
					+ seller.getFirstName()
					+ "</td><td>"
					+ seller.getLastName()
					+ "</td><td>"
					+ seller.getPesel()
					+ "</td><td>"
					+ seller.getSalary()
					+ "</td>"
					+ "<td><form action='removeSeller.jsp'>"
					+ "<input class='przycisk' type='submit' value='   Usuń  '>"
					+ "<input visibility: hidden type='text' name='id' value='"
					+ seller.getId()
					+ "'></form>"
					+ "<form action='updateSeller.jsp'>"
					+ "<input class='przycisk' type='submit' value='Zmień'>"
					+ "<input visibility: hidden type='text' name='id' value='"
					+ seller.getId() + "'></form></td></tr>");

		}
		out.println("</table>");
	%>
	<p>
		<a href="sellerForm">Dodaj pracownika</a>
	</p>
	<p>
		<a href="index.jsp">Powrót do strony głównej</a>
	</p>

</body>
</html>