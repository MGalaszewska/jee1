<%@page import="ksiega.domain.Book"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<jsp:useBean id="tempBook" class="ksiega.domain.Book" scope="session" />
<jsp:useBean id="storage" class="ksiega.service.StorageService"
	scope="application" />
<jsp:setProperty name="tempBook" property="id" />
<%
	Book book = new Book();
	for (Book tempB : storage.getAllBook()) {
		if (tempB.getId() == tempBook.getId()) {
			book.setId(tempBook.getId());
			book.setTitle(tempBook.getTitle());
			book.setAuthor(tempBook.getAuthor());
			book.setType(tempBook.getType());
			break;
		}
	}
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="changedBook.jsp">
		<label>Tytuł: &nbsp;</label><input type="text" name="title"
			value='<jsp:getProperty name="book" property="title"></jsp:getProperty>' /><br />
		<label>Autor: &nbsp;</label><input type="text" name="author"
			value='<jsp:getProperty name="book" property="author"></jsp:getProperty>' /><br />
		<label>Rodzaj: </label><input type='radio' name ='type' value='podręcznik'>Podręcznik<br/>
				<input type='radio' name ='type' value='książka'>Książka<br/><br/>
		<p>
			<input type="submit" value=" OK ">
		</p>
	</form>
	<a href="index.jsp">Powrót do strony głównej</a>
	<a href="showAllBooks.jsp">Lista książek</a>
</body>
</html>