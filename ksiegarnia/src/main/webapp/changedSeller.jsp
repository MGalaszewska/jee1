<%@page import="ksiega.domain.Seller"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Zmieniono dane pracownika</title>
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
<jsp:useBean id="tempSeller" class="ksiega.domain.Seller" scope="session" />
<jsp:useBean id="seller" class="ksiega.domain.Seller" scope="session" />
<jsp:setProperty name="seller" property="*" />
<jsp:useBean id="storage" class="ksiega.service.StorageService" scope="application" />
</head>
<body>

	<%
		for (Seller tempS : storage.getAllSellers()) {
			if (tempS.getId() == seller.getId()) {
				seller.setId(tempS.getId());
				break;
			}
		}
		Seller newSeller = new Seller(seller.getFirstName(),
				seller.getLastName(), seller.getPesel(), seller.getSalary());
		storage.updateSeller(seller, newSeller);
	%>
	<a href="index.jsp">Powrót do strony głównej</a>
	<a href="showAllSellers.jsp">Lista pracowników</a>
</body>
</html>