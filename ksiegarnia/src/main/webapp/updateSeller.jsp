<%@page import="ksiega.domain.Seller"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Zmiana danych pracownika</title>
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
	<jsp:useBean id="tempSeller" class="ksiega.domain.Seller"
		scope="session" />
	<jsp:useBean id="seller" class="ksiega.domain.Seller" scope="session" />
	<jsp:useBean id="storage" class="ksiega.service.StorageService"
		scope="application" />
	<jsp:setProperty name="tempSeller" property="id" />
	<c:forEach var="tempS" items="${storage.getAllSellers()}">
		<c:if test="${tempS.getId() eq tempSeller.getId()}">
				${seller.setId(tempS.getId())}
				${seller.setFirstName(tempS.getFirstName())}
				${seller.setLastName(tempS.getLastName())}
				${seller.setPesel(tempS.getPesel())}
				${seller.setSalary(tempS.getSalary())}
				</c:if>
	</c:forEach>
	<form action="changedSeller.jsp">
		<label>Imię: &nbsp;</label><input type="text" name="firstName"
			value='<jsp:getProperty name="seller" property="firstName"></jsp:getProperty>' /><br />
		<label>Nazwisko: &nbsp;</label><input type="text" name="lastName"
			value='<jsp:getProperty name="seller" property="lastName"></jsp:getProperty>' /><br />
		<label>PESEL: &nbsp;</label><input maxlength='11' type="text" name="pesel"
			value='<jsp:getProperty name="seller" property="pesel"></jsp:getProperty>' /><br />
		<label>Pensja: &nbsp;</label><input type="text" name="salary"
			value='<jsp:getProperty name="seller" property="salary"></jsp:getProperty>' /><br />
		<p>
			<input type="submit" value=" OK ">
		</p>
	</form>
	<a href="index.jsp">Powrót do strony głównej</a>
	<a href="showAllSellers.jsp">Lista pracowników</a>
</body>
</html>