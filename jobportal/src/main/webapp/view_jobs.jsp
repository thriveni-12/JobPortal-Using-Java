<%@ page import="java.util.*, com.jobportal.dao.JobDAO, com.jobportal.model.Job" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>View Jobs</title>
    <style>
        body { font-family: Arial; background-color: #f4f4f4; }
        table { width: 90%; margin: auto; border-collapse: collapse; background: white; }
        th, td { padding: 12px; border: 1px solid #ccc; text-align: left; }
        th { background-color: #2980b9; color: white; }
        tr:nth-child(even) { background-color: #f2f2f2; }
        h1 { text-align: center; color: #333; }
    </style>
</head>
<body>
    <h1>Available Job Listings</h1>
    <table>
        <tr>
            <th>Title</th>
            <th>Company</th>
            <th>Qualifications</th>
            <th>Description</th>
            <th>Location</th>
            <th>Posted On</th>
        </tr>
        <%
            JobDAO jobDAO = new JobDAO();
            List<Job> jobs = jobDAO.getAllJobs();
            for (Job job : jobs) {
        %>
        <tr>
            <td><%= job.getTitle() %></td>
            <td><%= job.getCompany() %></td>
            <td><%= job.getQualifications() %></td>
            <td><%= job.getDescription() %></td>
            <td><%= job.getLocation() %></td>
            <td><%= job.getPostedOn() %></td>
        </tr>
        <% } %>
    </table>
</body>
</html>
