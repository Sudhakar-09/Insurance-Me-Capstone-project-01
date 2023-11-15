<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Sudhakar Banking</title>
    <style>
        body {
            background-color: #f2f2f2;
            font-family: 'Arial', sans-serif;
            margin: 0;
            padding: 0;
        }

        h1 {
            background-color: #4CAF50;
            color: #fff;
            text-align: center;
            padding: 20px;
            margin: 0;
        }

        .container {
            max-width: 800px;
            margin: 20px auto;
            padding: 20px;
            background-color: #fff;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            border-radius: 10px;
        }

        label, input {
            display: block;
            margin-bottom: 10px;
        }

        input[type="text"] {
            width: 100%;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 5px;
            font-size: 16px;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
        }

        table, th, td {
            border: 1px solid #ddd;
            text-align: center;
        }

        th, td {
            padding: 10px;
        }

        th {
            background-color: #4CAF50;
            color: #fff;
        }

        .btn-container {
            text-align: right;
            margin-top: 20px;
        }

        .btn-container input[type="submit"],
        .btn-container input[type="button"] {
            background-color: #333;
            color: #fff;
            padding: 10px 20px;
            border: none;
            cursor: pointer;
            margin-left: 10px;
            border-radius: 5px;
            font-size: 16px;
        }

        .btn-container input[type="button"].update-button {
            background-color: #00796b;
        }

        .delete-link {
            color: #e53935;
            text-decoration: none;
        }

        .info-text {
            text-align: center;
            margin-top: 20px;
            color: #333;
        }

        .footer {
            text-align: center;
            margin-top: 20px;
            padding-right: 20px;
            color: #888;
        }
    </style>
</head>
<body>
    <h1>Sudhakar Banking</h1>
    <div class="container">
        <form action="${pageContext.request.contextPath}/createaccount" id="accountForm" method="POST">
            <label for="id">Account ID:</label>
            <input type="text" name="id" id="id" required>

            <label for="name">Account Holder Name:</label>
            <input type="text" name="name" id="name" required>

            <label for="address">Address:</label>
            <input type="text" name="address" id="address" required>

            <label for="contact">Contact Number:</label>
            <input type="text" name="contact" id="contact" required>

            <div class="btn-container" style="display: flex;">
                <input type="submit" value="Create Account">
                <input type="button" class="update-button" value="Update Account" onclick="updateAccount()">
            </div>
        </form>

        <table>
            <thead>
                <tr>
                    <th>Account ID</th>
                    <th>Customer Name</th>
                    <th>Customer Address</th>
                    <th>Contact Number</th>
                    <th>Action</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach items="${accountList}" var="account">
                    <tr>
                        <td>${account.accountId}</td>
                        <td>${account.customerName}</td>
                        <td>${account.customerAddress}</td>
                        <td>${account.contactNumber}</td>
                        <td>
                            <a href="javascript:void(0);" class="delete-link" onclick="deleteAccount('${account.accountId}')">Delete</a>
                        </td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>

        <div class="info-text">
            Welcome to Sudhakar Banking. Please fill in the information above to get started.
        </div>
    </div>

    <div class="footer">
        Project submitted by Sudhakar, Thank you!
    </div>

    <script>
        function updateAccount() {
            var form = document.getElementById("accountForm");
            form.action = "${pageContext.request.contextPath}/updateaccount";
            form.method = "POST";
            form.submit();
        }

        function deleteAccount(accountId) {
            if (confirm("Are you sure you want to delete this account?")) {
                window.location.href = "${pageContext.request.contextPath}/deleteaccount/" + accountId;
            }
        }

        function submitForm(action) {
            var form = document.getElementById("accountForm");
            form.action = "${pageContext.request.contextPath}/" + action;
            form.method = "POST";
            form.submit();
        }
    </script>
</body>
</html>
