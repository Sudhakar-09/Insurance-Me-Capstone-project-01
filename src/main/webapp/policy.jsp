<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Sudhakar Private Limited - Insurance Policy</title>
  <style>
    body {
      font-family: 'Open Sans', sans-serif;
      background-color: #fff;
      color: #333;
      margin: 0;
      padding: 0;
    }

    header {
      background-color: #28a745;
      color: #fff;
      padding: 20px;
      text-align: center;
    }

    header h1 {
      font-size: 24px;
      font-weight: bold;
    }

    main {
      margin: 20px auto;
      max-width: 800px;
      padding: 20px;
      background-color: #f4f4f4;
      border-radius: 5px;
      box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
    }

    .form-container {
      margin-bottom: 20px;
    }

    form {
      display: flex;
      flex-direction: column;
      align-items: center;
    }

    label {
      display: block;
      margin-bottom: 5px;
      font-weight: bold;
    }

    input[type="text"],
    input[type="number"],
    textarea {
      width: 100%;
      padding: 10px;
      margin-bottom: 10px;
      border: 1px solid #ccc;
      border-radius: 3px;
      box-sizing: border-box;
    }

    textarea {
      height: 100px;
    }

    table {
      width: 100%;
      border-collapse: collapse;
      margin-top: 20px;
    }

    th,
    td {
      padding: 12px;
      text-align: left;
    }

    th {
      background-color: #28a745;
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
  <header>
    <h1>Sudhakar Private Limited - Insurance Policy</h1>
  </header>

  <main>
    <h2>Customer Information</h2>

    <div class="form-container">
      <form id="policyForm">
        <label for="id">Enter your ID:</label>
        <input type="text" name="id" id="id" required>

        <label for="name">Enter your name:</label>
        <input type="text" name="name" id="name" required>

        <label for="address">Enter your address:</label>
        <textarea name="address" id="address" rows="5" required></textarea>

        <label for="contact">Enter your contact:</label>
        <input type="number" name="contact" id="contact" required>
      </form>
    </div>

    <h2>Policy List</h2>

    <!-- Use sample data for the table, as JSP is server-side -->
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
      <input class="action-button create-button" type="button" value="Create Insurance" onclick="createPolicy()">
      <input class="action-button update-button" type="button" value="Update Insurance" onclick="updatePolicy()">
      <input class="action-button delete-button" type="button" value="Delete Insurance" onclick="deletePolicy()">
    </div>
  </main>

  <!-- JavaScript functions -->
  <script>
    function createPolicy() {
      // Sample alert. Replace with your server-side logic for creating a policy.
      alert("Create button clicked. Implement the create logic here.");
    }

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
