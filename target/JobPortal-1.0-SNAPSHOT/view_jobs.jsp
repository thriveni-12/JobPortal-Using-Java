<%@ page contentType="text/html;charset=UTF-8" %>
<%@ page import="com.jobportal.dao.JobDAO, com.jobportal.model.Job, java.util.*" %>
<!DOCTYPE html>
<html>
<head>
    <title>View Jobs</title>
</head>
<body>
<h2>Job Listings</h2>
<table border="1">
    <tr><th>Title</th><th>Description</th><th>Company</th><th>Actions</th></tr>
    <%
        JobDAO dao = new JobDAO();
        List<Job> jobs = dao.getAllJobs();
        for (Job job : jobs) {
    %>
        <tr>
            <td><%= job.getTitle() %></td>
            <td><%= job.getDescription() %></td>
            <td><%= job.getCompany() %></td>
            <td>
                <a href="edit_job.jsp?id=<%= job.getId() %>">Edit</a>
                <a href="deleteJob?id=<%= job.getId() %>">Delete</a>
            </td>
        </tr>
    <% } %>
</table>
<a href="home.jsp">Back to Home</a>
</body>
</html>
