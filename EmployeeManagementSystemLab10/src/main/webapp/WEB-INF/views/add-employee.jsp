<!DOCTYPE html>
<html>
<head>
    <title>Add Employee</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 20px;
        }
        form {
            max-width: 400px;
            margin: 0 auto;
            padding: 20px;
            border: 1px solid #ddd;
            border-radius: 5px;
            background-color: #f9f9f9;
        }
        label {
            display: block;
            margin-bottom: 5px;
            font-weight: bold;
        }
        input[type="text"], input[type="email"], input[type="number"] {
            width: 100%;
            padding: 10px;
            margin-bottom: 15px;
            border: 1px solid #ddd;
            border-radius: 5px;
        }
        button {
            padding: 10px 20px;
            background-color: #007bff;
            color: white;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }
        button:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>
    <h2>Add Employee</h2>
    <form action="/employees/add" method="post">
        <label for="name">Name</label>
        <input type="text" id="name" name="name" required>

        <label for="department">Department</label>
        <input type="text" id="department" name="department" required>

        <label for="email">Email</label>
        <input type="email" id="email" name="email" required>

        <label for="salary">Salary</label>
        <input type="number" id="salary" name="salary" step="0.01" required>

        <button type="submit">Add Employee</button>
    </form>
</body>
</html>
