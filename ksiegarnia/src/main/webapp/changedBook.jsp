<%@page import="ksiega.domain.Book"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Zmieniono dane książki</title>
<style type="text/css">
body {
	background: #FFFFFF;
	background-color: #6399C7;
	background-image: url('http://www.stronastartowa.com/img/bg.gif');
	background-attachment: fixed;
	background-repeat: repeat-x;
	background-position: bottom;
}

body {
	color: White;
	font-family: Arial, Verdana, Helvetica, sans-serif;
	font-size: 20px;
	cursor: default;
	text-align: center;
}

h1 {
	font-family: Helvetica;
	font-size: xx-large;
	font-weight: 900;
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
</style>
<jsp:useBean id="tempBook" class="ksiega.domain.Book" scope="session" />
<jsp:useBean id="book" class="ksiega.domain.Book" scope="session" />
<jsp:setProperty name="book" property="*" />
<jsp:useBean id="storage" class="ksiega.service.StorageService"	scope="application" />
</head>
<body>

	<%
		for (Book tempB : storage.getAllBook()) {
			if (tempB.getId() == book.getId()) {
				book.setId(tempB.getId());
				break;
			}
		}
		Book newBook = new Book(book.getTitle(), book.getAuthor(),
				book.getType());
		storage.updateBook(book, newBook);
	%>
	<a href="index.jsp">Powrót do strony głównej</a>
	<a href="showAllBooks.jsp">Lista książek</a>
</body>
</html>