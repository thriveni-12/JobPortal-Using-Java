<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page import="java.util.List" %>
<%@ page import="com.jobportal.model.Job" %>
<%
    List<Job> jobs = (List<Job>) request.getAttribute("jobs");
%>
<html>
<head>
    <title>View Jobs</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
</head>
<body class="container mt-5">
<h2>Available Jobs</h2>
<table class="table table-bordered">
    <thead class="thead-dark">
        <tr>
            <th>Title</th>
            <th>Description</th>
            <th>Location</th>
            <th>Salary</th>
            <th>Actions</th>
        </tr>
    </thead>
    <tbody>
        <c:forEach var="job" items="${jobs}">
            <tr>
                <td>${job.title}</td>
                <td>${job.description}</td>
                <td>${job.location}</td>
                <td>${job.salary}</td>
                <td>
                    <a href="editJob?id=${job.id}" class="btn btn-warning btn-sm">Edit</a>
                    <a href="deleteJob?id=${job.id}" class="btn btn-danger btn-sm">Delete</a>
                </td>
            </tr>
        </c:forEach>
    </tbody>
</table>
<a href="home.jsp" class="btn btn-secondary">Back to Home</a>
</body>
</html>