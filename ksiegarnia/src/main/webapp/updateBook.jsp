<%@page import="ksiega.domain.Book"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<jsp:useBean id="tempBook" class="ksiega.domain.Book" scope="session" />
<jsp:useBean id="book" class="ksiega.domain.Book" scope="session" />
<jsp:useBean id="storage" class="ksiega.service.StorageService"	scope="application" />
<jsp:setProperty name="tempBook" property="id" />
<%
	if (book.validate(book)) {
		for (Book tempB : storage.getAllBook()) {
			if (tempB.getId() == tempBook.getId()) {
				book.setId(tempB.getId());
				book.setTitle(tempB.getTitle());
				book.setAuthor(tempB.getAuthor());
				book.setType(tempB.getType());
				break;
			}
		}
	}
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Aktualizacja książki</title>
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
</head>
<body>
	<form action="changedBook.jsp">
		<label>Tytuł: &nbsp;</label><input type="text" name="title"
			value='<jsp:getProperty name="book" property="title"></jsp:getProperty>' /><br />
		<label>Autor: &nbsp;</label><input type="text" name="author"
			value='<jsp:getProperty name="book" property="author"></jsp:getProperty>' /><br />
		<%
			if (book.getType().equals("podręcznik")) {
		%>
		<input type='radio' name='type' value='podręcznik' checked>Podręcznik<br />
		<input type='radio' name='type' value='książka'>Książka<br />
		<input type='radio' name='type' value='inne'>Inne<br />
		<%
			} else if (book.getType().equals("książka")) {
		%>
		<input type='radio' name='type' value='podręcznik'>Podręcznik<br />
		<input type='radio' name='type' value='książka' checked>Książka<br />
		<input type='radio' name='type' value='inne'>Inne<br />
		<%
			} else {
		%>
		<input type='radio' name='type' value='podręcznik'>Podręcznik<br />
		<input type='radio' name='type' value='książka'>Książka<br />
		<input type='radio' name='type' value='inne' checked>Inne<br />
		<%
			}
		%>
		<p>
			<input type="submit" value=" OK ">
		</p>
	</form>
	<a href="index.jsp">Powrót do strony głównej</a>
	<a href="showAllBooks.jsp">Lista książek</a>
</body>
</html>