<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Sudhakar Private Limited - Insurance Policy</title>
  <style>
    body {
      font-family: 'Arial', sans-serif;
      background-color: #f4f4f4;
      color: #333;
      margin: 0;
      padding: 0;
    }

    nav {
      background-color: #007bff;
      padding: 10px;
      text-align: center;
    }

    nav a {
      color: #fff;
      margin: 0 15px;
      text-decoration: none;
      font-weight: bold;
    }

    .container {
      max-width: 800px;
      margin: 20px auto;
      padding: 20px;
      background-color: #fff;
      border: 1px solid #ddd;
      border-radius: 5px;
      box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
    }

    h1 {
      text-align: center;
      color: #ff6600;
    }

    label {
      display: block;
      margin-bottom: 8px;
      color: #555;
    }

    input[type="text"] {
      width: calc(100% - 20px);
      padding: 10px;
      margin-bottom: 15px;
      border: 1px solid #ccc;
      border-radius: 3px;
      box-sizing: border-box;
    }

    table {
      width: 100%;
      border-collapse: collapse;
      margin-top: 20px;
    }

    th, td {
      border: 1px solid #ddd;
      padding: 12px;
      text-align: left;
    }

    th {
      background-color: #007bff;
      color: #fff;
    }

    .action-buttons {
      display: flex;
      justify-content: space-between;
      margin-top: 20px;
    }

    .action-button {
      flex: 0 0 30%;
      padding: 12px;
      border: none;
      border-radius: 3px;
      cursor: pointer;
      font-size: 14px;
      color: #fff;
      transition: background-color 0.3s;
    }

    .action-button.create-button {
      background-color: #28a745;
    }

    .action-button.update-button {
      background-color: #007bff;
    }

    .action-button.delete-button {
      background-color: #dc3545;
    }

    .action-button:hover {
      filter: brightness(1.2);
    }
  </style>
</head>
<body>
  <nav>
    <a href="#">Home</a>
    <a href="#">Policies</a>
    <a href="#">About Us</a>
    <a href="#">Contact</a>
  </nav>

  <div class="container">
    <h1>Sudhakar Private Limited - Insurance Policy</h1>

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
        <!-- Use sample data for the table, as JSP is server-side and won't render here -->
        <tr>
          <td>123</td>
          <td>John Doe</td>
          <td>123 Main St</td>
          <td>555-1234</td>
        </tr>
      </tbody>
    </table>

    <!-- Buttons for actions -->
    <div class="action-buttons">
      <input class="action-button create-button" type="submit" value="Create Insurance">
      <input class="action-button update-button" type="button" value="Update Insurance" onclick="updatePolicy()">
      <input class="action-button delete-button" type="button" value="Delete Insurance" onclick="deletePolicy()">
    </div>
  </div>

  <!-- JavaScript functions -->
  <script>
    function updatePolicy() {
      var form = document.getElementById("policyForm");
      form.action = "updatepolicy";
      form.method = "POST";
      form.submit();
    }

    function deletePolicy() {
      var form = document.getElementById("policyForm");
      form.action = "deletepolicy";
      form.method = "POST";
      form.submit();
    }
  </script>
</body>
</html>
