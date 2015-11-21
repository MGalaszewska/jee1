<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Dodawanie pracownika</title>
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

	<jsp:useBean id="storage" class="ksiega.service.StorageService" scope="application" />
	<jsp:useBean id="seller" class="ksiega.domain.Seller" scope="session" />
	<form action="addSeller.jsp">
		Imię: <input type="text" name="title" value="" /><br /> 
		Nazwisko: <input type="text" name="author" value="" /><br /> 
		PESEL: <input type="text" name="type" value="" /><br /> 
		Pensja: <input type="text" name="type" value="" /><br /> 
		<input type="submit" value=" OK ">
		<p>
			<a href="index.jsp">Powrót do strony głównej</a>
		</p>
	</form>
</body>
</html>