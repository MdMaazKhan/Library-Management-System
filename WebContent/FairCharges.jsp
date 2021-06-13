<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Fair Charges</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
</head>
<body >
<br><br>

<div class="container">
<div style="width: 26rem; text-align:center;">
<div class="card text-white bg-dark mb-3" style="width: 26rem; text-align:center;">
   <div class="card-header"><h2>Hey ${name }!</h2></div>
  <div class="card-body">
    
    <h6>Hope you enjoyed reading the book</h6><br>
<h6>You Have to pay ${charge } Rs</h6><br>

    <a href="mainFile.jsp"><button class="btn btn-success">Add another record</button></a><br><br>

<form action="javaFile" method="post">
<button type="submit" class="btn btn-primary">View the records</button>
</form>
</div>
</div>
</div>
</div>










</body>
</html>