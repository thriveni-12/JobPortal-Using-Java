<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page import="com.jobportal.model.Job" %>
<%
    Job job = (Job) request.getAttribute("job");
%>
<html>
<head>
    <title>Edit Job</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
</head>
<body class="container mt-5">
<h2 class="mb-4">Edit Job</h2>
<form action="updateJob" method="post">
    <input type="hidden" name="id" value="<%= job.getId() %>">
    <div class="form-group">
        <label>Job Title:</label>
        <input type="text" name="title" value="<%= job.getTitle() %>" class="form-control" required>
    </div>
    <div class="form-group">
        <label>Description:</label>
        <textarea name="description" class="form-control" required><%= job.getDescription() %></textarea>
    </div>
    <div class="form-group">
        <label>Location:</label>
        <input type="text" name="location" value="<%= job.getLocation() %>" class="form-control" required>
    </div>
    <div class="form-group">
        <label>Salary:</label>
        <input type="text" name="salary" value="<%= job.getSalary() %>" class="form-control" required>
    </div>
    <button type="submit" class="btn btn-success">Update Job</button>
    <a href="home.jsp" class="btn btn-secondary ml-2">Back to Home</a>
</form>
</body>
</html>