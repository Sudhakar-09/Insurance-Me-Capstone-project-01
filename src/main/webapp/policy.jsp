<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="ISO-8859-1">
    <title>Sudhakar Private Ltd - Insure-Me</title>
    <style>
        /* Custom CSS styles with a unique look */
        body {
            background-color: #ecf0f1;
            font-family: "Verdana", sans-serif;
            color: #34495e;
            margin: 0;
            padding: 0;
        }

        header, footer {
            background-color: #2ecc71;
            color: #fff;
            text-align: center;
            padding: 10px;
        }

        footer {
            position: fixed;
            bottom: 0;
            width: 100%;
        }

        form {
            max-width: 800px;
            margin: 0 auto;
            padding: 30px;
            background-color: #ffffff;
            border: 1px solid #bdc3c7;
            border-radius: 8px;
            box-shadow: 0 0 15px rgba(0, 0, 0, 0.1);
            margin-top: 50px;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
        }

        th, td {
            border: 1px solid #ecf0f1;
            padding: 12px;
            text-align: left;
        }

        th {
            background-color: #3498db;
            color: #fff;
        }

        input[type="text"] {
            width: calc(100% - 20px);
            padding: 10px;
            margin-bottom: 15px;
            border: 1px solid #bdc3c7;
            border-radius: 3px;
        }

        .action-button {
            background-color: #2ecc71;
            color: #fff;
            padding: 15px 25px;
            border: none;
            border-radius: 3px;
            cursor: pointer;
            font-size: 16px;
            transition: background-color 0.3s;
        }

        .action-button:hover {
            background-color: #27ae60;
        }

        .update-button {
            background-color: #e67e22;
        }

        .update-button:hover {
            background-color: #d35400;
        }

        .delete-button {
            background-color: #e74c3c;
        }

        .delete-button:hover {
            background-color: #c0392b;
        }

        .custom-heading {
            font-size: 30px;
            color: #e74c3c;
            text-align: center;
            margin-bottom: 20px;
        }

        /* Additional styles for better spacing and alignment */
        label {
            display: block;
            font-size: 16px;
            margin-bottom: 8px;
        }

        .btn-container {
            text-align: right;
        }
    </style>
</head>
<body>
    <header>
        <h1>Sudhakar Private Ltd - Insure-Me</h1>
    </header>

    <form action="addpolicy" id="policyForm" method="POST">
        <h2 class="custom-heading">Insurance Policy Information</h2>

        <!-- Input fields -->
        <label for="id">Enter your ID:</label>
        <input type="text" name="id" id="id" required>

        <label for="name">Enter your name:</label>
        <input type="text" name="name" id="name" required>

        <label for="address">Enter your address:</label>
        <input type="text" name="address" id="address" required>

        <label for="contact">Enter your contact:</label>
        <input type="text" name="contact" id="contact" required>

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
        <div class="btn-container">
            <input class="action-button" type="submit" value="Create Insurance">
            <input class="action-button update-button" type="button" value="Update Insurance" onclick="updatePolicy()">
            <input class="action-button delete-button" type="button" value="Delete Insurance" onclick="deletePolicy()">
        </div>
    </form>

    <footer>
        &copy; 2023 Sudhakar Private Ltd - Insure-Me. All rights reserved.
    </footer>

    <!-- JavaScript functions -->
    <script>
        function updatePolicy() {
            var form = document.getElementById("policyForm");
            form.action = "update
