<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Księgarnia</title>

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
	<h1 align="center">Księgarnia</h1>
	<p>
		<a href="bookForm">Dodaj książkę</a>
	</p>
	<p>
		<a href="showAllBooks.jsp">Lista wszystkich książek</a>
	</p>
	<p>
		<a href="sellerForm">Dodaj pracownika</a>
	</p>
	<p>
		<a href="showAllSellers.jsp">Lista wszystkich pracowników</a>
	</p>
</body>
</html>