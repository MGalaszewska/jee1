<%@ page import="ksiega.domain.Seller"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Dodany pracownik:</title>
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
	<jsp:useBean id="seller" class="ksiega.domain.Seller" scope="request" />
	<jsp:useBean id="storage" class="ksiega.service.StorageService"	scope="application" />
	<% storage.addSeller(seller); %>
	<p>Dodano pracownika:</p>
	<p>
		Imię:	 <jsp:getProperty name="seller" property="firstName"></jsp:getProperty>
		Nazwisko:<jsp:getProperty name="seller" property="lastName"></jsp:getProperty>
		PESEL:	 <jsp:getProperty name="seller" property="pesel"></jsp:getProperty>
		Pensja:	 <jsp:getProperty name="seller" property="salary"></jsp:getProperty>
	</p>
	<input type="button" value="Wróć" onclick="history.back(-1)" />
	<p>
		<a href="showAllSellers.jsp">Lista pracowników</a>
	</p>
	<p>
		<a href="index.jsp">Powrót do strony głównej</a>
	</p>
</body>
</html>