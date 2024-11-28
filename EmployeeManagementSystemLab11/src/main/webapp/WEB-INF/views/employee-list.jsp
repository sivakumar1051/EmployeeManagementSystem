<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <title>Employee List</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f9f9f9;
            margin: 20px;
            padding: 20px;
        }
        h1 {
            text-align: center;
            color: #333;
        }
        table {
            width: 100%;
            border-collapse: collapse;
            margin: 20px 0;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
            background: #fff;
        }
        th, td {
            padding: 12px;
            text-align: center;
            border: 1px solid #ddd;
        }
        th {
            background-color: #007bff;
            color: #fff;
        }
        tr:nth-child(even) {
            background-color: #f2f2f2;
        }
        .btn {
            text-decoration: none;
            padding: 8px 15px;
            color: #fff;
            border-radius: 5px;
            font-size: 14px;
            display: inline-block;
        }
        .btn-add {
            background-color: #28a745;
            margin-bottom: 20px;
        }
        .btn-edit {
            background-color: #007bff;
        }
        .btn-delete {
            background-color: #dc3545;
        }
        .btn:hover {
            opacity: 0.9;
        }
        .actions a {
            margin: 0 5px;
        }
    </style>
</head>
<body>
    <h1>Employee List</h1>
    <div>
        <a href="/employees/add" class="btn btn-add">Add Employee</a>
    </div>
    <table>
        <thead>
            <tr>
                <th>ID</th>
                <th>Name</th>
                <th>Email</th>
                <th>Actions</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach var="employee" items="${employees}">
                <tr>
                    <td>${employee.id}</td>
                    <td>${employee.name}</td>
                    <td>${employee.email}</td>
                    <td class="actions">
                        <a href="/employees/edit/${employee.id}" class="btn btn-edit">Edit</a>
                        <a href="/employees/delete/${employee.id}" class="btn btn-delete" onclick="return confirm('Are you sure you want to delete this employee?');">Delete</a>
                    </td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
</body>
</html>
