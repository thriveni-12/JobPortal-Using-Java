<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Add Job</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
</head>
<body class="container mt-5">
<h2 class="mb-4">Add New Job</h2>
<form action="addJob" method="post">
    <div class="form-group">
        <label>Job Title:</label>
        <input type="text" name="title" class="form-control" required>
    </div>
    <div class="form-group">
        <label>Description:</label>
        <textarea name="description" class="form-control" required></textarea>
    </div>
    <div class="form-group">
        <label>Location:</label>
        <input type="text" name="location" class="form-control" required>
    </div>
    <div class="form-group">
        <label>Salary:</label>
        <input type="text" name="salary" class="form-control" required>
    </div>
    <button type="submit" class="btn btn-primary">Add Job</button>
    <a href="home.jsp" class="btn btn-secondary ml-2">Back to Home</a>
</form>
</body>
</html>