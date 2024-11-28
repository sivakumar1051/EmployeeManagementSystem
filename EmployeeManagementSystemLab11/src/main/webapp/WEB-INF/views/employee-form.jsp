<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html>
<html>
<head>
    <title>Employee Form</title>
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
        form {
            width: 50%;
            margin: 0 auto;
            background: #fff;
            padding: 20px;
            border-radius: 5px;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
        }
        div {
            margin-bottom: 15px;
        }
        label {
            display: block;
            margin-bottom: 5px;
            font-weight: bold;
            color: #333;
        }
        input {
            width: 100%;
            padding: 10px;
            border: 1px solid #ddd;
            border-radius: 5px;
        }
        .btn-submit {
            background-color: #007bff;
            color: white;
            border: none;
            padding: 10px 15px;
            font-size: 14px;
            border-radius: 5px;
            cursor: pointer;
            width: 100%;
        }
        .btn-submit:hover {
            opacity: 0.9;
        }
        .error {
            color: #dc3545;
            font-size: 12px;
        }
    </style>
</head>
<body>
    <h1>Employee Form</h1>
    <form:form modelAttribute="employee" method="post">
        <div>
            <label>Name:</label>
            <form:input path="name" />
            <form:errors path="name" cssClass="error" />
        </div>
        <div>
            <label>Email:</label>
            <form:input path="email" />
            <form:errors path="email" cssClass="error" />
        </div>
        <button type="submit" class="btn-submit">Submit</button>
    </form:form>
</body>
</html>
