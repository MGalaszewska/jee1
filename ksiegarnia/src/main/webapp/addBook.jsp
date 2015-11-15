<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Dodaj książkę</title>
</head>
<body>
	<jsp:useBean id="book" class="ksiega.domain.Book" scope="session" />
	<jsp:setProperty name="book" property="*" />
	<jsp:useBean id="storage" class="ksiega.service.StorageService"
		scope="application" />
	<%
		storage.add(book);
	%>
	<p>Dodano taką oto książkę:</p>
	<p>
		Tytul:
		<jsp:getProperty name="book" property="title"></jsp:getProperty></p>
	<p>
		Autor:
		<jsp:getProperty name="book" property="author"></jsp:getProperty></p>
	<p>
		Rodzaj:
		<jsp:getProperty name="book" property="type"></jsp:getProperty></p>
	<p>
		<a href="showAllBooks.jsp">Show all books</a>
	</p>
	<p>
		<a href="index.jsp">Powrót do strony głównej</a>
	</p>


</body>
</html>