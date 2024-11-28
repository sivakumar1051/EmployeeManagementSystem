<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <title>Employee Management</title>
    <style>
        body { font-family: Arial, sans-serif; margin: 20px; }
        table { width: 100%; border-collapse: collapse; margin: 20px 0; }
        th, td { padding: 10px; text-align: center; border: 1px solid #ddd; }
        th { background-color: #f4f4f4; }
        a { text-decoration: none; padding: 5px 10px; background-color: #007bff; color: white; border-radius: 5px; }
        a.delete-btn { background-color: #dc3545; }
        a:hover { opacity: 0.9; }
        .action-buttons a { margin: 0 5px; }
    </style>
</head>
<body>
    <h2>Employee Management System</h2>
    <div>
        <a href="/employees/add">Add Employee</a>
    </div>
    <table>
        <thead>
            <tr>
                <th>ID</th>
                <th>Name</th>
                <th>Department</th>
                <th>Email</th>
                <th>Salary</th>
                <th>Actions</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach var="employee" items="${employees}">
                <tr>
                    <td>${employee.id}</td>
                    <td>${employee.name}</td>
                    <td>${employee.department}</td>
                    <td>${employee.email}</td>
                    <td>${employee.salary}</td>
                    <td class="action-buttons">
                        <a href="/employees/update/${employee.id}">Edit</a>
                        <a href="/employees/delete/${employee.id}" class="delete-btn" onclick="return confirm('Are you sure you want to delete this employee?');">Delete</a>
                    </td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
</body>
</html>
