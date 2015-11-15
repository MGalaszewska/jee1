<%@page import="ksiega.domain.Book"%>
<%@page import="ksiega.service.StorageService"%>
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
				break;
			}
		}
		storage.removeBook(book);
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<a href="index.jsp">Powrót do strony głównej</a>
	<a href="showAllBooks.jsp">Lista książek</a>
</body>
</html>