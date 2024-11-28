<!DOCTYPE html>
<html>
<head>
    <title>Search Employee</title>
    <style>
        form {
            max-width: 400px;
            margin: 0 auto;
            padding: 20px;
            border: 1px solid #ddd;
            border-radius: 5px;
            background-color: #f9f9f9;
        }
        input[type="text"] {
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
    <h2>Search Employee</h2>
    <form action="/employees/search" method="get">
        <label for="searchTerm">Enter Name or Department</label>
        <input type="text" id="searchTerm" name="searchTerm" placeholder="Search..." required>

        <button type="submit">Search</button>
    </form>
</body>
</html>
