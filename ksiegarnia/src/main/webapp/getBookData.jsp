<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Lista książek</title>
</head>
<body>

	<jsp:useBean id="storage" class="ksiega.service.StorageService"
		scope="application" />
	<jsp:useBean id="book" class="ksiega.domain.Book" scope="session" />
	<form action="addBook.jsp">
		Tytul: <input type="text" name="tytul" value="" /><br /> Autor: <input
			type="text" name="autor" value="" /><br /> <input type="submit"
			value=" OK ">
	</form>
</body>
</html>