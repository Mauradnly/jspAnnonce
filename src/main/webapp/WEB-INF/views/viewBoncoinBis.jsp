<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>BoncoinBis</title>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
</head>
    <body>
        <h3>Welcome, Enter The Employee Details</h3>
        <form:form method="POST"
          action="/addAnnonce" modelAttribute="annonce">
             <table>
                <tr>
                    <td><form:label path="title">Title</form:label></td>
                    <td><form:input path="title"/></td>
                </tr>
                <tr>
                    <td><form:label path="id">Id</form:label></td>
                    <td><form:input path="id"/></td>
                </tr>
                <tr>
                    <td><form:label path="prix">
                      Prix</form:label></td>
                    <td><form:input path="prix"/></td>
                </tr>
                <tr>
                    <td><input type="submit" value="Submit"/></td>
                </tr>
            </table>
        </form:form>
    </body>
</html>