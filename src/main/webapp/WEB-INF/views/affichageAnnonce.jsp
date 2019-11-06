<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="css/custom.css">
<link href="https://fonts.googleapis.com/css?family=Pacifico|Source+Code+Pro:200,200i,300,300i,400,400i,500,500i,600,600i,700,900|Staatliches&display=swap" rel="stylesheet"> 
<title>BoncoinBis</title>
</head>
<body>
	<jsp:include page="header.jsp"/>
	<div class="main">
		<table>
	        <tr>
	            <td>Title :</td>
	            <td>${title}</td>
	        </tr>
	        <tr>
	            <td>ID :</td>
	            <td>${id}</td>
	        </tr>
	        <tr>
	            <td>Localisation :</td>
	            <td>${localisation}</td>
	        </tr>
	        <tr>
	            <td>Prix :</td>
	            <td>${prix}</td>
	        </tr>
	        <tr>
	            <td>Description :</td>
	            <td>${desciption}</td>
	        </tr>
	    </table>
	</div>
</body>
</html>



