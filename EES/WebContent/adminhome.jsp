<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style>
* {
	text-decoration: none;
	list-style: none;
	margin: 0px;
	padding: 0px;
	outline: none;
}

body {
	margin: 0px;
	padding: 0px;
	font-family: 'Open Sans', sans-serif;
}

section {
	width: 100%;
	max-width: 1200px;
	margin: 0px auto;
	display: table;
	position: relative;
}

h1 {
	margin: 0px auto;
	display: table;
	font-size: 26px;
	padding: 40px 0px;
	color: #000;
	text-align: center;
}

h1 span {
	font-weight: 500;
}

header {
	width: 100%;
	display: table;
	background-color: #fde428;
	margin-bottom: 50px;
}

#logo {
	float: left;
	font-size: 24px;
	text-transform: uppercase;
	color: #000;
	font-weight: 600;
	padding: 20px 0px;
}

nav {
	width: auto;
	float: right;
}

nav ul {
	display: table;
	float: right;
}

nav ul li {
	float: left;
}

nav ul li:last-child {
	padding-right: 0px;
}

nav ul li a {
	color: #000;
	font-size: 18px;
	padding: 25px 20px;
	display: inline-block;
	transition: all 0.5s ease 0s;
}

nav ul li a:hover {
	background-color: #000;
	color: #fde428;
	transition: all 0.5s ease 0s;
}

nav ul li a:hover i {
	color: #000;
	transition: all 0.5s ease 0s;
}

nav ul li a i {
	padding-right: 10px;
	color: #000;
	transition: all 0.5s ease 0s;
}

.content {
	display: table;
	margin-bottom: 60px;
	width: 900px;
}

.content h2 {
	font-size: 18px;
	font-weight: 500;
	color: #000;
	border-bottom: 1px solid #fde428;
	display: table;
	padding-bottom: 10px;
	margin-bottom: 10px;
}

.content p {
	font-size: 14px;
	line-height: 22px; #000;
	text-align: justify;
}

{
header {
	padding: 20px 0px;
}

nav {
	display: none;
	position: absolute;
	right: 0px;
	top: 53px;
	background-color: #002e5b;
	padding: 0px;
	z-index: 99;
}

nav ul {
	width: auto;
}

nav ul li {
	float: none;
	padding: 0px;
	width: 100%;
	display: table;
}

nav ul li a {
	color: #FFF;
	font-size: 15px;
	padding: 10px 20px;
	display: block;
	border-bottom: 1px solid rgba(225, 225, 225, 0.1);
}

nav ul li a i {
	color: #fde428;
	padding-right: 13px;
}

}
@media only screen and (max-width: 980px) {
	.content {
		width: 90%;
	}
}

@media only screen and (max-width: 568px) {
	h1 {
		padding: 25px 0px;
	}
	h1 span {
		display: block;
	}
}

@media only screen and (max-width: 480px) {
	section {
		max-width: 90%;
	}
}

@media only screen and (max-width: 360px) {
	h1 {
		font-size: 20px;
	}
	label {
		padding: 5px 0px;
	}
	#logo {
		font-size: 20px;
	}
	nav {
		top: 47px;
	}
}

@media only screen and (max-width: 320px) {
	h1 {
		padding: 20px 0px;
	}
}
</style>

</head>
<body>
	<%@ include file="AdminMenu.html"%>



	<%

	%>
</body>
</html>
