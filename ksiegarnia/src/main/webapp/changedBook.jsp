<%@page import="ksiega.domain.Book"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<jsp:useBean id="oldBook" class="ksiega.domain.Book" scope="session" />
<jsp:setProperty name="oldBook" property="*" />
</head>
<body>
	<jsp:useBean id="book" class="ksiega.domain.Book" scope="session" />
	<jsp:useBean id="storage" class="ksiega.service.StorageService"
		scope="application" />
	<%
		for (Book tempB : storage.getAllBook()) {
			if (tempB.getId() == oldBook.getId()) {
				book.setId(tempB.getId());
				break;
			}
		}
		Book newBook = new Book(oldBook.getTitle(), oldBook.getAuthor(),
				oldBook.getType(), oldBook.getId());
		storage.updateBook(book, newBook);
	%>
	<a href="index.jsp">Powrót do strony głównej</a>
	<a href="showAllBooks.jsp">Lista książek</a>

</body>
</html>