<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Records</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
</head>
<body>

<div class="container"> 


<br>

<table class="table table-striped">

 <thead>
    <tr>
      <th scope="col">#</th>
      <th scope="col">Name</th>
      <th scope="col">Book-Name</th>
      <th scope="col">Issue-date</th>
      <th scope="col">Remove-Record</th>
    </tr>
  </thead>
  
  <tbody>
  
  <c:forEach items="${res}" var="item">
  <tr>
       <c:forEach items="${item}" var="result">
    		 <td style="font-family:georgia">${result}</td>
       </c:forEach>
       <td>
       <form action="DeleteRecord" method="post">
       <input type="hidden" name="1" value="${item[0]}"/>
       <input type="hidden" name="2" value="${item[1]}"/>
       <input type="hidden" name="4" value="${item[3]}"/>
       <button type="submit" class="btn btn-danger">Delete the record for ${item[1]}</button>
       </form>
       </td>
  </tr>
     
    </c:forEach>
    
 </tbody>
</table>


</div>



</body>
</html>