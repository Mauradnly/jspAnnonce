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
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
</head>
    <body>
    	<jsp:include page="header.jsp"/>
    	<div class="main">
	        <h3>Annonce_add</h3>
	        <form:form method="POST"
	          action="/addAnnonce" modelAttribute="annonce">
	             <table>
	                <tr>
	                    <td><form:label path="title">Title :</form:label></td>
	                    <td><form:input path="title"/></td>
	                    <form:errors path="title" />
	                </tr>
	                <tr>
	                    <td><form:label path="idUser">N°_utilisateur :</form:label></td>
	                    <td><form:input path="idUser"/><form:errors path="idUser" /></td>
	                </tr>
	                <tr>
	                    <td><form:label path="date">Date (jj-mm-yy):</form:label></td>
	                    <td><form:input type="date" path="date"/><form:errors path="date" /></td>
	                </tr>
	                <tr>
	                    <td><form:label path="localisation">Localisation :</form:label></td>
	                    <td><form:input path="localisation"/><form:errors path="localisation" /></td>
	                </tr>
	                <tr>
	                    <td><form:label path="prix">Prix :</form:label></td>
	                    <td><form:input path="prix"/><form:errors path="prix" /></td>
	                </tr>
	                <tr>
	                    <td><form:label path="desciption">Description :</form:label></td>
	                    <td><form:input path="desciption"/><form:errors path="desciption" /></td>
	                </tr>
	                <tr>
	                    <td><input type="submit" value="Submit"/></td>
	                </tr>
	            </table>
	        </form:form>
	   </div>
    </body>
</html>