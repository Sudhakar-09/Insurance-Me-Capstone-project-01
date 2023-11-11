<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
  <meta charset="ISO-8859-1">
  <title>Tousif Policy Web Application</title>
  <style>
    /* Custom CSS styles with multiple colors */
    body {
      background-color: #f8f8f8; /* Light gray background */
      font-family: "Arial", sans-serif;
      color: #333;
    }

    form {
      max-width: 600px;
      margin: 0 auto;
      padding: 20px;
      background-color: #fff; /* White background */
      border: 1px solid #ddd;
      border-radius: 5px;
      box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
    }

    table {
      width: 100%;
      border-collapse: collapse;
      margin-top: 20px;
    }

    th, td {
      border: 1px solid #ddd;
      padding: 8px;
      text-align: left;
    }

    th {
      background-color: #ffc107; /* Yellow table header */
      color: #333; /* Dark gray text for table headers */
    }

    input[type="text"] {
      width: 100%;
      padding: 10px;
      margin-bottom: 10px;
      border: 1px solid #ccc;
      border-radius: 3px;
    }

    /* Custom button styles with multiple colors */
    .action-button {
      background-color: #007bff; /* Blue button */
      color: #fff;
      padding: 10px 20px;
      border: none;
      border-radius: 3px;
      cursor: pointer;
    }

    .action-button:hover {
      background-color: #0056b3; /* Darker blue on hover */
    }

    .update-button {
      background-color: #28a745; /* Green button */
    }

    .update-button:hover {
      background-color: #218838; /* Darker green on hover */
    }

    .delete-button {
      background-color: #dc3545; /* Red button */
    }

    .delete-button:hover {
      background-color: #c82333; /* Darker red on hover */
    }

    /* Custom styles for specific elements */
    .custom-heading {
      font-size: 24px;
      color: #ff6600; /* Orange heading */
    }

    /* Add more custom styles as needed */
  </style>
</head>
<body>
  <form action="addpolicy" id="polcyForm" type="POST">
    <h1 class="custom-heading">Tousif Insurance Policy Company Pvt.Ltd</h1>

    <!-- Input fields -->
    <label for="id">Enter your ID:</label>
    <input type="text" name="id" id="id" size="20"><br>

    <label for="name">Enter your name:</label>
    <input type="text" name="name" id="name" size="20"><br>

    <label for="address">Enter your address:</label>
    <input type="text" name="address" id="address" size="50"><br>

    <label for="contact">Enter your contact:</label>
    <input type="text" name="contact" id="contact" size="50"><br>

    <!-- Policy List Table -->
    <table>
      <thead>
        <tr>
          <th>Policy ID</th>
          <th>Customer Name</th>
          <th>Customer Address</th>
          <th>Contact Number</th>
        </tr>
      </thead>
      <tbody>
      
        <c:forEach items="${policyList}" var="policy">
        
          <tr>
          
            <td>${policy.policyId}</td>
            
            <td>${policy.customerName}</td>
            
            <td>${policy.customerAddress}</td>
            
            <td>${policy.contactNumber}</td>
            
          </tr>
          
        </c:forEach>
        
      </tbody>
      
    </table>

    <!-- Buttons for actions -->
    <input class="action-button" type="submit" value="Create Insurance"  onClick="createPolicy()">
    
    <input class="action-button update-button" type="button" value="Update Insurance"  onclick="updatePolicy()">
    
    <input class="action-button delete-button" type="button" value="Delete Insurance"  onclick="deletePolicy()">
    
  </form>

  <!-- JavaScript functions (you can include these as well) -->
  <script>
    function createPolicy(){
      alert("inside create ");
      var form = document.getElementById("polcyForm");
      form.action = "createpolicy";
      form.method = "POST";
      form.submit();
    }

    function updatePolicy(){
      var form = document.getElementById("polcyForm");
      form.action = "updatepolicy";
      form.method = "PUT";
      form.submit();
    }

    function deletePolicy(){
      var form = document.getElementById("polcyForm");
      form.action = "deletepolicy";
      form.method = "DELETE";
      form.submit();
    }
  </script>
</body>
</html>
