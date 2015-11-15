<%@page import="ksiega.domain.Seller"%>
<%@page import="ksiega.service.StorageService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<jsp:useBean id="tempSeller" class="ksiega.domain.Seller"
	scope="session" />
<jsp:useBean id="storage" class="ksiega.service.StorageService"
	scope="application" />
<jsp:setProperty name="tempSeller" property="id" />
<%
	Seller seller = new Seller();
	for (Seller tempS : storage.getAllSellers()) {
		if (tempS.getId() == tempSeller.getId()) {
			seller.setId(tempSeller.getId());
			break;
		}
	}
	storage.removeSeller(seller);
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Usunięto pracownika</title>
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
	<a href="index.jsp">Powrót do strony głównej</a>
	<a href="showAllSellers.jsp">Lista pracowników</a>
</body>
</html>