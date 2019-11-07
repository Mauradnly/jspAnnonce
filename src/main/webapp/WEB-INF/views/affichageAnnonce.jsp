<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
	<div class="mainAffichage">
	<c:forEach items="${annonces}" var="annonce" >
		<div class="annonce">
			<table>
				<h3>${annonce.id}</h3>
		        <tr>
		            <td>Title :</td>
		            <td><p>${annonce.title}</p></td>
		        </tr>
		        <tr>
		            <td>Utilisateur :</td>
		            <td><p>${annonce.idUser}</p></td>
		        </tr>
		        <tr>
		            <td>Localisation :</td>
		            <td><p>${annonce.localisation}</p></td>
		        </tr>
		        <tr>
		            <td>Prix :</td>
		            <td><p>${annonce.prix}</p></td>
		        </tr>
		        <tr>
		            <td>Description :</td>
		            <td><p>${annonce.desciption}</p></td>
		        </tr>
		    </table>  
		</div> 
	
	</c:forEach>
	</div>
</body>
</html>



