<!DOCTYPE html>
<html>
<head>
    <title>Update Employee</title>
    <style>
        /* Reuse the styling from add-employee.jsp */
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
            background-color: #28a745;
            color: white;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }
        button:hover {
            background-color: #218838;
        }
    </style>
</head>
<body>
    <h2>Update Employee</h2>
    <form action="/employees/update/${employee.id}" method="post">
        <label for="name">Name</label>
        <input type="text" id="name" name="name" value="${employee.name}" required>

        <label for="department">Department</label>
        <input type="text" id="department" name="department" value="${employee.department}" required>

        <label for="email">Email</label>
        <input type="email" id="email" name="email" value="${employee.email}" required>

        <label for="salary">Salary</label>
        <input type="number" id="salary" name="salary" step="0.01" value="${employee.salary}" required>

        <button type="submit">Update Employee</button>
    </form>
</body>
</html>
