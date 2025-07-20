<%@ page contentType="text/html;charset=UTF-8" %>
<%@ page import="com.jobportal.dao.JobDAO, com.jobportal.model.Job" %>
<%
    int id = Integer.parseInt(request.getParameter("id"));
    JobDAO dao = new JobDAO();
    Job job = dao.getJobById(id);
%>
<!DOCTYPE html>
<html>
<head>
    <title>Edit Job</title>
</head>
<body>
<h2>Edit Job</h2>
<form action="updateJob" method="post">
    <input type="hidden" name="id" value="<%= job.getId() %>">
    Title: <input type="text" name="title" value="<%= job.getTitle() %>" required><br>
    Description: <textarea name="description" required><%= job.getDescription() %></textarea><br>
    Company: <input type="text" name="company" value="<%= job.getCompany() %>" required><br>
    <input type="submit" value="Update Job">
</form>
<a href="view_jobs.jsp">Back to Jobs</a>
</body>
</html>
