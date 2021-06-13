<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add-record</title>
<link href="css/styles.css" rel="stylesheet" type="text/css" media="all">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
</head>
<body>





<div id="headerwrap">
<div class="container">
  <header id="mainheader" class="bodywidth clear"> <img src="images/logo.png" alt="" class="logo">
    <hgroup id="websitetitle">
        <h1><span class="bold">Book Record System</span></h1>
    </hgroup>
    
  </header>
  </div>  
</div>









<div class="container">
<br>

<h4>Enter Your Details</h4>


<form action="javaFile" method="post">

	<div class="form-group">
      <label for="student-id">Student-ID:</label>
      <input type="text" class="form-control" name="sid" required>
    </div>
	<div class="form-group">
      <label for="Name">Name:</label>
      <input type="text" class="form-control" name="sname" required>
    </div>
    <div class="form-group">
      <label for="Book-Name">Book-Name:</label>
      <input type="text" class="form-control" name="bname" required>
    </div>
    <div class="form-group">
      <label for="Issue-Date">Issue-Date:</label>
      <input type="date" class="form-control" name="idate" required>
    </div>

	<button type="submit" class="btn btn-success">Submit</button>
</form>

<br>


<form action="javaFile" method="post">
<button type="submit" class="btn btn-primary">View the records</button>
</form>

</div>





</body>
</html>